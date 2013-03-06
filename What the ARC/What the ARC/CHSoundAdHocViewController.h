//
//  CHSoundAdHocViewController.h
//  What the ARC
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVFoundation/AVFoundation.h"

@interface CHSoundAdHocViewController : UIViewController<AVAudioPlayerDelegate>
#if __has_feature(objc_arc)
@property (weak, nonatomic) IBOutlet UIButton *switchButton;
@property (weak, nonatomic) id delegate;
#else
@property (assign, nonatomic) IBOutlet UIButton *switchButton;
@property (assign, nonatomic) id delegate;
#endif
-(IBAction)flipAction:(id)sender;
-(IBAction)playSound:(id)sender;

@end
