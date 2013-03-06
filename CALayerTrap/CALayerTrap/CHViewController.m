//
//  CHViewController.m
//  CALayerTrap
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHViewController.h"
#import "QuartzCore/QuartzCore.h"
@interface CHViewController ()
-(void)setupShadowsForLayer:(CALayer*)layer;
- (void)setupRoundedCornersForLayer:(CALayer*)layer;
@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	[self setupShadowsForLayer:self.shadowed.layer];
    
    [self setupRoundedCornersForLayer:self.rounded.layer];
    
    [self setupShadowsForLayer:self.roundedWithShadows.layer];
    [self setupRoundedCornersForLayer:self.roundedWithShadows.layer];
    
    [self setupShadowsForLayer:self.container.layer];
    [self setupRoundedCornersForLayer:self.roundedWithShadows2.layer];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupShadowsForLayer:(CALayer*)layer
{
    [layer setShadowColor:[UIColor blackColor].CGColor];
    [layer setShadowOpacity:0.9f];
    [layer setShadowRadius:4.0f];
    [layer setShadowOffset:CGSizeMake(0, 2)];
    layer.shadowPath = [[UIBezierPath bezierPathWithRoundedRect:layer.bounds cornerRadius:5.0f] CGPath];
}

- (void)setupRoundedCornersForLayer:(CALayer*)layer
{
    [layer setCornerRadius:5.0f];
    [layer setMasksToBounds:YES];
}
@end
