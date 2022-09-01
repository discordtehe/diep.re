// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADWATCHANDACTIONVIEW_H
#define FBINTERSTITIALADWATCHANDACTIONVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBInterstitialAdBodyView;
@class FBAdPlacementDefinition;
@class FBInterstitialAdMediaView;
@class FBAdWatchAndActionCoverView;
@class FBGradientView;
@class FBAdAudioMuteButton;
@class FBAdVideoProgressBar;
@class FBAdViewabilityValidator;
@class FBAdIconButton;
@class FBInterstitialAdToolbarView;
@class FBNativeAdDataModel;
@protocol FBInterstitialAdMediaViewDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol UIScrollViewDelegate;
@protocol FBWatchAndActionActionableControllerDelegate;
@protocol FBInterstitialAdToolbarViewDelegate;
@protocol FBWatchAndActionActionableController;

@interface FBInterstitialAdWatchAndActionView : FBInterstitialAdBodyView <FBInterstitialAdMediaViewDelegate, FBAdViewabilityValidatorDelegate, UIScrollViewDelegate, FBWatchAndActionActionableControllerDelegate, FBInterstitialAdToolbarViewDelegate>



@property (readonly, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (nonatomic) BOOL isLoaded; // ivar: _isLoaded
@property (retain, nonatomic) UIScrollView *scrollView; // ivar: _scrollView
@property (retain, nonatomic) FBInterstitialAdMediaView *mediaView; // ivar: _mediaView
@property (retain, nonatomic) FBAdWatchAndActionCoverView *coverView; // ivar: _coverView
@property (retain, nonatomic) FBGradientView *topGradientView; // ivar: _topGradientView
@property (retain, nonatomic) FBAdAudioMuteButton *audioMuteButton; // ivar: _audioMuteButton
@property (retain, nonatomic) FBAdVideoProgressBar *progressBarView; // ivar: _progressBarView
@property (retain, nonatomic) UIView *actionCoverView; // ivar: _actionCoverView
@property (retain, nonatomic) NSObject<FBWatchAndActionActionableController> *actionVC; // ivar: _actionVC
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (retain, nonatomic) FBAdIconButton *minimizeButton; // ivar: _minimizeButton
@property (retain, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (retain, nonatomic) UITapGestureRecognizer *tapToRevealAddGesture; // ivar: _tapToRevealAddGesture
@property (nonatomic) BOOL videoPlaybackInterrupted; // ivar: _videoPlaybackInterrupted
@property (nonatomic) BOOL impressionSent; // ivar: _impressionSent
@property (readonly, nonatomic) BOOL isScrolled;
@property (nonatomic) BOOL actionContentLoaded; // ivar: _actionContentLoaded
@property (copy, nonatomic) id *onClose; // ivar: _onClose
@property (copy, nonatomic) id *onInfo; // ivar: _onInfo
@property (readonly, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)logError:(id)arg0 ;
-(id)initWithDataModel:(id)arg0 andPlacementDefinition:(id)arg1 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)showAd;
-(void)showMediaAdFullSizeAnimated:(BOOL)arg0 ;
-(void)showActionViewFullSizeAnimated:(BOOL)arg0 ;
-(BOOL)isDataModelValid:(id)arg0 ;
-(void)coverViewTap:(id)arg0 ;
-(void)loadScrollView;
-(void)loadActionView;
-(void)loadMediaView;
-(void)loadCoverView;
-(void)loadTopGradientView;
-(void)loadToolbarView;
-(void)loadAudioMuteButton;
-(void)loadProgressBarView;
-(void)loadActionCoverView;
-(void)loadMinimizeButton;
-(void)headPanelTapped:(id)arg0 ;
-(void)loadSubviews;
-(void)dealloc;
-(void)scrollViewDidScroll:(id)arg0 ;
-(void)scrollViewWillEndDragging:(id)arg0 withVelocity:(struct CGPoint )arg1 targetContentOffset:(struct CGPoint *)arg2 ;
-(void)actionViewWillBePresented;
-(void)handleAudioMuteButtonTouch:(id)arg0 ;
-(void)interstitialAdMediaViewDidLoad:(id)arg0 ;
-(void)interstitialAdMediaViewDidProgress:(id)arg0 ;
-(void)interstitialAdMediaViewDidEnd:(id)arg0 ;
-(void)interstitialAdMediaView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)setupNotifications;
-(void)setupViewabilityValidationIfNeeded;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)actionViewDidFinishLoadWithError:(id)arg0 ;
-(void)actionViewDidFinishPresentation;
-(struct CGRect )getMediaViewFrameWithBounds:(struct CGRect )arg0 ;
-(struct CGRect )getGradientViewFrameWithBounds:(struct CGRect )arg0 ;
-(void)layoutSubviews;
-(void)orientationDidChange;
-(void)moveToPortrait;
-(void)moveToLandscape;
-(void)toolbarShowWithActionviewVisible;
-(void)toolbarShowWithMediaviewVisible;
-(void)interstitialAdToolbarDidClose:(id)arg0 withTouchData:(id)arg1 ;
-(void)interstitialAdToolbarDidTapAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidCloseAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidTapAdInfo:(id)arg0 ;
-(void)moveView:(id)arg0 toSuperview:(id)arg1 ;
-(void)scrollMediaViewToVisibleAnimated:(BOOL)arg0 ;
-(void)scrollActionViewToVisibleAnimated:(BOOL)arg0 ;
-(void)bringControlsToFront;


@end


#endif