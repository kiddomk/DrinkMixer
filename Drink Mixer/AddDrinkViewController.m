//
//  AddDrinkViewController.m
//  Drink Mixer
//
//  Created by Jun Seki on 10/04/2013.
//  Copyright (c) 2013 com.junseki. All rights reserved.
//

#import "AddDrinkViewController.h"

@interface AddDrinkViewController ()

@end

@implementation AddDrinkViewController

-(IBAction)save:(id)sender{
    NSLog(@"save button");
    [self dismissModalViewControllerAnimated:YES];
}

-(IBAction)cancel:(id)sender{
    NSLog(@"cancel button");
    [self dismissModalViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(save:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
