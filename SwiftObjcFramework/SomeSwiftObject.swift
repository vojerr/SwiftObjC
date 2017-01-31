//
//  SomeSwiftObject.swift
//  SwiftObjC
//
//  Created by Ruslan Samsonov on 1/31/17.
//  Copyright © 2017 Ruslan Samsonov. All rights reserved.
//

import UIKit

open class SomeSwiftObject: NSObject {

    open override static func initialize() {
        
        let originalSelector = Selector("publicFunc")
        let swizzledSelector = Selector("anotherPublicFunc")
        
        let originalMethod = class_getInstanceMethod(self, originalSelector)
        let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
        
        method_exchangeImplementations(originalMethod, swizzledMethod)
    
        
    }
    
    public func publicFunc() {
        print("Swift publicFunc")
    }
    
    private func anotherPublicFunc() {
        print("Swift anotherPublicFunc")
    }
    
    @objc private func objcPrivateFunc() {
        print("Swift objcPrivateFunc")
//        privateFunc()
    }
    
    dynamic private func privateFunc() {
        print("Swift privateFunc")
    }
}
