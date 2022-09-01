// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKIOS_H
#define FACEBOOKIOS_H


#import <Foundation/Foundation.h>

@class FBInterstitialAd;
@class FBRewardedVideoAd;
@protocol FBInterstitialAdDelegate;
@protocol FBRewardedVideoAdDelegate;

@interface FacebookiOS : NSObject <FBInterstitialAdDelegate, FBRewardedVideoAdDelegate>



@property (retain, nonatomic) FBInterstitialAd *interstitialAd; // ivar: _interstitialAd
@property (retain, nonatomic) FBRewardedVideoAd *rewardedVideoAd; // ivar: _rewardedVideoAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)interstitialAdDidClick:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
-(void)interstitialAdWillClose:(id)arg0 ;
-(void)interstitialAdDidLoad:(id)arg0 ;
-(void)interstitialAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)interstitialAdWillLogImpression:(id)arg0 ;
-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial;
-(void)rewardedVideoAdDidClick:(id)arg0 ;
-(void)rewardedVideoAdDidLoad:(id)arg0 ;
-(void)rewardedVideoAdDidClose:(id)arg0 ;
-(void)rewardedVideoAdWillClose:(id)arg0 ;
-(void)rewardedVideoAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)rewardedVideoAdVideoComplete:(id)arg0 ;
-(void)rewardedVideoAdWillLogImpression:(id)arg0 ;
-(void)rewardedVideoAdServerRewardDidSucceed:(id)arg0 ;
-(void)rewardedVideoAdServerRewardDidFail:(id)arg0 ;
-(BOOL)loadRewardedVideo:(id)arg0 ;
-(BOOL)showRewardedVideo:(id)arg0 currency:(id)arg1 ;


@end


#endif