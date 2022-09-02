// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSEARCHADREPORTER_H
#define APMSEARCHADREPORTER_H


#import <Foundation/Foundation.h>

@class APMAlarm;
@class APMPersistedConfig;

@interface APMSearchAdReporter : NSObject {
    APMAlarm *_searchAdReporterAlarm;
    APMPersistedConfig *_persistedConfig;
}


@property (nonatomic, getter=isSearchAdReporterEnabled) BOOL searchAdReporterEnabled; // ivar: _searchAdReporterEnabled


-(id)initWithWorkerQueue:(id)arg0 persistedConfig:(id)arg1 ;
-(void)start;
-(void)dealloc;
-(void)maybeLogIAdCampaignEvent;
-(void)scheduleSearchAdReport;
-(void)cancelScheduling;
-(id)adClientInstance;
-(void)logCampaignEventWithSearchAdCampaign:(BOOL)arg0 campaign:(id)arg1 term:(id)arg2 ;
-(void)lookUpAdConversionDetails;


@end


#endif