//
//  EditViewController.m
//  MyLifeApp
//
//  Created by May Yang on 2/3/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.scrollView setContentSize:CGSizeMake(0, 960)];
    [self.scrollView setShowsHorizontalScrollIndicator:NO];


}
-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    if (sender.contentOffset.x != 0) {
        CGPoint offset = sender.contentOffset;
        offset.x = 0;
        sender.contentOffset = offset;
    }
}
@end
