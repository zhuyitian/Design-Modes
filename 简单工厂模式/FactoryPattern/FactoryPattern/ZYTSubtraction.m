//
//  ZYTSubtraction.m
//  FactoryPattern
//
//  Created by 朱一天 on 2017/12/29.
//  Copyright © 2017年 朱一天. All rights reserved.
//

#import "ZYTSubtraction.h"

@implementation ZYTSubtraction

static ZYTSubtraction *_sub;

+ (instancetype)CreatWithParameterOne:(CGFloat)One
                     withParameterTwo:(CGFloat)Two
                             withType:(OperationType)type {
    _sub = [[ZYTSubtraction alloc] init];
    _sub.parameterOne = One;
    _sub.parameterTwo = Two;
    return _sub;
}

- (CGFloat)getResult {
    return self.parameterOne - self.parameterTwo;
}

@end
