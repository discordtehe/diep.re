// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPAdViewDelegate


-(id)viewControllerForPresentingModalView;

@optional
-(void)adViewDidLoadAd:(id)arg0 ;
-(void)adViewDidFailToLoadAd:(id)arg0 ;
-(void)adView:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)willPresentModalViewForAd:(id)arg0 ;
-(void)didDismissModalViewForAd:(id)arg0 ;
-(void)willLeaveApplicationFromAd:(id)arg0 ;
@end

