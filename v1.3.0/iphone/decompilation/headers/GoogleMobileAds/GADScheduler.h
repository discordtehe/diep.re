// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSCHEDULER_H
#define GADSCHEDULER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADScheduler : NSObject {
    NSMutableArray *_tasks;
    NSTimer *_timer;
}


@property (readonly, nonatomic) CGFloat interval; // ivar: _interval


-(id)init;
-(id)initWithInterval:(CGFloat)arg0 ;
-(void)dealloc;
-(void)scheduleOnQueue:(id)arg0 block:(id)arg1 ;
-(void)executeBlocks;
-(void)start;
-(void)stop;


@end


#endif