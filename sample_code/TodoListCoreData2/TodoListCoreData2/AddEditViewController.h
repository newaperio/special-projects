//
//  AddEditViewController.h
//  TodoList
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoDelegate.h"

@interface AddEditViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, assign) NSInteger index;
@property (nonatomic, copy) NSString *string;
@property (assign) id<TodoDelegate> delegate;

-(IBAction)buttonPressed:(id)sender;

@end
