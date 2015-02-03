//
//  MenuViewController.m
//  MyLifeApp
//
//  Created by May Yang on 2/3/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *tableData;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    self.tableData = [[NSMutableArray alloc] initWithObjects:@"Home", @"Profile", @"Settings", nil];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];

}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

#pragma mark - UITABLEVIEW DELGATES

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
//    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    
    
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"Home";
            cell.detailTextLabel.text = @"Detail of App 1...";
            break;
        case 1:
            cell.textLabel.text = @"Profile";
            cell.detailTextLabel.text = @"Detail of App 2 app...";
            break;
        case 2:
            cell.textLabel.text = @"Settings";
            cell.detailTextLabel.text =
            @"Detail of App 3...";
            break;
            
        default:
            cell.textLabel.text = @"Unkown";
            cell.detailTextLabel.text = @"Unknown";
            break;
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return self.tableData.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *viewController = nil;
    
    switch (indexPath.row) {
        case 0:
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"profile"];
            break;
        case 1:
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"viewController2"];
            break;
        case 2:
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"viewController3"];
            break;
            
        default:
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"viewController4"];
            break;
    }
    
    [[self navigationController] pushViewController:viewController animated:YES];
}


@end
