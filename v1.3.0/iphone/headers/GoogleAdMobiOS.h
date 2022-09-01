// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GOOGLEADMOBIOS_H
#define GOOGLEADMOBIOS_H


#import <Foundation/Foundation.h>

@class GADInterstitial;
@class GADRewardBasedVideoAd;
@protocol GADInterstitialDelegate;
@protocol GADRewardBasedVideoAdDelegate;

@interface GoogleAdMobiOS : NSObject <GADInterstitialDelegate, GADRewardBasedVideoAdDelegate>



@property (retain, nonatomic) GADInterstitial *interstitialAd; // ivar: _interstitialAd
@property (retain, nonatomic) GADRewardBasedVideoAd *rewardedVideoAd; // ivar: _rewardedVideoAd
@property (retain, nonatomic) NSString *userId; // ivar: _userId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial;
-(void)interstitialDidReceiveAd:(id)arg0 ;
-(void)interstitial:(id)arg0 didFailToReceiveAdWithError:(id)arg1 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;
-(void)interstitialDidDismissScreen:(id)arg0 ;
-(void)interstitialWillPresentScreen:(id)arg0 ;
-(void)interstitialWillDismissScreen:(id)arg0 ;
-(void)rewardBasedVideoAdDidReceiveAd:(id)arg0 ;
-(void)rewardBasedVideoAd:(id)arg0 didFailToLoadWithError:(id)arg1 ;
-(void)rewardBasedVideoAdWillLeaveApplication:(id)arg0 ;
-(void)rewardBasedVideoAdDidClose:(id)arg0 ;
-(void)rewardBasedVideoAdDidOpen:(id)arg0 ;
-(void)rewardBasedVideoAd:(id)arg0 didRewardUserWithReward:(id)arg1 ;
-(void)rewardBasedVideoAdDidStartPlaying:(id)arg0 ;
-(void)rewardBasedVideoAdDidCompletePlaying:(id)arg0 ;
-(BOOL)loadRewardedVideo:(id)arg0 ;
-(BOOL)showRewardedVideo;


@end


#endif