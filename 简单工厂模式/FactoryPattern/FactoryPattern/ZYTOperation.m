//
//  ZYTOperation.m
//  FactoryPattern
//
//
//  Created by 朱一天 on 2017/12/29.
//Copyright © 2017年 朱一天. All rights reserved.
//
// @class ZYTOperation
// @abstract 总运算类
// @discussion 总运算类
//

#import "ZYTOperation.h"
#import "ZYTAdd.h"
#import "ZYTSubtraction.h"
#import "ZYTMultiplication.h"
#import "ZYTDivision.h"

@interface ZYTOperation()

/** 运算类型 */
@property (nonatomic , assign) OperationType type;

@end

@implementation ZYTOperation

static ZYTOperation *_operation;

+ (instancetype)CreatWithParameterOne:(CGFloat)One
                    withParameterTwo:(CGFloat)Two
                            withType:(OperationType)type {
    _operation = [[ZYTOperation alloc] init];
    _operation.parameterOne = One;
    _operation.parameterTwo = Two;
    _operation.type = type;
    return _operation;
}


- (CGFloat)getResult {
    switch (self.type) {
        case AddType:return [[ZYTAdd CreatWithParameterOne:self.parameterOne withParameterTwo:self.parameterTwo withType:self.type] getResult];
        case SubType:return [[ZYTSubtraction CreatWithParameterOne:self.parameterOne withParameterTwo:self.parameterTwo withType:self.type] getResult];
        case MulType:return [[ZYTMultiplication CreatWithParameterOne:self.parameterOne withParameterTwo:self.parameterTwo withType:self.type] getResult];
        case DivType:return [[ZYTDivision CreatWithParameterOne:self.parameterOne withParameterTwo:self.parameterTwo withType:self.type] getResult];
        default:return 0;
    }
    return 0;
}



@end
