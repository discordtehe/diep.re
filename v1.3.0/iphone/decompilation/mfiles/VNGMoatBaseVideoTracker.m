@implementation VNGMoatBaseVideoTracker

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self destroyed] & 0x1) == 0x0) {
            [r19 destroy];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)startTracking {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self timerRequired] != 0x0) {
            [r19 startCheckTimer];
    }
    [[&var_20 super] startTracking];
    return;
}

-(bool)trackingCompleted {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self playerState] == 0x3) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 playerState];
            if (r0 == 0x2) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)initWithPartnerCode:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r20 classTag];
            r29 = r29;
            r21 = [r0 retain];
            if ([VNGMoatOnOff getStatus] != 0x0) {
                    r0 = [VNGMoatAnalytics sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 isInitialized];
                    [r0 release];
                    if ((r25 & 0x1) != 0x0) {
                            r22 = @selector(init);
                            [VNGMoatLogging reportDevLogWithObject:r20 format:@"Called to initialize tracker."];
                            [r20 setPartnerCode:r19];
                            r22 = objc_msgSend([VNGMoatWebViewAndBridge alloc], r22);
                            [r20 setMWebViewAndBridge:r22];
                            [r22 release];
                            r0 = @class(VNGMoatAnalytics);
                            r0 = [r0 sharedInstance];
                            r0 = [r0 retain];
                            [r0 addRetainedWebViewAndBridge:r20->_mWebViewAndBridge];
                            [r0 release];
                            [r20 setInitialized:0x1];
                            [r20 setPlayerState:0x4];
                            r22 = [NSMutableSet new];
                            [r20 setOneTimeEventsFired:r22];
                            [r22 release];
                            [r20 setLastTrackedPlayheadMS:r22];
                            [r20 setLastAggregateVolume:r22];
                            [r20 setIsNativeVideo:0x1];
                            r22 = @class(VNGMoatLogging);
                            r23 = [[r20 trackerID] retain];
                            [r22 reportClientLog:0x0 trackerID:r23 format:@"VideoTracker creation succeeded"];
                            [r23 release];
                            [r20 retain];
                    }
                    else {
                            objc_initWeak(&stack[-120], r20);
                            objc_copyWeak(&var_A8 + 0x38, &stack[-120]);
                            r25 = [r21 retain];
                            r24 = [r20 retain];
                            var_78 = [r19 retain];
                            r0 = objc_loadWeakRetained(&stack[-120]);
                            r27 = [[NSValue valueWithNonretainedObject:r0] retain];
                            [r23 onResurrectionDo:&var_A8 withQueue:r25 withKey:r27];
                            [r27 release];
                            [r0 release];
                            [r24 retain];
                            [var_78 release];
                            [r24 release];
                            [r25 release];
                            objc_destroyWeak(&var_A8 + 0x38);
                            objc_destroyWeak(&stack[-120]);
                    }
            }
            else {
                    objc_initWeak(&stack[-120], r20);
                    objc_copyWeak(&var_A8 + 0x38, &stack[-120]);
                    r25 = [r21 retain];
                    r24 = [r20 retain];
                    var_78 = [r19 retain];
                    r0 = objc_loadWeakRetained(&stack[-120]);
                    r27 = [[NSValue valueWithNonretainedObject:r0] retain];
                    [r23 onResurrectionDo:&var_A8 withQueue:r25 withKey:r27];
                    [r27 release];
                    [r0 release];
                    [r24 retain];
                    [var_78 release];
                    [r24 release];
                    [r25 release];
                    objc_destroyWeak(&var_A8 + 0x38);
                    objc_destroyWeak(&stack[-120]);
            }
            [r21 release];
    }
    [r19 release];
    [r20 release];
    r0 = r20;
    return r0;
}

+(void *)trackerWithPartnerCode:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithPartnerCode:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)stopTracking {
    [VNGMoatLogging reportDevLogWithObject:self format:@"called stopTracking."];
    r20 = @class(VNGMoatLogging);
    r21 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r21 format:@"stopTracking succeeded"];
    [r21 release];
    [[&var_30 super] stopTracking];
    [self playbackCompletionUpdate];
    return;
}

-(void *)classTag {
    r0 = [self class];
    r0 = [r0 classTag];
    return r0;
}

+(void *)classTag {
    objc_retainAutorelease(@"MoatVideoTracker");
    return @"MoatVideoTracker";
}

-(float)playerVolume {
    r0 = self;
    return r0;
}

-(bool)isMuted {
    return 0x0;
}

-(bool)playbackError {
    return 0x0;
}

-(float)playbackVolume {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isMuted];
    if ((r0 & 0x1) == 0x0) {
            r0 = [r19 playerVolume];
    }
    return r0;
}

-(bool)timerRequired {
    return 0x1;
}

