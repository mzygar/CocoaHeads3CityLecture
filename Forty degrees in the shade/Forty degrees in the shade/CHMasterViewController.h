//
//  CHMasterViewController.h
//  Forty degrees in the shade
//
//  Created by Michał Zygar on 06.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHDetailViewController;

@interface CHMasterViewController : UITableViewController

@property (strong, nonatomic) CHDetailViewController *detailViewController;

@end
