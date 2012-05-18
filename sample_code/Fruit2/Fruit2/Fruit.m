//
//  Fruit.m
//  Fruit2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit
@synthesize bites = _bites, color = _color, shape = _shape;

- (Fruit*)initWithBites:(NSInteger)bites andColor:(NSString *)color andShape:(NSString *)shape {
    self = [super init];
    if (self) {
        _bites = bites;
        _color = [[NSString alloc] initWithString:color];
        _shape = [[NSString alloc] initWithString:shape];
    }
    return self;
}

- (void)dealloc {
    [_color release];
    _color = nil;
    [_shape release];
    _shape = nil;
    [super dealloc];
}

- (void)takeBite {
    if (_bites > 0) {
        _bites--;
    }
}

@end
