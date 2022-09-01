// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADCustomEventBannerDelegate

@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;

-(void)customEventBanner:(id)arg0 didReceiveAd:(id)arg1 ;
-(void)customEventBanner:(id)arg0 didFailAd:(id)arg1 ;
-(void)customEventBannerWasClicked:(id)arg0 ;
-(void)customEventBannerWillPresentModal:(id)arg0 ;
-(void)customEventBannerWillDismissModal:(id)arg0 ;
-(void)customEventBannerDidDismissModal:(id)arg0 ;
-(void)customEventBannerWillLeaveApplication:(id)arg0 ;
-(void)customEventBanner:(id)arg0 clickDidOccurInAd:(id)arg1 ;
-(id)viewControllerForPresentingModalView;

@end

