// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRCONTROLLER_H
#define MRCONTROLLER_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MPAdConfiguration;
@class MRBridge;
@class MPClosableView;
@class MPTimer;
@class MRExpandModalViewController;
@class MPMRAIDInterstitialViewController;
@class MPAdDestinationDisplayAgent;
@class MPViewabilityTracker;
@class MPWebView;
@protocol MRBridgeDelegate;
@protocol MPClosableViewDelegate;
@protocol MPAdDestinationDisplayAgentDelegate;
@protocol MPAdAlertManagerProtocol;
@protocol MPAdAlertManagerProtocol;
@protocol MRControllerDelegate;

@interface MRController : NSObject <MRBridgeDelegate, MPClosableViewDelegate, MPAdDestinationDisplayAgentDelegate>



@property (retain, nonatomic) MPAdConfiguration *adConfiguration; // ivar: _adConfiguration
@property (retain, nonatomic) MRBridge *mraidBridge; // ivar: _mraidBridge
@property (retain, nonatomic) MRBridge *mraidBridgeTwoPart; // ivar: _mraidBridgeTwoPart
@property (retain, nonatomic) MPClosableView *mraidAdView; // ivar: _mraidAdView
@property (retain, nonatomic) MPClosableView *mraidAdViewTwoPart; // ivar: _mraidAdViewTwoPart
@property (retain, nonatomic) UIView *resizeBackgroundView; // ivar: _resizeBackgroundView
@property (retain, nonatomic) MPTimer *adPropertyUpdateTimer; // ivar: _adPropertyUpdateTimer
@property (nonatomic) NSUInteger placementType; // ivar: _placementType
@property (retain, nonatomic) MRExpandModalViewController *expandModalViewController; // ivar: _expandModalViewController
@property (weak, nonatomic) MPMRAIDInterstitialViewController *interstitialViewController; // ivar: _interstitialViewController
@property (nonatomic) CGRect mraidDefaultAdFrame; // ivar: _mraidDefaultAdFrame
@property (nonatomic) CGRect mraidDefaultAdFrameInKeyWindow; // ivar: _mraidDefaultAdFrameInKeyWindow
@property (nonatomic) CGSize currentAdSize; // ivar: _currentAdSize
@property (nonatomic) NSUInteger modalViewCount; // ivar: _modalViewCount
@property (nonatomic) BOOL isAppSuspended; // ivar: _isAppSuspended
@property (nonatomic) NSUInteger currentState; // ivar: _currentState
@property (nonatomic) BOOL shouldUseUIWebView; // ivar: _shouldUseUIWebView
@property (weak, nonatomic) UIView *originalSuperview; // ivar: _originalSuperview
@property (nonatomic) BOOL isViewable; // ivar: _isViewable
@property (nonatomic) BOOL isAnimatingAdSize; // ivar: _isAnimatingAdSize
@property (nonatomic) BOOL isAdLoading; // ivar: _isAdLoading
@property (nonatomic) BOOL adRequiresPrecaching; // ivar: _adRequiresPrecaching
@property (nonatomic) BOOL isAdVastVideoPlayer; // ivar: _isAdVastVideoPlayer
@property (nonatomic) BOOL didConfigureOrientationNotificationObservers; // ivar: _didConfigureOrientationNotificationObservers
@property (retain, nonatomic) MPClosableView *expansionContentView; // ivar: _expansionContentView
@property (retain, nonatomic) MPAdDestinationDisplayAgent *destinationDisplayAgent; // ivar: _destinationDisplayAgent
@property (retain, nonatomic) NSObject<MPAdAlertManagerProtocol> *adAlertManager; // ivar: _adAlertManager
@property (retain, nonatomic) NSObject<MPAdAlertManagerProtocol> *adAlertManagerTwoPart; // ivar: _adAlertManagerTwoPart
@property (nonatomic) NSUInteger forceOrientationMask; // ivar: _forceOrientationMask
@property (nonatomic) NSInteger currentInterfaceOrientation; // ivar: _currentInterfaceOrientation
@property (copy, nonatomic) id *forceOrientationAfterAnimationBlock; // ivar: _forceOrientationAfterAnimationBlock
@property (retain, nonatomic) MPViewabilityTracker *viewabilityTracker; // ivar: _viewabilityTracker
@property (retain, nonatomic) MPWebView *mraidWebView; // ivar: _mraidWebView
@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (nonatomic) CGRect previousCurrentPosition; // ivar: _previousCurrentPosition
@property (nonatomic) CGRect previousDefaultPosition; // ivar: _previousDefaultPosition
@property (nonatomic) CGSize previousScreenSize; // ivar: _previousScreenSize
@property (nonatomic) CGSize previousMaxSize; // ivar: _previousMaxSize
@property (nonatomic) BOOL includeSafeAreaInsetsInCalculations; // ivar: _includeSafeAreaInsetsInCalculations
@property (weak, nonatomic) NSObject<MRControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdViewFrame:(struct CGRect )arg0 supportedOrientations:(NSUInteger)arg1 adPlacementType:(NSUInteger)arg2 delegate:(id)arg3 ;
-(void)dealloc;
-(void)loadAdWithConfiguration:(id)arg0 ;
-(void)handleMRAIDInterstitialWillPresentWithViewController:(id)arg0 ;
-(void)handleMRAIDInterstitialDidPresentWithViewController:(id)arg0 ;
-(void)enableRequestHandling;
-(void)disableRequestHandling;
-(void)loadTwoPartCreativeFromURL:(id)arg0 ;
-(void)didFailWithError:(id)arg0 ;
-(void)connectionDidFinishLoadingData:(id)arg0 withResponse:(id)arg1 fromRequestUrl:(id)arg2 ;
-(void)init3rdPartyViewabilityTrackers;
-(BOOL)shouldStartViewabilityDuringInitialization;
-(BOOL)isInterstitialAd;
-(void)initAdAlertManager:(id)arg0 forAdView:(id)arg1 ;
-(id)adViewForBridge:(id)arg0 ;
-(id)bridgeForAdView:(id)arg0 ;
-(id)activeView;
-(id)bridgeForActiveAdView;
-(id)buildMRAIDWebViewWithFrame:(struct CGRect )arg0 forceUIWebView:(BOOL)arg1 ;
-(void)orientationDidChange:(id)arg0 ;
-(void)configureMraidEnvironmentToShowAdForBridge:(id)arg0 ;
-(void)fireChangeEventToBothBridgesForProperty:(id)arg0 ;
-(NSInteger)adCloseButtonLocationFromString:(id)arg0 ;
-(void)animateViewFromDefaultStateToResizedState:(id)arg0 withFrame:(struct CGRect )arg1 ;
-(void)presentExpandModalViewControllerWithView:(id)arg0 animated:(BOOL)arg1 ;
-(void)presentExpandModalViewControllerWithView:(id)arg0 animated:(BOOL)arg1 completion:(id)arg2 ;
-(void)willBeginAnimatingAdSize;
-(void)didEndAnimatingAdSize;
-(void)close;
-(void)closeFromDefaultState;
-(void)closeFromExpandedState;
-(void)closeFromResizedState;
-(BOOL)isLoadingAd;
-(BOOL)hasUserInteractedWithWebViewForBridge:(id)arg0 ;
-(id)viewControllerForPresentingModalView;
-(void)nativeCommandWillPresentModalView;
-(void)nativeCommandDidDismissModalView;
-(void)bridge:(id)arg0 didFinishLoadingWebView:(id)arg1 ;
-(void)bridge:(id)arg0 didFailLoadingWebView:(id)arg1 error:(id)arg2 ;
-(void)bridge:(id)arg0 performActionForMoPubSpecificURL:(id)arg1 ;
-(void)handleNativeCommandCloseWithBridge:(id)arg0 ;
-(void)bridge:(id)arg0 handleDisplayForDestinationURL:(id)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandUseCustomClose:(BOOL)arg1 ;
-(void)configureCloseButtonForView:(id)arg0 forUseCustomClose:(BOOL)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandExpandWithURL:(id)arg1 useCustomClose:(BOOL)arg2 ;
-(void)bridge:(id)arg0 handleNativeCommandResizeWithParameters:(id)arg1 ;
-(void)closeButtonPressed:(id)arg0 ;
-(void)closableView:(id)arg0 didMoveToWindow:(id)arg1 ;
-(void)displayAgentWillPresentModal;
-(void)displayAgentDidDismissModal;
-(void)displayAgentWillLeaveApplication;
-(void)updateMRAIDProperties;
-(struct CGRect )activeAdFrameInScreenSpace;
-(struct CGRect )defaultAdFrameInScreenSpace;
-(void)updateCurrentPosition;
-(void)updateDefaultPosition;
-(void)updateScreenSize;
-(void)updateMaxSize;
-(void)updateOrientation;
-(void)updateEventSizeChange;
-(void)changeStateTo:(NSUInteger)arg0 ;
-(void)checkViewability;
-(void)viewEnteredBackground;
-(void)updateViewabilityWithBool:(BOOL)arg0 ;
-(id)viewControllerForPresentingMailVC;
-(void)adAlertManagerDidTriggerAlert:(id)arg0 ;
-(void)adDidLoad;
-(void)adDidFailToLoad;
-(void)adWillClose;
-(void)adDidClose;
-(void)adWillPresentModalViewByExpanding:(BOOL)arg0 ;
-(void)adDidDismissModalView;
-(void)appShouldSuspend;
-(void)appShouldResume;
+(struct CGRect )adjustedFrameForFrame:(struct CGRect )arg0 toFitIntoApplicationSafeArea:(struct CGRect )arg1 ;
+(BOOL)isValidResizeFrame:(struct CGRect )arg0 inApplicationSafeArea:(struct CGRect )arg1 allowOffscreen:(BOOL)arg2 ;
+(BOOL)isValidCloseButtonPlacement:(NSInteger)arg0 inAdFrame:(struct CGRect )arg1 inApplicationSafeArea:(struct CGRect )arg2 ;


@end


#endif