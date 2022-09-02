// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OBJCANYWRAPPER_H
#define OBJCANYWRAPPER_H


#import <Foundation/Foundation.h>


@interface ObjcAnyWrapper : NSObject {
    Any _cpp_object;
}


@property ? cppObject;


+(id)wrapObject:(struct Any *)arg0 ;


@end


#endif