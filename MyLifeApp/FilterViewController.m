//
//  FilterViewController.m
//  MyLifeApp
//
//  Created by May Yang on 2/13/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "FilterViewController.h"

@interface FilterViewController ()

@end

@implementation FilterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)cancelButton:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButton:(UIBarButtonItem *)sender
{
    // TODO: Save settings and dismiss VC.
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
