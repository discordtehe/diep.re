// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISInterstitialSMASHDelegate


-(void)supersonicISInitSuccessWithSMASH:(id)arg0 ;
-(void)supersonicISInitFailedWithError:(id)arg0 SMASH:(id)arg1 ;
-(void)interstitialDidLoadForSMASH:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)interstitialDidOpenForSMASH:(id)arg0 ;
-(void)interstitialDidCloseForSMASH:(id)arg0 ;
-(void)interstitialDidShowForSMASH:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 forSMASH:(id)arg1 ;
-(void)interstitialDidBecomeVisibleForSMASH:(id)arg0 ;
-(void)didClickInterstitialForSMASH:(id)arg0 ;

@end

