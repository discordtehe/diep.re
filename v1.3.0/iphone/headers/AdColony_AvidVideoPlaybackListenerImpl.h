// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDVIDEOPLAYBACKLISTENERIMPL_H
#define ADCOLONY_AVIDVIDEOPLAYBACKLISTENERIMPL_H


#import <Foundation/Foundation.h>

@class AdColony_InternalAvidManagedVideoAdSession;
@class AdColony_AvidEventDispatcher;
@protocol AdColony_AvidVideoPlaybackListener;

@interface AdColony_AvidVideoPlaybackListenerImpl : NSObject <AdColony_AvidVideoPlaybackListener>



@property (readonly, nonatomic) AdColony_InternalAvidManagedVideoAdSession *avidVideoAdSession; // ivar: _avidVideoAdSession
@property (weak, nonatomic) AdColony_AvidEventDispatcher *dispatcher; // ivar: _dispatcher
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


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
-(void)publishVideoEvent:(id)arg0 data:(id)arg1 ;


@end


#endif