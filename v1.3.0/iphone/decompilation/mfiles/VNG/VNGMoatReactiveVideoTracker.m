@implementation VNGMoatReactiveVideoTracker

-(double)trackedPlayheadMS {
    r0 = self;
    return r0;
}

-(double)adDurationMS {
    r0 = [self duration];
    return r0;
}

-(bool)isPlaying {
    return 0x1;
}

-(bool)isMuted {
    r0 = [self muted];
    return r0;
}

-(float)playerVolume {
    r0 = [self volume];
    return r0;
}

-(bool)timerRequired {
    return 0x0;
}

-(void)destroy {
    [self setState:0x3];
    [[&var_20 super] destroy];
    return;
}

+(void *)classTag {
    objc_retainAutorelease(@"MoatReactiveVideoTracker");
    return @"MoatReactiveVideoTracker";
}

-(void)setMuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_muted = arg2;
    [self updateAggregateVolume];
    return;
}

-(void *)initWithPartnerCode:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] initWithPartnerCode:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            if ([VNGMoatOnOff getStatus] != 0x0) {
                    r0 = [VNGMoatAnalytics sharedInstance];
                    r0 = [r0 retain];
                    r21 = [r0 isInitialized];
                    [r0 release];
                    if ((r21 & 0x1) != 0x0) {
                            [r19 setVolume:r2];
                            [r19 setState:0x1];
                    }
            }
            [r19 retain];
    }
    [r19 release];
    r0 = r19;
    return r0;
}

-(void)setVolume:(float)arg2 {
    r0 = self;
    if (s0 >= 0x0) {
            asm { fcsel      s2, s0, s2, pl };
    }
    if (s0 > 0x3ff0000000000000) {
            asm { fcsel      s0, s1, s2, gt };
    }
    *(int32_t *)(int64_t *)&r0->_volume = s0;
    [r0 updateAggregateVolume];
    return;
}

-(bool)trackVideoAd:(void *)arg2 withLayer:(void *)arg3 withDurationMillis:(double)arg4 {
    r31 = r31 - 0xe0;
    var_50 = d9;
    stack[-88] = d8;
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
    v8 = v0;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([VNGMoatOnOff getStatus] == 0x0) goto loc_10066d2e0;

loc_10066d12c:
    r0 = [VNGMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isInitialized];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_10066d2e0;

loc_10066d168:
    r24 = [[VNGMoatVideoUtil adIdsToJSONString:r19] retain];
    r0 = [r20 description];
    r29 = r29;
    r25 = [r0 retain];
    r8 = @"nil";
    if (r25 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r25;
            }
            else {
                    r8 = @"nil";
            }
    }
    [VNGMoatLogging reportDevLogWithObject:r2 format:r3];
    [r25 release];
    [r24 release];
    r8 = &@selector(holderForWebView:);
    r24 = objc_msgSend(r21, *(r8 + 0x998));
    if (OVERFLOW(d8 - d8)) {
            r8 = &@selector(holderForWebView:);
            if (CPU_FLAGS & O) {
                    r8 = 0x1;
            }
    }
    r9 = 0x100b9b000;
    if (d8 < *(r9 + 0x58)) {
            r9 = 0x100b9b000;
            if (CPU_FLAGS & S) {
                    r9 = 0x1;
            }
    }
    r25 = r9 | r8;
    if ((r25 & 0x1) != 0x0 || r24 != 0x1 || r20 == 0x0 || r19 == 0x0) goto loc_10066d4c0;

loc_10066d23c:
    [r21 setState:0x2];
    [r21 setDuration:0x2];
    [r21 trackPlayer:r21 adIds:r19 targetLayer:r20];
    [r21 updatePlaybackStatus];
    r22 = @class(VNGMoatLogging);
    r21 = [[r21 trackerID] retain];
    [r22 reportClientLog:0x0 trackerID:r21 format:@"trackVideoAd succeeded"];
    [r21 release];
    r21 = 0x1;
    goto loc_10066d474;

