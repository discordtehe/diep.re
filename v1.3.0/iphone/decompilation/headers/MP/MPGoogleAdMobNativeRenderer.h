// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPGOOGLEADMOBNATIVERENDERER_H
#define MPGOOGLEADMOBNATIVERENDERER_H

@class UIView<MPNativeAdRendering>;

#import <Foundation/Foundation.h>

@class MPGoogleAdMobNativeAdAdapter;
@class MPNativeAdRendererImageHandler;
@class GADUnifiedNativeAdView;
@protocol MPNativeAdRendererImageHandlerDelegate;
@protocol MPNativeAdRendererSettings;

@interface MPGoogleAdMobNativeRenderer : NSObject <MPNativeAdRendererImageHandlerDelegate, MPNativeAdRendererSettings>



@property (retain, nonatomic) UIView<MPNativeAdRendering> *adView; // ivar: _adView
@property (retain, nonatomic) MPGoogleAdMobNativeAdAdapter *adapter; // ivar: _adapter
@property (nonatomic) BOOL adViewInViewHierarchy; // ivar: _adViewInViewHierarchy
@property (retain, nonatomic) MPNativeAdRendererImageHandler *rendererImageHandler; // ivar: _rendererImageHandler
@property (retain, nonatomic) Class renderingViewClass; // ivar: _renderingViewClass
@property (retain, nonatomic) GADUnifiedNativeAdView *unifiedNativeAdView; // ivar: _unifiedNativeAdView
@property (copy, nonatomic) id *viewSizeHandler; // ivar: viewSizeHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRendererSettings:(id)arg0 ;
-(id)retrieveViewWithAdapter:(id)arg0 error:(*id)arg1 ;
-(void)renderUnifiedAdViewWithAdapter:(id)arg0 ;
-(BOOL)shouldLoadMediaView;
-(void)adViewWillMoveToSuperview:(id)arg0 ;
-(BOOL)nativeAdViewInViewHierarchy;
+(id)rendererConfigurationWithRendererSettings:(id)arg0 ;


@end


#endif