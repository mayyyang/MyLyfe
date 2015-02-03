//
//  EditViewController.m
//  MyLifeApp
//
//  Created by May Yang on 2/3/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    EditViewController *VC = [[EditViewController alloc] init];
//    self.navigationController.navigationBarHidden=NO;
//    [self.navigationController pushViewController:VC animated:NO];




}
-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
}

@end
