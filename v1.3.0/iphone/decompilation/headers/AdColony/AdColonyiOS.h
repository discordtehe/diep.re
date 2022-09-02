// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYIOS_H
#define ADCOLONYIOS_H


#import <Foundation/Foundation.h>

@class AdColonyInterstitial;
@class AdColonyZone;

@interface AdColonyiOS : NSObject

@property (retain, nonatomic) AdColonyInterstitial *interstitialAd; // ivar: _interstitialAd
@property (retain, nonatomic) AdColonyInterstitial *rewardedVideoAd; // ivar: _rewardedVideoAd
@property (retain, nonatomic) AdColonyZone *rewardedVideoRewardHandler; // ivar: _rewardedVideoRewardHandler
@property BOOL debugLog; // ivar: _debugLog


-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial;
-(BOOL)loadRewardedVideo:(id)arg0 ;
-(BOOL)showRewardedVideo:(id)arg0 withUserId:(id)arg1 withCustomData:(id)arg2 ;
-(void)onAdLoaded:(id)arg0 forAdFormat:(int)arg1 ;
-(void)onAdLoadFailure:(id)arg0 forAdFormat:(int)arg1 ;
-(void)onAdOpen:(int)arg0 ;
-(void)onAdClosed:(int)arg0 ;
-(void)onAdClicked:(int)arg0 ;
-(void)onRewardedVideoRewardedWithCurrency:(id)arg0 andAmount:(int)arg1 ;


@end


#endif