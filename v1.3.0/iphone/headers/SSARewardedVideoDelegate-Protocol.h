// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol SSARewardedVideoDelegate


-(void)ssaRewardedVideoDidUpdateAdUnits:(id)arg0 ;
-(void)ssaRewardedVideoNoMoreOffers;
-(void)ssaRewardedVideoDidFailInitWithError:(id)arg0 ;
-(void)ssaRewardedVideoWindowWillOpen;
-(void)ssaRewardedVideoWindowDidClose;
-(void)ssaRewardedVideoDidFailShowWithError:(id)arg0 ;
-(void)ssaRewardedVideoDidReceiveCredit:(id)arg0 ;
-(void)ssaRewardedVideoAdClicked;
-(void)ssaRewardedVideoAdDidReceiveNotificationOnEvent:(id)arg0 extData:(id)arg1 ;

@end

