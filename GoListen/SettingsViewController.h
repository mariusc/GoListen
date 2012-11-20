//
//  SettingsViewController.h
//  GoListen
//
//  Created by Marius Constantinescu on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Preferences.h"

@interface SettingsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableDictionary *categories;

@end
