//
//  TodoTableViewController.h
//  TodoList
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>
#import <RestKit/CoreData.h>
#import "AddEditViewController.h"
#import "TodoCell.h"

@interface TodoTableViewController : UITableViewController

@property (nonatomic, retain) NSMutableArray *todoArray;
@end
