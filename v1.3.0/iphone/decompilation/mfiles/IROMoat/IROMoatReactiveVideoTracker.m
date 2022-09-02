@implementation IROMoatReactiveVideoTracker

-(double)adDurationMS {
    r0 = [self duration];
    return r0;
}

-(bool)isPlaying {
    return 0x1;
}

-(double)trackedPlayheadMS {
    r0 = self;
    return r0;
}

-(float)playerVolume {
    r0 = [self volume];
    return r0;
}

-(bool)isMuted {
    r0 = [self muted];
    return r0;
}

+(void *)classTag {
    objc_retainAutorelease(@"MoatReactiveVideoTracker");
    return @"MoatReactiveVideoTracker";
}

-(bool)timerRequired {
    return 0x0;
}

-(void *)initWithPartnerCode:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffc0) = self;
    r0 = [[&var_30 super] initWithPartnerCode:arg2];
    r19 = r0;
    if (r19 != 0x0 && [IROMoatOnOff getStatus] != 0x0) {
            r0 = [IROMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isInitialized];
            [r0 release];
            if (r21 != 0x0) {
                    [r19 setVolume:r2];
                    [r19 setState:0x1];
            }
    }
    r0 = r19;
    return r0;
}

-(void)destroy {
    [self setState:0x3];
    [[&var_20 super] destroy];
    return;
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

-(void)setMuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_muted = arg2;
    [self updateAggregateVolume];
    return;
}

-(void)dispatchEvent:(void *)arg2 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x80;
    r20 = self;
    r19 = [arg2 retain];
    if ([IROMoatOnOff getStatus] == 0x0) goto loc_100746960;

