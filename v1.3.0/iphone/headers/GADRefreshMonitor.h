// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREFRESHMONITOR_H
#define GADREFRESHMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAd;

@interface GADRefreshMonitor : NSObject {
    NSOperationQueue *_observationQueue;
    GADObserverCollection *_observers;
    GADAd *_ad;
    BOOL _isEnabled;
    BOOL _isVisible;
    BOOL _isIntermissionOngoing;
}




-(id)initWithAd:(id)arg0 messageSource:(id)arg1 ;
-(void)handleVisibilityNotification:(id)arg0 ;
-(void)handleRefreshAction:(id)arg0 ;
-(void)handleIntermissionEvent:(BOOL)arg0 ;
-(void)updateRefreshActivity;


@end


#endif