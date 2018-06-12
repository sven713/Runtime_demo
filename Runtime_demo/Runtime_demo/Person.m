//
//  Person.m
//  Runtime_demo
//
//  Created by sve on 2018/6/12.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

+ (BOOL)resolveInstanceMethod:(SEL)sel { // 通过实现这个方法避免崩溃
    class_addMethod(self, sel, aaaaaeat, "");
    return [super resolveInstanceMethod:sel];
}

void aaaaaeat(){
    NSLog(@"调用了:%s",__func__);
}

@end
