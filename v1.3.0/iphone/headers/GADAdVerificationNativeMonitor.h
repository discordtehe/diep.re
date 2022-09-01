// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVERIFICATIONNATIVEMONITOR_H
#define GADADVERIFICATIONNATIVEMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADWebViewController;
@class GADAdVerificationReporter;

@interface GADAdVerificationNativeMonitor : NSObject {
    GADObserverCollection *_observers;
    GADWebViewController *_webViewController;
    GADAdVerificationReporter *_adVerificationReporter;
    atomic_flag _beginAdSessionExecuted;
}




-(id)initWithAd:(id)arg0 webViewController:(id)arg1 mediaType:(NSInteger)arg2 partnerName:(id)arg3 ;
-(void)dealloc;
-(void)beginAdSession;
-(void)adDidMakeImpression;
-(void)setMonitoredView:(id)arg0 ;
-(void)trackExpandView:(id)arg0 ;


@end


#endif