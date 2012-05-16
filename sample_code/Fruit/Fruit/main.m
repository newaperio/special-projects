//
//  main.m
//  Fruit
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        Fruit *apple = [[Fruit alloc] initWithBites:10 color:@"Red" seeds:YES];
        Fruit *dragonFruit = [[Fruit alloc] initWithBites:3 color:@"Flaming Dragon" seeds:NO];
        NSLog(@"An apple has %ld bites, %@, and is the color %@", apple.bites, (apple.seeds) ? @"has seeds" : @"doesn't have seeds", apple.color);
        NSLog(@"%@", apple);
        NSLog(@"A dragonfruit has %ld bites, %@, and is the color %@", dragonFruit.bites, (dragonFruit.seeds) ? @"has seeds" : @"doesn't have seeds", dragonFruit.color);
        NSLog(@"%@", dragonFruit);
    }
    return 0;
}

