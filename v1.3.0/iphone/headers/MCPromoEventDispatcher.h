// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOEVENTDISPATCHER_H
#define MCPROMOEVENTDISPATCHER_H


#import <Foundation/Foundation.h>


@interface MCPromoEventDispatcher : NSObject



-(void)eventReceived:(id)arg0 ;
-(void)_registerEvent:(id)arg0 ;
-(void)registerForEvent:(id)arg0 observer:(id)arg1 selector:(SEL)arg2 ;
-(void)_unregisterObserverForAllEvents:(id)arg0 ;
-(void)_unregisterForEventAndObserver:(id)arg0 ;
-(void)unregisterForEvent:(id)arg0 observer:(id)arg1 ;
-(void)unregisterObserverForAllEvents:(id)arg0 ;
-(void)postEvent:(id)arg0 ;
-(void)postEvent:(id)arg0 data:(id)arg1 ;
+(id)sharedMCPromoEventDispatcher;
+(void)releaseSharedMCPromoEventDispatcher;


@end


#endif