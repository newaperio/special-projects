//
//  TodoTableViewController.m
//  TodoList
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "TodoTableViewController.h"
#import "AppDelegate.h"
#import "Item.h"

@interface TodoTableViewController (Private)

- (void)loadObjectsFromDataStore;
- (void)loadObjectsFromServer;

@end

@implementation TodoTableViewController
@synthesize todoArray = _todoArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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

- (void)loadObjectsFromDataStore {
    [self.todoArray removeAllObjects];
    [self.todoArray addObjectsFromArray:[Item allObjects]];
}

- (void)loadObjectsFromServer {
    __block TodoTableViewController *bself = self;
    [[RKObjectManager sharedManager] loadObjectsAtResourcePath:@"items" usingBlock:^(RKObjectLoader *loader) {
        loader.onDidLoadObjects = ^(NSArray *objects) {
            [_todoArray removeAllObjects];
            [_todoArray addObjectsFromArray: objects];  
            [bself.tableView reloadData];
        };
        loader.delegate = nil;
    }];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    _todoArray = [[NSMutableArray alloc] init];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [_todoArray release];
    _todoArray = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self loadObjectsFromServer];
    [self.tableView reloadData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    AddEditViewController *destination = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"AddSegue"]) {
        destination.title = @"Add Todo";
        destination.item = nil;
    } else if ([[segue identifier] isEqualToString:@"EditSegue"]) {
        destination.title = @"Edit Todo";
        Item *item = [_todoArray objectAtIndex:[self.tableView indexPathForSelectedRow].row];
        destination.item = item;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_todoArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TodoCell";
    
    TodoCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    Item *item = [_todoArray objectAtIndex:indexPath.row];
    cell.todoText.text = item.name;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [_todoArray removeObjectAtIndex:indexPath.row];
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

/*- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
     
     
}*/

@end
