// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBMEDIATIONNATIVEADRENDERER_H
#define GADRTBMEDIATIONNATIVEADRENDERER_H


#import <Foundation/Foundation.h>

@class GADInternalNativeAd;
@class GADMediationNativeAdConfiguration;
@protocol GADMediationNativeAdEventDelegate;
@protocol GADAdRendering;
@protocol GADMediationAdapter;
@protocol GADMediationNativeAd;

@interface GADRTBMediationNativeAdRenderer : NSObject <GADMediationNativeAdEventDelegate, GADAdRendering>

 {
    id<GADMediationAdapter> *_loadingAdapter;
    id<GADMediationNativeAd> *_mediatedAd;
    GADInternalNativeAd *_internalNativeAd;
    GADMediationNativeAdConfiguration *_mediationConfiguration;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(id)adEventDelegateForNativeAd:(id)arg0 adapter:(id)arg1 adConfiguration:(struct NSDictionary *)arg2 transaction:(id)arg3 renderCompletionHandler:(id)arg4 ;
-(void)reportImpression;
-(void)reportClick;
-(void)willPresentFullScreenView;
-(void)willDismissFullScreenView;
-(void)didDismissFullScreenView;
-(void)willBackgroundApplication;
-(void)didPlayVideo;
-(void)didPauseVideo;
-(void)didEndVideo;
-(void)didFailToPresentWithError:(id)arg0 ;
-(void)didMuteVideo;
-(void)didUnmuteVideo;


@end


#endif