// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPBannerAdManagerDelegate


-(id)adUnitId;
-(int)allowedNativeAdsOrientation;
-(id)banner;
-(id)bannerDelegate;
-(struct CGSize )containerSize;
-(id)viewControllerForPresentingModalView;
-(id)adTargeting;
-(void)invalidateContentView;
-(void)managerDidLoadAd:(id)arg0 ;
-(void)managerDidFailToLoadAdWithError:(id)arg0 ;
-(void)userActionWillBegin;
-(void)userActionDidFinish;
-(void)userWillLeaveApplication;
-(void)impressionDidFireWithImpressionData:(id)arg0 ;

@end

