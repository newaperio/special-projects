//
//  Item.h
//  TodoListCoreData2
//
//  Created by Evan Cordell on 5/21/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Item : NSManagedObject

@property (nonatomic, retain) NSString * name;

@end
