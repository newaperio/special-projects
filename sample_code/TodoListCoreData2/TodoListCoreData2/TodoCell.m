//
//  TodoCell.m
//  TodoList
//
//  Created by Evan Cordell on 5/17/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "TodoCell.h"

@implementation TodoCell
@synthesize todoText;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
