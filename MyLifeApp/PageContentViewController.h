//
//  PageContentViewController.h
//  MyLifeApp
//
//  Created by Chakravarthi,Abhyuday on 2/16/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIButton *startWalkthrough;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;

@end
