//
//  MasterViewController.h
//  Drink Mixer
//
//  Created by Jun Seki on 13/03/2013.
//  Copyright (c) 2013 com.junseki. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController{
    NSArray *drinks;
}

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
