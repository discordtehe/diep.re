// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULOBJECTSWIZZLER_H
#define GULOBJECTSWIZZLER_H


#import <Foundation/Foundation.h>


@interface GULObjectSwizzler : NSObject {
    id *_swizzledObject;
    Class _originalClass;
}


@property (readonly, nonatomic) Class generatedClass; // ivar: _generatedClass


-(id)initWithObject:(id)arg0 ;
-(void)copySelector:(SEL)arg0 fromClass:(Class)arg1 isClassSelector:(BOOL)arg2 ;
-(void)setAssociatedObjectWithKey:(id)arg0 value:(id)arg1 association:(NSUInteger)arg2 ;
-(id)getAssociatedObjectForKey:(id)arg0 ;
-(void)swizzle;
-(void)dealloc;
-(BOOL)isSwizzlingProxyObject;
+(void)setAssociatedObject:(id)arg0 key:(id)arg1 value:(id)arg2 association:(NSUInteger)arg3 ;
+(id)getAssociatedObject:(id)arg0 key:(id)arg1 ;


@end


#endif