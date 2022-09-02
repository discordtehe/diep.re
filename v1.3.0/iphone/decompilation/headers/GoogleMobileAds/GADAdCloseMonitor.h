// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADCLOSEMONITOR_H
#define GADADCLOSEMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAd;

@interface GADAdCloseMonitor : NSObject {
    GADObserverCollection *_observers;
    GADAd *_ad;
    CGFloat _adCloseTimeInterval;
    BOOL _intermissionInProgress;
    BOOL _appBackgrounded;
    BOOL _adCloseNotificationBuffered;
    atomic_flag _hasHandledClose;
}




-(id)initWithAd:(id)arg0 webAdView:(id)arg1 adConfiguration:(id)arg2 closeButton:(id)arg3 ;
-(void)handleImpression;
-(void)handleAdClose;
-(void)postBufferedAdCloseNotification;


@end


#endif