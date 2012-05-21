//
//  AddEditViewController.m
//  TodoList2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "AddEditViewController.h"

@implementation AddEditViewController
@synthesize todoTextField = _todoTextField, addEditButton = _addEditButton, delegate = _delegate;
@synthesize index = _index, todoString = _todoString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    if (_index == -1) {
        //we're adding
        _todoTextField.text = @"";
        _addEditButton.titleLabel.text = @"Add Item";
        [_addEditButton setTitle:@"Add Item" forState:UIControlStateNormal];
        self.title = @"Add New Todo";
    } else {
        //we're editing
        _todoTextField.text = _todoString;
        _addEditButton.titleLabel.text = @"Edit Item";
        [_addEditButton setTitle:@"Edit Item" forState:UIControlStateNormal];
        self.title = @"Edit Todo";
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)addEditButtonTapped:(id)sender {
    if (_delegate) {
        if (_index == -1) {
            if ([_delegate respondsToSelector:@selector(addTodo:)]) {
                [_delegate addTodo:_todoTextField.text];
            }
        } else {
            if ([_delegate respondsToSelector:@selector(editTodoAtIndex:withTodo:)]) {
                [_delegate editTodoAtIndex:_index withTodo:_todoTextField.text];
            }
        }
    }
}

@end
