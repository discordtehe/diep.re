// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPTIMER_H
#define MPTIMER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPTimer : NSObject

@property (nonatomic) CGFloat timeInterval; // ivar: _timeInterval
@property (retain, nonatomic) NSTimer *timer; // ivar: _timer
@property (nonatomic) BOOL isRepeatingTimer; // ivar: _isRepeatingTimer
@property (nonatomic) BOOL isCountdownActive; // ivar: _isCountdownActive
@property (weak, nonatomic) id *target; // ivar: _target
@property (nonatomic) SEL selector; // ivar: _selector


-(void)dealloc;
-(BOOL)isValid;
-(void)invalidate;
-(void)scheduleNow;
-(void)pause;
-(void)resume;
+(id)timerWithTimeInterval:(CGFloat)arg0 target:(id)arg1 selector:(SEL)arg2 repeats:(BOOL)arg3 runLoopMode:(id)arg4 ;
+(id)timerWithTimeInterval:(CGFloat)arg0 target:(id)arg1 selector:(SEL)arg2 repeats:(BOOL)arg3 ;


@end


#endif