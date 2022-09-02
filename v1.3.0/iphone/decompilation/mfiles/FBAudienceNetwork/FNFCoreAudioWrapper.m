@implementation FNFCoreAudioWrapper

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_levels != 0x0) {
            [r19 _cleanupLevelMetering];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithStreamDescription:(struct AudioStreamBasicDescription)arg2 andDelegate:(void *)arg3 andQueue:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
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
    r22 = r4;
    r23 = r2;
    r19 = [r3 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r0 == 0x0) goto loc_100b2eb10;

loc_100b2e964:
    r24 = (int64_t *)&r21->_asbd;
    r8 = *(r23 + 0x20);
    q0 = *(int128_t *)r23;
    q1 = *(int128_t *)(r23 + 0x10);
    *(int128_t *)r24 = q0;
    *(int128_t *)(r24 + 0x10) = q1;
    *(r24 + 0x20) = r8;
    objc_storeWeak((int64_t *)&r21->_delegate, r19);
    objc_storeStrong((int64_t *)&r21->_internalQueue, r22);
    r22 = (int64_t *)&r21->_audioQueue;
    if (*qword_1011dce18 != -0x1) {
            dispatch_once_f(0x1011dce18, 0x1011c5de8, 0x100a3d91c);
    }
    r0 = qword_1011dce20(r23, 0x100b2fdc0, r21, 0x0, 0x0, 0x0, r22);
    if (r0 == 0x0) goto loc_100b2ea0c;

loc_100b2e9f4:
    r0 = r21;
    goto loc_100b2ea90;

loc_100b2ea90:
    [r0 _handleErrorForCode:r2 andStatus:r3];
    r22 = 0x0;
    goto loc_100b2eb1c;

loc_100b2eb1c:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_100b2ea0c:
    r23 = *r22;
    if (*0x1011dce68 != -0x1) {
            dispatch_once_f(0x1011dce68, 0x1011c5e60, 0x100a3d91c);
    }
    r0 = (*0x1011dce70)(r23, 0x6171726e, 0x100b2fccc, r21);
    if (r0 != 0x0) goto loc_100b2ea7c;

loc_100b2ea48:
    r23 = *r22;
    if (*0x1011dce68 != -0x1) {
            dispatch_once_f(0x1011dce68, 0x1011c5e60, 0x100a3d91c);
    }
    r0 = (*0x1011dce70)(r23, 0x71637665, 0x100b2fe74, r21);
    if (r0 == 0x0) goto loc_100b2ea9c;

loc_100b2ea7c:
    r0 = r21;
    goto loc_100b2ea90;

loc_100b2ea9c:
    r22 = *r22;
    r23 = (int64_t *)&r21->_timeline;
    if (*qword_1011dcea8 != -0x1) {
            dispatch_once_f(0x1011dcea8, 0x1011c5ec0, 0x100a3d91c);
    }
    r0 = qword_1011dceb0(r22, r23);
    if (r0 == 0x0) goto loc_100b2eaec;

loc_100b2ead4:
    r0 = r21;
    goto loc_100b2ea90;

loc_100b2eaec:
    r0 = *(int32_t *)(r24 + 0x1c) << 0x3;
    *(int32_t *)(int64_t *)&r21->_levelSize = r0;
    r21->_levels = malloc(r0);
    goto loc_100b2eb10;

loc_100b2eb10:
    r22 = [r21 retain];
    goto loc_100b2eb1c;
}

-(struct OpaqueAudioQueue *)queueRef {
    r0 = self->_audioQueue;
    return r0;
}

-(void)_handleErrorForCode:(int)arg2 andStatus:(int)arg3 {
    r3 = arg3;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    r20 = self;
    var_38 = **___stack_chk_guard;
    r21 = @class(NSError);
    asm { sxtw       x22, w2 };
    r23 = [[NSNumber numberWithInt:r3] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
    r21 = [[r21 errorWithDomain:@"FNFAudioQueue" code:r22 userInfo:r24] retain];
    [r24 release];
    [r23 release];
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    [r0 audioQueueDidError:r21 withStatus:r19];
    [r0 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void *)dispatchQueue {
    r0 = self->_internalQueue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)_setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)setTimePitchEnabled:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_audioQueue;
    r0 = sub_100a3db28(r0, 0x715f7470, &var_14);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0xa andStatus:r0];
            r0 = 0x0;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)reset {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_audioQueue;
    if (*qword_1011dcdc8 != -0x1) {
            dispatch_once_f(0x1011dcdc8, 0x1011c5d70, 0x100a3d91c);
    }
    r1 = *0x1011dcdd0;
    (r1)(r19, r1);
    return;
}

