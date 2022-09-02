@implementation FNFRealClock

-(void *)initWithShouldCreateTimebase:(bool)arg2 playerConfig:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timeObservers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r19->_playRate = 0x3f800000;
            if (r20 != 0x0 && [r19 _initTimebase] == 0x0) {
                    r20 = 0x0;
            }
            else {
                    r20 = [r19 retain];
            }
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)initTimebase {
    [self _initTimebase];
    return;
}

-(void *)createTimeObserverWithInterval:(union ?)arg2 block:(void *)arg3 fireOnceAtExactTime:(bool)arg4 followMasterClock:(bool)arg5 {
    memcpy(&r2, &arg2, 0x8);
    r24 = [r3 retain];
    r0 = [FNFPlayerTimeObserver new];
    [r0 setBlock:r24];
    [r24 release];
    [r0 setInterval:&var_50];
    [r0 setFireOnceAtExactTime:r4];
    [r0 setFollowMasterClock:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)_initTimebase {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = CFAllocatorGetDefault();
    r20 = (int64_t *)&r19->_audioDeviceClock;
    if (*qword_1011dd298 != -0x1) {
            dispatch_once_f(0x1011dd298, 0x1011c63e8, 0x100a3d91c);
    }
    r0 = qword_1011dd2a0(r21, r20);
    if (r0 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0x39 format:@"%@ creating audio clock failed with status: %d. defaulting to host time clock"];
            if (*qword_1011dd398 != -0x1) {
                    dispatch_once_f(0x1011dd398, 0x1011c6568, 0x100a3d91c);
            }
            r0 = qword_1011dd3a0();
            *r20 = r0;
            CFRetain(r0);
    }
    r21 = CFAllocatorGetDefault();
    r22 = *r20;
    r20 = (int64_t *)&r19->_controlTimebase;
    if (*qword_1011dd2f8 != -0x1) {
            dispatch_once_f(0x1011dd2f8, 0x1011c6478, 0x100a3d91c);
    }
    r0 = qword_1011dd300(r21, r22, r20);
    if (r0 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0x40 format:@"%@ creating timebase failed with status: %d"];
            r0 = 0x0;
    }
    else {
            r19 = *r20;
            if (*qword_1011dd238 != -0x1) {
                    dispatch_once_f(0x1011dd238, 0x1011c6358, 0x100a3d91c);
            }
            qword_1011dd240(r19);
            r19 = *r20;
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            sub_100a3e650(r19, &var_50);
            r0 = 0x1;
    }
    return r0;
}

-(bool)addTimeObserver:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r0 = [arg2 retain];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 interval];
    }
    else {
            var_48 = 0x0;
            var_38 = 0x0;
    }
    r21 = [sub_100b37780() retain];
    r19 = dispatch_source_create(*__dispatch_source_type_timer, 0x0, 0x0, r21);
    [r21 release];
    [r22 setTimer:r19];
    if (([r22 followMasterClock] & 0x1) != 0x0) {
            r21 = 0xffffffffffffffff;
    }
    else {
            sub_100a3e4dc(&var_60);
            asm { fcvtzu     x21, d0 };
    }
    if ([r22 followMasterClock] == 0x0) {
            asm { csinv      x24, x8, xzr, eq };
    }
    dispatch_source_set_timer(r19, dispatch_time(0x0, 0x0), r21, r24);
    objc_initWeak(&stack[-120], r20);
    r21 = &var_98 + 0x28;
    objc_copyWeak(r21, &stack[-120]);
    r0 = [r22 retain];
    r22 = r0;
    var_78 = r0;
    dispatch_source_set_event_handler(r19, &var_98);
    [r22 setSuspended:0x0];
    dispatch_resume(r19);
    if ([r22 followMasterClock] == 0x0) goto loc_100b2d8c8;

loc_100b2d7d4:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimebase));
    r23 = *(r20 + r24);
    if (*qword_1011dd388 != -0x1) {
            dispatch_once_f(0x1011dd388, 0x1011c6550, 0x100a3d91c);
    }
    r0 = qword_1011dd390(r23, r19);
    if (r0 == 0x0) goto loc_100b2d844;

loc_100b2d838:
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    r20 = 0x0;
    goto loc_100b2d8e8;

loc_100b2d8e8:
    [var_78 release];
    objc_destroyWeak(r21);
    objc_destroyWeak(&stack[-120]);
    [r19 release];
    [r22 release];
    [r22 release];
    r0 = r20;
    return r0;

loc_100b2d844:
    if ([r22 fireOnceAtExactTime] == 0x0) goto loc_100b2d8b4;

