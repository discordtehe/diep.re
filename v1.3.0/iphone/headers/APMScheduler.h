// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSCHEDULER_H
#define APMSCHEDULER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface APMScheduler : NSObject

@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *workerQueue; // ivar: _workerQueue


-(id)initWithWorkerQueueLabel:(id)arg0 ;
-(void)scheduleOnWorkerQueueBlockID:(id)arg0 block:(id)arg1 ;
-(void)dispatchSyncOnWorkerQueueBlockID:(id)arg0 block:(id)arg1 ;
+(BOOL)checkOnBackgroundThreadWithMethodName:(id)arg0 ;


@end


#endif