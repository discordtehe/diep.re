// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPInterstitialAdManagerDelegate


-(id)interstitialAdController;
-(id)location;
-(id)adUnitId;
-(id)interstitialDelegate;
-(void)managerDidLoadInterstitial:(id)arg0 ;
-(void)manager:(id)arg0 didFailToLoadInterstitialWithError:(id)arg1 ;
-(void)managerWillPresentInterstitial:(id)arg0 ;
-(void)managerDidPresentInterstitial:(id)arg0 ;
-(void)managerWillDismissInterstitial:(id)arg0 ;
-(void)managerDidDismissInterstitial:(id)arg0 ;
-(void)managerDidExpireInterstitial:(id)arg0 ;
-(void)interstitialAdManager:(id)arg0 didReceiveImpressionEventWithImpressionData:(id)arg1 ;
-(void)managerDidReceiveTapEventFromInterstitial:(id)arg0 ;

@end