loc_1007466c8:
    r0 = [IROMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100746960;

loc_100746704:
    if ([r20 state] != 0x2) goto loc_100746a60;

loc_10074671c:
    if ([r19 eventType] != 0x0) {
            r0 = [r20 trackerID];
            r29 = r29;
            r23 = [r0 retain];
            [IROMoatLogging reportClientLog:0x0 trackerID:r23 format:@"dispatchEvent succeeded"];
            [r23 release];
    }
    if (([r20 startedPlaying] & 0x1) == 0x0) {
            [r20 setStartedPlaying:0x1];
            if ([r19 eventType] != 0x1) {
                    r2 = 0x1;
                    r22 = [[IROMoatAdEvent alloc] initWithType:0x1 withPlayheadMillis:r3];
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
    r0 = [[&var_78 super] dispatchEvent:r19];
    if ([IROMoatVideoUtil isFinalEvent:r19] == 0x0) goto loc_100746a40;

loc_1007468e8:
    objc_initWeak(r29 - 0x38, r20);
    dispatch_time(0x0, 0x1dcd6500);
    var_98 = 0xffffffffc2000000;
    var_90 = 0x100746b90;
    var_88 = 0x100e8e800;
    objc_copyWeak(&var_A0 + 0x20, r29 - 0x38);
    r0 = dispatch_after(r21, *__dispatch_main_q, &var_A0);
    r0 = &var_A0 + 0x20;
    goto loc_100746a34;

loc_100746a34:
    objc_destroyWeak(r0);
    objc_destroyWeak(r29 - 0x38);
    goto loc_100746a40;

loc_100746a40:
    [r19 release];
    return;

loc_100746a60:
    var_B0 = r19;
    [IROMoatLogging reportDevLogWithObject:r20 format:@"got event %@, but not on or not tracking."];
    if ([r19 eventType] != 0x0) {
            r0 = [r20 trackerID];
            r29 = r29;
            r20 = [r0 retain];
            [IROMoatLogging reportClientLog:0x1 trackerID:r20 format:@"dispatchEvent failed"];
            [r20 release];
    }
    goto loc_100746a40;

loc_100746960:
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
    goto loc_100746a34;
}

-(bool)trackVideoAd:(void *)arg2 withLayer:(void *)arg3 withDurationMillis:(double)arg4 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x80;
    v8 = v0;
    r21 = self;
    r27 = *___stack_chk_guard;
    r27 = *r27;
    var_68 = r27;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([IROMoatOnOff getStatus] != 0x0) {
            r0 = [IROMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isInitialized];
            [r0 release];
            if ((r23 & 0x1) != 0x0) {
                    r24 = [[IROMoatVideoUtil adIdsToJSONString:r19] retain];
                    r0 = [r20 description];
                    r29 = r29;
                    r25 = [r0 retain];
                    r8 = @"nil";
                    if (r25 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = @"nil";
                            }
                            else {
                                    r8 = r25;
                            }
                    }
                    var_D0 = d8;
                    var_E0 = r24;
                    stack[-232] = r8;
                    [IROMoatLogging reportDevLogWithObject:r2 format:r3];
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
                    r25 = r8 | r9;
                    if (r24 != 0x1) {
                            if (CPU_FLAGS & NE) {
                                    r8 = 0x1;
                            }
                    }
                    if ((r25 & 0x1) == 0x0 && r8 == 0x0 && r20 != 0x0 && r19 != 0x0) {
                            [r21 setState:0x2];
                            [r21 setDuration:0x2];
                            [r21 trackPlayer:r21 adIds:r19 targetLayer:r20];
                            [r21 updatePlaybackStatus];
                            r22 = @class(IROMoatLogging);
                            r0 = [r21 trackerID];
                            r29 = r29;
                            r21 = [r0 retain];
                            [r22 reportClientLog:0x0 trackerID:r21 format:@"trackVideoAd succeeded"];
                            [r21 release];
                            r21 = 0x1;
                    }
                    else {
                            r23 = [NSMutableArray new];
                            if (r24 != 0x1) {
                                    [r23 addObject:r2];
                            }
                            if (r19 == 0x0) {
                                    [r23 addObject:r2];
                            }
                            if (r20 == 0x0) {
                                    [r23 addObject:r2];
                            }
                            if ((r25 & 0x1) != 0x0) {
                                    [r23 addObject:r2];
                            }
                            var_E0 = [[r23 componentsJoinedByString:@" | "] retain];
                            [IROMoatLogging reportDevLogWithObject:r2 format:r3];
                            r22 = @class(IROMoatLogging);
                            r0 = [r21 trackerID];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r22 reportClientLog:0x1 trackerID:r25 format:@"trackVideoAd failed"];
                            [r25 release];
                            [r21 notifyDelegateOfBadArgStart:r24];
                            [r24 release];
                            [r23 release];
                            r21 = 0x0;
                    }
            }
            else {
                    objc_initWeak(&var_80, r21);
                    objc_initWeak(&stack[-152], r20);
                    var_78 = [[NSDictionary dictionaryWithDictionary:r19] retain];
                    r0 = objc_loadWeakRetained(&stack[-152]);
                    r25 = [[NSValue valueWithNonretainedObject:r0] retain];
                    [[NSArray arrayWithObjects:&var_78 count:0x2] retain];
                    [r25 release];
                    [r0 release];
                    var_C0 = 0xffffffffc2000000;
                    var_B8 = 0x1007465b0;
                    var_B0 = 0x100e8e7a0;
                    objc_copyWeak(&var_C8 + 0x28, &var_80);
                    var_A8 = [r24 retain];
                    objc_copyWeak(&var_C8 + 0x30, &stack[-152]);
                    var_90 = d8;
                    r0 = [r21 classTag];
                    r29 = r29;
                    r21 = [r0 retain];
                    r0 = [r26 onResurrectionDo:&var_C8 withQueue:r21 withKey:r22];
                    [r21 release];
                    objc_destroyWeak(&var_C8 + 0x30);
                    [var_A8 release];
                    objc_destroyWeak(&var_C8 + 0x28);
                    [r22 release];
                    [r24 release];
                    r0 = objc_destroyWeak(&stack[-152]);
                    r0 = objc_destroyWeak(&var_80);
                    r21 = 0x0;
            }
    }
    else {
            objc_initWeak(&var_80, r21);
            objc_initWeak(&stack[-152], r20);
            var_78 = [[NSDictionary dictionaryWithDictionary:r19] retain];
            r0 = objc_loadWeakRetained(&stack[-152]);
            r25 = [[NSValue valueWithNonretainedObject:r0] retain];
            [[NSArray arrayWithObjects:&var_78 count:0x2] retain];
            [r25 release];
            [r0 release];
            var_C0 = 0xffffffffc2000000;
            var_B8 = 0x1007465b0;
            var_B0 = 0x100e8e7a0;
            objc_copyWeak(&var_C8 + 0x28, &var_80);
            var_A8 = [r24 retain];
            objc_copyWeak(&var_C8 + 0x30, &stack[-152]);
            var_90 = d8;
            r0 = [r21 classTag];
            r29 = r29;
            r21 = [r0 retain];
            r0 = [r26 onResurrectionDo:&var_C8 withQueue:r21 withKey:r22];
            [r21 release];
            objc_destroyWeak(&var_C8 + 0x30);
            [var_A8 release];
            objc_destroyWeak(&var_C8 + 0x28);
            [r22 release];
            [r24 release];
            r0 = objc_destroyWeak(&stack[-152]);
            r0 = objc_destroyWeak(&var_80);
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    if (r27 == var_68) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)changeTargetLayer:(void *)arg2 {
    r20 = @class(IROMoatLogging);
    r22 = [arg2 retain];
    [r20 reportDevLogWithObject:self format:@"changeTargetLayer: %@"];
    r20 = @class(IROMoatLogging);
    r21 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r21 format:@"changeTargetLayer succeeded"];
    [r21 release];
    [self setTrackedLayer:r22];
    [r22 release];
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
    [IROMoatVideoUtil getSystemVolume];
    s0 = s9 * s0;
    [r19 setAggregateVolume:r2];
    if ([r19 state] == 0x2) {
            [r19 aggregateVolume];
            if (s8 != s0) {
                    r20 = [[IROMoatAdEvent alloc] initWithType:0x9 withPlayheadMillis:r3];
                    [r19 dispatchEvent:r20];
                    [r20 release];
            }
    }
    return;
}

-(unsigned long long)state {
    r0 = self->_state;
    return r0;
}

-(double)duration {
    r0 = self;
    return r0;
}

-(void)setState:(unsigned long long)arg2 {
    self->_state = arg2;
    return;
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

-(bool)muted {
    r0 = *(int8_t *)(int64_t *)&self->_muted;
    return r0;
}

-(void)setAggregateVolume:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_aggregateVolume = s0;
    return;
}

-(bool)startedPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_startedPlaying;
    return r0;
}

-(void)setStartedPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_startedPlaying = arg2;
    return;
}

@end