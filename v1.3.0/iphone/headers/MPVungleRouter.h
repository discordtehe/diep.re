// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVUNGLEROUTER_H
#define MPVUNGLEROUTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol VungleSDKDelegate;
@protocol VungleSDKNativeAds;

@interface MPVungleRouter : NSObject <VungleSDKDelegate, VungleSDKNativeAds>



@property (copy, nonatomic) NSString *vungleAppID; // ivar: _vungleAppID
@property (nonatomic) BOOL isAdPlaying; // ivar: _isAdPlaying
@property (nonatomic) NSUInteger sdkInitializeState; // ivar: _sdkInitializeState
@property (retain, nonatomic) NSMutableDictionary *delegatesDict; // ivar: _delegatesDict
@property (retain, nonatomic) NSMutableDictionary *waitingListDict; // ivar: _waitingListDict
@property (copy, nonatomic) NSString *bannerPlacementID; // ivar: _bannerPlacementID
@property (retain, nonatomic) NSMutableArray *bannerDelegates; // ivar: _bannerDelegates
@property (nonatomic) BOOL isInvalidatedBannerForPlacementID; // ivar: _isInvalidatedBannerForPlacementID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)collectConsentStatusFromMoPub;
-(void)initializeSdkWithInfo:(id)arg0 ;
-(void)setShouldCollectDeviceId:(BOOL)arg0 ;
-(void)setSDKOptions:(id)arg0 ;
-(void)requestInterstitialAdWithCustomEventInfo:(id)arg0 delegate:(id)arg1 ;
-(void)requestRewardedVideoAdWithCustomEventInfo:(id)arg0 delegate:(id)arg1 ;
-(void)requestBannerAdWithCustomEventInfo:(id)arg0 size:(struct CGSize )arg1 delegate:(id)arg2 ;
-(void)requestAdWithCustomEventInfo:(id)arg0 delegate:(id)arg1 ;
-(void)requestBannerMrecAdWithPlacementID:(id)arg0 delegate:(id)arg1 ;
-(BOOL)isAdAvailableForPlacementId:(id)arg0 ;
-(void)presentInterstitialAdFromViewController:(id)arg0 options:(id)arg1 forPlacementId:(id)arg2 ;
-(void)presentRewardedVideoAdFromViewController:(id)arg0 customerId:(id)arg1 settings:(id)arg2 forPlacementId:(id)arg3 ;
-(id)renderBannerAdInView:(id)arg0 options:(id)arg1 forPlacementID:(id)arg2 ;
-(void)completeBannerAdViewForPlacementID:(id)arg0 ;
-(void)invalidateBannerAdViewForPlacementID:(id)arg0 delegate:(id)arg1 ;
-(void)updateConsentStatus:(NSInteger)arg0 ;
-(NSInteger)getCurrentConsentStatus;
-(void)clearDelegateForRequestingBanner;
-(void)clearDelegateForPlacementId:(id)arg0 ;
-(BOOL)validateInfoData:(id)arg0 ;
-(void)clearDelegateWithState:(NSUInteger)arg0 placementID:(id)arg1 ;
-(void)clearWaitingList;
-(void)vungleSDKDidInitialize;
-(void)vungleAdPlayabilityUpdate:(BOOL)arg0 placementID:(id)arg1 error:(id)arg2 ;
-(void)vungleWillShowAdForPlacementID:(id)arg0 ;
-(void)vungleDidShowAdForPlacementID:(id)arg0 ;
-(void)vungleWillCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleDidCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)nativeAdsPlacementDidLoadAd:(id)arg0 ;
-(void)nativeAdsPlacement:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)nativeAdsPlacementWillTriggerURLLaunch:(id)arg0 ;
+(id)sharedRouter;


@end


#endif