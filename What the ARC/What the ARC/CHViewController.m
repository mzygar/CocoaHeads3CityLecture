//
//  CHViewController.m
//  What the ARC
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHViewController.h"
#import "AVFoundation/AVFoundation.h"
#import "CHSoundAdHocViewController.h"
@interface CHViewController ()
@property(nonatomic, strong) AVAudioPlayer* player;
@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
}


-(void)viewDidAppear:(BOOL)animated
{
    [self.switchButton setTitle:@"Switch to adhoc" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)flipAction:(id)sender
{
    CHSoundAdHocViewController* sound=[[CHSoundAdHocViewController alloc] initWithNibName:@"CHViewController" bundle:nil];
    [sound setDelegate:self];
    [self  presentViewController:sound animated:YES completion:NULL];
}

-(void)playSound:(id)sender
{
    NSString* urlString=[[NSBundle mainBundle] pathForResource: @"applause2" ofType: @"wav"];
    NSURL *url = [NSURL fileURLWithPath: urlString];

    if (!_player) {
        _player=[[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
    }

    [self.player setVolume:1.0f];
    [self.player play];
}

-(void)flipSideFinished
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
