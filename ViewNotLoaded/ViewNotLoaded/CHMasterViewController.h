//
//  CHMasterViewController.h
//  ViewNotLoaded
//
//  Created by Michał Zygar on 05.03.2013.
//  Copyright (c) 2013 Michal Zygar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHDetailViewController;

@interface CHMasterViewController : UITableViewController

@property (strong, nonatomic) CHDetailViewController *detailViewController;

@end
