//
//  MainViewController.h
//  Reader
//
//  Created by Marius Constantinescu on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Preferences.h"

@interface ViewController : UITableViewController


@property (strong, nonatomic) NSMutableArray *parseResults;
@property (strong, nonatomic) NSMutableArray *feeds;


@end
