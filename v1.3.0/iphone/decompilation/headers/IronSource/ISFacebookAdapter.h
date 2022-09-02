// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISFACEBOOKADAPTER_H
#define ISFACEBOOKADAPTER_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ISBaseAdapter;
@protocol FBInterstitialAdDelegate;
@protocol FBRewardedVideoAdDelegate;
@protocol FBAdViewDelegate;

@interface ISFacebookAdapter : ISBaseAdapter <FBInterstitialAdDelegate, FBRewardedVideoAdDelegate, FBAdViewDelegate>



@property (retain, nonatomic) NSMutableDictionary *interstitialAds; // ivar: _interstitialAds
@property (retain, nonatomic) NSMutableDictionary *rewardedVideoAds; // ivar: _rewardedVideoAds
@property (retain, nonatomic) NSMutableDictionary *bannerAds; // ivar: _bannerAds
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(id)initAdapter:(id)arg0 ;
-(id)version;
-(id)sdkVersion;
-(id)systemFrameworks;
-(id)sdkName;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)fetchRewardedVideoWithAdapterConfig:(id)arg0 delegate:(id)arg1 ;
-(BOOL)hasAvailableAdsForAdapterConfig:(id)arg0 ;
-(void)initISWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)initBNWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)reloadBanner:(id)arg0 ;
-(void)destroyBanner:(id)arg0 ;
-(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 adapterConfig:(id)arg2 activeDelegate:(id)arg3 ;
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewDidFinishHandlingClick:(id)arg0 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewWillLogImpression:(id)arg0 ;
-(void)rewardedVideoAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)rewardedVideoAdDidLoad:(id)arg0 ;
-(void)rewardedVideoAdDidClick:(id)arg0 ;
-(void)rewardedVideoAdVideoComplete:(id)arg0 ;
-(void)rewardedVideoAdDidClose:(id)arg0 ;
-(void)rewardedVideoAdWillClose:(id)arg0 ;
-(void)rewardedVideoAdWillLogImpression:(id)arg0 ;
-(void)interstitialAdDidLoad:(id)arg0 ;
-(void)interstitialAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)interstitialAdWillLogImpression:(id)arg0 ;
-(void)interstitialAdDidClick:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
-(void)loadRewardedVideoAdWithPlacment:(id)arg0 ;
-(id)errorForUnsupportedAdapter:(id)arg0 ;
-(id)errorForAd:(id)arg0 withCode:(NSInteger)arg1 ;
-(BOOL)isSupported;


@end


#endif