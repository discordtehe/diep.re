// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADLIFECYCLEEVENTPINGMONITOR_H
#define GADADLIFECYCLEEVENTPINGMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADAdLifecycleEventPingMonitor : NSObject {
    NSArray *_adLoadURLStrings;
    NSArray *_onePixelURLStrings;
    NSArray *_clickURLStrings;
    BOOL _analyticsLoggingEnabled;
    GADObserverCollection *_observers;
    atomic_flag _adLoadURLsPinged;
    atomic_flag _onePixelURLsPinged;
    uint8_t _mediationBannerDidRefresh;
}




-(id)initWithAd:(id)arg0 adLoadURLStrings:(id)arg1 onePixelURLStrings:(id)arg2 clickURLStrings:(id)arg3 analyticsLoggingEnabled:(BOOL)arg4 ;
-(void)pingURLStrings:(id)arg0 analyticsEvent:(id)arg1 context:(id)arg2 ;
-(void)handleAdLoadInContext:(id)arg0 ;
-(void)handleOnePixelImpressionInContext:(id)arg0 ;
-(void)handleMediationBannerRefreshInContext:(id)arg0 ;
-(void)pingAdLoadURLsInContext:(id)arg0 ;
-(void)pingOnePixelURLsInContext:(id)arg0 ;
-(void)handleClickInContext:(id)arg0 ;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 ;


@end


#endif