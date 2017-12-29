//
//  ZYTAdd.m
//  FactoryPattern
//
//  Created by 朱一天 on 2017/12/29.
//  Copyright © 2017年 朱一天. All rights reserved.
//  加法

#import "ZYTAdd.h"

@implementation ZYTAdd

static ZYTAdd *_add;

+ (instancetype)CreatWithParameterOne:(CGFloat)One
                     withParameterTwo:(CGFloat)Two
                             withType:(OperationType)type {
    _add = [[ZYTAdd alloc] init];
    _add.parameterOne = One;
    _add.parameterTwo = Two;
    return _add;
}

- (CGFloat)getResult {
    
    return self.parameterOne + self.parameterTwo;
}

@end
