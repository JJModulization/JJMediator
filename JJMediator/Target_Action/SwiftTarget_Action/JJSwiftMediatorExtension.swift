//
//  JJSwiftMediatorExtension.swift
//  JJSwiftMediator
//
//  Created by yejiajun on 2017/5/9.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

// Target名称
let swiftTargetName = "Swift";
// Action名称
let ocModuleMethodName = "ocModuleMethod";
let ocFetchNameFromModuleMethodName = "ocFetchNameFromModuleMethod";
let ocModuleMethodWithParametersName = "ocModuleMethodWithParameters";
let ocFetchNumberFromModuleMethodWithParametersName = "ocFetchNumberFromModuleMethodWithParameters";

let swiftModuleMethodName = "swiftModuleMethod";
let swiftFetchNameFromModuleMethodName = "swiftFetchNameFromModuleMethod";
let swiftModuleMethodWithParametersName = "swiftModuleMethodWithParameters";
let swiftFetchNumberFromModuleMethodWithParametersName = "swiftFetchNumberFromModuleMethodWithParameters";

extension JJSwiftMediator {
    
//MARK: - SwiftTargetAction-OCModule
    // 无入参无返回值
    public func JJSwiftMediator_ocModuleMethod() {
        _ = self.performSwift(targetName: swiftTargetName, actionName: ocModuleMethodName, parameters: nil)
    }
    
    // 无入参返回对象类型
    public func JJSwiftMediator_ocFetchNameFromModuleMethod() -> String? {
        return self.performSwift(targetName: swiftTargetName, actionName: ocFetchNameFromModuleMethodName, parameters: nil) as? String
    }
    
    // 有入参无返回值
    public func JJSwiftMediator_ocModuleMethod(withName name: String?, callback: SwiftModuleBlock?) {
        var parameters = JJDictionary()
        parameters["name"] = name
        parameters["callback"] = callback
        _ = self.performSwift(targetName: swiftTargetName, actionName: ocModuleMethodWithParametersName, parameters: parameters)
    }
    
    // 有入参返回基本类型
    public func JJSwiftMediator_ocFetchNumberFromModuleMethod(withNumber number: Int) -> Int {
        var parameters = JJDictionary()
        parameters["number"] = number
        return self.performSwift(targetName: swiftTargetName, actionName: ocFetchNumberFromModuleMethodWithParametersName, parameters: parameters) as! Int
    }
    
//MARK: - SwiftTargetAction-SwiftModule
    // 无入参无返回值
    public func JJSwiftMediator_swiftModuleMethod() {
        _ = self.performSwift(targetName: swiftTargetName, actionName: swiftModuleMethodName, parameters: nil)
    }
    
    // 无入参返回对象类型
    public func JJSwiftMediator_swiftFetchNameFromModuleMethod() -> String? {
        return self.performSwift(targetName: swiftTargetName, actionName: swiftFetchNameFromModuleMethodName, parameters: nil) as? String
    }
    
    // 有入参无返回值
    public func JJSwiftMediator_swiftModuleMethod(withName name: String?, callback: SwiftModuleBlock?) {
        var parameters = JJDictionary()
        parameters["name"] = name
        parameters["callback"] = callback
        _ = self.performSwift(targetName: swiftTargetName, actionName: swiftModuleMethodWithParametersName, parameters: parameters)
    }
    
    // 有入参返回基本类型
    public func JJSwiftMediator_swiftFetchNumberFromModuleMethod(withNumber number: Int) -> Int {
        var parameters = JJDictionary()
        parameters["number"] = number
        return self.performSwift(targetName: swiftTargetName, actionName: swiftFetchNumberFromModuleMethodWithParametersName, parameters: parameters) as! Int
    }
}
