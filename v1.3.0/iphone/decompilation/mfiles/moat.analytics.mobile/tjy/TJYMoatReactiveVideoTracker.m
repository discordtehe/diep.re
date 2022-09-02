@implementation TJYMoatReactiveVideoTracker

+(void *)trackerWithPartnerCode:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[TJYMoatReactiveVideoTracker alloc] initTracker:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initTracker:(void *)arg2 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x50;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            *(r20 + r21) = 0x0;
            if ([TJYMoatOnOff getStatus] != 0x0) {
                    if ([TJYMoatOnOff getDebug] != 0x0) {
                            var_80 = @"MoatReactiveVideoTracker";
                            NSLog(@"[%@] Called to initialize tracker.", @selector(getDebug));
                    }
                    if ([TJYMoatVideoUtil isValidOSVersion] != 0x0) {
                            r0 = [TJYMoatWebView withPartnerCode:r19];
                            r29 = r29;
                            r0 = [r0 retain];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mWebView));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            [r8 release];
                            *(r20 + r21) = 0x1;
                    }
                    [r20 retain];
            }
            else {
                    r0 = objc_initWeak(&stack[-88], r20);
                    var_70 = 0xffffffffc2000000;
                    var_68 = 0x1009731c8;
                    var_60 = 0x100ea39e0;
                    [r0 retain];
                    objc_initWeak(&var_78 + 0x28, r20);
                    [r20 release];
                    var_58 = [r19 retain];
                    r0 = objc_loadWeakRetained(&stack[-88]);
                    r23 = r0;
                    r0 = [NSValue valueWithNonretainedObject:r23];
                    r29 = r29;
                    r24 = [r0 retain];
                    r0 = [r22 onResurrectionDo:&var_78 withQueue:@"MoatReactiveVideoTracker" withKey:r24];
                    [r24 release];
                    [r23 release];
                    [r20 retain];
                    [var_58 release];
                    objc_destroyWeak(&var_78 + 0x28);
                    r0 = objc_destroyWeak(&stack[-88]);
            }
    }
    [r19 release];
    [r20 release];
    r0 = r20;
    return r0;
}

-(bool)checkOkToTrack {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [TJYMoatVideoUtil isValidOSVersion];
    if (r0 != 0x0) {
            if (r19->_state == 0x1) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)trackVideoAd:(void *)arg2 withLayer:(void *)arg3 withContainingView:(void *)arg4 withDurationMillis:(double)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0xa0;
    v8 = v0;
    r22 = self;
    r28 = *___stack_chk_guard;
    r28 = *r28;
    var_68 = r28;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    if ([TJYMoatOnOff getStatus] == 0x0) goto loc_1009733a8;

loc_10097333c:
    if ([TJYMoatOnOff getDebug] != 0x0) {
            r1 = @selector(adIdsToJSONString:);
            r2 = r19;
            r0 = objc_msgSend(@class(TJYMoatVideoUtil), r1);
            r29 = r29;
            r24 = [r0 retain];
            if (r20 != 0x0) {
                    r1 = @selector(description);
                    r0 = objc_msgSend(r20, r1);
                    r29 = r29;
                    r25 = [r0 retain];
                    r28 = 0x1;
            }
            else {
                    r28 = 0x0;
                    r25 = @"nil";
            }
            if (r21 != 0x0) {
                    r0 = [r21 description];
                    r29 = r29;
                    r26 = [r0 retain];
                    var_E0 = d8;
                    var_F0 = r25;
                    stack[-248] = r26;
                    var_100 = @"MoatReactiveVideoTracker";
                    var_F8 = r24;
                    NSLog(@"[%@] called to track with ids: %@ | layer: %@ | view: %@ | duration: %f.", @selector(description), r2, r3, r4, r5);
                    [r26 release];
            }
            else {
                    var_E0 = d8;
                    var_F0 = r25;
                    stack[-248] = @"nil";
                    var_100 = @"MoatReactiveVideoTracker";
                    var_F8 = r24;
                    NSLog(@"[%@] called to track with ids: %@ | layer: %@ | view: %@ | duration: %f.", r1, r2, r3, r4, r5);
            }
            if (r28 != 0x0) {
                    [r25 release];
            }
            [r24 release];
            r28 = *___stack_chk_guard;
            r28 = *r28;
    }
    if (OVERFLOW(d8 - d8) || d8 < *0x100b9b058) goto loc_100973678;

loc_100973600:
    [r20 frame];
    r24 = [r22 setTrackingParams:r19 playerDims:r21 attachmentView:r20 targetLayer:r5];
    r0 = @class(TJYMoatOnOff);
    r1 = @selector(getDebug);
    r0 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_1009736a4;

loc_100973640:
    if (r0 != 0x0) {
            var_100 = @"MoatReactiveVideoTracker";
            NSLog(@"[%@] parameters check out. Starting tracking.", r1);
    }
    [r22 startTracking:r2];
    r22 = 0x1;
    goto loc_1009736c4;

loc_1009736c4:
    [r21 release];
    [r20 release];
    [r19 release];
    if (r28 == var_68) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009736a4:
    if (r0 == 0x0) goto loc_1009736c0;

loc_1009736a8:
    var_100 = @"MoatReactiveVideoTracker";
    r0 = @"[%@] not tracking. Please check that you passed valid parameters.";
    goto loc_1009736bc;

loc_1009736bc:
    NSLog(r0);
    goto loc_1009736c0;

loc_1009736c0:
    r22 = 0x0;
    goto loc_1009736c4;

loc_100973678:
    if ([TJYMoatOnOff getDebug] == 0x0) goto loc_1009736c0;

loc_100973688:
    var_F8 = d8;
    var_100 = @"MoatReactiveVideoTracker";
    r0 = @"[%@] invalid duration %f. Please make sure duration is not NaN and is in millis.";
    goto loc_1009736bc;

loc_1009733a8:
    objc_initWeak(&stack[-144], r21);
    objc_initWeak(&stack[-152], r20);
    r24 = [[NSDictionary dictionaryWithDictionary:r19] retain];
    r0 = objc_loadWeakRetained(&stack[-144]);
    r25 = r0;
    r26 = [[NSValue valueWithNonretainedObject:r25] retain];
    r0 = [NSArray arrayWithObjects:r29 - 0x78 count:0x2];
    r29 = r29;
    [r0 retain];
    [r26 release];
    [r25 release];
    var_C8 = 0xffffffffc2000000;
    var_C0 = 0x100973748;
    var_B8 = 0x100ea3a10;
    var_B0 = [r22 retain];
    var_A8 = [r24 retain];
    r0 = objc_loadWeakRetained(&stack[-152]);
    objc_initWeak(&var_D0 + 0x30, r0);
    [r24 release];
    r0 = objc_loadWeakRetained(&stack[-144]);
    objc_initWeak(&var_D0 + 0x38, r0);
    [r24 release];
    r0 = [r27 onResurrectionDo:&var_D0 withQueue:@"MoatReactiveVideoTracker" withKey:r23];
    objc_destroyWeak(&var_D0 + 0x38);
    objc_destroyWeak(&var_D0 + 0x30);
    [var_A8 release];
    [var_B0 release];
    [r23 release];
    [r22 release];
    objc_destroyWeak(&stack[-152]);
    objc_destroyWeak(&stack[-144]);
    goto loc_1009736c0;
}

