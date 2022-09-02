// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPRESENTATIONMONITOR_H
#define GADPRESENTATIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADWebAdView;

@interface GADPresentationMonitor : NSObject {
    GADObserverCollection *_observers;
    GADWebAdView *_adView;
}




-(id)initWithAdView:(id)arg0 messageSource:(id)arg1 ;
-(void)handlePresenterDidPresentNotification;
-(void)handlePresenterWillDismissNotification;


@end


#endif