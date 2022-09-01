// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEVIDEOPLAYER_H
#define VUNGLEVIDEOPLAYER_H

@protocol OS_dispatch_queue;

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleConfigController;
@class VunglePlayOptionsProvider;
@class VNGMoatVideoTracker;
@class VungleProgressBar;
@class VungleAdViewController;

@interface VungleVideoPlayer : UIView

@property (nonatomic) BOOL finishCallbackExecuted; // ivar: _finishCallbackExecuted
@property (nonatomic) BOOL observerSet; // ivar: _observerSet
@property (nonatomic) BOOL ctaImageWillShow; // ivar: _ctaImageWillShow
@property (nonatomic) CGFloat startTime; // ivar: _startTime
@property (retain, nonatomic) AVPlayer *player; // ivar: _player
@property (retain, nonatomic) id *videoTimerObserver; // ivar: _videoTimerObserver
@property (retain, nonatomic) id *videoTimerFineGrainObserver; // ivar: _videoTimerFineGrainObserver
@property (retain, nonatomic) id *videoQuartileObserver; // ivar: _videoQuartileObserver
@property (nonatomic) NSUInteger quartileIndex; // ivar: _quartileIndex
@property (retain, nonatomic) NSMutableDictionary *eventsPlayed; // ivar: _eventsPlayed
@property (nonatomic) BOOL firstPlay; // ivar: _firstPlay
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *quartileObserverQueue; // ivar: _quartileObserverQueue
@property (nonatomic) BOOL isLocal; // ivar: _isLocal
@property (nonatomic) BOOL isPaused; // ivar: _isPaused
@property (retain, nonatomic) AVPlayerItem *playerItem; // ivar: _playerItem
@property (copy, nonatomic) NSDictionary *incentivizedMetaData; // ivar: _incentivizedMetaData
@property (weak, nonatomic) VungleConfigController *configController; // ivar: _configController
@property (nonatomic) CGSize originalCTAButtonSize; // ivar: _originalCTAButtonSize
@property (weak, nonatomic) VunglePlayOptionsProvider *playOptionsProvider; // ivar: _playOptionsProvider
@property (retain, nonatomic) VNGMoatVideoTracker *moatTracker; // ivar: _moatTracker
@property (retain, nonatomic) NSDictionary *moatAdIdentifiers; // ivar: _moatAdIdentifiers
@property (nonatomic) BOOL viewabilityEnabled; // ivar: _viewabilityEnabled
@property (nonatomic, getter=isMoatTrackingStarted) BOOL moatTrackingStarted; // ivar: _moatTrackingStarted
@property (weak, nonatomic) UIButton *muteButton; // ivar: _muteButton
@property (weak, nonatomic) UIButton *ctaButton; // ivar: _ctaButton
@property (weak, nonatomic) UIButton *closeButton; // ivar: _closeButton
@property (weak, nonatomic) VungleProgressBar *progressBar; // ivar: _progressBar
@property (nonatomic) BOOL muted; // ivar: _muted
@property (nonatomic) float closeDelay; // ivar: _closeDelay
@property (nonatomic) float closeDelayIncentivized; // ivar: _closeDelayIncentivized
@property (nonatomic) float countdownDelay; // ivar: _countdownDelay
@property (nonatomic) BOOL ctaEnabled; // ivar: _ctaEnabled
@property (nonatomic) BOOL ctaDisplayOntouch; // ivar: _ctaDisplayOntouch
@property (nonatomic) float ctaShowDelay; // ivar: _ctaShowDelay
@property (nonatomic) float ctaButtonClickArea; // ivar: _ctaButtonClickArea
@property (retain, nonatomic) UIAlertController *incentivizedAlertController; // ivar: _incentivizedAlertController
@property (weak, nonatomic) VungleAdViewController *adViewController; // ivar: _adViewController


-(id)initWithAdPart:(id)arg0 configController:(id)arg1 playOptionsProvider:(id)arg2 viewabilityEnabled:(BOOL)arg3 isMuted:(BOOL)arg4 ;
-(void)layoutSubviews;
-(void)addQuartileObserver;
-(void)updateQuartile;
-(void)timeObservanceHandler:(struct ? )arg0 delegate:(id)arg1 ;
-(void)dealloc;
-(void)playerEnded:(id)arg0 ;
-(void)createUIElements;
-(void)setupUIConstraints;
-(void)waitForStreaming;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)resetButtons;
-(BOOL)canPlay;
-(void)skipAction:(id)arg0 ;
-(void)doSkip;
-(void)ctaAction:(id)arg0 ;
-(void)muteAd:(BOOL)arg0 ;
-(void)play;
-(void)pause;
-(void)stop;
-(void)removeObservers;
-(CGFloat)videoLength;
-(CGFloat)currentPosition;
-(void)rewindAndPlay;
-(void)hideCTAButtonOnTap;
-(void)prepareMoatAdIdentifiers:(id)arg0 ;
-(void)startMoatTrackingAndPlay;
-(void)muteButtonTouchUpInside:(id)arg0 ;
-(void)closeButtonTouchUpInside:(id)arg0 ;
-(void)callToActionButtonTouchUpInside:(id)arg0 ;
+(Class)layerClass;
+(BOOL)requiresConstraintBasedLayout;


@end


#endif