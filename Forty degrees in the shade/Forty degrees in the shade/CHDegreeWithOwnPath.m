//
//  CHDegreeWithOwnPath.m
//  Forty degrees in the shade
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import "CHDegreeWithOwnPath.h"
#import "QuartzCore/QuartzCore.h"
@implementation CHDegreeWithOwnPath


-(void)awakeFromNib
{
    [self.container.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.container.layer setShadowOpacity:0.9f];
    [self.container.layer setShadowRadius:4.0f];
    [self.container.layer setShadowOffset:CGSizeMake(0, 2)];
    //+instruments
//    [self.container.layer setShadowPath:[UIBezierPath bezierPathWithRect:self.container.layer.bounds].CGPath];
    
}


@end