-(void)updatePlaybackStatus {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self trackingCompleted] & 0x1) != 0x0) goto .l1;

loc_100669b54:
    r0 = [r19 player];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100669bb4;

loc_100669b78:
    if ([r19 updateDuration] == 0x0) goto .l1;

loc_100669b8c:
    [r19 updateAndCheckPlayheadAndVolume];
    r1 = @selector(checkPlaybackChanges);
    goto loc_100669bbc;

loc_100669bbc:
    objc_msgSend(r19, r1);
    return;

.l1:
    return;

loc_100669bb4:
    r1 = @selector(destroy);
    goto loc_100669bbc;
}

-(void)playbackCompletionUpdate {
    [self playbackCompletionUpdate:0x0];
    return;
}

-(bool)trackPlayer:(void *)arg2 adIds:(void *)arg3 targetLayer:(void *)arg4 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (([r22 checkFalseStart] & 0x1) != 0x0) goto loc_100669a84;

loc_100669900:
    r24 = [r22 initialized];
    if (r24 == 0x0 || r19 == 0x0 || r21 == 0x0 || r20 == 0x0) goto loc_1006699a4;

loc_100669924:
    [r22 setPlayer:r19];
    r23 = [[NSMutableDictionary dictionaryWithDictionary:r20] retain];
    [r22 setAdIds:r23];
    [r23 release];
    [r22 setTrackedLayer:r21];
    [r22 startTracking];
    r22 = 0x1;
    goto loc_100669a88;

loc_100669a88:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1006699a4:
    r23 = [NSMutableArray new];
    if ((r24 & 0x1) != 0x0) {
            if (r19 != 0x0) {
                    if (r20 != 0x0) {
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            [r23 addObject:r2];
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
            else {
                    [r23 addObject:r2];
                    if (r20 == 0x0) {
                            [r23 addObject:r2];
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
    }
    else {
            [r23 addObject:r2];
            if (r19 == 0x0) {
                    [r23 addObject:r2];
                    if (r20 == 0x0) {
                            [r23 addObject:r2];
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
            else {
                    if (r20 != 0x0) {
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            [r23 addObject:r2];
                            if (r21 == 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
    }
    r24 = [[r23 componentsJoinedByString:@" | "] retain];
    [VNGMoatLogging reportDevLogWithObject:r22 format:@"tracking failed due to following problems: %@."];
    r26 = @class(VNGMoatLogging);
    r27 = [[r22 trackerID] retain];
    [r26 reportClientLog:0x1 trackerID:r27 format:@"tracking failed due to following problems: %@."];
    [r27 release];
    [r22 notifyDelegateOfBadArgStart:r24];
    [r24 release];
    [r23 release];
    goto loc_100669a84;

loc_100669a84:
    r22 = 0x0;
    goto loc_100669a88;
}

-(void)playbackCompletionUpdate:(bool)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (([self trackingCompleted] & 0x1) == 0x0 && [r19 misTracking] != 0x0) {
            [r19 updatePlayheadAndVolume];
            if ((r20 & 0x1) != 0x0) {
                    r0 = 0x0;
            }
            else {
                    [r19 lastTrackedPlayheadMS];
                    r0 = [r19 completionEventType:r2];
            }
            r0 = objc_retainBlock(&var_40);
            r19 = r0;
            if ([NSThread isMainThread] != 0x0) {
                    (*(r19 + 0x10))(r19);
            }
            else {
                    dispatch_async(*__dispatch_main_q, r19);
            }
            [r19 release];
    }
    return;
}

-(unsigned long long)completionEventType:(double)arg2 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self adDurationMS];
    asm { fdiv       d0, d1, d0 };
    if (d0 >= *0x100b9af00) {
            asm { fccmp      d1, d0, #0x8, pl };
    }
    if (CPU_FLAGS & S) {
            if (!CPU_FLAGS & S) {
                    r0 = 0x6;
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void)dispatchEvent:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([NSThread isMainThread] != 0x0) {
            [r20 dispatchEventThreadSafe:r19];
    }
    else {
            var_18 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_40);
            [var_18 release];
    }
    [r19 release];
    return;
}

-(void)dispatchEventType:(unsigned long long)arg2 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if ([VNGMoatOnOff getStatus] == 0x0) goto loc_100669f40;

loc_100669dc4:
    r21 = [[NSNumber numberWithUnsignedInteger:r20] retain];
    r0 = [r19 class];
    r0 = [r0 oneTimeEvents];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 containsObject:r2];
    [r0 release];
    if (r24 == 0x0) goto loc_100669ea0;

loc_100669e34:
    r22 = @selector(containsObject:);
    r0 = [r19 oneTimeEventsFired];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22);
    [r0 release];
    if ((r22 & 0x1) != 0x0) goto loc_100669f24;

loc_100669e70:
    r0 = [r19 oneTimeEventsFired];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r22 release];
    goto loc_100669ea0;

loc_100669ea0:
    [r19 playbackVolume];
    if (!OVERFLOW(s0 - s0)) {
            asm { fcsel      s8, s0, s1, vc };
    }
    [r19 lastTrackedPlayheadMS];
    if (!OVERFLOW(d0 - d0)) {
            asm { fcsel      d9, d0, d1, vc };
    }
    r20 = [[VNGMoatAdEvent alloc] initWithType:r20 withPlayheadMillis:r3 withVolume:r4];
    [r19 dispatchEvent:r20];
    [r20 release];
    goto loc_100669f24;

loc_100669f24:
    [r21 release];
    return;

loc_100669f40:
    [VNGMoatLogging reportDevLogWithObject:r19 format:@"not on or not tracking -- can't dispatch event."];
    return;
}

+(void *)oneTimeEvents {
    if (*qword_1011da978 != -0x1) {
            dispatch_once(0x1011da978, 0x100e89da8);
    }
    r0 = *0x1011da970;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)destroy {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSNotificationCenter defaultCenter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 removeObserver:r19];
    [r0 release];
    if (([r19 destroyed] & 0x1) == 0x0) {
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"tracker is shutting down"];
            r0 = [VNGMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            [r0 removeRetainedWebViewAndBridge:r19->_mWebViewAndBridge];
            [r0 release];
            [[&var_30 super] stopTracking];
            r0 = [r19 checkTimer];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isValid];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r19 checkTimer];
                    r0 = [r0 retain];
                    [r0 invalidate];
                    [r0 release];
                    [r19 setCheckTimer:0x0];
            }
            [r19 setDestroyed:0x1];
            [r19 setMisTracking:0x0];
    }
    return;
}