-(void)pause {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_audioQueue;
    if (*qword_1011dcdf8 != -0x1) {
            dispatch_once_f(0x1011dcdf8, 0x1011c5db8, 0x100a3d91c);
    }
    r1 = *0x1011dce00;
    (r1)(r19, r1);
    return;
}

-(void)stopImmediately:(unsigned char)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self->_audioQueue;
    if (*qword_1011dcde8 != -0x1) {
            dispatch_once_f(0x1011dcde8, 0x1011c5da0, 0x100a3d91c);
    }
    r2 = *0x1011dcdf0;
    (r2)(r20, r19, r2);
    return;
}

-(bool)startWithTimestamp:(struct AudioTimeStamp *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = self->_audioQueue;
    if (*qword_1011dcdb8 != -0x1) {
            dispatch_once_f(0x1011dcdb8, 0x1011c5d58, 0x100a3d91c);
    }
    r0 = qword_1011dcdc0(r21, r20);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0x2 andStatus:r0];
            r0 = 0x0;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)releaseBuffer:(struct AudioQueueBuffer *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self->_audioQueue;
    if (*qword_1011dce28 != -0x1) {
            dispatch_once_f(0x1011dce28, 0x1011c5e00, 0x100a3d91c);
    }
    r2 = *0x1011dce30;
    (r2)(r20, r19, r2);
    return;
}

-(void)flush {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_audioQueue;
    if (*qword_1011dcdd8 != -0x1) {
            dispatch_once_f(0x1011dcdd8, 0x1011c5d88, 0x100a3d91c);
    }
    r1 = *0x1011dcde0;
    (r1)(r19, r1);
    return;
}

-(void)invalidate {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_audioQueue));
    r20 = *(self + r22);
    if (*qword_1011dce78 != -0x1) {
            dispatch_once_f(0x1011dce78, 0x1011c5e78, 0x100a3d91c);
    }
    qword_1011dce80(r20, 0x6171726e, 0x100b2fccc, r19);
    r20 = *(r19 + r22);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_timeline));
    r21 = *(r19 + r23);
    if (*qword_1011dceb8 != -0x1) {
            dispatch_once_f(0x1011dceb8, 0x1011c5ed8, 0x100a3d91c);
    }
    qword_1011dcec0(r20, r21);
    *(r19 + r23) = 0x0;
    r20 = *(r19 + r22);
    if (*qword_1011dce08 != -0x1) {
            dispatch_once_f(0x1011dce08, 0x1011c5dd0, 0x100a3d91c);
    }
    qword_1011dce10(r20, 0x0);
    *(r19 + r22) = 0x0;
    return;
}

-(void)setVolume:(float)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r20 = self->_audioQueue;
    if (*qword_1011dce58 != -0x1) {
            dispatch_once_f(0x1011dce58, 0x1011c5e48, 0x100a3d91c);
    }
    r0 = qword_1011dce60(r20, 0x1);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0xb andStatus:r0];
    }
    return;
}

-(void)setVolume:(float)arg2 withRampTime:(float)arg3 {
    r2 = arg2;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v9 = v1;
    v8 = v0;
    r19 = self;
    r20 = self->_audioQueue;
    if (*qword_1011dce58 != -0x1) {
            dispatch_once_f(0x1011dce58, 0x1011c5e48, 0x100a3d91c);
    }
    r0 = qword_1011dce60(r20, 0x4);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0xc andStatus:r0];
    }
    [r19 setVolume:r2];
    return;
}

-(void)setLevelMeteringEnabled:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_audioQueue;
    r0 = sub_100a3db28(r0, 0x61716d65, &var_14);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0xc andStatus:r0];
    }
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
    v8 = v0;
    r19 = self;
    r20 = self->_audioQueue;
    if (*qword_1011dce58 != -0x1) {
            dispatch_once_f(0x1011dce58, 0x1011c5e48, 0x100a3d91c);
    }
    r0 = qword_1011dce60(r20, 0x2);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0xf andStatus:r0];
    }
    return;
}

-(void)_cleanupLevelMetering {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_levels));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            free(r0);
            *(r19 + r20) = 0x0;
            *(int32_t *)(int64_t *)&r19->_levelSize = 0x0;
    }
    return;
}

-(struct AudioQueueLevelMeterState *)currentLevelMeterState {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = self->_audioQueue;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_levels));
    r21 = *(self + r23);
    r22 = (int64_t *)&self->_levelSize;
    if (*qword_1011dce48 != -0x1) {
            dispatch_once_f(0x1011dce48, 0x1011c5e30, 0x100a3d91c);
    }
    r0 = qword_1011dce50(r20, 0x61716d64, r21, r22);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0xe andStatus:r0];
            r0 = 0x0;
    }
    else {
            r0 = *(r19 + r23);
    }
    return r0;
}

