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
//    class_addMethod(self, sel, aaaaaeat, "");
    
//    class_addMethod(self, sel, eatSomethingAaaa, "");
    
    class_addMethod(self, sel, eatManyFood, "");
    
    return [super resolveInstanceMethod:sel];
}


/**不含参数的 */
void aaaaaeat(){
    NSLog(@"调用了:%s",__func__);
}


/**含参数的,需要写上隐式参数: id self, SEL _cmd(是.h定义的方法名  _cmd = "eatSomething:")*/
void eatSomethingAaaa(id self, SEL _cmd, NSString *eatWhat){
    NSLog(@"%s,吃了%@",__func__,eatWhat);
}

/**含多个参数. 不写id self, SEL _cmd这两个隐式参数,会崩溃*/
void eatManyFood(id self, SEL _cmd, NSString *firstA, BOOL secondB){
    NSLog(@"%s 吃了%@ 还有%zd",__func__,firstA,secondB);
}

@end
