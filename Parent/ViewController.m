//
//  ViewController.m
//  Parent
//
//  Created by Steven Shatz on 10/29/14.
//  Copyright (c) 2014 Steven Shatz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //NSLog(@"In viewDidLoad:");

    _parentUserIdTextField.delegate = self;
        
    // ***************************
    // * Set up Location Tracker *
    // ***************************
    
    self.myLocationTracker = [[LocationTracker alloc] init];
    
    self.myLocationTracker.vc = self;
    
    [self.myLocationTracker prepareLocationTrackerForUse];
    
    [self.myLocationTracker runLocationTracker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// **************************************************
// * UITextFieldDelegate Methods - all are optional *
// **************************************************

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {  // YES = Allow user to edit field
    //NSLog(@"textFieldShouldBeginEditing");
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {    // YES = Data entered is valid
    //NSLog(@"textFieldShouldEndEditing");
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {        // YES = Allow user to exit field on CR
    //NSLog(@"textFieldShouldReturn");
    NSLog(@"user entered: %@", textField.text);
    [textField resignFirstResponder];
    return YES;
}


@end
