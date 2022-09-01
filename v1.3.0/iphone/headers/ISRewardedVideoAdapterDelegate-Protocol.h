// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISRewardedVideoAdapterDelegate


-(void)adapterRewardedVideoHasChangedAvailability:(BOOL)arg0 ;
-(void)adapterRewardedVideoDidReceiveReward;
-(void)adapterRewardedVideoDidFailToShowWithError:(id)arg0 ;
-(void)adapterRewardedVideoDidOpen;
-(void)adapterRewardedVideoDidClose;
-(void)adapterRewardedVideoDidStart;
-(void)adapterRewardedVideoDidEnd;
-(void)adapterRewardedVideoDidClick;
-(void)adapterRewardedVideoDidBecomeVisible;

@end

