//
//  Fruit.m
//  Fruit
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit
@synthesize bites = _bites, seeds = _seeds, color = _color;

#pragma mark - Memory Management

-(Fruit*)initWithBites:(NSInteger)bites color:(NSString *)color seeds:(BOOL)seeds {
    if ((self = [super init])) {
        _bites = bites;
        _color = [[NSString alloc] initWithString:color];
        _seeds = seeds;

    }
    return self;
}

-(void)dealloc {
    [_color release];
    _color = nil;
    [super dealloc];
}


# pragma mark - Methods

-(void)takeBite {
    if (_bites > 0) {
        _bites--;
    }
}

@end
