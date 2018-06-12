//
//  ViewController.m
//  Runtime_demo
//
//  Created by sve on 2018/6/12.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
//    [person eat];
    
//    [person eatSomething:@"汉堡"];
    
    [person eatMany:@"火锅" second:YES];
}

@end
