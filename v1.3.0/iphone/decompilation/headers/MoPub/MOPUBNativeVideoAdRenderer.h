// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBNATIVEVIDEOADRENDERER_H
#define MOPUBNATIVEVIDEOADRENDERER_H

@class UIView<MPNativeAdRendering>, MOPUBNativeVideoAdAdapter<MPNativeAdAdapter>;

#import <Foundation/Foundation.h>

@class MPNativeAdRendererImageHandler;
@class MOPUBPlayerViewController;
@class MPTimer;
@class MPVideoConfig;
@class MPVASTTracking;
@class MOPUBNativeVideoAdConfigValues;
@class MOPUBNativeVideoImpressionAgent;
@protocol MPNativeAdRenderer;
@protocol MOPUBPlayerViewControllerDelegate;
@protocol MOPUBFullscreenPlayerViewControllerDelegate;
@protocol MPNativeAdRendererImageHandlerDelegate;

@interface MOPUBNativeVideoAdRenderer : NSObject <MPNativeAdRenderer, MOPUBPlayerViewControllerDelegate, MOPUBFullscreenPlayerViewControllerDelegate, MPNativeAdRendererImageHandlerDelegate>



@property (retain, nonatomic) UIView<MPNativeAdRendering> *adView; // ivar: _adView
@property (retain, nonatomic) MOPUBNativeVideoAdAdapter<MPNativeAdAdapter> *adapter; // ivar: _adapter
@property (nonatomic) BOOL adViewInViewHierarchy; // ivar: _adViewInViewHierarchy
@property (retain, nonatomic) Class renderingViewClass; // ivar: _renderingViewClass
@property (retain, nonatomic) MPNativeAdRendererImageHandler *rendererImageHandler; // ivar: _rendererImageHandler
@property (weak, nonatomic) MOPUBPlayerViewController *videoController; // ivar: _videoController
@property (retain, nonatomic) MPTimer *autoPlayTimer; // ivar: _autoPlayTimer
@property (retain, nonatomic) MPVideoConfig *videoConfig; // ivar: _videoConfig
@property (retain, nonatomic) MPVASTTracking *vastTracking; // ivar: _vastTracking
@property (retain, nonatomic) MOPUBNativeVideoAdConfigValues *nativeVideoAdConfig; // ivar: _nativeVideoAdConfig
@property (retain, nonatomic) MOPUBNativeVideoImpressionAgent *trackingAgent; // ivar: _trackingAgent
@property (nonatomic) BOOL trackingImpressionFired; // ivar: _trackingImpressionFired
@property (readonly, nonatomic) id *viewSizeHandler; // ivar: _viewSizeHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRendererSettings:(id)arg0 ;
-(void)dealloc;
-(id)retrieveViewWithAdapter:(id)arg0 error:(*id)arg1 ;
-(BOOL)shouldLoadMediaView;
-(BOOL)hasIconView;
-(void)onPrivacyIconTapped;
-(void)adViewWillMoveToSuperview:(id)arg0 ;
-(void)tick:(id)arg0 ;
-(void)willEnterFullscreen:(id)arg0 ;
-(void)playerDidProgressToTime:(CGFloat)arg0 ;
-(void)ctaTapped:(id)arg0 ;
-(void)fullscreenPlayerWillLeaveApplication:(id)arg0 ;
-(void)nativeAdTapped;
-(BOOL)nativeAdViewInViewHierarchy;
-(void)enterFullscreen:(id)arg0 ;
-(void)initAdView;
-(void)setupVideoView;
+(id)rendererConfigurationWithRendererSettings:(id)arg0 ;


@end


#endif