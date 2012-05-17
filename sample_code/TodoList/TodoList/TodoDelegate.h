//
//  TodoDelegate.h
//  TodoList
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TodoDelegate <NSObject>

-(void)addTodo:(NSString*)newTodo;
-(void)editTodoAtIndex:(NSInteger)index withTodo:(NSString*)newTodo;

@end
