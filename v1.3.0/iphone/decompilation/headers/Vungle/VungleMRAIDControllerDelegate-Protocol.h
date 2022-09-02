// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleMRAIDControllerDelegate


-(id)controllerToPresentModalAdView;
-(void)vungleMRAIDController:(id)arg0 didFailToLoadAd:(id)arg1 error:(id)arg2 ;
-(void)vungleMRAIDController:(id)arg0 didLoadAdInContainerView:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 setOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(NSUInteger)vungleMRAIDControllerOrientationMask;
-(void)vungleMRAIDController:(id)arg0 executeRequestWithTPATURLArray:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 prepareStoreViewWithAppStoreParams:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 expandWith:(id)arg1 ;
-(void)vungleMRAIDController:(id)arg0 resizeWith:(id)arg1 ;
-(void)vungleMRAIDControllerPresentStoreView;
-(void)vungleMRAIDControllerWillLaunchURL;
-(void)vungleMRAIDControllerSuccessfulView:(BOOL)arg0 reportable:(id)arg1 ;
-(void)vungleMRAIDControllerWillStartAdExperienceWithReportable:(id)arg0 ;
-(void)vungleMRAIDControllerWillCloseAdExperienceWithReportable:(id)arg0 ;
-(void)vungleMRAIDControllerDidCloseAdExperienceWithReportable:(id)arg0 ;
-(void)vungleMRAIDControllerIsEnteringBackgroundWithReportable:(id)arg0 ;

@end

