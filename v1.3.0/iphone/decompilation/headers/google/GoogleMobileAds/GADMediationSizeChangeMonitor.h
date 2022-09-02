// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONSIZECHANGEMONITOR_H
#define GADMEDIATIONSIZECHANGEMONITOR_H


#import <Foundation/Foundation.h>

@class GADCroppingAdView;
@class GADObserverCollection;

@interface GADMediationSizeChangeMonitor : NSObject {
    GADCroppingAdView *_croppingView;
    id *_delegate;
    GADObserverCollection *_observers;
}




-(id)initWithContainerView:(id)arg0 croppingView:(id)arg1 delegate:(id)arg2 ;
+(void)addMonitorToAd:(id)arg0 containerView:(id)arg1 croppingView:(id)arg2 delegate:(id)arg3 ;


@end


#endif