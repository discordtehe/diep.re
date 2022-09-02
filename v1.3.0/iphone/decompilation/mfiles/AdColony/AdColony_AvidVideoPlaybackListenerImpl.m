@implementation AdColony_AvidVideoPlaybackListenerImpl

-(void)recordAdImpressionEvent {
    [self publishVideoEvent:@"AdImpression" data:0x0];
    return;
}

-(void)recordAdStartedEvent {
    [self publishVideoEvent:@"AdStarted" data:0x0];
    return;
}

-(void)recordAdLoadedEvent {
    [self publishVideoEvent:@"AdLoaded" data:0x0];
    return;
}

-(void)recordAdVideoStartEvent {
    [self publishVideoEvent:@"AdVideoStart" data:0x0];
    return;
}

-(void)recordAdStoppedEvent {
    [self publishVideoEvent:@"AdStopped" data:0x0];
    return;
}

-(void)recordAdCompleteEvent {
    [self publishVideoEvent:@"AdVideoComplete" data:0x0];
    return;
}

-(void)recordAdClickThruEvent {
    [self publishVideoEvent:@"AdClickThru" data:0x0];
    return;
}

-(void)recordAdVideoFirstQuartileEvent {
    [self publishVideoEvent:@"AdVideoFirstQuartile" data:0x0];
    return;
}

-(void)recordAdVideoMidpointEvent {
    [self publishVideoEvent:@"AdVideoMidpoint" data:0x0];
    return;
}

-(void)recordAdVideoThirdQuartileEvent {
    [self publishVideoEvent:@"AdVideoThirdQuartile" data:0x0];
    return;
}

-(void)recordAdPausedEvent {
    [self publishVideoEvent:@"AdPaused" data:0x0];
    return;
}

-(void)recordAdPlayingEvent {
    [self publishVideoEvent:@"AdPlaying" data:0x0];
    return;
}

-(void)recordAdExpandedChangeEvent {
    [self publishVideoEvent:@"AdExpandedChange" data:0x0];
    return;
}

-(void)recordAdUserMinimizeEvent {
    [self publishVideoEvent:@"AdUserMinimize" data:0x0];
    return;
}

-(void)recordAdUserAcceptInvitationEvent {
    [self publishVideoEvent:@"AdUserAcceptInvitation" data:0x0];
    return;
}

-(void)recordAdUserCloseEvent {
    [self publishVideoEvent:@"AdUserClose" data:0x0];
    return;
}

-(void)recordAdSkippedEvent {
    [self publishVideoEvent:@"AdSkipped" data:0x0];
    return;
}

-(void)recordAdVolumeChangeEvent:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    var_28 = r22;
    r20 = [[NSNumber numberWithInteger:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [self publishVideoEvent:@"AdVolumeChange" data:r21];
    [r21 release];
    [r20 release];
    if (r22 != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)recordAdEnteredFullscreenEvent {
    [self publishVideoEvent:@"AdEnteredFullscreen" data:0x0];
    return;
}

-(void)recordAdExitedFullscreenEvent {
    [self publishVideoEvent:@"AdExitedFullscreen" data:0x0];
    return;
}

-(void)recordAdDurationChangeEvent:(void *)arg2 adRemainingTime:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x30;
    r19 = arg3;
    r20 = self;
    r24 = *___stack_chk_guard;
    r24 = *r24;
    var_38 = r24;
    r21 = [arg2 retain];
    var_40 = r19;
    asm { dup        v0.2d, x8 };
    r19 = [r19 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_60 count:0x2];
    r29 = r29;
    r22 = [r0 retain];
    [r20 publishVideoEvent:@"AdDurationChange" data:r22];
    [r19 release];
    [r21 release];
    [r22 release];
    if (r24 != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)recordAdErrorWithMessage:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r23 = *___stack_chk_guard;
    r23 = *r23;
    var_38 = r23;
    r22 = [arg2 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [self publishVideoEvent:@"AdError" data:r20];
    [r22 release];
    [r20 release];
    if (r23 != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)dispatcher {
    r0 = objc_loadWeakRetained((int64_t *)&self->_dispatcher);
    r0 = [r0 autorelease];
    return r0;
}

-(void)publishVideoEvent:(void *)arg2 data:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [AdColony_AvidEvent eventWithName:r21 type:@"video" data:arg3];
    [r21 release];
    r19 = [r19 retain];
    r0 = [self dispatcher];
    r0 = [r0 retain];
    [r0 postEvent:r19];
    [r0 release];
    [r19 release];
    return;
}

-(void)setDispatcher:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_dispatcher, arg2);
    return;
}

-(void *)avidVideoAdSession {
    r0 = self->_avidVideoAdSession;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_avidVideoAdSession, 0x0);
    objc_destroyWeak((int64_t *)&self->_dispatcher);
    return;
}

@end