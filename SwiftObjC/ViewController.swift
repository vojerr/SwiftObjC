//
//  ViewController.swift
//  SwiftObjC
//
//  Created by Ruslan Samsonov on 1/31/17.
//  Copyright © 2017 Ruslan Samsonov. All rights reserved.
//

import UIKit
import SwiftObjcFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftObject = SomeSwiftObject()
        let objcClassObject = ObjcClass()
        let objcObject = SomeObjCObject()
        objcObject.test(PureSwiftObject())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    class PureSwiftObject {
        dynamic public func test() {
            print("test")
        }
    }

}

