//
//  Target_OC.m
//  JJSwiftMediator
//
//  Created by yejiajun on 2017/5/9.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

#import "Target_OC.h"
#import "OCModule.h"
#import "JJSwiftMediator-Swift.h"

@implementation Target_OC

#pragma mark - OCModule
// 无入参无返回值
- (id)Action_ocModuleMethod
{
    OCModule *ocModule = [[OCModule alloc] init];
    [ocModule moduleMethod];
    return nil;
}

// 无入参返回对象类型
- (NSString *)Action_ocFetchNameFromModuleMethod
{
    OCModule *ocModule = [[OCModule alloc] init];
    NSString *name = [ocModule fetchNameFromModuleMethod];
    return name;
}

// 有入参无返回值
- (id)Action_ocModuleMethodWithParameters:(NSDictionary *)parameters
{
    OCModule *ocModule = [[OCModule alloc] init];
    NSString *name = parameters[@"name"];
    void (^callback)(NSString *name) = parameters[@"callback"];
    [ocModule moduleMethodWithName:name callback:callback];
    return nil;
}

// 有入参返回基本类型
- (NSNumber *)Action_ocFetchNumberFromModuleMethodWithParameters:(NSDictionary *)parameters
{
    OCModule *ocModule = [[OCModule alloc] init];
    int number = (int)[parameters[@"number"] integerValue];
    int result = [ocModule fetchNumberFromModuleMethodWithNumber:number];
    NSNumber *resultNumber = [NSNumber numberWithInt:result];
    return resultNumber;
}

#pragma mark - SwiftModule
// 无入参无返回值
- (id)Action_swiftModuleMethod
{
    SwiftModule *swfitModule = [[SwiftModule alloc] init];
    [swfitModule moduleMethod];
    return nil;
}

// 无入参返回对象类型
- (NSString *)Action_swiftFetchNameFromModuleMethod
{
    SwiftModule *swfitModule = [[SwiftModule alloc] init];
    NSString *name = [swfitModule fetchNameFromModuleMethod];
    return name;
}

// 有入参无返回值
- (id)Action_swiftModuleMethodWithParameters:(NSDictionary *)parameters
{
    SwiftModule *swfitModule = [[SwiftModule alloc] init];
    NSString *name = parameters[@"name"];
    void (^callback)(NSString *name) = parameters[@"callback"];
    [swfitModule moduleMethodWithName:name callback:callback];
    return nil;
}

// 有入参返回基本类型
- (NSNumber *)Action_swiftFetchNumberFromModuleMethodWithParameters:(NSDictionary *)parameters
{
    SwiftModule *swfitModule = [[SwiftModule alloc] init];
    int number = (int)[parameters[@"number"] integerValue];
    int result = (int)[swfitModule fetchNumberFromModuleMethodWithNumber:number];
    NSNumber *resultNumber = [NSNumber numberWithInt:result];
    return resultNumber;
}

@end
