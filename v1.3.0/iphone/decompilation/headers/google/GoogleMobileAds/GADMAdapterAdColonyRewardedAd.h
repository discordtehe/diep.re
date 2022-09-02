// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERADCOLONYREWARDEDAD_H
#define GADMADAPTERADCOLONYREWARDEDAD_H


#import <Foundation/Foundation.h>

@class AdColonyInterstitial;
@protocol GADMediationRewardedAd;
@protocol GADMediationRewardedAdEventDelegate;

@interface GADMAdapterAdColonyRewardedAd : NSObject <GADMediationRewardedAd>



@property (copy, nonatomic) id *loadCompletionHandler; // ivar: _loadCompletionHandler
@property (retain, nonatomic) AdColonyInterstitial *rewardedAd; // ivar: _rewardedAd
@property (weak, nonatomic) NSObject<GADMediationRewardedAdEventDelegate> *adEventDelegate; // ivar: _adEventDelegate
@property (retain, nonatomic) NSString *zoneID; // ivar: _zoneID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)renderRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)getRewardedAdFromZoneId:(id)arg0 withAdConfig:(id)arg1 ;
-(void)handleAdReceived:(id)arg0 forAdConfig:(id)arg1 zone:(id)arg2 ;
-(void)presentFromViewController:(id)arg0 ;


@end


#endif