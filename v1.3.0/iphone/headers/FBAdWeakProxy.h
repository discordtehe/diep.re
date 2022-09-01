// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWEAKPROXY_H
#define FBADWEAKPROXY_H


#import <Foundation/Foundation.h>


@interface FBAdWeakProxy : NSObject {
    id *_object;
}




-(id)forwardingTargetForSelector:(SEL)arg0 ;
-(id)methodSignatureForSelector:(SEL)arg0 ;
-(void)forwardInvocation:(id)arg0 ;
-(BOOL)respondsToSelector:(SEL)arg0 ;
-(BOOL)conformsToProtocol:(id)arg0 ;
-(BOOL)isKindOfClass:(Class)arg0 ;
+(id)proxyForObject:(id)arg0 ;
+(id)unwrapProxy:(id)arg0 ;


@end


#endif