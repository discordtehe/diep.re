// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPInterstitialAdapterDelegate


-(id)interstitialAdController;
-(id)interstitialDelegate;
-(id)location;
-(void)adapterDidFinishLoadingAd:(id)arg0 ;
-(void)adapter:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)interstitialWillAppearForAdapter:(id)arg0 ;
-(void)interstitialDidAppearForAdapter:(id)arg0 ;
-(void)interstitialWillDisappearForAdapter:(id)arg0 ;
-(void)interstitialDidDisappearForAdapter:(id)arg0 ;
-(void)interstitialDidExpireForAdapter:(id)arg0 ;
-(void)interstitialDidReceiveTapEventForAdapter:(id)arg0 ;
-(void)interstitialWillLeaveApplicationForAdapter:(id)arg0 ;
-(void)interstitialDidReceiveImpressionEventForAdapter:(id)arg0 ;

@end

