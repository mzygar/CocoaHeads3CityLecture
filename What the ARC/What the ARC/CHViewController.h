//
//  CHViewController.h
//  What the ARC
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *switchButton;
-(IBAction)flipAction:(id)sender;
-(IBAction)playSound:(id)sender;
@end
