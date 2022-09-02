// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISDELEGATETHROTTLER_H
#define ISDELEGATETHROTTLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISDelegateThrottler : NSObject {
    NSMutableDictionary *_lastInvoked;
    NSMutableDictionary *_isWaitingForInvocation;
}




-(id)init;
-(BOOL)hasPendingInvocation;
-(BOOL)hasPendingInvocation:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 ;
-(void)interstitialDidFailToLoadInternal:(id)arg0 instanceId:(id)arg1 ;
-(BOOL)hasPendingInvocationInternal:(id)arg0 ;
-(void)invokeDelegate:(id)arg0 instanceId:(id)arg1 ;
+(id)sharedInstance;


@end


#endif