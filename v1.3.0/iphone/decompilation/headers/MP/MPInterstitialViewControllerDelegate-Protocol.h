// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPInterstitialViewControllerDelegate


-(id)adUnitId;
-(void)interstitialDidLoadAd:(id)arg0 ;
-(void)interstitialDidFailToLoadAd:(id)arg0 ;
-(void)interstitialWillAppear:(id)arg0 ;
-(void)interstitialDidAppear:(id)arg0 ;
-(void)interstitialWillDisappear:(id)arg0 ;
-(void)interstitialDidDisappear:(id)arg0 ;
-(void)interstitialDidReceiveTapEvent:(id)arg0 ;
-(void)interstitialWillLeaveApplication:(id)arg0 ;

@optional
-(id)location;
-(void)interstitialRewardedVideoEnded;
@end

