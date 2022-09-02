// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULSWIZZLER_H
#define GULSWIZZLER_H


#import <Foundation/Foundation.h>


@interface GULSwizzler : NSObject



+(void)swizzleClass:(Class)arg0 selector:(SEL)arg1 isClassSelector:(BOOL)arg2 withBlock:(id)arg3 ;
+(void)unswizzleClass:(Class)arg0 selector:(SEL)arg1 isClassSelector:(BOOL)arg2 ;
+(*unk)originalImplementationForClass:(Class)arg0 selector:(SEL)arg1 isClassSelector:(BOOL)arg2 ;
+(*unk)currentImplementationForClass:(Class)arg0 selector:(SEL)arg1 isClassSelector:(BOOL)arg2 ;
+(BOOL)selector:(SEL)arg0 existsInClass:(Class)arg1 isClassSelector:(BOOL)arg2 ;
+(id)ivarObjectsForObject:(id)arg0 ;


@end


#endif