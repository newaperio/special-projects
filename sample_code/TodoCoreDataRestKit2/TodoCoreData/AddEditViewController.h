//
//  AddEditViewController.h
//  TodoList
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface AddEditViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) Item *item;

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

-(IBAction)buttonPressed:(id)sender;

@end
