//
//  ViewController.h
//  Parent
//
//  Created by Steven Shatz on 10/29/14.
//  Copyright (c) 2014 Steven Shatz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "LocationTracker.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *parentUserIdTextField;

@property (weak, nonatomic) IBOutlet UILabel *parentLatitudeLabel;

@property (weak, nonatomic) IBOutlet UILabel *parentLongitudeLabel;

@property (strong, nonatomic) LocationTracker *myLocationTracker;


@end

