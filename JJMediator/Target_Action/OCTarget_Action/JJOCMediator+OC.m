//
//  JJOCMediator+OC.m
//  JJSwiftMediator
//
//  Created by yejiajun on 2017/5/9.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

#import "JJOCMediator+OC.h"

// Target名称
NSString * const ocTargetName = @"OC";
// Action名称
NSString * const ocModuleMethodName = @"ocModuleMethod";
NSString * const ocFetchNameFromModuleMethodName = @"ocFetchNameFromModuleMethod";
NSString * const ocModuleMethodWithParametersName = @"ocModuleMethodWithParameters";
NSString * const ocFetchNumberFromModuleMethodWithParametersName = @"ocFetchNumberFromModuleMethodWithParameters";

NSString * const swiftModuleMethodName = @"swiftModuleMethod";
NSString * const swiftFetchNameFromModuleMethodName = @"swiftFetchNameFromModuleMethod";
NSString * const swiftModuleMethodWithParametersName = @"swiftModuleMethodWithParameters";
NSString * const swiftFetchNumberFromModuleMethodWithParametersName = @"swiftFetchNumberFromModuleMethodWithParameters";

@implementation JJOCMediator (OC)

#pragma mark - OCModule
// 无入参无返回值
- (void)JJOCMediator_ocModuleMethod
{
    [self performOCWithTargetName:ocTargetName actionName:ocModuleMethodName parameters:nil];
}

// 无入参返回对象类型
- (NSString *)JJOCMediator_ocFetchNameFromModuleMethod
{
    return [self performOCWithTargetName:ocTargetName actionName:ocFetchNameFromModuleMethodName parameters:nil];
}

// 有入参无返回值
- (void)JJOCMediator_ocModuleMethodWithName:(NSString *)name callback:(void (^)(NSString *))callback
{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"name"] = name;
    parameters[@"callback"] = callback;
    [self performOCWithTargetName:ocTargetName actionName:ocModuleMethodWithParametersName parameters:parameters];
}

// 有入参返回基本类型
- (int)JJOCMediator_ocFetchNumberFromModuleMethodWithNumber:(int)number
{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"number"] = @(number);  // OC中的字典无法存储基本类型，需要转化为对象类型
    return (int)[[self performOCWithTargetName:ocTargetName actionName:ocFetchNumberFromModuleMethodWithParametersName parameters:parameters] integerValue];
}

#pragma mark - SwiftModule
// 无入参无返回值
- (void)JJOCMediator_swiftModuleMethod
{
    [self performOCWithTargetName:ocTargetName actionName:swiftModuleMethodName parameters:nil];
}

// 无入参返回对象类型
- (NSString *)JJOCMediator_swiftFetchNameFromModuleMethod
{
    return [self performOCWithTargetName:ocTargetName actionName:swiftFetchNameFromModuleMethodName parameters:nil];
}

// 有入参无返回值
- (void)JJOCMediator_swiftModuleMethodWithName:(NSString *)name callback:(void(^)(NSString *name))callback
{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"name"] = name;
    parameters[@"callback"] = callback;
    [self performOCWithTargetName:ocTargetName actionName:swiftModuleMethodWithParametersName parameters:parameters];
}

// 有入参返回基本类型
- (int)JJOCMediator_swiftFetchNumberFromModuleMethodWithNumber:(int)number
{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"number"] = @(number);  // OC中的字典无法存储基本类型，需要转化为对象类型
    return (int)[[self performOCWithTargetName:ocTargetName actionName:swiftFetchNumberFromModuleMethodWithParametersName parameters:parameters] integerValue];
}


@end
