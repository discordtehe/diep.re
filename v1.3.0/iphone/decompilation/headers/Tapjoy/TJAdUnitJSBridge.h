// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJADUNITJSBRIDGE_H
#define TJADUNITJSBRIDGE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJCustomStoreProductViewController;
@class TJWebViewJavascriptBridge;
@class TJCUIWebPageView;
@class TJYMoatReactiveVideoTracker;
@class TJPlacement;
@protocol SKStoreProductViewControllerDelegate;
@protocol UIWebViewDelegate;
@protocol UIAlertViewDelegate;
@protocol TJCVideoPlayerDelegate;
@protocol TJCVideoAdDelegate;

@interface TJAdUnitJSBridge : NSObject <SKStoreProductViewControllerDelegate, UIWebViewDelegate, UIAlertViewDelegate, TJCVideoPlayerDelegate>



@property (copy, nonatomic) id *callback; // ivar: _callback
@property (copy, nonatomic) id *splitViewCallback; // ivar: _splitViewCallback
@property (retain, nonatomic) TJCustomStoreProductViewController *storeViewController; // ivar: _storeViewController
@property (retain, nonatomic) TJWebViewJavascriptBridge *bridge; // ivar: _bridge
@property (retain, nonatomic) TJCUIWebPageView *adView; // ivar: _adView
@property (retain, nonatomic) UIAlertView *alert; // ivar: _alert
@property (retain, nonatomic) UIAlertController *alertController; // ivar: _alertController
@property (copy, nonatomic) id *alertCallback; // ivar: _alertCallback
@property (nonatomic) BOOL backHidden; // ivar: _backHidden
@property (retain, nonatomic) TJYMoatReactiveVideoTracker *moatVideoTracker; // ivar: _moatVideoTracker
@property (nonatomic) float currentVolume; // ivar: _currentVolume
@property (nonatomic) BOOL currentMuteStatus; // ivar: _currentMuteStatus
@property (nonatomic) BOOL isStoreLoaded; // ivar: _isStoreLoaded
@property (retain, nonatomic) UIView *splitView; // ivar: _splitView
@property (retain, nonatomic) TJPlacement *placement; // ivar: _placement
@property (retain, nonatomic) NSTimer *volumeCheckTimer; // ivar: _volumeCheckTimer
@property (weak, nonatomic) NSObject<TJCVideoAdDelegate> *adUnitVideoDelegate; // ivar: _adUnitVideoDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdView:(id)arg0 placement:(id)arg1 ;
-(void)clear;
-(BOOL)dispatchMessage:(id)arg0 withCallback:(id)arg1 ;
-(void)log:(id)arg0 callback:(id)arg1 ;
-(void)alert:(id)arg0 callback:(id)arg1 ;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(void)displayVideo:(id)arg0 callback:(id)arg1 ;
-(void)playVideo:(id)arg0 callback:(id)arg1 ;
-(void)pauseVideo:(id)arg0 callback:(id)arg1 ;
-(void)clearVideo:(id)arg0 callback:(id)arg1 ;
-(void)setVideoMute:(id)arg0 callback:(id)arg1 ;
-(void)setBackgroundColor:(id)arg0 callback:(id)arg1 ;
-(void)setBackgroundWebViewContent:(id)arg0 callback:(id)arg1 ;
-(void)triggerEvent:(id)arg0 callback:(id)arg1 ;
-(void)isStatusBarHidden:(id)arg0 callback:(id)arg1 ;
-(void)loadStoreURL:(id)arg0 callback:(id)arg1 ;
-(void)displayStoreURL:(id)arg0 callback:(id)arg1 ;
-(void)closeSplitView;
-(void)closeSplitViewWithCallback;
-(void)clearSplitViewCallback;
-(void)closeStoreView;
-(BOOL)canShowStoreURL:(id)arg0 ;
-(void)applyStoreViewStyle:(id)arg0 callback:(id)arg1 ;
-(BOOL)shouldUseNewAppStoreExperience;
-(void)displayURL:(id)arg0 callback:(id)arg1 ;
-(void)setSpinnerVisible:(id)arg0 callback:(id)arg1 ;
-(void)setCloseButtonVisible:(id)arg0 callback:(id)arg1 ;
-(void)setCloseButtonClickable:(id)arg0 callback:(id)arg1 ;
-(void)clearComplete:(id)arg0 ;
-(void)checkAppInstalled:(id)arg0 callback:(id)arg1 ;
-(void)setAllowRedirect:(id)arg0 callback:(id)arg1 ;
-(void)viewShouldDismiss:(BOOL)arg0 ;
-(void)display;
-(void)present:(id)arg0 callback:(id)arg1 ;
-(void)dismiss:(id)arg0 callback:(id)arg1 ;
-(void)openApp:(id)arg0 callback:(id)arg1 ;
-(void)shouldClose:(id)arg0 callback:(id)arg1 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)dismissURLModal;
-(void)addPassbookPass:(id)arg0 callback:(id)arg1 ;
-(void)cacheAsset:(id)arg0 callback:(id)arg1 ;
-(void)cachePathForURL:(id)arg0 callback:(id)arg1 ;
-(void)getCachedAssets:(id)arg0 callback:(id)arg1 ;
-(void)removeAssetFromCache:(id)arg0 callback:(id)arg1 ;
-(void)clearCache:(id)arg0 callback:(id)arg1 ;
-(void)setEventPreloadLimit:(id)arg0 callback:(id)arg1 ;
-(void)setLoggingLevel:(id)arg0 callback:(id)arg1 ;
-(void)clearLoggingLevel:(id)arg0 callback:(id)arg1 ;
-(void)setOrientation:(id)arg0 callback:(id)arg1 ;
-(void)unsetOrientation:(id)arg0 callback:(id)arg1 ;
-(void)contentReady:(id)arg0 callback:(id)arg1 ;
-(void)setPrerenderLimit:(id)arg0 callback:(id)arg1 ;
-(void)initMoatVideoTracker:(id)arg0 callback:(id)arg1 ;
-(void)startMoatVideoTracker:(id)arg0 callback:(id)arg1 ;
-(void)triggerMoatVideoEvent:(id)arg0 callback:(id)arg1 ;
-(BOOL)initViewabilityTracker:(id)arg0 callback:(id)arg1 ;
-(void)startViewabilityTracker:(id)arg0 callback:(id)arg1 ;
-(void)triggerViewabilityEvent:(id)arg0 callback:(id)arg1 ;
-(void)attachVolumeListener:(id)arg0 callback:(id)arg1 ;
-(void)getVolume:(id)arg0 callback:(id)arg1 ;
-(void)volumeChanged;
-(void)clearVolumeCheckTimer;
-(void)videoReady:(CGFloat)arg0 width:(int)arg1 height:(int)arg2 ;
-(void)videoDidStart;
-(void)videoProgress:(CGFloat)arg0 ;
-(void)videoDidPause:(CGFloat)arg0 ;
-(void)videoDidComplete;
-(void)videoInfo;
-(void)videoError:(id)arg0 ;
-(void)startUsageTrackingEvent:(id)arg0 callback:(id)arg1 ;
-(void)endUsageTrackingEvent:(id)arg0 callback:(id)arg1 ;
-(void)sendUsageTrackingEvent:(id)arg0 callback:(id)arg1 ;
-(void)hasSplitView:(id)arg0 callback:(id)arg1 ;
-(void)dismissSplitView:(id)arg0 callback:(id)arg1 ;
-(void)getSplitViewURL:(id)arg0 callback:(id)arg1 ;
-(void)isNetworkAvailable:(id)arg0 callback:(id)arg1 ;


@end


#endif