-(void)changeTargetLayer:(void *)arg2 withContainingView:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_storeWeak((int64_t *)&self->_targetLayer, arg2);
    objc_storeWeak((int64_t *)&self->_attachmentView, arg3);
    r0 = [self mWebView];
    r0 = [r0 retain];
    [r0 changeAttachmentView:r24 newTargetLayer:r22 becauseFullScreen:0x0];
    [r24 release];
    [r22 release];
    [r0 release];
    return;
}

-(bool)setTrackingParams:(void *)arg2 playerDims:(struct CGRect)arg3 attachmentView:(void *)arg4 targetLayer:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    r23 = [r22 checkOkToTrack];
    if (r21 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x19, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       w8, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & NE) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_playerDims));
            *(int128_t *)(r22 + r8) = d11;
            *(int128_t *)(0x8 + r22 + r8) = d10;
            *(int128_t *)(0x10 + r22 + r8) = d9;
            *(int128_t *)(0x18 + r22 + r8) = d8;
            r0 = [NSMutableDictionary dictionaryWithDictionary:r19];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adIds));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r22->_attachmentView, r20);
            objc_storeWeak((int64_t *)&r22->_targetLayer, r21);
            r22 = 0x1;
    }
    else {
            if ([TJYMoatOnOff getDebug] != 0x0) {
                    r22 = [[NSMutableArray alloc] init];
                    if (r19 == 0x0) {
                            r2 = @"adIds object is nil";
                            [r22 addObject:r2];
                    }
                    if (r20 == 0x0) {
                            r2 = @"view reference is nil";
                            [r22 addObject:r2];
                    }
                    if (r21 == 0x0) {
                            r2 = @"layer reference is nil";
                            [r22 addObject:r2];
                    }
                    if ((r23 & 0x1) == 0x0) {
                            r2 = @"invalid OS or you've already called tracking on this object";
                            [r22 addObject:r2];
                    }
                    r0 = [r22 componentsJoinedByString:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_60 = @"MoatReactiveVideoTracker";
                    stack[-104] = r23;
                    NSLog(@"[%@] not tracking due to following problems: %@.", @selector(componentsJoinedByString:), @" | ");
                    [r23 release];
                    [r22 release];
            }
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffe0 - 0x10;
    r19 = self;
    if (r19->_state != 0x3) {
            [r19 destroy];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)dispatchEvent:(void *)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r20 = self;
    r19 = [r2 retain];
    if ([TJYMoatOnOff getStatus] != 0x0 && r20->_state == 0x2) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_startedPlaying));
            if (*(int8_t *)(r20 + r8) == 0x0) {
                    *(int8_t *)(r20 + r8) = 0x1;
                    if ([r19 eventType] != 0x1) {
                            r21 = [[TJYMoatAdEvent alloc] initWithType:0x1 withPlayheadMillis:r3];
                            r2 = r21;
                            [r20 dispatchEvent:r2];
                            [r21 release];
                    }
            }
            [r19 adVolume];
            if (OVERFLOW(s0 - s0)) {
                    [TJYMoatVideoUtil getSystemVolume];
                    [r19 setAdVolume:r2];
            }
            if ([r19 eventType] == 0x0) {
                    [r19 adPlayhead];
                    if (!OVERFLOW(d0 - d0)) {
                            [r19 adPlayhead];
                            d0 = d8 - d0;
                            if (d0 > *0x100ba2d58) {
                                    r2 = 0x6;
                                    [r19 setEventType:r2];
                            }
                    }
            }
            [r19 adPlayhead];
            if (OVERFLOW(d0 - d0)) {
                    [r19 setAdPlayhead:r2];
            }
            if ([TJYMoatOnOff getDebug] != 0x0) {
                    var_40 = @"MoatReactiveVideoTracker";
                    stack[-72] = r19;
                    NSLog(@"[%@] dispatching event %@.", @selector(getDebug), r2);
            }
            [r20->_mWebView dispatchEvent:r19];
            if ([TJYMoatVideoUtil isFinalEvent:r19] != 0x0) {
                    [r20 performSelector:r2 withObject:r3 afterDelay:r4];
            }
    }
    else {
            if ([TJYMoatOnOff getDebug] != 0x0) {
                    var_40 = @"MoatReactiveVideoTracker";
                    stack[-72] = r19;
                    NSLog(@"[%@] got event %@, but not on or not tracking.", @selector(getDebug), r2);
            }
    }
    [r19 release];
    return;
}

