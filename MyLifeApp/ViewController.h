//
//  ViewController.h
//  MyLifeApp
//
//  Created by May Yang on 2/2/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface ViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet FBLoginView *loginView;


@end

