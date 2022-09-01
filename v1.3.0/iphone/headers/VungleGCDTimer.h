// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEGCDTIMER_H
#define VUNGLEGCDTIMER_H

@protocol OS_dispatch_source, OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface VungleGCDTimer : NSObject

@property (retain, nonatomic) NSObject<OS_dispatch_source> *timer; // ivar: _timer
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue


-(id)initWithQueue:(id)arg0 ;
// -(BOOL)startWithInterval:(CGFloat)arg0 dispatchBlock:(id)arg1 error:(unk)arg2  ;
-(void)cancel;
-(BOOL)setupWithInterval:(CGFloat)arg0 queue:(id)arg1 block:(id)arg2 ;


@end


#endif