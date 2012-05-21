//
//  AddEditViewController.m
//  TodoList
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "AddEditViewController.h"
#import "AppDelegate.h"
#import "Item.h"

@implementation AddEditViewController
@synthesize textField = _textField, button = _button, item = _item, managedObjectContext = _managedObjectContext;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _textField = [[UITextField alloc] init];
        _button = [[UIButton alloc] init];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [_textField release];
    _textField = nil;
    [_button release];
    _button = nil;
    [super dealloc];
}

- (IBAction)buttonPressed:(id)sender {
    NSError *error = nil;
    BOOL isNew = (self.item == nil);
    if (isNew) {
        //We're adding
        self.item = [Item object];
        self.item.name = self.textField.text;
        [[RKObjectManager sharedManager] postObject:self.item delegate:nil];
    } else {
        //we're editing
        self.item.name = self.textField.text;
        [[RKObjectManager sharedManager] putObject:self.item delegate:nil];
    }

    [self.navigationController popToRootViewControllerAnimated:YES];
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
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (!_item) {
        [_button setTitle:@"Add Item" forState:UIControlStateNormal];
    } else {
        self.textField.text = self.item.name;
        [_button setTitle:@"Edit Item" forState:UIControlStateNormal];
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

@end
