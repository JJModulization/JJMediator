//
//  JJOCExtension.swift
//  JJMediator
//
//  Created by yejiajun on 2017/5/11.
//  Copyright © 2017年 yejiajun. All rights reserved.
//

import Foundation

// Target名称
let ocTargetName = "OC";
// Action名称
let ocModuleMethodName = "ocModuleMethod";
let ocFetchNameFromModuleMethodName = "ocFetchNameFromModuleMethod";
let ocModuleMethodWithParametersName = "ocModuleMethodWithParameters";
let ocFetchNumberFromModuleMethodWithParametersName = "ocFetchNumberFromModuleMethodWithParameters";

extension JJMediator {
    
    // 无入参无返回值
    public func JJMediator_ocModuleMethod() {
        _ = self.performOC(targetName: ocTargetName, actionName: ocModuleMethodName, parameters: nil)
    }
    
    // 无入参返回对象类型
    public func JJMediator_ocFetchNameFromModuleMethod() -> String? {
        return self.performOC(targetName: ocTargetName, actionName: ocFetchNameFromModuleMethodName, parameters: nil) as? String
    }
    
    // 有入参无返回值
    public func JJMediator_ocModuleMethod(withName name: String?, callback: ((String?) -> Void)?) {
        var parameters = JJDictionary()
        parameters["name"] = name
        parameters["callback"] = callback
        _ = self.performOC(targetName: ocTargetName, actionName: ocModuleMethodWithParametersName, parameters: parameters)
    }
    
    // 有入参返回基本类型
    public func JJMediator_ocFetchNumberFromModuleMethod(withNumber number: Int) -> Int {
        var parameters = JJDictionary()
        parameters["number"] = number
        return self.performOC(targetName: ocTargetName, actionName: ocFetchNumberFromModuleMethodWithParametersName, parameters: parameters) as! Int
    }
    
}
