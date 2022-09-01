// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPBannerCustomEventDelegate


-(id)viewControllerForPresentingModalView;
-(id)location;
-(void)bannerCustomEvent:(id)arg0 didLoadAd:(id)arg1 ;
-(void)bannerCustomEvent:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)bannerCustomEventWillBeginAction:(id)arg0 ;
-(void)bannerCustomEventDidFinishAction:(id)arg0 ;
-(void)bannerCustomEventWillLeaveApplication:(id)arg0 ;
-(void)trackImpression;
-(void)trackClick;
-(void)bannerCustomEventWillExpandAd:(id)arg0 ;
-(void)bannerCustomEventDidCollapseAd:(id)arg0 ;

@end

