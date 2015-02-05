//
//  EditGenderViewController.m
//  MyLifeApp
//
//  Created by May Yang on 2/4/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "EditGenderViewController.h"

@interface EditGenderViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *gender;

@end

@implementation EditGenderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gender = [[NSArray alloc] initWithObjects:@"Male", @"Female", nil];
}

- (IBAction)doneButton:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITABLEVIEW DELEGATES
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.gender.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.gender[indexPath.row];
    return cell;
}

@end
