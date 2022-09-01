// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleAdDelegate


-(void)didFinishAdViewForPlacement:(id)arg0 withSuccess:(BOOL)arg1 ;
-(void)willPresentInterstitialAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)didPresentInterstitialAdViewControllerForPlacement:(id)arg0 ;
-(void)willDismissInterstitialAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)didDismissInterstitialAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;
-(void)willBackgroundAdViewControllerForPlacement:(id)arg0 reportable:(id)arg1 ;

@optional
-(void)willLaunchURLFromAdViewControllerForPlacement:(id)arg0 ;
@end

