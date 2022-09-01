// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKNATIVEADRENDERER_H
#define FACEBOOKNATIVEADRENDERER_H

@class UIView<MPNativeAdRendering>;

#import <Foundation/Foundation.h>

@class FacebookNativeAdAdapter;
@class MPNativeAdRendererImageHandler;
@protocol MPNativeAdRendererImageHandlerDelegate;
@protocol MPNativeAdRenderer;

@interface FacebookNativeAdRenderer : NSObject <MPNativeAdRendererImageHandlerDelegate, MPNativeAdRenderer>



@property (retain, nonatomic) UIView<MPNativeAdRendering> *adView; // ivar: _adView
@property (retain, nonatomic) FacebookNativeAdAdapter *adapter; // ivar: _adapter
@property (retain, nonatomic) Class renderingViewClass; // ivar: _renderingViewClass
@property (retain, nonatomic) MPNativeAdRendererImageHandler *rendererImageHandler; // ivar: _rendererImageHandler
@property (nonatomic) BOOL adViewInViewHierarchy; // ivar: _adViewInViewHierarchy
@property (readonly, nonatomic) id *viewSizeHandler; // ivar: _viewSizeHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRendererSettings:(id)arg0 ;
-(id)retrieveViewWithAdapter:(id)arg0 error:(*id)arg1 ;
-(BOOL)shouldLoadMediaView;
-(BOOL)hasIconView;
-(void)onPrivacyIconTapped;
-(void)adViewWillMoveToSuperview:(id)arg0 ;
-(BOOL)nativeAdViewInViewHierarchy;
+(id)rendererConfigurationWithRendererSettings:(id)arg0 ;


@end


#endif