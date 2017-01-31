//
//  ObjcClass.m
//  SwiftObjC
//
//  Created by Ruslan Samsonov on 1/31/17.
//  Copyright © 2017 Ruslan Samsonov. All rights reserved.
//

#import "ObjcClass.h"
@import SwiftObjcFramework;

@implementation ObjcClass

- (instancetype)init {
    if (self = [super init]) {
        SomeSwiftObject *swiftObject = [[SomeSwiftObject alloc] init];
//        [swiftObject objcPrivateFunc];
        [swiftObject publicFunc];
        [swiftObject performSelector:@selector(objcPrivateFunc)];
        [swiftObject performSelector:@selector(privateFunc)];
        
        //privateFunc
    }
    return self;
}
@end
