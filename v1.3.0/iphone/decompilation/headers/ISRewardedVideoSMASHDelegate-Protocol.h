// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISRewardedVideoSMASHDelegate


-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 forSMASH:(id)arg1 ;
-(void)didReceiveRewardForSMASH:(id)arg0 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)rewardedVideoDidOpenForSMASH:(id)arg0 ;
-(void)rewardedVideoDidCloseForSMASH:(id)arg0 ;
-(void)rewardedVideoDidStartForSMASH:(id)arg0 ;
-(void)rewardedVideoDidEndForSMASH:(id)arg0 ;
-(void)didClickRewardedVideoForSMASH:(id)arg0 ;
-(void)rewardedVideoDidBecomeVisibileForSMASH:(id)arg0 ;

@end

