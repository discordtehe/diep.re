// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADMAdNetworkConnector


-(id)viewControllerForPresentingModalView;
-(float)adVolume;
-(BOOL)adMuted;
-(void)adapter:(id)arg0 didFailAd:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveAdView:(id)arg1 ;
-(void)adapterDidReceiveInterstitial:(id)arg0 ;
-(void)adapter:(id)arg0 didReceiveMediatedNativeAd:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveMediatedUnifiedNativeAd:(id)arg1 ;
-(void)adapterDidGetAdClick:(id)arg0 ;
-(void)adapterWillLeaveApplication:(id)arg0 ;
-(void)adapterWillPresentFullScreenModal:(id)arg0 ;
-(void)adapterWillDismissFullScreenModal:(id)arg0 ;
-(void)adapterDidDismissFullScreenModal:(id)arg0 ;
-(void)adapterWillPresentInterstitial:(id)arg0 ;
-(void)adapterWillDismissInterstitial:(id)arg0 ;
-(void)adapterDidDismissInterstitial:(id)arg0 ;
-(void)adapter:(id)arg0 didReceiveInterstitial:(id)arg1 ;
-(void)adapter:(id)arg0 clickDidOccurInBanner:(id)arg1 ;
-(void)adapter:(id)arg0 didFailInterstitial:(id)arg1 ;

@end

