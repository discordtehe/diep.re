// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPRewardedVideoAdapterDelegate


-(id)instanceMediationSettingsForClass:(Class)arg0 ;
-(void)rewardedVideoDidLoadForAdapter:(id)arg0 ;
-(void)rewardedVideoDidFailToLoadForAdapter:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoDidExpireForAdapter:(id)arg0 ;
-(void)rewardedVideoDidFailToPlayForAdapter:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoWillAppearForAdapter:(id)arg0 ;
-(void)rewardedVideoDidAppearForAdapter:(id)arg0 ;
-(void)rewardedVideoWillDisappearForAdapter:(id)arg0 ;
-(void)rewardedVideoDidDisappearForAdapter:(id)arg0 ;
-(void)rewardedVideoDidReceiveTapEventForAdapter:(id)arg0 ;
-(void)rewardedVideoDidReceiveImpressionEventForAdapter:(id)arg0 ;
-(void)rewardedVideoWillLeaveApplicationForAdapter:(id)arg0 ;
-(void)rewardedVideoShouldRewardUserForAdapter:(id)arg0 reward:(id)arg1 ;

@optional
-(id)rewardedVideoAdUnitId;
-(id)rewardedVideoCustomerId;
-(id)configuration;
@end

