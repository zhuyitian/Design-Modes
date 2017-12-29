//
//  ViewController.m
//  FactoryPattern
//
//  Created by 朱一天 on 2017/12/29.
//  Copyright © 2017年 朱一天. All rights reserved.
//

#import "ViewController.h"
#import "ZYTOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    
}

/** 计算器就这么调用就行了 */
- (void)creatOperationWithParameterOne:(CGFloat)one
                      withParameterTwo:(CGFloat)two
                            withSymbol:(NSString *)symbol {
    OperationType type;
    if ([symbol isEqualToString:@"+"]) {
        type = AddType;
    }else if ([symbol isEqualToString:@"-"]) {
        type = SubType;
    }else if ([symbol isEqualToString:@"*"]) {
        type = MulType;
    }else if ([symbol isEqualToString:@"/"]){
        type = DivType;
    }else {
        NSLog(@"您输入的运算符有误，请重新输入");
        return;
    }
    ZYTOperation *operation = [ZYTOperation CreatWithParameterOne:one withParameterTwo:two withType:type];
    NSLog(@"%f",[operation getResult]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