-(void)startCheckTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self checkTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r20 = [[VNGMoatWeakTimerHandler alloc] initWithObject:r19 selector:@selector(updatePlaybackStatus)];
            r21 = [[NSTimer scheduledTimerWithTimeInterval:r20 target:@selector(handleTimer:) selector:0x0 userInfo:0x1 repeats:r6] retain];
            [r19 setCheckTimer:r21];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)updatePlayheadAndVolume {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 trackedPlayheadMS];
            if (!OVERFLOW(d0 - d0)) {
                    [r19 setLastTrackedPlayheadMS:r2];
            }
            [r19 playbackVolume];
            if (!OVERFLOW(s8 - s8)) {
                    [VNGMoatVideoUtil getSystemVolume];
                    [r19 setLastAggregateVolume:r2];
            }
    }
    return;
}

-(void)updateAndCheckPlayheadAndVolume {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self lastAggregateVolume];
    [r19 updatePlayheadAndVolume];
    [r19 lastAggregateVolume];
    [r19 lastTrackedPlayheadMS];
    if (!OVERFLOW(d10 - d10)) {
            [r19 adDurationMS];
            asm { fdiv       d0, d10, d0 };
            asm { fcvt       s0, d0 };
            if (s0 < 0x4008000000000000 && s0 < 0x4000000000000000) {
                    if (s0 >= 0x3ff0000000000000) {
                            [r19 dispatchEventType:r2];
                    }
            }
            else {
                    [r19 dispatchEventType:r2];
            }
    }
    if (!OVERFLOW(s8 - s8)) {
            asm { fccmp      s8, s9, #0x4, vc };
    }
    if (CPU_FLAGS & NE) {
            [r19 dispatchEventType:0x9];
    }
    return;
}

-(bool)updateDuration {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self misTracking] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            [r19 adDurationMS];
            v8 = v0;
            if (!OVERFLOW(d8 - d8) && d8 >= *0x100b9b058) {
                    r20 = 0x1;
                    [r19 setMisTracking:0x1];
                    r22 = [[r19 adIds] retain];
                    r23 = [[NSNumber numberWithDouble:0x1] retain];
                    [r22 setObject:r23 forKey:@"duration"];
                    [r23 release];
                    [r22 release];
                    r22 = [[r19 mWebViewAndBridge] retain];
                    r23 = [[r19 partnerCode] retain];
                    r21 = [[r19 adIds] retain];
                    r0 = [r19 trackedLayer];
                    r0 = [r0 retain];
                    [r0 frame];
                    [r22 vivifyVideoWebViewWithPartnerCode:r23 withAdIds:r21 withPlayerSize:r19 withTracker:r5];
                    [r0 release];
                    [r21 release];
                    [r23 release];
                    [r22 release];
            }
            else {
                    r20 = [r19 failedDurationChecks];
                    [r19 setFailedDurationChecks:r20 + 0x1];
                    if (r20 >= 0x19) {
                            [r19 destroy];
                    }
                    r20 = 0x0;
            }
    }
    r0 = r20;
    return r0;
}

