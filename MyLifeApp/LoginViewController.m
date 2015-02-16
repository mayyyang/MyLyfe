//
//  LoginViewController.m
//  MyLifeApp
//
//  Created by Chakravarthi,Abhyuday on 2/15/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import <FacebookSDK/FacebookSDK.h>
#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FBLoginView *loginView =
    [[FBLoginView alloc] initWithReadPermissions:
     @[@"public_profile", @"email", @"user_friends"]];
    self.loginView.readPermissions = @[@"public_profile", @"email", @"user_friends"];
}

- (IBAction)loginButton:(UIButton *)sender
{

}


@end
