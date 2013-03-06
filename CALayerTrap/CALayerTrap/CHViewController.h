//
//  CHViewController.h
//  CALayerTrap
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIView *shadowed;
@property (retain, nonatomic) IBOutlet UIView *rounded;
@property (retain, nonatomic) IBOutlet UIView *roundedWithShadows;
@property (retain, nonatomic) IBOutlet UIView *roundedWithShadows2;
@property (retain, nonatomic) IBOutlet UIView *container;
@end
