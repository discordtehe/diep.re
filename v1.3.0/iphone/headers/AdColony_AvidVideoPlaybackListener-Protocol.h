// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol AdColony_AvidVideoPlaybackListener


-(void)recordAdImpressionEvent;
-(void)recordAdStartedEvent;
-(void)recordAdLoadedEvent;
-(void)recordAdVideoStartEvent;
-(void)recordAdStoppedEvent;
-(void)recordAdCompleteEvent;
-(void)recordAdClickThruEvent;
-(void)recordAdVideoFirstQuartileEvent;
-(void)recordAdVideoMidpointEvent;
-(void)recordAdVideoThirdQuartileEvent;
-(void)recordAdPausedEvent;
-(void)recordAdPlayingEvent;
-(void)recordAdExpandedChangeEvent;
-(void)recordAdUserMinimizeEvent;
-(void)recordAdUserAcceptInvitationEvent;
-(void)recordAdUserCloseEvent;
-(void)recordAdSkippedEvent;
-(void)recordAdVolumeChangeEvent:(NSInteger)arg0 ;
-(void)recordAdEnteredFullscreenEvent;
-(void)recordAdExitedFullscreenEvent;
-(void)recordAdDurationChangeEvent:(id)arg0 adRemainingTime:(id)arg1 ;
-(void)recordAdErrorWithMessage:(id)arg0 ;

@end

