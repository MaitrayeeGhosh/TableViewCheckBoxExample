//
//  ViewController.m
//  TableViewCheckBoxExample
//
//  Created by Maitrayee Ghosh on 21/01/16.
//  Copyright © 2016 Maitrayee Ghosh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataArray=[[NSMutableArray alloc]init];
    [dataArray addObject:@"Apple"];
    [dataArray addObject:@"Mango"];
    [dataArray addObject:@"Papaya"];
    [dataArray addObject:@"Guava"];
    [dataArray addObject:@"Pineapple"];
    [dataArray addObject:@"Strawberry"];
    [dataArray addObject:@"Banana"];
    [dataArray addObject:@"Grapes"];
    [dataArray addObject:@"Pomegranate"];
    [dataArray addObject:@"Green Tea"];
    [dataArray addObject:@"Raisin"];
    
    self.mTableView.delegate=(id)self;
    self.mTableView.dataSource=(id)self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Check Box Button Action

- (IBAction)didTapBringCheckBoxBtn:(id)sender {
    
    [self.mTableView setEditing:YES animated:YES];
    
}

#pragma mark - UITableView DataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - UITableView Delegate Methods

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 3;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"user selected %@",[dataArray objectAtIndex:indexPath.row]);
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSLog(@"user de-selected %@",[dataArray objectAtIndex:indexPath.row]);
}

@end
