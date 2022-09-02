// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMRAIDACTIONMONITOR_H
#define GADMRAIDACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADAd;
@class GADWebAdView;
@class GADExpandActionMonitorConfiguration;
@class GADObserverCollection;
@class GADScheduler;
@class GADMRAIDResizePresenter;
@class GADFullScreenAdViewController;

@interface GADMRAIDActionMonitor : NSObject {
    GADAd *_ad;
    GADWebAdView *_webAdView;
    GADExpandActionMonitorConfiguration *_configuration;
    BOOL _isMRAIDAdView;
    GADObserverCollection *_observers;
    GADObserverCollection *_SDKReadyObservers;
    GADScheduler *_updatePositionScheduler;
    CGRect _usableInterfaceFrame;
    CGRect _creativeWebViewFrame;
    CGRect _defaultAdFrame;
    GADMRAIDResizePresenter *_resizePresenter;
    GADObserverCollection *_resizeObservers;
    GADFullScreenAdViewController *_expandablePresenter;
    GADObserverCollection *_expandableObservers;
    BOOL _visible;
}




-(id)initWithAd:(id)arg0 visibilityMessageSource:(id)arg1 webAdView:(id)arg2 configuration:(id)arg3 ;
-(void)dealloc;
-(void)setReferenceView:(id)arg0 ;
-(void)didLoadMRAID;
-(void)postSDKReadyEventWhenSwappableViewAddedToWindow;
-(void)postSDKReadyEvent;
-(void)attachObserversToExpandablePresenter;
-(void)notifyDeviceFeatures;
-(void)notifyErrorWithMessage:(id)arg0 forAction:(id)arg1 ;
-(void)updatePosition;
-(void)notifyOrientationToCreative;
-(void)updateVisibility;
-(id)currentMRAIDState;
-(void)notifyCurrentMRAIDState;
-(void)restoreBannerState;
-(void)handleResizeAction:(id)arg0 ;
-(void)handleAdWillExpandEvent:(id)arg0 ;
-(void)configureMRAIDCloseButtonForExpandable:(id)arg0 ;
-(void)handleAdExpandDidEndEvent:(id)arg0 ;
-(void)handleOpenCalendarAction:(id)arg0 ;
-(void)handleStorePictureAction:(id)arg0 ;
-(void)handleUnloadAction:(id)arg0 ;
-(void)handleSetOrientationPropertiesAction:(id)arg0 ;


@end


#endif