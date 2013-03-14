//
//  DetailViewController.h
//  Drink Mixer
//
//  Created by Jun Seki on 13/03/2013.
//  Copyright (c) 2013 com.junseki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController{
    @private
    UITextField *nameTextField;
    UITextView *ingredientsTextView;
    UITextView *directionsTextView;
    NSDictionary *drink;
}
@property(nonatomic,retain) IBOutlet UITextField *nameTextField;
@property(nonatomic,retain) IBOutlet UITextView *ingredientsTextView;
@property(nonatomic,retain) IBOutlet UITextView *directionsTextView;
@property(nonatomic,retain) NSDictionary *drink;

@end
