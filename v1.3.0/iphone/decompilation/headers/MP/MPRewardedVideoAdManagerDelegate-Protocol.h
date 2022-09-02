// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPRewardedVideoAdManagerDelegate


-(void)rewardedVideoDidLoadForAdManager:(id)arg0 ;
-(void)rewardedVideoDidFailToLoadForAdManager:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoDidExpireForAdManager:(id)arg0 ;
-(void)rewardedVideoDidFailToPlayForAdManager:(id)arg0 error:(id)arg1 ;
-(void)rewardedVideoWillAppearForAdManager:(id)arg0 ;
-(void)rewardedVideoDidAppearForAdManager:(id)arg0 ;
-(void)rewardedVideoWillDisappearForAdManager:(id)arg0 ;
-(void)rewardedVideoDidDisappearForAdManager:(id)arg0 ;
-(void)rewardedVideoDidReceiveTapEventForAdManager:(id)arg0 ;
-(void)rewardedVideoAdManager:(id)arg0 didReceiveImpressionEventWithImpressionData:(id)arg1 ;
-(void)rewardedVideoWillLeaveApplicationForAdManager:(id)arg0 ;
-(void)rewardedVideoShouldRewardUserForAdManager:(id)arg0 reward:(id)arg1 ;

@end