-(unsigned int)levelMeterStateLength {
    r0 = *(int32_t *)((int64_t *)&self->_asbd + 0x1c);
    return r0;
}

-(struct AudioQueueBuffer *)bufferWithParams:(struct AQBufferParameters)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = self;
    r21 = r2 >> 0x20;
    r22 = self->_audioQueue;
    if (*qword_1011dce38 != -0x1) {
            dispatch_once_f(0x1011dce38, 0x1011c5e18, 0x100a3d91c);
    }
    r0 = qword_1011dce40(r22, r20, r21, &var_28);
    r3 = r0;
    r0 = var_28;
    if (r3 == 0x0) {
            asm { ccmp       x0, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & NE) {
            [r19 _handleErrorForCode:0x9 andStatus:r3];
            r0 = 0x0;
    }
    return r0;
}

-(union ?)currentTime {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r21 = self->_audioQueue;
    r22 = self->_timeline;
    if (*qword_1011dce88 != -0x1) {
            dispatch_once_f(0x1011dce88, 0x1011c5e90, 0x100a3d91c);
    }
    r0 = qword_1011dce90(r21, r22, &var_60, &var_61);
    if (r0 != 0x0) {
            r0 = [r20 _handleErrorForCode:0x6 andStatus:r0];
            if (*qword_1011dd128 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    else {
            if (var_61 != 0x0) {
                    [r20 _handleErrorForCode:0x7 andStatus:0x0];
            }
            asm { fcvtzs     w8, d0 };
            asm { sxtw       x21, w8 };
            asm { fcvtzs     w20, d0 };
            if (*qword_1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            r0 = (*0x1011dd1e0)(r21, r20);
    }
    return r0;
}

-(bool)primeAudioQueue {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (AudioQueuePrime(self->_audioQueue, 0x0, 0x0) != 0x0) {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            r0 = 0x0;
    }
    else {
            [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
            r0 = 0x1;
    }
    return r0;
}

-(bool)enqueueBuffer:(struct AudioQueueBuffer *)arg2 withStartTime:(struct AudioTimeStamp *)arg3 andFramesToTrim:(unsigned int)arg4 outStartTime:(struct AudioTimeStamp *)arg5 {
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
    r22 = arg5;
    r20 = arg4;
    r23 = arg3;
    r21 = arg2;
    r19 = self;
    r24 = self->_audioQueue;
    r25 = *(int32_t *)(arg2 + 0x30);
    r26 = *(arg2 + 0x28);
    if (*qword_1011dcda8 != -0x1) {
            dispatch_once_f(0x1011dcda8, 0x1011c5d40, 0x100a3d91c);
    }
    r0 = qword_1011dcdb0(r24, r21, r25, r26, r20, 0x0, 0x0, 0x0, r23, r22);
    if (r0 != 0x0) {
            [r19 _handleErrorForCode:0x3 andStatus:r0];
            r0 = 0x0;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)_audioQueueIsRunningCallback:(struct OpaqueAudioQueue *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self queueRef] == arg2) {
            r20 = [r19 queueRef];
            if (*qword_1011dce48 != -0x1) {
                    dispatch_once_f(0x1011dce48, 0x1011c5e30, 0x100a3d91c);
            }
            r0 = qword_1011dce50(r20, 0x6171726e, &var_24, &var_28);
            if (r0 == 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    r19 = r0;
                    if (var_24 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    [r0 audioQueueDidChangeRunning:r2];
                    [r19 release];
            }
    }
    return;
}

-(void)_audioQueueConverterErrorCallback:(struct OpaqueAudioQueue *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r0->_audioQueue == r2) {
            r20 = r2;
            r19 = r0;
            if (*qword_1011dce48 != -0x1) {
                    dispatch_once_f(0x1011dce48, 0x1011c5e30, 0x100a3d91c);
            }
            r0 = qword_1011dce50(r20, 0x71637665, &var_5C, &var_60);
            r20 = r0;
            r21 = [[NSNumber numberWithUnsignedInt:var_5C] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInt:r20];
            r0 = [r0 retain];
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
            [r0 release];
            [r21 release];
            r21 = [[NSError errorWithDomain:@"FNFAudioQueue" code:0x4 userInfo:r23] retain];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
            [r0 audioQueueDidError:r21 withStatus:r20];
            [r0 release];
            [r21 release];
            [r23 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    return;
}

-(void)audioQueueConverterOutputCallback:(struct OpaqueAudioQueue *)arg2 forBuffer:(struct AudioQueueBuffer *)arg3 {
    r3 = arg3;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0->_audioQueue == arg2) {
            r0 = [r0 delegate];
            r0 = [r0 retain];
            [r0 audioQueueDidOutputForBuffer:r3];
            [r0 release];
    }
    return;
}

@end