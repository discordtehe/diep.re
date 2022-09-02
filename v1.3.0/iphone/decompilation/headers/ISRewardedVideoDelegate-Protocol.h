// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISRewardedVideoDelegate


-(void)rewardedVideoHasChangedAvailability:(BOOL)arg0 ;
-(void)didReceiveRewardForPlacement:(id)arg0 ;
-(void)rewardedVideoDidFailToShowWithError:(id)arg0 ;
-(void)rewardedVideoDidOpen;
-(void)rewardedVideoDidClose;
-(void)rewardedVideoDidStart;
-(void)rewardedVideoDidEnd;
-(void)didClickRewardedVideo:(id)arg0 ;

@end

