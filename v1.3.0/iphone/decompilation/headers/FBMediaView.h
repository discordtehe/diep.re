// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBMEDIAVIEW_H
#define FBMEDIAVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBAdViewabilityValidator;
@class FBAdBlurredImageView;
@class FBMediaViewVideoRenderer;
@class FBAdMultiProductView;
@class FBAdCommandProcessor;
@class FBAdFullscreenVideoController;
@class FBNativeAd;
@protocol FBMediaViewDefaultVideoRendererDelegate;
@protocol FBAdFullscreenVideoControllerDelegate;
@protocol FBAdMultiProductViewDelegate;
@protocol FBAdCommandProcessorDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBMediaViewDelegate;

@interface FBMediaView : UIView <FBMediaViewDefaultVideoRendererDelegate, FBAdFullscreenVideoControllerDelegate, FBAdMultiProductViewDelegate, FBAdCommandProcessorDelegate, FBAdViewabilityValidatorDelegate>



@property (nonatomic) BOOL useAsIconView; // ivar: _useAsIconView
@property (retain, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (nonatomic) BOOL needsDelayedLoad; // ivar: _needsDelayedLoad
@property (nonatomic) BOOL hasLoadedMedia; // ivar: _hasLoadedMedia
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (nonatomic) NSInteger lastAdViewabilityStatus; // ivar: _lastAdViewabilityStatus
@property (copy, nonatomic) id *mediaIsLoadedAndVisibleBlock; // ivar: _mediaIsLoadedAndVisibleBlock
@property (copy, nonatomic) id *mediaErrorBlock; // ivar: _mediaErrorBlock
@property (nonatomic) NSUInteger multiProductCellStyle; // ivar: _multiProductCellStyle
@property (weak, nonatomic) FBAdBlurredImageView *imageView; // ivar: _imageView
@property (weak, nonatomic) FBMediaViewVideoRenderer *currentVideoRenderer; // ivar: _currentVideoRenderer
@property (weak, nonatomic) FBAdMultiProductView *multiProductView; // ivar: _multiProductView
@property (nonatomic) BOOL videoFailedToLoad; // ivar: _videoFailedToLoad
@property (retain, nonatomic) FBAdCommandProcessor *commandProcessor; // ivar: _commandProcessor
@property (nonatomic) CGFloat loadedTime; // ivar: _loadedTime
@property (retain, nonatomic) FBAdFullscreenVideoController *videoFullscreenController; // ivar: _videoFullscreenController
@property (retain, nonatomic) FBNativeAd *nativeAd; // ivar: _nativeAd
@property (weak, nonatomic) NSObject<FBMediaViewDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBMediaViewVideoRenderer *videoRenderer; // ivar: _videoRenderer
@property (readonly, nonatomic) float volume;
@property (readonly, nonatomic, getter=isAutoplayEnabled) BOOL autoplayEnabled;
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (readonly, nonatomic) NSUInteger nativeAdViewTag;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(void)initialSetup;
-(id)init;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithNativeAd:(id)arg0 ;
-(id)viewShowingMediaForCurrentNativeAd;
-(void)setupCommandProcessorIfNeeded;
-(void)setupView;
-(void)setupVideoRenderer:(id)arg0 ;
-(BOOL)videoSupported;
-(BOOL)multiProductSupported;
-(void)applyNaturalWidth;
-(void)applyNaturalHeight;
-(void)loadMediaFromNativeAdBase:(id)arg0 ;
-(void)loadImage;
-(void)loadVideo;
-(void)loadMultiProductAd;
-(void)processCommand:(id)arg0 withExtraData:(id)arg1 adDataModel:(id)arg2 ;
-(void)dispatchViewDidLoad;
-(BOOL)hasAdMedia;
-(BOOL)isUsingCustomVideoRenderer;
-(void)multiProductViewDidLoad:(id)arg0 ;
-(void)videoControllerWillDismiss:(id)arg0 ;
-(void)videoControllerDidDismiss:(id)arg0 ;
-(void)videoControllerDidTapCallToAction:(id)arg0 withButton:(id)arg1 withEvent:(id)arg2 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
-(void)defaultVideoRendererWasTapped:(id)arg0 ;
-(void)defaultVideoRenderer:(id)arg0 volumeDidChange:(float)arg1 ;
-(void)defaultVideoRendererDidPause:(id)arg0 ;
-(void)defaultVideoRendererDidPlay:(id)arg0 ;
-(void)defaultVideoRendererVideoDidComplete:(id)arg0 ;
-(void)dealloc;
-(void)setupViewabilityValidator;
-(void)executeMediaIsLoadedAndVisibleBlockIfHasAdMedia;
-(void)checkIfMediaIsLoadedAndVisible;
-(void)layoutSubviews;
-(id)generateLoggingData;
-(id)generateLoggingDataWithExtraData:(id)arg0 ;
-(BOOL)isValidFrame;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;


@end


#endif