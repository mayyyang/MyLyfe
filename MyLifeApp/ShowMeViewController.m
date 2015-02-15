//
//  ShowMeViewController.m
//  MyLifeApp
//
//  Created by May Yang on 2/15/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "ShowMeViewController.h"

@interface ShowMeViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSArray *showMeOptionsArray;

@end

@implementation ShowMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.showMeOptionsArray = [[NSArray alloc] initWithObjects:@"Only Men", @"Only Women", @"Men and Women", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.showMeOptionsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.showMeOptionsArray[indexPath.row];
    return cell;
}

@end
