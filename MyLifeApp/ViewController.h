//
//  ViewController.h
//  MyLifeApp
//
//  Created by May Yang on 2/2/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "PageContentViewController.h"
#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>



@interface ViewController : UIViewController <FBLoginViewDelegate, UIPageViewControllerDataSource>
@property (weak, nonatomic) IBOutlet FBLoginView *loginView;

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;


//
//
//- (IBAction)startWalkthrough:(id)sender;



@end

