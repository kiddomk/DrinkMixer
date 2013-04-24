//
//  DetailViewController.m
//  Drink Mixer
//
//  Created by Jun Seki on 13/03/2013.
//  Copyright (c) 2013 com.junseki. All rights reserved.
//

#import "DetailViewController.h"
#import "DrinkConstants.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize nameTextField;
@synthesize ingredientsTextView;
@synthesize directionsTextView;
@synthesize drink;
@synthesize scrollView;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
   
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize=self.view.frame.size;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.nameTextField.text=[self.drink objectForKey:NAME_KEY];
    self.ingredientsTextView.text=[self.drink objectForKey:INGREDIENTS_KEY];
    self.directionsTextView.text=[self.drink objectForKey:DIRECTIONS_KEY];
}
							
@end
