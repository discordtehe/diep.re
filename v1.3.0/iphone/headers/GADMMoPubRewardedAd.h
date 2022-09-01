// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMMOPUBREWARDEDAD_H
#define GADMMOPUBREWARDEDAD_H


#import <Foundation/Foundation.h>

@class GADMediationRewardedAdConfiguration;
@protocol MPRewardedVideoDelegate;
@protocol GADMediationRewardedAd;
@protocol GADMediationRewardedAdEventDelegate;

@interface GADMMoPubRewardedAd : NSObject <MPRewardedVideoDelegate, GADMediationRewardedAd>



@property (weak, nonatomic) GADMediationRewardedAdConfiguration *adConfig; // ivar: _adConfig
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler
@property (weak, nonatomic) NSObject<GADMediationRewardedAdEventDelegate> *adEventDelegate; // ivar: _adEventDelegate
@property (copy, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (nonatomic) BOOL adExpired; // ivar: _adExpired
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadRewardedAdForAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)requestRewarded;
-(void)presentFromViewController:(id)arg0 ;
-(void)rewardedVideoAdDidLoadForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdWillAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidExpireForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(id)arg0 ;
-(void)rewardedVideoWillLeaveApplicationForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdShouldRewardForAdUnitID:(id)arg0 reward:(id)arg1 ;


@end


#endif