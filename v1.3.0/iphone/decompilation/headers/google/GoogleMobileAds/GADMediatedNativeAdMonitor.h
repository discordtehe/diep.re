// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATEDNATIVEADMONITOR_H
#define GADMEDIATEDNATIVEADMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADInternalNativeAd;
@class GADObserverCollection;
@class GADMediatedIntermission;

@interface GADMediatedNativeAdMonitor : NSObject {
    id *_mediatedNativeAd;
    GADInternalNativeAd *_internalNativeAd;
    GADObserverCollection *_observers;
    atomic_flag _clickEventReceived;
    UIView *_trackedView;
    GADMediatedIntermission *_intermission;
}




-(id)initWithInternalNativeAd:(id)arg0 mediatedNativeAd:(id)arg1 adapterHandlesImpressions:(BOOL)arg2 adapterHandlesClicks:(BOOL)arg3 ;
-(void)dealloc;
-(void)handleFirstPartyImpressionEvent;
-(void)handleThirdParyImpressionEvent;
-(void)handleFirstPartyClickEvent:(id)arg0 ;
-(void)handleThirdPartyClickEvent;
-(void)handleWillPresentScreenEvent;
-(void)handleWillDismissScreenEvent;
-(void)handleDidDismissScreenEvent;
-(void)handleWillLeaveApplicationEvent;
-(void)handleTrackViewNotification:(id)arg0 ;
-(void)handleUntrackViewNotification:(id)arg0 ;
-(void)handleMediatedNativeAdDidPlayVideo;
-(void)handleMediatedNativeAdDidPauseVideo;
-(void)handleMediatedNativeAdDidEndVideoPlayback;
-(id)internalVideoController;


@end


#endif