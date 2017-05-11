//
//  JJOCMediator+OC.h
//  JJSwiftMediator
//
//  Created by yejiajun on 2017/5/9.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

#import "JJOCMediator.h"

@interface JJOCMediator (OC)

#pragma mark - OCModule
// 无入参无返回值
- (void)JJOCMediator_ocModuleMethod;
// 无入参返回对象类型
- (NSString *)JJOCMediator_ocFetchNameFromModuleMethod;
// 有入参无返回值
- (void)JJOCMediator_ocModuleMethodWithName:(NSString *)name callback:(void(^)(NSString *name))callback;
// 有入参返回基本类型
- (int)JJOCMediator_ocFetchNumberFromModuleMethodWithNumber:(int)number;

#pragma mark - SwiftModule
// 无入参无返回值
- (void)JJOCMediator_swiftModuleMethod;
// 无入参返回对象类型
- (NSString *)JJOCMediator_swiftFetchNameFromModuleMethod;
// 有入参无返回值
- (void)JJOCMediator_swiftModuleMethodWithName:(NSString *)name callback:(void(^)(NSString *name))callback;
// 有入参返回基本类型
- (int)JJOCMediator_swiftFetchNumberFromModuleMethodWithNumber:(int)number;


@end
