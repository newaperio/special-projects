//
//  AddEditViewController.h
//  TodoList2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoDelegate.h"

@interface AddEditViewController : UIViewController

@property (nonatomic, assign) NSInteger index;
@property (nonatomic, copy) NSString *todoString;
@property (nonatomic, retain) IBOutlet UITextField *todoTextField;
@property (nonatomic, retain) IBOutlet UIButton *addEditButton;
@property (nonatomic, assign) id<TodoDelegate> delegate;

-(IBAction)addEditButtonTapped:(id)sender;

@end
