//
//  CHViewController.m
//  TooNew
//
//  Created by Michał Zygar on 05.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHViewController.h"

@interface CHViewController ()

@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    DLog(@"here");
    Here();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)showSomeModal
{
    if ([self respondsToSelector:@selector(presentViewController:animated:completion:)]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [self presentViewController:nil animated:YES completion:NULL];
#pragma clang diagnostic pop
        
    }else
    {
        [self presentModalViewController:nil animated:YES];
    }

}

@end
