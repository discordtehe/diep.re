// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSTIMER_H
#define ANSTIMER_H

@protocol OS_dispatch_source;

#import <Foundation/Foundation.h>


@interface ANSTimer : NSObject

@property (nonatomic) CGFloat timeInterval; // ivar: _timeInterval
@property (readonly, nonatomic) CGFloat tolerance;
@property (copy, nonatomic) id *timerBlock; // ivar: _timerBlock
@property (readonly, nonatomic) NSOperationQueue *queue; // ivar: _queue
@property (retain, nonatomic) NSObject<OS_dispatch_source> *timerSource; // ivar: _timerSource
@property (readonly, nonatomic) NSString *timerIdentifier; // ivar: _timerIdentifier


-(id)initWithTimeInterval:(CGFloat)arg0 onQueue:(id)arg1 timerIdentifier:(id)arg2 block:(id)arg3 ;
-(void)dealloc;
-(void)scheduleTimer;
-(void)executeBlock;
-(void)scheduleDispatchTimer;


@end


#endif