// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPRewardedVideoDelegate



@optional
-(void)rewardedVideoAdDidLoadForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdDidExpireForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidFailToPlayForAdUnitID:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoAdWillAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidAppearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidDisappearForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdWillLeaveApplicationForAdUnitID:(id)arg0 ;
-(void)rewardedVideoAdShouldRewardForAdUnitID:(id)arg0 reward:(id)arg1 ;
-(void)didTrackImpressionWithAdUnitID:(id)arg0 impressionData:(id)arg1 ;
@end

