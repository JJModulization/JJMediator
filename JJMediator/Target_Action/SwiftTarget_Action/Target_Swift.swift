//
//  Target_Swfit.swift
//  JJSwiftMediator
//
//  Created by yejiajun on 2017/5/9.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

import UIKit

class Target_Swift: NSObject {
    
//MARK: - OCModule
    // 无入参无返回值
    public func Action_ocModuleMethod() {
        let ocModule = OCModule()
        ocModule.moduleMethod()
    }
    
    // 无入参返回对象类型
    public func Action_ocFetchNameFromModuleMethod() -> String? {
        let ocModule = OCModule()
        let name = ocModule.fetchNameFromModuleMethod()
        return name
    }
    
    // 有入参无返回值
    public func Action_ocModuleMethod(parameters: JJDictionary) {
        let ocModule = OCModule()
        let name = parameters["name"] as? String
        let callback = parameters["callback"] as? SwiftModuleBlock
        ocModule.moduleMethod(withName: name, callback: callback)
    }
    
    // 有入参返回基本类型
    public func Action_ocFetchNumberFromModuleMethod(parameters: JJDictionary) -> NSNumber {
        let ocModule = OCModule()
        let number = parameters["number"] as! Int
        let result = ocModule.fetchNumberFromModuleMethod(withNumber: Int32(number))
        let resultNumber = NSNumber(value: result)
        return resultNumber
    }
    
//MARK: - SwiftModule
    // 无入参无返回值
    public func Action_swiftModuleMethod() {
        let swiftModule = SwiftModule()
        swiftModule.moduleMethod()
    }
    
    // 无入参返回对象类型
    public func Action_swiftFetchNameFromModuleMethod() -> String? {
        let swiftModule = SwiftModule()
        let name = swiftModule.fetchNameFromModuleMethod()
        return name
    }
    
    // 有入参无返回值
    public func Action_swiftModuleMethod(parameters: JJDictionary) {
        let swiftModule = SwiftModule()
        let name = parameters["name"] as? String
        let callback = parameters["callback"] as? SwiftModuleBlock
        swiftModule.moduleMethod(withName: name, callback: callback)
    }
    
    // 有入参返回基本类型
    public func Action_swiftFetchNumberFromModuleMethod(parameters: JJDictionary) -> NSNumber {
        let swiftModule = SwiftModule()
        let number = parameters["number"] as! Int
        let result = swiftModule.fetchNumberFromModuleMethod(withNumber: number)
        let resultNumber = NSNumber(value: result)
        return resultNumber
    }
}

