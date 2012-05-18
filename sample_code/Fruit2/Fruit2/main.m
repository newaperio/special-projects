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
        Fruit *apple = [[Fruit alloc] initWithName:@"Apple" andBites:5 andColor:@"red" andShape:@"round"];
        Fruit *dragonFruit = [[Fruit alloc] initWithName:@"Dragonfruit" andBites:2 andColor:@"Dragon" andShape:@"Chaotic"];
        
        NSLog(@"%@", apple);
        NSLog(@"%@", dragonFruit);
        [apple release];
        [dragonFruit release];
    }
    return 0;
}

