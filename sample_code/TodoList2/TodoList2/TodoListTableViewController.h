//
//  TodoListTableViewController.h
//  TodoList2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoDelegate.h"
#import "AddEditViewController.h"

@interface TodoListTableViewController : UITableViewController <TodoDelegate>

@property (nonatomic, retain) NSMutableArray *todoArray;

@end
