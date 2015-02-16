//
//  LoginViewController.h
//  MyLifeApp
//
//  Created by Chakravarthi,Abhyuday on 2/15/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;


@property (weak, nonatomic) IBOutlet UITextView *titleLabel;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (weak, nonatomic) IBOutlet FBLoginView *loginView;



@end
