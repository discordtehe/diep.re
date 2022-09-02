// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef BUFFEREDTASKSSCHEDULER_H
#define BUFFEREDTASKSSCHEDULER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface BufferedTasksScheduler : NSObject {
    NSMutableArray *mQueue;
    float mMaxFrameTime;
    unsigned int mFramesToSkip;
    CGFloat mLastExecutionTime;
}


@property BOOL isEnabled; // ivar: mIsEnabled


-(id)init;
-(void)scheduleWithDelegate:(id)arg0 ;
-(void)scheduleWithCallback:(id)arg0 ;
-(void)unscheduleWithDelegate:(id)arg0 ;
-(void)unscheduleAll;
-(void)dealloc;
-(void)update:(CGFloat)arg0 ;


@end


#endif