-(void)checkPlaybackChanges {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isPlaying] == 0x0) goto loc_10066a880;

loc_10066a83c:
    r0 = [r19 playerState];
    if (r0 == 0x1) goto loc_10066a8b4;

loc_10066a854:
    if (r0 != 0x4) goto .l1;

loc_10066a85c:
    [r19 setPlayerState:0x0];
    goto loc_10066a8f8;

loc_10066a8f8:
    [r19 dispatchEventType:r2];
    return;

.l1:
    return;

loc_10066a8b4:
    [r19 setPlayerState:0x0];
    goto loc_10066a8f8;

loc_10066a880:
    if (([r19 playbackError] & 0x1) != 0x0 || [r19 playerState] != 0x0) goto .l1;

loc_10066a8d8:
    [r19 setPlayerState:0x1];
    goto loc_10066a8f8;
}

-(void)setVideoTrackerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoTrackerDelegate, arg2);
    return;
}

-(void *)videoTrackerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoTrackerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)partnerCode {
    r0 = self->_partnerCode;
    return r0;
}

-(void)dispatchEventThreadSafe:(void *)arg2 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 trackingCompleted] & 0x1) == 0x0) {
            r21 = [r19 eventType];
            if (r21 == 0x0 || r21 <= 0x6) {
                    [r20 setPlayerState:r2];
            }
            [VNGMoatLogging reportDevLogWithObject:r20 format:@"dispatching event %@."];
            r23 = @class(VNGMoatLogging);
            r24 = [[r20 trackerID] retain];
            r3 = r24;
            [r23 reportClientLog:0x0 trackerID:r3 format:@"dispatching event %@."];
            [r24 release];
            r0 = [r20 mWebViewAndBridge];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 webBridge];
            r0 = [r0 retain];
            [r0 dispatchEvent:r19];
            [r0 release];
            [r22 release];
            r0 = [r20 videoTrackerDelegate];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r0 = [r20 videoTrackerDelegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 respondsToSelector:@selector(tracker:sentAdEventType:), r3];
                    [r0 release];
                    [r24 release];
                    if (r26 != 0x0) {
                            r0 = [r20 videoTrackerDelegate];
                            r0 = [r0 retain];
                            [r0 tracker:r20 sentAdEventType:r21];
                            [r0 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(void)setPartnerCode:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_partnerCode, arg2);
    return;
}

-(void)setAdIds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adIds, arg2);
    return;
}

-(void *)adIds {
    r0 = self->_adIds;
    return r0;
}

-(unsigned long long)playerState {
    r0 = self->_playerState;
    return r0;
}

-(void)setPlayerState:(unsigned long long)arg2 {
    self->_playerState = arg2;
    return;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(bool)misTracking {
    r0 = *(int8_t *)(int64_t *)&self->_misTracking;
    return r0;
}

-(void)setMisTracking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_misTracking = arg2;
    return;
}

-(void)setDestroyed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_destroyed = arg2;
    return;
}

-(bool)destroyed {
    r0 = *(int8_t *)(int64_t *)&self->_destroyed;
    return r0;
}

-(void *)oneTimeEventsFired {
    r0 = self->_oneTimeEventsFired;
    return r0;
}

-(void)setOneTimeEventsFired:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_oneTimeEventsFired, arg2);
    return;
}

-(void)setFailedDurationChecks:(long long)arg2 {
    self->_failedDurationChecks = arg2;
    return;
}

-(long long)failedDurationChecks {
    r0 = self->_failedDurationChecks;
    return r0;
}

-(double)lastTrackedPlayheadMS {
    r0 = self;
    return r0;
}

-(void)setLastTrackedPlayheadMS:(double)arg2 {
    self->_lastTrackedPlayheadMS = d0;
    return;
}

-(float)lastAggregateVolume {
    r0 = self;
    return r0;
}

-(void)setLastAggregateVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_lastAggregateVolume = s0;
    return;
}

-(void *)player {
    r0 = objc_loadWeakRetained((int64_t *)&self->_player);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_player, arg2);
    return;
}

-(void *)mWebViewAndBridge {
    r0 = self->_mWebViewAndBridge;
    return r0;
}

-(void)setMWebViewAndBridge:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mWebViewAndBridge, arg2);
    return;
}

-(void *)checkTimer {
    r0 = self->_checkTimer;
    return r0;
}

-(void)setCheckTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_checkTimer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_checkTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_mWebViewAndBridge, 0x0);
    objc_destroyWeak((int64_t *)&self->_player);
    objc_storeStrong((int64_t *)&self->_oneTimeEventsFired, 0x0);
    objc_storeStrong((int64_t *)&self->_adIds, 0x0);
    objc_storeStrong((int64_t *)&self->_partnerCode, 0x0);
    objc_destroyWeak((int64_t *)&self->_videoTrackerDelegate);
    return;
}

@end