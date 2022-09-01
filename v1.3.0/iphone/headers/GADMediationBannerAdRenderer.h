// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONBANNERADRENDERER_H
#define GADMEDIATIONBANNERADRENDERER_H



@class GADMediatedAdRenderer;
@class GADBannerAd;
@class GADCroppingAdView;
@class GADMediatedIntermission;

@interface GADMediationBannerAdRenderer : GADMediatedAdRenderer {
    GADBannerAd *_bannerAd;
    atomic_flag _clickEventReceived;
    id *_renderCompletionHandler;
    GADCroppingAdView *_croppingView;
    GADMediatedIntermission *_intermission;
}




-(void)adapterCompletedLoadWithAdView:(id)arg0 error:(id)arg1 ;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(void)reportClick;
-(id)viewControllerForPresentingModalView;
-(void)adapter:(id)arg0 didFailAd:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveAdView:(id)arg1 ;
-(void)adapterWillLeaveApplication:(id)arg0 ;
-(void)adapterWillPresentFullScreenModal:(id)arg0 ;
-(void)adapterWillDismissFullScreenModal:(id)arg0 ;
-(void)adapterDidDismissFullScreenModal:(id)arg0 ;
-(void)adapterDidGetAdClick:(id)arg0 ;


@end


#endif