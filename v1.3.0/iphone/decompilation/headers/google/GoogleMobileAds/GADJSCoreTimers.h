// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCORETIMERS_H
#define GADJSCORETIMERS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADJSCoreJSContext;
@protocol GADJSCoreTimersProtocol;

@interface GADJSCoreTimers : NSObject <GADJSCoreTimersProtocol>

 {
    GADJSCoreJSContext *_JSCoreJSContext;
    int _counter;
    NSMutableDictionary *_timers;
    NSObject<OS_dispatch_queue> *_lockQueue;
}




-(id)initWithJSCoreJSContext:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(id)JSFunctionForSetTimerWithRepeats:(BOOL)arg0 ;
-(id)getSetTimeout;
-(id)getSetInterval;
-(id)JSFunctionForClearTimer;
-(id)getClearTimeout;
-(id)getClearInterval;


@end


#endif