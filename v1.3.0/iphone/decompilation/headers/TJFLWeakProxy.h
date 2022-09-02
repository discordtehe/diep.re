// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJFLWEAKPROXY_H
#define TJFLWEAKPROXY_H


#import <Foundation/Foundation.h>


@interface TJFLWeakProxy : NSProxy

@property (weak, nonatomic) id *target; // ivar: _target


-(id)forwardingTargetForSelector:(SEL)arg0 ;
-(void)forwardInvocation:(id)arg0 ;
-(id)methodSignatureForSelector:(SEL)arg0 ;
+(id)weakProxyForObject:(id)arg0 ;


@end


#endif