// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCJSTIMER_H
#define ADCJSTIMER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCJSTimer : NSObject {
    NSMutableSet *_timers;
}




-(id)init;
-(void)addTimer:(id)arg0 ;
-(void)removeTimer:(id)arg0 ;
-(void)timerFired:(id)arg0 ;
-(void)removeTimersForContext:(id)arg0 ;
+(id)_createTimingFunctionThatRepeats:(SEL)arg0 ;
+(void)addTimingFunctionsToContext:(id)arg0 ;
+(void)removeTimersForContext:(id)arg0 ;
+(id)sharedTimer;


@end


#endif