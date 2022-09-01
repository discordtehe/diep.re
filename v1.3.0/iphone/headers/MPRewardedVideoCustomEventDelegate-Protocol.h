// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPRewardedVideoCustomEventDelegate


-(id)instanceMediationSettingsForClass:(Class)arg0 ;
-(void)rewardedVideoDidLoadAdForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidFailToLoadAdForCustomEvent:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoDidExpireForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidFailToPlayForCustomEvent:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoWillAppearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidAppearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoWillDisappearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidDisappearForCustomEvent:(id)arg0 ;
-(void)rewardedVideoWillLeaveApplicationForCustomEvent:(id)arg0 ;
-(void)rewardedVideoDidReceiveTapEventForCustomEvent:(id)arg0 ;
-(void)rewardedVideoShouldRewardUserForCustomEvent:(id)arg0 reward:(id)arg1 ;
-(id)customerIdForRewardedVideoCustomEvent:(id)arg0 ;
-(void)trackImpression;
-(void)trackClick;

@end

