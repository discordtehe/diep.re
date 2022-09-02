// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPERFORMANCEMETRICS_H
#define GADPERFORMANCEMETRICS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADMemoryUtilizationMonitor;
@class GADScheduler;
@class GADNetworkUtilizationMonitor;
@protocol GADFramerateObserver;

@interface GADPerformanceMetrics : NSObject <GADFramerateObserver>

 {
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSDate *_startTimestamp;
    NSMutableArray *_droppedFrameCounts;
    CGFloat _droppedFrameReportingInterval;
    GADMemoryUtilizationMonitor *_memoryMonitor;
    GADScheduler *_memoryUpdateScheduler;
    GADNetworkUtilizationMonitor *_networkMonitor;
    NSUInteger _initiallyAllocatedByteCount;
    NSUInteger _peakAllocatedByteCount;
    NSUInteger _finalAllocatedByteCount;
    NSInteger _cellularTransmittedByteCount;
    NSInteger _cellularReceivedByteCount;
    NSInteger _wifiTransmittedByteCount;
    NSInteger _wifiReceivedByteCount;
}


@property (readonly, copy, nonatomic) NSArray *droppedFrameCountPerSample;
@property (readonly, nonatomic) NSUInteger initiallyAllocatedByteCount;
@property (readonly, nonatomic) NSUInteger peakAllocatedByteCount;
@property (readonly, nonatomic) NSUInteger finalAllocatedByteCount;
@property (readonly, nonatomic) NSInteger cellularTransmittedByteCount;
@property (readonly, nonatomic) NSInteger cellularReceivedByteCount;
@property (readonly, nonatomic) NSInteger wifiTransmittedByteCount;
@property (readonly, nonatomic) NSInteger wifiReceivedByteCount;
@property (readonly, copy, nonatomic) NSDictionary *dictionaryRepresentation;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)start;
-(void)stop;
-(void)recordDroppedFrames:(NSInteger)arg0 forBucketIndex:(NSInteger)arg1 ;
-(void)framerateMonitorDidDetectDroppedFrames:(NSInteger)arg0 ;


@end


#endif