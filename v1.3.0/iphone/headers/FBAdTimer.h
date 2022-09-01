// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADTIMER_H
#define FBADTIMER_H

@protocol OS_dispatch_source, OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdTimer : NSObject

@property (retain) NSObject<OS_dispatch_source> *timer; // ivar: _timer
@property (copy, nonatomic) id *block; // ivar: _block
@property (copy, nonatomic) id *innerBlock; // ivar: _innerBlock
@property (copy, nonatomic) id *condition; // ivar: _condition
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (nonatomic) CGFloat timeInterval; // ivar: _timeInterval
@property (nonatomic) BOOL repeats; // ivar: _repeats
@property (readonly, nonatomic, getter=isValid) BOOL valid;
@property (copy, nonatomic) NSDictionary *userInfo; // ivar: _userInfo


// -(id)scheduledTimerWithTimeInterval:(CGFloat)arg0 repeatsUntilCondition:(id)arg1 queue:(unk)arg2 block:(id)arg3  ;
-(void)invalidate;
-(void)dealloc;
-(void)fire;
+(void)initialize;
+(id)scheduledTimerWithTimeInterval:(CGFloat)arg0 repeats:(BOOL)arg1 block:(id)arg2 ;
+(id)scheduledTimerWithTimeInterval:(CGFloat)arg0 repeats:(BOOL)arg1 queue:(id)arg2 block:(id)arg3 ;
// +(id)scheduledTimerWithTimeInterval:(CGFloat)arg0 repeatsUntilCondition:(id)arg1 queue:(unk)arg2 block:(id)arg3  ;


@end


#endif