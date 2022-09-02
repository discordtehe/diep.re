// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISADMOBADAPTER_H
#define ISADMOBADAPTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISBaseAdapter;
@protocol GADInterstitialDelegate;
@protocol GADBannerViewDelegate;
@protocol GADRewardedAdDelegate;

@interface ISAdMobAdapter : ISBaseAdapter <GADInterstitialDelegate, GADBannerViewDelegate, GADRewardedAdDelegate>



@property (retain, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (nonatomic) BOOL didSetConsentCollectingUserData; // ivar: _didSetConsentCollectingUserData
@property (nonatomic) BOOL consentCollectingUserData; // ivar: _consentCollectingUserData
@property (retain, nonatomic) NSMutableDictionary *interstitialAds; // ivar: _interstitialAds
@property (retain, nonatomic) NSMutableDictionary *bannerAds; // ivar: _bannerAds
@property (retain, nonatomic) NSMutableDictionary *rvAds; // ivar: _rvAds
@property (retain, nonatomic) NSMutableDictionary *rvPlacementToDelegate; // ivar: _rvPlacementToDelegate
@property (retain, nonatomic) NSMutableDictionary *isPlacementToDelegate; // ivar: _isPlacementToDelegate
@property (retain, nonatomic) NSMutableDictionary *bnPlacementToDelegate; // ivar: _bnPlacementToDelegate
@property (retain, nonatomic) NSMutableDictionary *rvAdsAvailability; // ivar: _rvAdsAvailability
@property (retain, nonatomic) NSMutableDictionary *isAdsAvailability; // ivar: _isAdsAvailability
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(id)version;
-(id)sdkVersion;
-(id)systemFrameworks;
-(id)sdkName;
-(void)setConsent:(BOOL)arg0 ;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)loadRewardedVideoForAdMobWithPlacment:(id)arg0 ;
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
-(void)interstitialDidReceiveAd:(id)arg0 ;
-(void)interstitial:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)interstitialWillPresentScreen:(id)arg0 ;
-(void)interstitialDidDismissScreen:(id)arg0 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;
-(void)interstitialDidFailToPresentScreen:(id)arg0 ;
-(void)interstitialWillDismissScreen:(id)arg0 ;
-(void)rewardedAd:(id)arg0 userDidEarnReward:(id)arg1 ;
-(void)rewardedAdDidPresent:(id)arg0 ;
-(void)rewardedAd:(id)arg0 didFailToPresentWithError:(id)arg1 ;
-(void)rewardedAdDidDismiss:(id)arg0 ;
-(void)adViewDidReceiveAd:(id)arg0 ;
-(void)adView:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)adViewWillPresentScreen:(id)arg0 ;
-(void)adViewDidDismissScreen:(id)arg0 ;
-(void)adViewWillLeaveApplication:(id)arg0 ;
-(void)adViewWillDismissScreen:(id)arg0 ;
-(void)initAdMobSDK;
-(id)createGADRequest;


@end


#endif