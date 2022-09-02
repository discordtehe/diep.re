// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVERIFICATIONMONITOR_H
#define GADADVERIFICATIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADWebAdView;
@class GADAdVerificationReporter;

@interface GADAdVerificationMonitor : NSObject {
    GADObserverCollection *_observers;
    GADWebAdView *_adView;
    GADAdVerificationReporter *_adVerificationReporter;
    atomic_flag _beginAdSessionExecuted;
}




-(id)initWithAd:(id)arg0 adView:(id)arg1 friendlyObstructionView:(id)arg2 mediaType:(NSInteger)arg3 ;
-(void)dealloc;
-(void)beginAdSession;
-(void)adDidMakeImpression;
-(void)trackExpandView:(id)arg0 ;


@end


#endif