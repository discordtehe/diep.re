// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCE_H
#define IRONSOURCE_H


#import <Foundation/Foundation.h>


@interface IronSource : NSObject



+(id)sdkVersion;
+(void)setAge:(NSInteger)arg0 ;
+(void)setGender:(NSInteger)arg0 ;
+(void)shouldTrackReachability:(BOOL)arg0 ;
+(void)setAdaptersDebug:(BOOL)arg0 ;
+(BOOL)setDynamicUserId:(id)arg0 ;
+(id)advertiserId;
+(void)setMediationType:(id)arg0 ;
+(void)setMediationSegment:(id)arg0 ;
+(void)setSegment:(id)arg0 ;
+(void)setSegmentDelegate:(id)arg0 ;
+(void)setUserId:(id)arg0 ;
+(void)initWithAppKey:(id)arg0 ;
+(void)initWithAppKey:(id)arg0 adUnits:(id)arg1 ;
+(void)initISDemandOnly:(id)arg0 adUnits:(id)arg1 ;
+(id)validAdUnit:(id)arg0 ;
+(void)setRewardedVideoDelegate:(id)arg0 ;
+(void)showRewardedVideoWithViewController:(id)arg0 ;
+(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 ;
+(BOOL)hasRewardedVideo;
+(BOOL)isRewardedVideoCappedForPlacement:(id)arg0 ;
+(id)rewardedVideoPlacementInfo:(id)arg0 ;
+(void)setRewardedVideoServerParameters:(id)arg0 ;
+(void)clearRewardedVideoServerParameters;
+(void)setISDemandOnlyRewardedVideoDelegate:(id)arg0 ;
+(void)showISDemandOnlyRewardedVideo:(id)arg0 instanceId:(id)arg1 ;
+(void)showISDemandOnlyRewardedVideo:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
+(BOOL)hasISDemandOnlyRewardedVideo:(id)arg0 ;
+(void)setInterstitialDelegate:(id)arg0 ;
+(void)setRewardedInterstitialDelegate:(id)arg0 ;
+(void)loadInterstitial;
+(void)showInterstitialWithViewController:(id)arg0 ;
+(void)showInterstitialWithViewController:(id)arg0 placement:(id)arg1 ;
+(BOOL)hasInterstitial;
+(BOOL)isInterstitialCappedForPlacement:(id)arg0 ;
+(void)setISDemandOnlyInterstitialDelegate:(id)arg0 ;
+(void)loadISDemandOnlyInterstitial:(id)arg0 ;
+(void)showISDemandOnlyInterstitial:(id)arg0 instanceId:(id)arg1 ;
+(void)showISDemandOnlyInterstitial:(id)arg0 placement:(id)arg1 instanceId:(id)arg2 ;
+(BOOL)hasISDemandOnlyInterstitial:(id)arg0 ;
+(void)setOfferwallDelegate:(id)arg0 ;
+(void)showOfferwallWithViewController:(id)arg0 ;
+(void)showOfferwallWithViewController:(id)arg0 placement:(id)arg1 ;
+(void)offerwallCredits;
+(BOOL)hasOfferwall;
+(void)setBannerDelegate:(id)arg0 ;
+(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 ;
+(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 placement:(id)arg2 ;
+(void)destroyBanner:(id)arg0 ;
+(BOOL)isBannerCappedForPlacement:(id)arg0 ;
+(void)setLogDelegate:(id)arg0 ;
+(void)setConsent:(BOOL)arg0 ;


@end


#endif