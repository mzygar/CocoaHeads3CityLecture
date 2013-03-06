//
//  CHAppDelegate.m
//  TooNew
//
//  Created by Michał Zygar on 05.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHAppDelegate.h"

#import "CHViewController.h"

@implementation CHAppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    [self checkForNewVersion];
    
    self.viewController = [[[CHViewController alloc] initWithNibName:@"CHViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void)checkForNewVersion
{
    NSURLRequest* request=[NSURLRequest requestWithURL:[NSURL URLWithString:@""]];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue currentQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
    }];
}

@end
