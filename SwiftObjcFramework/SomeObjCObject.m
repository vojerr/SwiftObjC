//
//  SomeObjCObject.m
//  SwiftObjC
//
//  Created by Ruslan Samsonov on 1/31/17.
//  Copyright © 2017 Ruslan Samsonov. All rights reserved.
//

#import "SomeObjCObject.h"
#import <SwiftObjcFramework/SwiftObjcFramework-Swift.h>

@implementation SomeObjCObject
{
//    SomeSwiftObject *_swiftObject;
}

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)test:(id)someObject {
    NSLog(@"%@", someObject);
    [someObject performSelector:@selector(test)];
}
@end
