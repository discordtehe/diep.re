// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINLINESINGLENATIVEADRENDERER_H
#define GADINLINESINGLENATIVEADRENDERER_H

@protocol OS_dispatch_group;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADURLSession;
@class GADEventContext;
@class GADInternalNativeAd;
@class GADAdMediaContent;
@class GADInstreamMediaContent;
@class GADNativeAdAttribution;
@class GADWebViewController;
@protocol GADAdRendering;

@interface GADInlineSingleNativeAdRenderer : NSObject <GADAdRendering>

 {
    GADURLSession *_session;
    *NSDictionary _adConfiguration;
    GADEventContext *_adContext;
    NSMutableDictionary *_assets;
    id *_renderCompletionHandler;
    BOOL _disableImageLoading;
    NSArray *_images;
    GADInternalNativeAd *_internalNativeAd;
    GADAdMediaContent *_mediaContent;
    GADInstreamMediaContent *_instreamContent;
    NSSet *_requiredAssets;
    GADNativeAdAttribution *_attribution;
    GADWebViewController *_adVerificationWebViewController;
    GADWebViewController *_mediaContentWebViewController;
    NSObject<OS_dispatch_group> *_assetLoadingGroup;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)invalidateAndCancel;
-(BOOL)isVideo;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(void)renderSingleAssets;
-(void)renderMuteAdInfo;
-(void)renderCustomAssets;
-(void)renderImages;
-(void)renderMediaContent;
-(void)renderInstreamMediaContent;
-(void)loadAdVerificationWebView;
-(void)renderAttribution;
-(void)loadSingleImage:(id)arg0 assetName:(id)arg1 ;
-(void)loadImageArray:(id)arg0 loadedImages:(id)arg1 ;


@end


#endif