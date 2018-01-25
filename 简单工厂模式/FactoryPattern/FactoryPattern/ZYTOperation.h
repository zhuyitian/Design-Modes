//
//  ZYTOperation.h
//  FactoryPattern
//
//  Created by 朱一天 on 2017/12/29.
//Copyright © 2017年 朱一天. All rights reserved.
//
// @class ZYTOperation
// @abstract 总运算类
// @discussion 总运算类
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger , OperationType) {
    AddType = 0,
    SubType,
    MulType,
    DivType
};

@interface ZYTOperation : NSObject


/** 参数一 */
@property (nonatomic , assign) CGFloat parameterOne;

/** 参数二 */
@property (nonatomic , assign) CGFloat parameterTwo;

+ (instancetype)CreatWithParameterOne:(CGFloat)One
                    withParameterTwo:(CGFloat)Two
                            withType:(OperationType)type;

- (CGFloat)getResult;

@end
