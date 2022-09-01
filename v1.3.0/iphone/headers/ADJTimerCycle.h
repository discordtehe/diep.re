// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJTIMERCYCLE_H
#define ADJTIMERCYCLE_H

@protocol OS_dispatch_source;

#import <Foundation/Foundation.h>

@protocol ADJLogger;

@interface ADJTimerCycle : NSObject

@property (retain, nonatomic) NSObject<OS_dispatch_source> *source; // ivar: _source
@property (nonatomic) BOOL suspended; // ivar: _suspended
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (copy, nonatomic) NSString *name; // ivar: _name


// -(id)initBlock:(id)arg0 queue:(unk)arg1 startTime:(id)arg2 intervalTime:(CGFloat)arg3 name:(CGFloat)arg4  ;
-(void)resume;
-(void)suspend;
-(void)cancel;
-(void)dealloc;
// +(id)timerWithBlock:(id)arg0 queue:(unk)arg1 startTime:(id)arg2 intervalTime:(CGFloat)arg3 name:(CGFloat)arg4  ;


@end


#endif