loc_100b2d858:
    r0 = *(r20 + r24);
    r0 = sub_100a3e5bc(r0, r19, &var_B0, 0x0);
    if (r0 != 0x0) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            r20 = 0x0;
    }
    else {
            [r20->_timeObservers addObject:r2];
            r20 = 0x1;
    }
    goto loc_100b2d8e8;

loc_100b2d8b4:
    [r20 _updateNextFireTimeForObserver:r22];
    goto loc_100b2d8c8;

loc_100b2d8c8:
    [r20->_timeObservers addObject:r2];
    r20 = 0x1;
    goto loc_100b2d8e8;
}

-(void)set:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_controlTimebase;
    sub_100a3e650(r0, &var_20);
    return;
}

-(void)pause {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimebase));
    r21 = *(self + r22);
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r21);
    sub_100a3e4dc(&stack[-72]);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0xa4 format:@"pausing timebase currentTime:%f"];
    *(int32_t *)(int64_t *)&r19->_playRate = 0x0;
    r19 = *(r19 + r22);
    if (*qword_1011dd238 != -0x1) {
            dispatch_once_f(0x1011dd238, 0x1011c6358, 0x100a3d91c);
    }
    qword_1011dd240(r19);
    return;
}

-(void)setRate:(float)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    *(int32_t *)(int64_t *)&self->_playRate = s0;
    r19 = self->_controlTimebase;
    asm { fcvt       d8, s0 };
    if (*qword_1011dd238 != -0x1) {
            dispatch_once_f(0x1011dd238, 0x1011c6358, 0x100a3d91c);
    }
    r1 = *0x1011dd240;
    (r1)(r19, r1);
    return;
}

-(void)resume {
    r31 = r31 - 0x1c0;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimebase));
    var_188 = r8;
    r21 = *(self + r8);
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r21);
    sub_100a3e4dc(&stack[-280]);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0x8f format:@"resuming timebase currentTime:%f"];
    r20 = *(r19 + var_188);
    asm { fcvt       d8, s0 };
    if (*qword_1011dd238 != -0x1) {
            dispatch_once_f(0x1011dd238, 0x1011c6358, 0x100a3d91c);
    }
    qword_1011dd240(r20);
    r0 = r19->_timeObservers;
    r0 = [r0 copy];
    var_140 = q0;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100b2dc18;

loc_100b2da84:
    r22 = r0;
    r24 = *var_140;
    goto loc_100b2da90;

loc_100b2da90:
    r25 = 0x0;
    goto loc_100b2dad0;

loc_100b2dad0:
    if (*var_140 != r24) {
            objc_enumerationMutation(r20);
    }
    r0 = *(var_148 + r25 * 0x8);
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 followMasterClock] == 0x0 || ([r21 fireOnceAtExactTime] & 0x1) != 0x0 || ([r21 suspended] & 0x1) != 0x0) goto loc_100b2db24;

loc_100b2db88:
    r0 = r19;
    r1 = @selector(_updateNextFireTimeForObserver:);
    goto loc_100b2dbb8;

loc_100b2dbb8:
    objc_msgSend(r0, r1);
    goto loc_100b2dbc0;

loc_100b2dbc0:
    [r21 release];
    r25 = r25 + 0x1;
    if (r25 < r22) goto loc_100b2dad0;

loc_100b2dbf8:
    r0 = objc_msgSend(r20, var_1A8);
    r22 = r0;
    if (r0 != 0x0) goto loc_100b2da90;

loc_100b2dc18:
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;

loc_100b2db24:
    if ([r21 fireOnceAtExactTime] == 0x0 || ([r21 suspended] & 0x1) != 0x0) goto loc_100b2dbc0;

loc_100b2db44:
    r23 = *(r19 + var_188);
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r23);
    if (r21 != 0x0) {
            [r21 interval];
    }
    r0 = CMTimeCompare(&stack[-376], &var_180);
    if (r0 < 0x1) goto loc_100b2dbc0;

loc_100b2dbb0:
    r0 = r19;
    r1 = @selector(_dispatchSourceFiredForTimeObserver:);
    goto loc_100b2dbb8;
}

-(float)currentPlayRate {
    r0 = self;
    return r0;
}

-(union ?)currentTime {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r20 = self->_controlTimebase;
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    r1 = *0x1011dd2d0;
    r0 = (r1)(r20, r1);
    return r0;
}

