// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdFunnelLoggingDelegate


-(void)logVideoDidStartPlayingWithData:(id)arg0 ;
-(void)logVideoDidPauseWithData:(id)arg0 ;
-(void)logVideoDidResumeWithData:(id)arg0 ;
-(void)logVideoPlayPauseButtonTappedWithData:(id)arg0 ;
-(void)logVideoDidFinishWithData:(id)arg0 ;
-(void)logSoundButtonPressedWithData:(id)arg0 ;
-(void)logVideoDidMuteWithData:(id)arg0 ;
-(void)logVideoDidUnMuteWithData:(id)arg0 ;
-(void)logVideoErrorWithData:(id)arg0 error:(id)arg1 ;
-(void)logVideoDidSkipWithData:(id)arg0 ;
-(void)logLeaveAppWithData:(id)arg0 ;
-(void)logBackToAppWithData:(id)arg0 ;
-(void)logAdChoicesTappedWithData:(id)arg0 ;
-(void)logDeviceRotationWithData:(id)arg0 newSize:(struct CGSize )arg1 ;
-(void)logCTAClickedWithData:(id)arg0 ;
-(void)logAdCloseClickedWithData:(id)arg0 ;
-(void)logAdReportTappedWithData:(id)arg0 ;
-(void)logAdReportWhySeeingThisClickedWithData:(id)arg0 ;
-(void)logAdReportManagePrefsClickedWithData:(id)arg0 ;
-(void)logAdReportedWithData:(id)arg0 userJourney:(id)arg1 ;
-(void)logAdResponseSuccessful:(id)arg0 ;
-(void)logAdSelectionTimeoutWithData:(id)arg0 ;

@end

