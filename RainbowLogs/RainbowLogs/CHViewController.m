//
//  CHViewController.m
//  RainbowLogs
//
//  Created by Michał Zygar on 06.03.2013.
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
    DDLogVerbose(@"This is pure blabla");
    DDLogInfo(@"This is info");
    DDLogWarn(@"You should really read this");
    DDLogError(@"Omg! Error!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
