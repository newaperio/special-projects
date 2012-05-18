//
//  Fruit.m
//  Fruit2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit
@synthesize bites = _bites, color = _color, shape = _shape, name = _name;

- (Fruit*)initWithName:(NSString*)name andBites:(NSInteger)bites andColor:(NSString *)color andShape:(NSString *)shape {
    self = [super init];
    if (self) {
        _bites = [[NSNumber alloc] initWithInteger:bites];
        _color = [[NSString alloc] initWithString:color];
        _shape = [[NSString alloc] initWithString:shape];
        _name = [[NSString alloc] initWithString:name];
    }
    return self;
}

- (void)dealloc {
    [_bites release];
    _bites = nil;
    [_color release];
    _color = nil;
    [_shape release];
    _shape = nil;
    [_name release];
    _name = nil;
    [super dealloc];
}

- (void)takeBite {
    NSInteger bites = [_bites intValue];
    if (bites > 0) {
        bites--;
    }
    self.bites = [NSNumber numberWithInteger:bites];
}

- (NSString *)description {
    NSString *string = [NSString stringWithFormat:@"%@ has %ld bites and is %@ colored and is %@", self.name, [_bites intValue], self.color, self.shape];
    return string;
}

@end
