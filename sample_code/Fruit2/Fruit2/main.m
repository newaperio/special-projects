//
//  main.m
//  Fruit2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        Fruit *apple = [[Fruit alloc] initWithBites:5 andColor:@"red" andShape:@"round"];
        Fruit *dragonFruit = [[Fruit alloc] initWithBites:2 andColor:@"Dragon" andShape:@"Chaotic"];
        NSLog(@"Apple has %ld bites and is %@ color and is %@", apple.bites, apple.color, apple.shape);
        NSLog(@"Dragonfruit has %ld bites and is %@ color and is %@", dragonFruit.bites, dragonFruit.color, dragonFruit.shape);
        [apple release];
        [dragonFruit release];
    }
    return 0;
}

