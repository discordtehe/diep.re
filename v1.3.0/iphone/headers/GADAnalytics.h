// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADANALYTICS_H
#define GADANALYTICS_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADAnalytics : NSObject {
    id *_adExposureReporter;
    id *_analyticsIdentifiers;
    id *_analytics;
    id *_screenViewReporter;
    uint8_t _analyticsEnabled;
    NSOperationQueue *_operationQueue;
    GADObserverCollection *_observers;
}




-(void)startAppMeasurement;
-(id)initWithFIRFramework;
-(id)initWithAPMFramework;
-(void)updateNPABit;
-(BOOL)validateAnalytics;
-(id)googleAppID;
-(id)appInstanceID;
-(id)adEventID;
-(id)appIDOrigin;
-(void)logEventWithName:(id)arg0 adEventID:(id)arg1 parameters:(id)arg2 ;
-(void)getScreenName:(*id)arg0 screenClass:(*id)arg1 ;
-(void)setScreenName:(id)arg0 screenClass:(id)arg1 ;
-(void)beginAdUnitExposure:(id)arg0 ;
-(void)endAdUnitExposure:(id)arg0 ;
-(BOOL)analyticsEnabled;
+(id)sharedInstance;


@end


#endif