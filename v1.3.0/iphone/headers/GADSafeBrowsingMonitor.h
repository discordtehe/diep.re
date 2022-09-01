// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSAFEBROWSINGMONITOR_H
#define GADSAFEBROWSINGMONITOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;
@class GADEventContext;
@class GADSafeBrowsingReport;

@interface GADSafeBrowsingMonitor : NSObject {
    GADObserverCollection *_observers;
    GADEventContext *_context;
    NSURL *_reportURL;
    BOOL _shouldReportMaliciousAds;
    BOOL _shouldReportBenignAds;
    GADSafeBrowsingReport *_report;
    UIView *_adView;
}




-(id)initWithAdView:(id)arg0 adRequestTransaction:(id)arg1 baseURL:(id)arg2 monitoredContext:(id)arg3 configuration:(id)arg4 ;
-(void)dealloc;
-(void)observeNotificationName:(id)arg0 usingBlock:(id)arg1 ;
-(void)sendReport;


@end


#endif