-(void)_dispatchSourceFiredForTimeObserver:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = r20->_controlTimebase;
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r21);
    r0 = [r19 block];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 block];
            r29 = r29;
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r21 release];
    }
    if (([r19 fireOnceAtExactTime] & 0x1) == 0x0 && [r19 followMasterClock] != 0x0) {
            [r20 _updateNextFireTimeForObserver:r19];
    }
    else {
            if ([r19 fireOnceAtExactTime] != 0x0) {
                    r0 = [r19 timer];
                    r0 = [r0 retain];
                    dispatch_suspend(r0);
                    [r20 release];
                    [r19 setSuspended:0x1];
            }
    }
    [r19 release];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self removeAllTimeObserversInternal];
    r0 = r19->_controlTimebase;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    r0 = r19->_audioDeviceClock;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)resumeTimeObserver:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r21 = self->_controlTimebase;
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r21);
    sub_100a3e4dc(&stack[-72]);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0xe0 format:@"resuming observer:%p currentTime:%f"];
    r0 = [r19 retain];
    r19 = r0;
    if ([r0 suspended] != 0x0) {
            [r19 setSuspended:0x0];
            r0 = [r19 timer];
            r0 = [r0 retain];
            dispatch_resume(r0);
            [r20 release];
    }
    [r19 release];
    [r19 release];
    return;
}

-(void)suspendTimeObserver:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r21 = self->_controlTimebase;
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r21);
    sub_100a3e4dc(&stack[-72]);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0xec format:@"suspending observer:%p currentTime:%f"];
    r0 = [r19 retain];
    r19 = r0;
    if (([r0 suspended] & 0x1) == 0x0) {
            [r19 setSuspended:0x1];
            r0 = [r19 timer];
            r0 = [r0 retain];
            dispatch_suspend(r0);
            [r20 release];
    }
    [r19 release];
    [r19 release];
    return;
}

-(void)removeTimeObserver:(void *)arg2 {
    [self removeTimeObserverInternal:arg2];
    return;
}

-(void *)observers {
    r0 = self->_timeObservers;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void)removeTimeObserverInternal:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimebase));
    r22 = *(r19 + r23);
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r22);
    sub_100a3e4dc(&stack[-88]);
    [FBAdLogger logAtLevel:0x6 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0xfe format:@"removing observer:%p currentTime:%f"];
    r0 = [r20 retain];
    r20 = r0;
    if (([r0 followMasterClock] & 0x1) != 0x0) {
            r22 = *(r19 + r23);
            r0 = [r20 timer];
            r29 = r29;
            r23 = [r0 retain];
            if (*qword_1011dd3c8 != -0x1) {
                    dispatch_once_f(0x1011dd3c8, 0x1011c65b0, 0x100a3d91c);
            }
            qword_1011dd3d0(r22, r23);
            [r23 release];
    }
    if ([r20 suspended] != 0x0) {
            r0 = [r20 timer];
            r29 = r29;
            r0 = [r0 retain];
            dispatch_resume(r0);
            [r22 release];
    }
    r0 = [r20 timer];
    r0 = [r0 retain];
    dispatch_source_cancel(r0);
    [r21 release];
    [r19->_timeObservers removeObjectIdenticalTo:r20];
    [r20 release];
    [r20 release];
    return;
}

-(void)removeAllTimeObservers {
    [self removeAllTimeObserversInternal];
    return;
}

-(void)syncWithLayer:(void *)arg2 {
    [arg2 setControlTimebase:self->_controlTimebase];
    return;
}

-(void)removeAllTimeObserversInternal {
    r31 = r31 - 0x130;
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
    r19 = self;
    r0 = self->_timeObservers;
    r0 = [r0 copy];
    var_110 = q0;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 removeTimeObserverInternal:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timeObservers, 0x0);
    return;
}

-(void)_updateNextFireTimeForObserver:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_controlTimebase));
    r21 = *(r20 + r22);
    if (*qword_1011dd2c8 != -0x1) {
            dispatch_once_f(0x1011dd2c8, 0x1011c6430, 0x100a3d91c);
    }
    (*0x1011dd2d0)(r21);
    if (r19 != 0x0) {
            [r19 interval];
    }
    sub_100a3e6cc(r29 - 0x50, &var_70, &var_88);
    r21 = *(r20 + r22);
    r22 = [[r19 timer] retain];
    r0 = sub_100a3e5bc(r21, r22, &var_A0, 0x0);
    r21 = r0;
    [r22 release];
    if (r21 != 0x0) {
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFPlayer/FNFPlayer/FNFClock.mm" lineNumber:0x12b format:@"%@ setting timer next fire time failed with error: %d"];
    }
    [r19 release];
    return;
}

@end