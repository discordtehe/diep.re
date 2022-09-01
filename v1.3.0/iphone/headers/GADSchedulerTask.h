// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSCHEDULERTASK_H
#define GADSCHEDULERTASK_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface GADSchedulerTask : NSObject

@property (copy, nonatomic) id *block; // ivar: _block
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue




@end


#endif