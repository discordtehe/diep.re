@implementation ADCMuteSwitchDetectorJob

-(void *)initWithSoundId:(unsigned int)arg2 andDelay:(float)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setSoundId:r21];
            [r20 setCompletion:r19];
            objc_initWeak(&stack[-104], r20);
            r21 = &var_80 + 0x20;
            asm { fcvtzs     x1, s0 };
            dispatch_time(0x0, r1);
            [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
            objc_copyWeak(r21, &stack[-104]);
            dispatch_after(r22, r23, &var_80);
            [r23 release];
            objc_destroyWeak(r21);
            objc_destroyWeak(&stack[-104]);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)runCheck {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [NSDate timeIntervalSinceReferenceDate];
    [self setStartTimeInterval:r2];
    r20 = sub_1009f77b0(0x9, 0x0, 0x0);
    r0 = [self soundId];
    if (r20 != 0x0) {
            AudioServicesPlaySystemSoundWithCompletion(r0, 0x100e6ff10);
    }
    else {
            AudioServicesPlaySystemSound(r0);
    }
    return;
}

-(void)cancel {
    [self setCancelled:0x1];
    return;
}

-(bool)cancelled {
    r0 = *(int8_t *)(int64_t *)&self->_cancelled & 0x1;
    return r0;
}

-(void)completedWithTimeIntervalSinceReferenceDate:(double)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self startTimeInterval];
    r0 = [r19 completion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    if (r21 != 0x0) {
            if (d8 - d9 < 0x3fc0000000000000) {
                    if (CPU_FLAGS & S) {
                            r21 = 0x1;
                    }
            }
            r20 = [[r19 completion] retain];
            (*(r20 + 0x10))(r20, [r19 cancelled], r21);
            [r20 release];
            [r19 setCompletion:0x0];
    }
    return;
}

-(void)setCancelled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_cancelled = arg2;
    return;
}

-(unsigned int)soundId {
    r0 = *(int32_t *)(int64_t *)&self->_soundId;
    return r0;
}

-(void)setSoundId:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->_soundId = arg2;
    return;
}

-(double)startTimeInterval {
    r0 = self;
    return r0;
}

-(void *)completion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completion)), 0x0);
    return r0;
}

-(void)setStartTimeInterval:(double)arg2 {
    self->_startTimeInterval = d0;
    return;
}

-(void)setCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completion, 0x0);
    return;
}

@end