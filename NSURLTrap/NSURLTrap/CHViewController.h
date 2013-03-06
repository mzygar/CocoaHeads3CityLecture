//
//  CHViewController.h
//  NSURLTrap
//
//  Created by Michał Zygar on 05.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHViewController : UIViewController <NSURLConnectionDataDelegate,UIScrollViewDelegate>

- (IBAction)flipAction:(id)sender;
@property (retain, nonatomic) IBOutlet UITextView *nonBlockingTextView;
@property (retain, nonatomic) IBOutlet UITextView *blockingTextView;
@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)getDataAction:(id)sender;
@end
