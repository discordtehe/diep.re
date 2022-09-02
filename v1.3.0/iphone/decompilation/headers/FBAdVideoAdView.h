// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOADVIEW_H
#define FBADVIDEOADVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdTimer;
@class FBAdVideoRendererView;
@class FBAdVideoPlayPauseButton;
@class FBAdVideoProgressBar;
@class FBGradientView;
@class FBAdDetailsAndCTAButtonContainerView;
@class FBAdAudioMuteButton;
@class FBInterstitialAdToolbarView;
@class FBNativeAdDataModel;
@protocol FBAdVideoRendererViewDelegate;
@protocol FBInterstitialAdToolbarViewDelegate;
@protocol FBAdVideoAdViewDelegate;
@protocol FBAdFunnelLoggingDelegate;

@interface FBAdVideoAdView : UIView <FBAdVideoRendererViewDelegate, FBInterstitialAdToolbarViewDelegate>

 {
    BOOL _adValid;
}


@property (nonatomic) BOOL animating; // ivar: _animating
@property (retain, nonatomic) id *videoProgressTimingObserver; // ivar: _videoProgressTimingObserver
@property (retain, nonatomic) FBAdTimer *toggleViewsTimer; // ivar: _toggleViewsTimer
@property (weak, nonatomic) FBAdVideoRendererView *videoRendererView; // ivar: _videoRendererView
@property (weak, nonatomic) FBAdVideoPlayPauseButton *playPauseButton; // ivar: _playPauseButton
@property (weak, nonatomic) FBAdVideoProgressBar *progressBar; // ivar: _progressBar
@property (nonatomic) ? forcedViewTime; // ivar: _forcedViewTime
@property (weak, nonatomic) FBGradientView *gradientView; // ivar: _gradientView
@property (weak, nonatomic) FBAdDetailsAndCTAButtonContainerView *adDetailsAndCTAButtonContainerView; // ivar: _adDetailsAndCTAButtonContainerView
@property (nonatomic) BOOL paused; // ivar: _paused
@property (nonatomic) BOOL endVideoDetailsAnimated; // ivar: _endVideoDetailsAnimated
@property (nonatomic) BOOL hasToldDelegateThatWereSkippable; // ivar: _hasToldDelegateThatWereSkippable
@property (nonatomic) BOOL isUsingNewLayout; // ivar: _isUsingNewLayout
@property (nonatomic) BOOL useNewToolbar; // ivar: _useNewToolbar
@property (nonatomic) BOOL showCta; // ivar: _showCta
@property (weak, nonatomic) FBGradientView *toolbarGradientView; // ivar: _toolbarGradientView
@property (readonly, nonatomic, getter=isAppInstall) BOOL appInstall; // ivar: _appInstall
@property (nonatomic) BOOL isExpanded; // ivar: _isExpanded
@property (weak, nonatomic) FBAdAudioMuteButton *audioMuteButton; // ivar: _audioMuteButton
@property (retain, nonatomic) UIView *waitingToast; // ivar: _waitingToast
@property (weak, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (nonatomic) BOOL videoWasPlayingWhenAppActive; // ivar: _videoWasPlayingWhenAppActive
@property (nonatomic) BOOL isRewardedAd; // ivar: _isRewardedAd
@property (nonatomic) BOOL canPlayVideo; // ivar: _canPlayVideo
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (weak, nonatomic) NSObject<FBAdVideoAdViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (readonly, nonatomic) FBNativeAdDataModel *adDataModel; // ivar: _adDataModel
@property (readonly, nonatomic) ? duration;
@property (readonly, nonatomic) ? currentTime;
@property (copy, nonatomic) id *onInfo; // ivar: _onInfo
@property (readonly, nonatomic) BOOL videoIsDoneOrSkippable;
@property (weak, nonatomic) NSObject<FBAdFunnelLoggingDelegate> *funnelLoggingDelegate; // ivar: _funnelLoggingDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
// -(id)initWithPlacementID:(id)arg0 adDataModel:(id)arg1 placementDefinition:(id)arg2 videoReadyToDisplayBlock:(id)arg3 useNewLayout:(unk)arg4 useNewToolbar:(BOOL)arg5 showCta:(BOOL)arg6 isRewardedAd:(BOOL)arg7 forcedViewTime:(BOOL)arg8 rootViewController:(struct ? )arg9  ;
-(void)addVideoRendererProgressTimingObserver;
-(void)setupViewAndStartVideo:(BOOL)arg0 ;
-(void)updateView:(BOOL)arg0 ;
-(NSUInteger)wantedAdDetailsAndCTAButtonContainerViewButtonStyle;
-(void)dealloc;
-(void)layoutSubviews;
-(void)clearSubviews;
-(void)addAdDetailsViewAndCTAContainerView;
-(void)addProgressBar;
-(void)addToolbarGradientView;
-(void)addToolbarView;
-(void)addGradientView;
-(void)addPlayPauseButton;
-(void)addAudioMuteButton;
-(void)playPauseButtonTapped:(id)arg0 ;
-(void)removeVideoRendererProgressTimingObserver;
-(void)skipVideo;
-(void)handleAudioMuteButtonTouch:(id)arg0 ;
-(void)cleanLayout;
-(BOOL)hasForcedViewTime;
-(struct ? )timeUntilSkipOrEnd;
-(void)didTouchCTA:(id)arg0 withEvent:(id)arg1 ;
-(void)showWaitingToast;
-(void)updateToastWithCurrentTime:(struct ? )arg0 ;
-(void)tellDelegateThatWeAreSkippableIfWeAreAndHaveNotYet;
-(void)setupNotifications;
-(void)prepareViewToBecomeInactive;
-(void)prepareViewToBecomeActive;
-(void)dispatchVideoEndedWithError:(id)arg0 ;
-(void)animateAdDetailsOnVideoEnd:(struct ? )arg0 ;
-(void)backgroundTapped:(id)arg0 ;
-(void)cancelAnimateViews;
-(void)scheduleHideViews;
-(void)animateHideViews;
-(void)animateShowViews;
-(void)animateHideViewsForNewLayout;
-(void)animateShowViewsForNewLayout;
-(id)viewsToAnimate;
-(void)toggleAllViews;
-(id)viewControllerForPresentingModalView;
-(void)videoViewDidLoad:(id)arg0 ;
-(void)videoViewDidEnd:(id)arg0 ;
-(void)videoView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)interstitialAdToolbarDidClose:(id)arg0 withTouchData:(id)arg1 ;
-(void)interstitialAdToolbarDidTapAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidCloseAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidTapAdInfo:(id)arg0 ;
-(void)pauseVideoIfNeeded;
-(void)resumeVideo;
-(id)videoDataForFunnelLogging;
-(void)funnelLogPlayPauseButtonTapped;
-(void)funnelLogMuteButtonTapped;
-(void)funnelLogMute;
-(void)funnelLogUnMute;
-(void)funnelLogVideoSkipped;
-(void)funnelLogAdChoicesTapped;
-(void)funnelLogAdInfoTapped;
-(void)funnelLogLeaveApp;
-(void)funnelLogBackToApp;
+(struct ? )animateAdDetailsEndVideo;


@end


#endif