//
//  MyTableViewCell.m
//  ExpandViewDemo
//
//  Created by Rushi Sangani on 18/08/15.
//  Copyright (c) 2015 Codal. All rights reserved.
//

const float lowPriorityHeight = 250;
const float highPriorityHeight = 999;

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.secondViewHeightConstraint.constant = 0;
}

- (void)setShowDetails:(BOOL)showDetails{
    
    _showDetails = showDetails;
    self.secondViewHeightConstraint.priority = (showDetails) ? lowPriorityHeight : highPriorityHeight;
}

@end
