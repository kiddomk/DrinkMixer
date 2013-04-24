//
//  MasterViewController.m
//  Drink Mixer
//
//  Created by Jun Seki on 13/03/2013.
//  Copyright (c) 2013 com.junseki. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"
#import "DrinkConstants.h"
#import "AddDrinkViewController.h"

@interface MasterViewController () @end

@implementation MasterViewController
@synthesize drinks;
@synthesize addButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Master", @"Master");
        
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];

    
    NSString *path=[[NSBundle mainBundle]pathForResource:@"DrinkDirections" ofType:@"plist"];
    drinks = [[NSMutableArray alloc] initWithContentsOfFile:path];
    self.navigationItem.rightBarButtonItem=self.addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addButtonPressed:(id)sender{
    NSLog(@"Addbutton clicked");
    AddDrinkViewController *addViewController=[[AddDrinkViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    
    UINavigationController  *addNavCOntroller =[[UINavigationController alloc] initWithRootViewController:addViewController];
[self presentModalViewController:addNavCOntroller animated:YES];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return drinks.count;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    NSDictionary *object = [self.drinks objectAtIndex:indexPath.row];
    NSString *nameKey = [object objectForKey:NAME_KEY];
    NSLog(@"%@",nameKey);
   // NSDate *object = _objects[indexPath.row];
    cell.textLabel.text = [[self.drinks objectAtIndex:indexPath.row] objectForKey:NAME_KEY];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!self.detailViewController) {
        self.detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    }
      self.detailViewController.drink = [self.drinks objectAtIndex:indexPath.row];;
    [self.navigationController pushViewController:self.detailViewController animated:YES];
}

@end
