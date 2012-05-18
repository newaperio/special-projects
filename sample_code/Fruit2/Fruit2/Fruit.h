//
//  Fruit.h
//  Fruit2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject {
    NSInteger _bites;
    NSString *_color;
    NSString *_shape;
}

@property (nonatomic, assign) NSInteger bites;
@property (nonatomic, retain) NSString *color;
@property (nonatomic, retain) NSString *shape;

- (Fruit*)initWithBites:(NSInteger)bites andColor:(NSString*)color andShape:(NSString *)shape;

- (void)takeBite;

@end