loc_10066d474:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10066d4c0:
    r23 = [NSMutableArray new];
    if (r24 == 0x1) {
            if (r19 != 0x0) {
                    if (r20 != 0x0) {
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            [r23 addObject:r2];
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
            else {
                    [r23 addObject:r2];
                    if (r20 == 0x0) {
                            [r23 addObject:r2];
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            if (r25 != 0x0) {
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
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
            else {
                    if (r20 != 0x0) {
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
                    else {
                            [r23 addObject:r2];
                            if (r25 != 0x0) {
                                    [r23 addObject:r2];
                            }
                    }
            }
    }
    [[r23 componentsJoinedByString:@" | "] retain];
    [VNGMoatLogging reportDevLogWithObject:r2 format:r3];
    r22 = @class(VNGMoatLogging);
    r25 = [[r21 trackerID] retain];
    [r22 reportClientLog:0x1 trackerID:r25 format:@"trackVideoAd failed"];
    [r25 release];
    [r21 notifyDelegateOfBadArgStart:r24];
    [r24 release];
    [r23 release];
    goto loc_10066d470;

loc_10066d470:
    r21 = 0x0;
    goto loc_10066d474;

loc_10066d2e0:
    objc_initWeak(&stack[-128], r21);
    objc_initWeak(&stack[-136], r20);
    [[NSDictionary dictionaryWithDictionary:r19] retain];
    r0 = objc_loadWeakRetained(&stack[-136]);
    r25 = [[NSValue valueWithNonretainedObject:r0] retain];
    [[NSArray arrayWithObjects:&var_68 count:0x2] retain];
    [r25 release];
    [r0 release];
    objc_copyWeak(&var_B8 + 0x28, &stack[-128]);
    [r24 retain];
    objc_copyWeak(&var_B8 + 0x30, &stack[-136]);
    r21 = [[r21 classTag] retain];
    [r26 onResurrectionDo:&var_B8 withQueue:r21 withKey:r22];
    [r21 release];
    objc_destroyWeak(&var_B8 + 0x30);
    [r24 release];
    objc_destroyWeak(&var_B8 + 0x28);
    [r22 release];
    [r24 release];
    objc_destroyWeak(&stack[-136]);
    objc_destroyWeak(&stack[-128]);
    goto loc_10066d470;
}

-(void)dispatchEvent:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    if ([VNGMoatOnOff getStatus] == 0x0) goto loc_10066d9f8;

loc_10066d75c:
    r0 = [VNGMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_10066d9f8;

loc_10066d798:
    if ([r20 state] != 0x2) goto loc_10066db00;

loc_10066d7b0:
    if ([r19 eventType] != 0x0) {
            r0 = [r20 trackerID];
            r29 = r29;
            r23 = [r0 retain];
            [VNGMoatLogging reportClientLog:0x0 trackerID:r23 format:@"dispatchEvent succeeded"];
            [r23 release];
    }
    if (([r20 startedPlaying] & 0x1) == 0x0) {
            [r20 setStartedPlaying:0x1];
            if ([r19 eventType] != 0x1) {
                    r2 = 0x1;
                    r22 = [[VNGMoatAdEvent alloc] initWithType:0x1 withPlayheadMillis:r3];
                    [r20 dispatchEvent:r22];
                    [r22 release];
            }
    }
    [r20 playbackVolume];
    [r19 setAdVolume:r2];
    if ([r19 eventType] == 0x0) {
            [r19 adPlayhead];
            if (!OVERFLOW(d0 - d0)) {
                    [r19 adPlayhead];
                    [r19 setEventType:[r20 completionEventType:r2]];
            }
    }
    [r19 adPlayhead];
    if (OVERFLOW(d0 - d0)) {
            [r19 setAdPlayhead:r2];
    }
    [[&var_78 super] dispatchEvent:r19];
    if ([VNGMoatVideoUtil isFinalEvent:r19] == 0x0) goto loc_10066dae0;

loc_10066d978:
    objc_initWeak(r29 - 0x38, r20);
    dispatch_time(0x0, 0x1dcd6500);
    objc_copyWeak(&var_A0 + 0x20, r29 - 0x38);
    dispatch_after(r21, *__dispatch_main_q, &var_A0);
    r0 = &var_A0 + 0x20;
    goto loc_10066dad4;

loc_10066dad4:
    objc_destroyWeak(r0);
    objc_destroyWeak(r29 - 0x38);
    goto loc_10066dae0;

loc_10066dae0:
    [r19 release];
    return;

loc_10066db00:
    [VNGMoatLogging reportDevLogWithObject:r20 format:@"got event %@, but not on or not tracking."];
    if ([r19 eventType] != 0x0) {
            r20 = [[r20 trackerID] retain];
            [VNGMoatLogging reportClientLog:0x1 trackerID:r20 format:@"dispatchEvent failed"];
            [r20 release];
    }
    goto loc_10066dae0;

loc_10066d9f8:
    objc_initWeak(r29 - 0x38, r20);
    objc_copyWeak(&var_68 + 0x28, r29 - 0x38);
    r23 = [r19 retain];
    var_48 = r23;
    r20 = [[r20 classTag] retain];
    r0 = [NSValue valueWithNonretainedObject:r23];
    r29 = r29;
    r23 = [r0 retain];
    [r22 onResurrectionDo:&var_68 withQueue:r20 withKey:r23];
    [r23 release];
    [r20 release];
    [var_48 release];
    r0 = &var_68 + 0x28;
    goto loc_10066dad4;
}

-(void)changeTargetLayer:(void *)arg2 {
    r20 = @class(VNGMoatLogging);
    r22 = [arg2 retain];
    [r20 reportDevLogWithObject:self format:@"changeTargetLayer: %@"];
    r20 = @class(VNGMoatLogging);
    r21 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r21 format:@"changeTargetLayer succeeded"];
    [r21 release];
    [self setTrackedLayer:r22];
    [r22 release];
    return;
}

-(void)updateAggregateVolume {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self aggregateVolume];
    [r19 playbackVolume];
    [VNGMoatVideoUtil getSystemVolume];
    s0 = s9 * s0;
    [r19 setAggregateVolume:r2];
    if ([r19 state] == 0x2) {
            [r19 aggregateVolume];
            if (s8 != s0) {
                    r20 = [[VNGMoatAdEvent alloc] initWithType:0x9 withPlayheadMillis:r3];
                    [r19 dispatchEvent:r20];
                    [r20 release];
            }
    }
    return;
}

-(bool)trackVideoAd:(void *)arg2 withLayer:(void *)arg3 withContainingView:(void *)arg4 withDurationMillis:(double)arg5 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [self trackVideoAd:r21 withLayer:r19 withDurationMillis:arg4];
    [r19 release];
    [r21 release];
    r0 = r20;
    return r0;
}

-(void)changeTargetLayer:(void *)arg2 withContainingView:(void *)arg3 {
    r20 = [arg2 retain];
    [self changeTargetLayer:r20];
    [r20 release];
    return;
}

-(unsigned long long)state {
    r0 = self->_state;
    return r0;
}

-(void)setState:(unsigned long long)arg2 {
    self->_state = arg2;
    return;
}

-(double)duration {
    r0 = self;
    return r0;
}

-(void)setDuration:(double)arg2 {
    self->_duration = d0;
    return;
}

-(float)volume {
    r0 = self;
    return r0;
}

-(float)aggregateVolume {
    r0 = self;
    return r0;
}

-(void)setAggregateVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_aggregateVolume = s0;
    return;
}

-(bool)muted {
    r0 = *(int8_t *)(int64_t *)&self->_muted;
    return r0;
}

-(void)setStartedPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_startedPlaying = arg2;
    return;
}

-(bool)startedPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_startedPlaying;
    return r0;
}

@end