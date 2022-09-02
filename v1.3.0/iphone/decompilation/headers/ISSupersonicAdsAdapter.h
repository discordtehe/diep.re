// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSUPERSONICADSADAPTER_H
#define ISSUPERSONICADSADAPTER_H


#import <Foundation/Foundation.h>

@class ISBaseAdapter;
@class ISSupersonicAdsConfiguration;
@class SupersonicAdsPublisher;
@class ISNAdView;
@protocol SSARewardedVideoDelegate;
@protocol SSAInterstitialDelegate;
@protocol SSAOfferWallDelegate;
@protocol SSABannerDelegate;
@protocol ISOfferwallAdapterDelegate;

@interface ISSupersonicAdsAdapter : ISBaseAdapter <SSARewardedVideoDelegate, SSAInterstitialDelegate, SSAOfferWallDelegate, SSABannerDelegate>



@property (nonatomic) BOOL lastReportedAvailability; // ivar: _lastReportedAvailability
@property (retain, nonatomic) NSString *applicationKey; // ivar: _applicationKey
@property (retain, nonatomic) ISSupersonicAdsConfiguration *configs; // ivar: _configs
@property (nonatomic) BOOL consent; // ivar: _consent
@property (nonatomic) BOOL didSetConsent; // ivar: _didSetConsent
@property (nonatomic) SupersonicAdsPublisher *instance; // ivar: _instance
@property (retain, nonatomic) ISNAdView *bannerView; // ivar: _bannerView
@property (weak, nonatomic) NSObject<ISOfferwallAdapterDelegate> *owDelegate; // ivar: _owDelegate
@property (nonatomic) BOOL isOfferwallAvailable; // ivar: _isOfferwallAvailable
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(id)version;
-(id)sdkVersion;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)fetchRewardedVideoWithAdapterConfig:(id)arg0 delegate:(id)arg1 ;
-(BOOL)hasAvailableAdsForAdapterConfig:(id)arg0 ;
-(void)initISWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadInterstitialWithAdapterConfig:(id)arg0 activeDelegate:(id)arg1 ;
-(void)showInterstitialWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(BOOL)hasInterstitialWithAdapterConfig:(id)arg0 ;
-(void)initOWWithUserId:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)showOfferwallWithViewController:(id)arg0 placement:(id)arg1 ;
-(void)getOfferWallCreditsWithUserId:(id)arg0 ;
-(BOOL)hasOfferwall;
-(void)initBNWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 adapterConfig:(id)arg2 activeDelegate:(id)arg3 ;
-(void)reloadBanner:(id)arg0 ;
-(void)destroyBanner:(id)arg0 ;
-(void)ssaRewardedVideoDidUpdateAdUnits:(id)arg0 ;
-(void)ssaRewardedVideoNoMoreOffers;
-(void)ssaRewardedVideoDidFailInitWithError:(id)arg0 ;
-(void)ssaRewardedVideoDidFailShowWithError:(id)arg0 ;
-(void)ssaRewardedVideoWindowWillOpen;
-(void)ssaRewardedVideoWindowDidClose;
-(void)ssaRewardedVideoDidReceiveCredit:(id)arg0 ;
-(void)ssaRewardedVideoAdClicked;
-(void)ssaRewardedVideoAdDidReceiveNotificationOnEvent:(id)arg0 extData:(id)arg1 ;
-(void)supersonicISInitSuccess;
-(void)supersonicISInitFailedWithError:(id)arg0 ;
-(void)supersonicISLoadSuccess;
-(void)supersonicISLoadFailedWithError:(id)arg0 ;
-(void)supersonicISShowSuccess;
-(void)supersonicISShowFailWithError:(id)arg0 ;
-(void)supersonicISAdClicked;
-(void)supersonicISAdClosed;
-(void)supersonicISAdDidReceiveNotificationOnEvent:(id)arg0 extData:(id)arg1 ;
-(void)ssaInitOfferWallSuccess;
-(void)ssaInitOfferWallFailedWithError:(id)arg0 ;
-(void)ssaOfferWallShowSuccess:(id)arg0 ;
-(void)ssaOfferWallShowFailedWithError:(id)arg0 ;
-(void)ssaOfferWallDidClose;
-(void)ssaOfferwallDidFailGettingCreditWithError:(id)arg0 ;
-(BOOL)ssaOfferWallDidReceiveCredit:(id)arg0 ;
-(void)ISNBannerInitSuccess;
-(void)ISNBannerInitFailedWithError:(id)arg0 ;
-(void)ISNBannerLoadSuccess;
-(void)ISNBannerLoadFailedWithError:(id)arg0 ;
-(void)ISNBannerAdClicked;
-(void)ISNBannerAdClosed;
-(void)ISNBannerWillPresentFullScreen;
-(void)validateIronSourceOptionalParams;
-(id)createParams:(id)arg0 product:(id)arg1 ;
-(void)setSDK5ParametersWithAdapterConfig:(id)arg0 ;
-(id)paramsToString:(id)arg0 ;
-(void)validateOWOptionalParams;
-(void)validateRVOptionalParams;
-(id)md5:(id)arg0 ;
-(BOOL)checkRegWithVal:(id)arg0 pattern:(id)arg1 ;
-(id)convertAge:(NSInteger)arg0 ;
-(id)timeInMilliSeconds;
-(void)setMediationState:(NSInteger)arg0 forAdUnit:(id)arg1 ;
-(void)applyConsent:(BOOL)arg0 ;


@end


#endif