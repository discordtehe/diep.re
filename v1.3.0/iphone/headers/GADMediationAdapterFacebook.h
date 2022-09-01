// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONADAPTERFACEBOOK_H
#define GADMEDIATIONADAPTERFACEBOOK_H


#import <Foundation/Foundation.h>

@class GADFBRewardedRenderer;
@class GADFBNativeRenderer;
@class GADFBInterstitialRenderer;
@class GADFBBannerRenderer;
@protocol GADRTBAdapter;

@interface GADMediationAdapterFacebook : NSObject <GADRTBAdapter>

 {
    GADFBRewardedRenderer *_rewardedAd;
    GADFBNativeRenderer *_native;
    GADFBInterstitialRenderer *_interstitial;
    GADFBBannerRenderer *_banner;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)collectSignalsForRequestParameters:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadBannerForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadInterstitialForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)loadNativeAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(void)setUpWithConfiguration:(id)arg0 completionHandler:(id)arg1 ;
+(id)getPlacementIDFromCredentials:(id)arg0 ;
+(struct ? )version;
+(Class)networkExtrasClass;
+(struct ? )adSDKVersion;


@end


#endif