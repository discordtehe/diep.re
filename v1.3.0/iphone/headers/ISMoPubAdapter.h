// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISMOPUBADAPTER_H
#define ISMOPUBADAPTER_H


#import <Foundation/Foundation.h>

@class ISBaseAdapter;
@protocol MPRewardedVideoDelegate;

@interface ISMoPubAdapter : ISBaseAdapter <MPRewardedVideoDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAdapter:(id)arg0 ;
-(id)version;
-(id)sdkVersion;
-(id)systemFrameworks;
-(id)sdkName;
-(void)initRVWithUserId:(id)arg0 adapterConfig:(id)arg1 delegate:(id)arg2 ;
-(void)showRewardedVideoWithViewController:(id)arg0 adapterConfig:(id)arg1 activeDelegate:(id)arg2 ;
-(void)fetchRewardedVideoWithAdapterConfig:(id)arg0 delegate:(id)arg1 ;
-(BOOL)hasAvailableAdsForAdapterConfig:(id)arg0 ;
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
-(void)loadRewardedVideo:(id)arg0 ;
-(void)setConsent:(BOOL)arg0 ;


@end


#endif