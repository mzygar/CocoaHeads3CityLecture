//
//  CHViewController.m
//  NSURLTrap
//
//  Created by Michał Zygar on 05.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHViewController.h"

@interface CHViewController ()
@property (nonatomic, retain) NSURLConnection *startImmediatelyConnection;
@property (nonatomic, retain) NSURLConnection *startLaterConnection;

@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.scrollView setContentSize:CGSizeMake(320, 1000)];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {

    [_startImmediatelyConnection release];
    [_startLaterConnection release];
    [_nonBlockingTextView release];
    [_blockingTextView release];
    [_scrollView release];
    [super dealloc];
}


- (IBAction)getDataAction:(id)sender {
    
    [self.blockingTextView setText:@"Loading..."];
    [self.nonBlockingTextView setText:@"Loading..."];
    NSString* urlString=[@"http://www.banzaj.pl/pictures/sport_ekstremalny/woda/Kitesurfing/Ford_Kite_Cup/2012/Chalupy/ford_kite_cup_chalupy_5.jpg?" stringByAppendingFormat:@"%i",arc4random()%1000];
    
    NSURLRequest *request=[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];

    [self sendRequestImmediately:request];
    [self sendRequestLater:request];
}


-(void)sendRequestImmediately:(NSURLRequest *)request
{
    _startImmediatelyConnection=[[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
}

-(void)sendRequestLater:(NSURLRequest *)request
{
    _startLaterConnection=[[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:NO];
    [_startLaterConnection scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
    [_startLaterConnection start];
}


-(void)startImmediatelyConnectionDidFinish
{
    [self.blockingTextView setText:@"Connection started Immediately finished"];    
}

-(void)startLaterConnectionDidFinish
{
    [self.nonBlockingTextView setText:@"Connection started later finished"];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (connection==_startLaterConnection) {
        [self startLaterConnectionDidFinish];
    }else if( connection == _startImmediatelyConnection )
    {
        [self startImmediatelyConnectionDidFinish];
    }
}



-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [self getDataAction:nil];
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [super viewDidUnload];
}
- (IBAction)flipAction:(id)sender {
}
@end
