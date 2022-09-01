// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPVungleRouterDelegate


-(void)vungleAdDidLoad;
-(void)vungleAdWillAppear;
-(void)vungleAdDidAppear;
-(void)vungleAdWillDisappear;
-(void)vungleAdDidDisappear;
-(void)vungleAdWasTapped;
-(void)vungleAdDidFailToPlay:(id)arg0 ;
-(void)vungleAdDidFailToLoad:(id)arg0 ;
-(id)getPlacementID;

@optional
-(void)vungleAdShouldRewardUser;
-(void)vungleAdWillLeaveApplication;
-(void)vungleBannerAdDidLoadInView:(id)arg0 ;
@end

