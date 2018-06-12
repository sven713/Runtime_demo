//
//  ViewController.m
//  Runtime_demo
//
//  Created by sve on 2018/6/12.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
//    [person eat];
    
    objc_msgSend(person, @selector(eat)); // 跟 [person eat];等价 方法调用,底层就是objc_msgSend 这就是OC的消息发送机制
//    objc_msgSend(person, @selector(eatSomething:),@"汉堡");
//    [person eatSomething:@"汉堡"];
    
//    objc_msgSend(person, @selector(eatMany:second:),@"鸡翅",YES);
//    [person eatMany:@"火锅" second:YES];
}

@end
