//
//  ThingsViewController.h
//  TableViewExemple
//
//  Created by Roberto  Beraldo Chaiben on 17/03/12.
//  Copyright (c) 2012 Master Coding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Thing.h"

@interface ThingsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *thingsArray;
}

@property (nonatomic, strong) IBOutlet UITableView *thingsTableView;

@end
