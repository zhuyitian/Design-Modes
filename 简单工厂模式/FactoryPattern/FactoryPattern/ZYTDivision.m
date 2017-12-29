//
//  ZYTDivision.m
//  FactoryPattern
//
//  Created by 朱一天 on 2017/12/29.
//  Copyright © 2017年 朱一天. All rights reserved.
//  除法

#import "ZYTDivision.h"

@implementation ZYTDivision
static ZYTDivision *_div;

+ (instancetype)CreatWithParameterOne:(CGFloat)One
                    withParameterTwo:(CGFloat)Two
                            withType:(OperationType)type {
    _div = [ZYTDivision new];
    _div.parameterOne = One;
    _div.parameterTwo = Two;
    return _div;
}

- (CGFloat)getResult {
    if (self.parameterTwo == 0) {
        NSLog(@"0不能做除数");
        return 0;
    }
    return self.parameterOne / self.parameterTwo;
}

@end
