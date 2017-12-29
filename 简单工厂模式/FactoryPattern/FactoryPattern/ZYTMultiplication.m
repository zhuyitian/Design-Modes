//
//  ZYTMultiplication.m
//  FactoryPattern
//
//  Created by 朱一天 on 2017/12/29.
//  Copyright © 2017年 朱一天. All rights reserved.
//

#import "ZYTMultiplication.h"

@implementation ZYTMultiplication

static ZYTMultiplication *_mul;

+ (instancetype)CreatWithParameterOne:(CGFloat)One
                    withParameterTwo:(CGFloat)Two
                            withType:(OperationType)type {
    _mul = [ZYTMultiplication new];
    _mul.parameterOne = One;
    _mul.parameterTwo = Two;
    return _mul;
}

- (CGFloat)getResult {
    return self.parameterOne * self.parameterTwo;
}

@end
