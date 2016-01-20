//
//  MyTableViewCell.h
//  ExpandViewDemo
//
//  Created by Rushi Sangani on 18/08/15.
//  Copyright (c) 2015 Codal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondViewHeightConstraint;

@property (nonatomic) BOOL showDetails;

@end
