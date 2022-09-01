// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISDemandOnlyRewardedVideoDelegate


-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 instanceId:(id)arg1 ;
-(void)didReceiveRewardForPlacement:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)rewardedVideoDidOpen:(id)arg0 ;
-(void)rewardedVideoDidClose:(id)arg0 ;
-(void)didClickRewardedVideo:(id)arg0 instanceId:(id)arg1 ;

@end

