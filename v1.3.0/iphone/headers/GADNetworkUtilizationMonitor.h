// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNETWORKUTILIZATIONMONITOR_H
#define GADNETWORKUTILIZATIONMONITOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADNetworkUtilizationStatistics;
@class GADObserverCollection;

@interface GADNetworkUtilizationMonitor : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    GADNetworkUtilizationStatistics *_aggregatedStatistics;
    GADNetworkUtilizationStatistics *_initialStatistics;
    GADObserverCollection *_observers;
}


@property (readonly) NSInteger cellularTransmittedByteCount;
@property (readonly) NSInteger cellularReceivedByteCount;
@property (readonly) NSInteger wifiTransmittedByteCount;
@property (readonly) NSInteger wifiReceivedByteCount;


-(id)init;
-(void)start;
-(void)stop;
-(void)updateByteCounts;


@end


#endif