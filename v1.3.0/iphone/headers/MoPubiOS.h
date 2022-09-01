// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBIOS_H
#define MOPUBIOS_H


#import <Foundation/Foundation.h>

@class MPInterstitialAdController;
@protocol MPInterstitialAdControllerDelegate;
@protocol MPRewardedVideoDelegate;

@interface MoPubiOS : NSObject <MPInterstitialAdControllerDelegate, MPRewardedVideoDelegate>



@property (retain, nonatomic) MPInterstitialAdController *interstitialAd; // ivar: _interstitialAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial;
-(void)interstitialDidLoadAd:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 ;
-(void)interstitialDidExpire:(id)arg0 ;
-(void)interstitialWillAppear:(id)arg0 ;
-(void)interstitialDidAppear:(id)arg0 ;
-(void)interstitialWillDisappear:(id)arg0 ;
-(void)interstitialDidDisappear:(id)arg0 ;
-(void)interstitialDidReceiveTapEvent:(id)arg0 ;
-(BOOL)loadRewardedVideo:(id)arg0 withUserId:(id)arg1 ;
-(BOOL)showRewardedVideo:(id)arg0 withCustomData:(id)arg1 ;
-(void)rewardedVideoAdDidLoadForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdWillAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidExpireForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillLeaveApplicationForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdShouldRewardForAdUnitID:(id)arg0 reward:(id)arg1 ;
-(void)dealloc;


@end


#endif