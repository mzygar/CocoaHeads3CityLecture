//
//  CHSoundAdHocViewController.m
//  What the ARC
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHSoundAdHocViewController.h"
//-fno-objc-arc

@interface CHSoundAdHocViewController ()

@end

@implementation CHSoundAdHocViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    [self.switchButton setTitle:@"Switch to property" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)playSound:(id)sender
{
    NSString* urlString=[[NSBundle mainBundle] pathForResource: @"applause2" ofType: @"wav"];
    NSURL *url = [NSURL fileURLWithPath: urlString];
    
    AVAudioPlayer* player=[[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
    [player setDelegate:self];
    [player setVolume:1.0f];
    [player play];
}

-(void)flipAction:(id)sender
{
    [self.delegate performSelector:@selector(flipSideFinished)];
}

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
#if !__has_feature(objc_arc)
    [player release];
#endif
}

@end
