// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADEXPANDACTIONMONITOR_H
#define GADEXPANDACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADAd;
@class GADWebAdView;
@class GADObserverCollection;
@class GADFullScreenAdViewController;
@class GADExpandActionMonitorConfiguration;
@protocol GADEventContextSource;

@interface GADExpandActionMonitor : NSObject {
    GADAd *_ad;
    id<GADEventContextSource> *_messageSource;
    GADWebAdView *_adView;
    GADObserverCollection *_observers;
    GADFullScreenAdViewController *_expandableViewController;
    GADObserverCollection *_expandableObservers;
    GADExpandActionMonitorConfiguration *_configuration;
}




-(id)initWithAd:(id)arg0 webAdView:(id)arg1 messageSource:(id)arg2 configuration:(id)arg3 ;
-(BOOL)shouldAllowExpandAction;
-(void)expandDidEnd;
-(BOOL)createAndPresentExpandable:(id)arg0 context:(id)arg1 notification:(id)arg2 ;
-(void)handleOnePartExpandAction:(id)arg0 ;
-(void)handleTwoPartExpandAction:(id)arg0 ;


@end


#endif