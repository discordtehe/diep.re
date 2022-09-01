// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPBannerAdapterDelegate


-(id)banner;
-(id)bannerDelegate;
-(id)viewControllerForPresentingModalView;
-(int)allowedNativeAdsOrientation;
-(id)location;
-(void)adapter:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)adapter:(id)arg0 didFinishLoadingAd:(id)arg1 ;
-(void)userActionWillBeginForAdapter:(id)arg0 ;
-(void)userActionDidFinishForAdapter:(id)arg0 ;
-(void)userWillLeaveApplicationFromAdapter:(id)arg0 ;
-(void)adapterDidTrackImpressionForAd:(id)arg0 ;
-(void)adWillExpandForAdapter:(id)arg0 ;
-(void)adDidCollapseForAdapter:(id)arg0 ;

@end

