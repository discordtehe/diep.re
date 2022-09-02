// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBMEDIAVIEWDEFAULTVIDEORENDERER_H
#define FBMEDIAVIEWDEFAULTVIDEORENDERER_H


#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBMediaViewVideoRenderer;
@class FBAdVideoPlayerAudioMeters;
@class FBGradientView;
@class FBAdVideoPlayButton;
@class FBAdBlurredImageView;
@class FBAdFullscreenVideoController;
@class FBAdVideoScrubber;
@class FBAdViewabilityValidator;
@class FBAdImage;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBMediaViewDefaultVideoRendererDelegate;

@interface FBMediaViewDefaultVideoRenderer : FBMediaViewVideoRenderer <FBAdViewabilityValidatorDelegate>



@property (weak, nonatomic) FBAdVideoPlayerAudioMeters *audioMetersView; // ivar: _audioMetersView
@property (nonatomic) BOOL autoplayEnabled; // ivar: _autoplayEnabled
@property (nonatomic) CGFloat controlSizeMultiplier; // ivar: _controlSizeMultiplier
@property (weak, nonatomic) FBGradientView *gradientView; // ivar: _gradientView
@property (nonatomic) BOOL layoutBuilt; // ivar: _layoutBuilt
@property (retain, nonatomic) NSMutableArray *observers; // ivar: _observers
@property (nonatomic) BOOL playbackSuspended; // ivar: _playbackSuspended
@property (nonatomic) BOOL playerIsPlaying; // ivar: _playerIsPlaying
@property (weak, nonatomic) FBAdVideoPlayButton *playPauseButton; // ivar: _playPauseButton
@property (nonatomic, getter=isPlayPauseButtonEnabled) BOOL playPauseButtonEnabled; // ivar: _playPauseButtonEnabled
@property (weak, nonatomic) FBAdBlurredImageView *posterImageView; // ivar: _posterImageView
@property (retain, nonatomic) id *progressTimeObserver; // ivar: _progressTimeObserver
@property (nonatomic, getter=isScrubberEnabled) BOOL scrubberEnabled; // ivar: _scrubberEnabled
@property (nonatomic, getter=isTapEnabled) BOOL tapEnabled; // ivar: _tapEnabled
@property (weak, nonatomic) UITapGestureRecognizer *tapGestureRecognizer; // ivar: _tapGestureRecognizer
@property (weak, nonatomic) UILabel *timeRemainingLabel; // ivar: _timeRemainingLabel
@property (nonatomic) BOOL videoCurrentlyShownToUser; // ivar: _videoCurrentlyShownToUser
@property (retain, nonatomic) FBAdFullscreenVideoController *videoFullscreenController; // ivar: _videoFullscreenController
@property (weak, nonatomic) FBAdVideoScrubber *videoScrubber; // ivar: _videoScrubber
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (nonatomic) BOOL volumeWasSet; // ivar: _volumeWasSet
@property (retain, nonatomic) FBAdBlurredImageView *bgImageView; // ivar: _bgImageView
@property (weak, nonatomic) NSObject<FBMediaViewDefaultVideoRendererDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL inlineMode; // ivar: _inlineMode
@property (retain, nonatomic) FBAdImage *posterImage; // ivar: _posterImage
@property (copy, nonatomic) id *posterImageDidLoadCompletionBlock; // ivar: _posterImageDidLoadCompletionBlock
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)shouldBlurWhitespace;
-(void)dealloc;
-(void)layoutSubviews;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)setHidden:(BOOL)arg0 ;
// -(void)loadVideoURL:(id)arg0 pollingInterval:(struct ? )arg1 clientToken:(id)arg2 autoplayEnabled:(BOOL)arg3 loadedBlock:(id)arg4 failureBlock:(unk)arg5  ;
-(void)addGestureRecognizers;
-(void)addObserver:(id)arg0 ;
-(void)addProgressTimeObserver;
-(void)applicationDidBecomeActive;
-(void)applicationWillResignActive;
-(void)buildLayout;
-(void)enableCoverImageIfNeeded;
-(void)disableCoverImageIfNeeded;
-(void)onVideoProgress;
-(void)onVideoStopped;
-(id)remainingTimeLabelFromDate:(id)arg0 duration:(CGFloat)arg1 ;
-(void)removeAllObservers;
-(void)removeGestureRecognizers;
-(void)removeProgressTimeObserver;
-(void)setupCoverImage;
-(void)setupBgImageView;
-(void)setupView;
-(void)startStopAction:(id)arg0 ;
-(void)tap:(id)arg0 ;
-(void)updateCoverImage;
-(void)updateUserInterface;
-(void)videoDidChangeVolume;
-(void)videoDidLoad;
-(void)videoDidPause;
-(void)videoDidPlay;
-(void)videoDidEngageSeek;
-(void)videoDidSeek;
-(void)videoDidDisengageSeek;
-(void)videoDidEnd;
-(void)videoDidFailWithError:(id)arg0 ;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)videoScrubberChanged:(id)arg0 ;
-(void)videoScrubberTouchDown:(id)arg0 ;
-(void)videoScrubberTouchComplete:(id)arg0 ;
+(id)dateFormatter;


@end


#endif