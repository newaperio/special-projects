//
//  Fruit.h
//  Fruit
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject {
    NSInteger _bites;
    NSString *_color;
    BOOL _seeds;
}

@property (nonatomic, assign) NSInteger bites;
@property (nonatomic, retain) NSString *color;
@property (nonatomic, assign) BOOL seeds;

-(Fruit*)initWithBites:(NSInteger)bites color:(NSString*)color seeds:(BOOL) seeds;
-(void)takeBite;

@end
