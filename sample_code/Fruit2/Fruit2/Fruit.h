//
//  Fruit.h
//  Fruit2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject {
    NSNumber *_bites;
    NSString *_color;
    NSString *_shape;
    NSString *_name;
}

@property (nonatomic, retain) NSNumber *bites;
@property (nonatomic, copy) NSString *color;
@property (nonatomic, copy) NSString *shape;
@property (nonatomic, copy) NSString *name;

- (Fruit*)initWithName:(NSString*)name andBites:(NSInteger)bites andColor:(NSString*)color andShape:(NSString *)shape;

- (void)takeBite;

@end