-(void)startTracking:(double)arg2 {
    r2 = arg2;
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
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
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r19 + r8) != 0x2) {
            *(r19 + r8) = 0x2;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_adIds));
            r20 = *(r19 + r22);
            r21 = [[NSNumber numberWithDouble:r2] retain];
            [r20 setObject:r21 forKeyedSubscript:@"duration"];
            [r21 release];
            r19->_duration = d8;
            r20 = r19->_mWebView;
            r21 = *(r19 + r22);
            r0 = objc_loadWeakRetained((int64_t *)&r19->_attachmentView);
            [r0 frame];
            r22 = objc_loadWeakRetained((int64_t *)&r19->_attachmentView);
            r19 = objc_loadWeakRetained((int64_t *)&r19->_targetLayer);
            [r20 startTracking:r21 withPlayerDims:r22 withAttachmentView:r19 withLayerToTrack:r5];
            [r19 release];
            [r22 release];
            [r0 release];
    }
    return;
}

-(void)destroy {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r19 + r20) != 0x3) {
            if ([TJYMoatOnOff getDebug] != 0x0) {
                    var_30 = @"MoatReactiveVideoTracker";
                    NSLog(@"[%@] tracker is shutting down.", @selector(getDebug));
            }
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_mWebView));
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    [r0 destroy];
                    r0 = *(r19 + r21);
                    *(r19 + r21) = 0x0;
                    [r0 release];
            }
            *(r19 + r20) = 0x3;
    }
    return;
}

-(unsigned long long)state {
    r0 = self->_state;
    return r0;
}

-(void *)adIds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adIds)), 0x1);
    return r0;
}

-(void)setAdIds:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(struct CGRect)playerDims {
    r0 = objc_copyStruct(&var_20, (int64_t *)&self->_playerDims, 0x20, 0x1, 0x0);
    return r0;
}

-(void)setPlayerDims:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_playerDims, &var_20, 0x20, 0x1, 0x0);
    return;
}

-(void)setAttachmentView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_attachmentView, arg2);
    return;
}

-(void *)attachmentView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_attachmentView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)targetLayer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_targetLayer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTargetLayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_targetLayer, arg2);
    return;
}

-(void *)mWebView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mWebView)), 0x1);
    return r0;
}

-(double)duration {
    r0 = self;
    return r0;
}

-(void)setDuration:(double)arg2 {
    self->_duration = d0;
    return;
}

-(bool)startedPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_startedPlaying & 0x1;
    return r0;
}

-(void)setStartedPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_startedPlaying = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mWebView, 0x0);
    objc_destroyWeak((int64_t *)&self->_targetLayer);
    objc_destroyWeak((int64_t *)&self->_attachmentView);
    objc_storeStrong((int64_t *)&self->_adIds, 0x0);
    return;
}

@end