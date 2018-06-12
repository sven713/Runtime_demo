//
//  Person.h
//  Runtime_demo
//
//  Created by sve on 2018/6/12.
//  Copyright © 2018年 sve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)eat; // 如果没有实现，直接崩溃

- (void)eatSomething:(NSString *)something;

- (void)eatMany:(NSString *)one second:(BOOL)secondThing;


@end
