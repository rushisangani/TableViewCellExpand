//
//  ViewController.m
//  ExpandViewDemo
//
//  Created by Rushi Sangani on 18/08/15.
//  Copyright (c) 2015 Codal. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()

@property (nonatomic) NSIndexPath *expandedIndexPath;

@end

@implementation ViewController
{
    NSIndexPath *previousIndexpath;
    NSMutableArray *expandedIndexPathArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    expandedIndexPathArray = [NSMutableArray array];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 140;
}

#pragma mark - TableView Data source methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MyTableViewCell *cell = (MyTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (self.expandedIndexPath == indexPath && [expandedIndexPathArray containsObject:indexPath]) {
        cell.showDetails = YES;
    }
    else{
        cell.showDetails = NO;
    }
    
    return cell;
}

#pragma mark - TableView Delegate methods
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    self.expandedIndexPath = indexPath;
    
    if(![expandedIndexPathArray containsObject:indexPath]){
        [expandedIndexPathArray addObject:indexPath];
    }
    else{
        [expandedIndexPathArray removeObject:indexPath];
    }
    
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
