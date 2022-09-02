// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADBODYVIEW_H
#define FBINTERSTITIALADBODYVIEW_H


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class FBNativeAdDataModel;
@class FBNativeAdMultiProductDataModel;
@class FBAdPlacementDefinition;
@class FBAdAudioMuteButton;
@class FBAdCTAButton;
@class FBInterstitialAdTextView;
@class FBInterstitialAdMediaView;
@class FBGradientView;
@class FBAdVideoProgressBar;
@class FBAdViewabilityValidator;
@protocol FBInterstitialAdMediaViewDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBAdDisplayable;
@protocol FBAdDisplayableViewDelegate;

@interface FBInterstitialAdBodyView : UIView <FBInterstitialAdMediaViewDelegate, FBAdViewabilityValidatorDelegate, FBAdDisplayable>



@property (readonly, weak, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (readonly, weak, nonatomic) FBNativeAdMultiProductDataModel *multiProductDataModel; // ivar: _multiProductDataModel
@property (readonly, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (weak, nonatomic) FBAdAudioMuteButton *audioMuteButton; // ivar: _audioMuteButton
@property (weak, nonatomic) FBAdCTAButton *callToActionButton; // ivar: _callToActionButton
@property (weak, nonatomic) FBInterstitialAdTextView *textContainerView; // ivar: _textContainerView
@property (weak, nonatomic) FBInterstitialAdMediaView *mediaView; // ivar: _mediaView
@property (weak, nonatomic) FBGradientView *topGradientView; // ivar: _topGradientView
@property (weak, nonatomic) FBGradientView *bottomGradientView; // ivar: _bottomGradientView
@property (weak, nonatomic) FBAdVideoProgressBar *progressBarView; // ivar: _progressBarView
@property (weak, nonatomic) UIView *mediaViewShadowView; // ivar: _mediaViewShadowView
@property (weak, nonatomic) CAShapeLayer *mediaViewMaskLayer; // ivar: _mediaViewMaskLayer
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (nonatomic) BOOL impressionSent; // ivar: _impressionSent
@property (retain, nonatomic) NSNumber *carouselPageNumber; // ivar: _carouselPageNumber
@property (retain, nonatomic) NSNumber *carouselTotalPages; // ivar: _carouselTotalPages
@property (nonatomic) BOOL videoPlaybackInterrupted; // ivar: _videoPlaybackInterrupted
@property (nonatomic) BOOL videoHasStartedPlaying; // ivar: _videoHasStartedPlaying
@property (nonatomic) UIEdgeInsets contentInset; // ivar: _contentInset
@property (nonatomic) BOOL preventCarouselTextTruncationInPortrait; // ivar: _preventCarouselTextTruncationInPortrait
@property (nonatomic) BOOL preventCarouselVideoAutoplay; // ivar: _preventCarouselVideoAutoplay
@property (readonly, nonatomic) ? currentTime;
@property (nonatomic) BOOL canPlayVideo; // ivar: _canPlayVideo
@property (weak, nonatomic) NSObject<FBAdDisplayableViewDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) id *preferredOverlayTextColorTypeChanged; // ivar: _preferredOverlayTextColorTypeChanged
@property (copy, nonatomic) id *onRequestToggleOverlayViews; // ivar: _onRequestToggleOverlayViews
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)configureVolume:(CGFloat)arg0 ;
-(CGFloat)titleFontSize;
-(CGFloat)subtitleFontSize;
-(void)handleAudioMuteButtonTouch:(id)arg0 ;
-(void)adClicked:(id)arg0 withEvent:(id)arg1 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 carouselPageNumber:(id)arg2 totalPages:(id)arg3 ;
-(void)setupMediaViewAndAddAsSubviewWithAudioMutedIfNil:(BOOL)arg0 ;
-(void)showAd;
-(void)setupViewabilityValidationIfNeeded;
-(void)setPlaying:(BOOL)arg0 forced:(BOOL)arg1 ;
-(void)destroyAd;
-(CGFloat)intrinsicCarouselCardHeightForWidth:(CGFloat)arg0 ;
-(void)layoutGradients;
-(void)layoutMediaViewShadowView;
-(void)layoutCTAForceCondensedLayout:(BOOL)arg0 ;
-(BOOL)isCallToActionPresent;
-(void)layoutMediaView;
-(void)layoutProgressBar;
-(void)layoutAudioMuteButton;
-(void)layoutSubviews;
-(BOOL)isVideoCarouselPage;
-(BOOL)isVideoAd;
-(BOOL)videoAdHasAudio;
-(void)dealloc;
-(void)setupNotifications;
-(void)bringSubViewsToFront;
-(BOOL)isMediaViewFullscreen;
-(struct CGRect )insetBounds;
-(void)toggleAdDetailsForceShow:(BOOL)arg0 ;
-(BOOL)isCarousel;
-(BOOL)shouldAutoplayCarousel;
-(BOOL)isAutoplay;
-(void)styleProgressBar;
-(void)styleMediaView;
-(void)styleTextView;
-(void)styleCTAForceCondensedLayout:(BOOL)arg0 ;
-(void)styleToolbar;
-(void)logImpressionIfCriteriasAreFulfilled;
-(BOOL)criteriasForLoggingImpressionForVideoIsMet;
-(void)interstitialAdMediaViewDidLoad:(id)arg0 ;
-(void)interstitialAdMediaViewDidStartVideo:(id)arg0 ;
-(void)interstitialAdMediaViewDidPauseVideo:(id)arg0 ;
-(void)interstitialAdMediaViewDidProgress:(id)arg0 ;
-(void)interstitialAdMediaViewDidEnd:(id)arg0 ;
-(void)interstitialAdMediaViewDidHidePlayButton:(id)arg0 ;
-(void)interstitialAdMediaViewDidShowPlayButton:(id)arg0 ;
-(void)interstitialAdMediaView:(id)arg0 didFailWithError:(id)arg1 ;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;


@end


#endif