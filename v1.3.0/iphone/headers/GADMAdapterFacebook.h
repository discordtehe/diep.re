// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERFACEBOOK_H
#define GADMADAPTERFACEBOOK_H


#import <Foundation/Foundation.h>

@class GADFBBannerAd;
@class GADFBInterstitialAd;
@class GADFBNativeAd;
@class GADFBUnifiedNativeAd;
@protocol GADMAdNetworkAdapter;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterFacebook : NSObject <GADMAdNetworkAdapter>

 {
    id<GADMAdNetworkConnector> *_connector;
    GADFBBannerAd *_bannerAd;
    GADFBInterstitialAd *_interstitialAd;
    GADFBNativeAd *_nativeAd;
    GADFBUnifiedNativeAd *_unifiedNativeAd;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(void)getInterstitial;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)getNativeAdWithAdTypes:(id)arg0 options:(id)arg1 ;
-(void)stopBeingDelegate;
-(BOOL)isBannerAnimationOK:(NSInteger)arg0 ;
-(BOOL)handlesUserClicks;
-(BOOL)handlesUserImpressions;
+(id)adapterVersion;
+(Class)networkExtrasClass;
+(Class)mainAdapterClass;


@end


#endif