// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMADEXPOSUREREPORTER_H
#define APMADEXPOSUREREPORTER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMAdExposureReporter : NSObject {
    NSMutableDictionary *_adUnitCounts;
    NSMutableDictionary *_adUnitStartTimes;
    CGFloat _adExposureStartTime;
    NSObject<OS_dispatch_queue> *_queue;
}


@property (nonatomic, getter=isReportingEnabled) BOOL reportingEnabled; // ivar: _reportingEnabled


-(id)init;
-(void)dealloc;
-(void)beginAdUnitExposure:(id)arg0 ;
-(void)endAdUnitExposure:(id)arg0 ;
-(CGFloat)currentTime;
-(void)updateStartTimesOnSerialQueue:(CGFloat)arg0 ;
-(void)logExposureEventsWithScreenParameters:(id)arg0 ;
-(void)logExposureEventsOnSerialQueueWithEndTime:(CGFloat)arg0 screenParameters:(id)arg1 ;
-(void)logAdExposureEventOnSerialQueueWithEndTime:(CGFloat)arg0 screenParameters:(id)arg1 ;
-(void)logAdUnitExposureEventOnSerialQueueWithID:(id)arg0 endTime:(CGFloat)arg1 screenParameters:(id)arg2 ;
-(void)handleScreenDidChangeFromScreen:(id)arg0 toScreen:(id)arg1 ;
-(void)handleEngagementTimer:(id)arg0 ;
-(void)handleAppDidBecomeActive;
-(void)handleAppWillResignActiveWithScreen:(id)arg0 ;
+(id)sharedInstance;


@end


#endif