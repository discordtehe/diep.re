// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPInterstitialCustomEventDelegate


-(id)location;
-(void)interstitialCustomEvent:(id)arg0 didLoadAd:(id)arg1 ;
-(void)interstitialCustomEvent:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)interstitialCustomEventDidExpire:(id)arg0 ;
-(void)interstitialCustomEventWillAppear:(id)arg0 ;
-(void)interstitialCustomEventDidAppear:(id)arg0 ;
-(void)interstitialCustomEventWillDisappear:(id)arg0 ;
-(void)interstitialCustomEventDidDisappear:(id)arg0 ;
-(void)interstitialCustomEventDidReceiveTapEvent:(id)arg0 ;
-(void)interstitialCustomEventWillLeaveApplication:(id)arg0 ;
-(void)trackImpression;
-(void)trackClick;

@end

