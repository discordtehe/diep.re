// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADMEDIAVIEW_H
#define FBINTERSTITIALADMEDIAVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdTimer;
@class FBAdVideoPlayPauseButton;
@class FBAdVideoRendererView;
@class FBNativeAdDataModel;
@protocol FBAdVideoRendererViewDelegate;
@protocol FBInterstitialAdMediaViewDelegate;

@interface FBInterstitialAdMediaView : UIView <FBAdVideoRendererViewDelegate>

 {
    float _volume;
}


@property (nonatomic) BOOL animating; // ivar: _animating
@property (retain, nonatomic) FBAdTimer *animationTimer; // ivar: _animationTimer
@property (retain, nonatomic) FBAdTimer *viewOnScreenTimer; // ivar: _viewOnScreenTimer
@property (nonatomic) ? viewOnScreenTime; // ivar: _viewOnScreenTime
@property (weak, nonatomic) FBAdVideoPlayPauseButton *playPauseButton; // ivar: _playPauseButton
@property (nonatomic) BOOL videoLoaded; // ivar: _videoLoaded
@property (retain, nonatomic) id *videoProgressTimingObserver; // ivar: _videoProgressTimingObserver
@property (weak, nonatomic) FBAdVideoRendererView *videoRendererView; // ivar: _videoRendererView
@property (nonatomic) ? unskippableTime; // ivar: _unskippableTime
@property (nonatomic) BOOL videoEnded; // ivar: _videoEnded
@property (retain, nonatomic) NSNumber *cardIndex; // ivar: _cardIndex
@property (retain, nonatomic) NSNumber *cardCount; // ivar: _cardCount
@property (nonatomic) BOOL visible; // ivar: _visible
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (readonly, nonatomic) ? currentTime;
@property (readonly, weak, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (weak, nonatomic) NSObject<FBInterstitialAdMediaViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) ? duration;
@property (readonly, nonatomic, getter=isVideoStopped) BOOL videoStopped;
@property (nonatomic) float volume;
@property (weak, nonatomic) UIImageView *imageView; // ivar: _imageView
@property (copy, nonatomic) id *onTap; // ivar: _onTap
@property (copy, nonatomic) id *videoReadyToDisplay; // ivar: _videoReadyToDisplay
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithDelegate:(id)arg0 audioMuted:(BOOL)arg1 ;
-(void)terminateAd;
-(BOOL)skippable;
-(struct ? )skipRemainingTime;
-(void)addVideoProgressTimingObserver;
-(CGFloat)getNaturalHeightForWidth:(CGFloat)arg0 ;
-(CGFloat)getNaturalWidthForHeight:(CGFloat)arg0 ;
-(void)applyNaturalHeight;
-(void)applyNaturalWidth;
-(void)cancelAnimation;
-(void)dealloc;
-(void)hidePlayPauseButtonAnimated:(BOOL)arg0 ;
-(void)willBePresented;
-(void)didBecomeVisible;
-(void)initOnScreenTimer;
-(void)setupNotifications;
-(void)layoutSubviews;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 cardIndex:(id)arg2 cardCount:(id)arg3 ;
-(void)pauseVideo;
-(void)playPauseButtonTapped:(id)arg0 ;
-(void)playVideo;
-(void)registerLoaded;
-(void)removeVideoProgressTimingObserver;
-(void)scheduleHidePlayPauseButton;
-(void)showPlayPauseButtonAnimated:(BOOL)arg0 ;
-(void)togglePlayPauseButton;
-(void)videoViewTapped:(id)arg0 ;
-(void)videoViewDidLoad:(id)arg0 ;
-(void)videoViewDidEnd:(id)arg0 ;
-(void)videoView:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif