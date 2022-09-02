@implementation FBAdTimer

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self timer];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)invalidate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self timer];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            dispatch_source_cancel(r20);
            [r19 setTimer:0x0];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_userInfo));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_innerBlock));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_block));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_condition));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    [r20 release];
    return;
}

-(void)dealloc {
    [self invalidate];
    [[&var_20 super] dealloc];
    return;
}

-(void *)scheduledTimerWithTimeInterval:(double)arg2 repeatsUntilCondition:(void *)arg3 queue:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0xc0;
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
    [arg2 retain];
    r25 = [arg3 retain];
    r0 = [arg4 retain];
    r20 = r0;
    r21 = [r0 copy];
    objc_initWeak(&stack[-120], r21);
    objc_initWeak(&stack[-128], r19);
    r22 = &var_A8 + 0x28;
    r24 = &var_A8 + 0x30;
    objc_copyWeak(r22, &stack[-128]);
    objc_copyWeak(r24, &stack[-120]);
    r0 = [r23 retain];
    r23 = r0;
    var_88 = r0;
    r0 = objc_retainBlock(&var_A8);
    r26 = r0;
    r0 = objc_retainBlock(r21);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_innerBlock));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    if (r25 == 0x0) {
            r27 = *__dispatch_main_q;
            [r27 retain];
            [r25 release];
            r25 = r27;
    }
    objc_storeStrong((int64_t *)&r19->_queue, r25);
    r25 = [r25 retain];
    r26 = [r26 retain];
    r27 = dispatch_source_create(*__dispatch_source_type_timer, 0x0, 0x0, r25);
    [r25 release];
    if (r27 != 0x0) {
            r2 = 0x0;
            r1 = 0x0;
            asm { fcvtzs     x1, d9 };
            r1 = dispatch_time(0x0, r1);
            asm { fcvtzu     x2, d9 };
            dispatch_source_set_timer(r27, r1, r2, 0x5f5e100);
            dispatch_source_set_event_handler(r27, r26);
            dispatch_resume(r27);
    }
    [r26 release];
    r27 = [[r27 autorelease] retain];
    [r19 setTimer:r27];
    [r27 release];
    r0 = objc_retainBlock(r26);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_block));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r19->_timeInterval = d8;
    [var_88 release];
    objc_destroyWeak(r24);
    objc_destroyWeak(r22);
    objc_destroyWeak(&stack[-128]);
    objc_destroyWeak(&stack[-120]);
    [r26 release];
    [r21 release];
    [r20 release];
    [r25 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_condition, 0x0);
    objc_storeStrong((int64_t *)&self->_innerBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

-(double)timeInterval {
    r0 = self;
    return r0;
}

-(void)fire {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isValid] != 0x0) {
            r0 = [r19 block];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = r19->_queue;
                    if (r0 != 0x0) {
                            r20 = [r0 retain];
                            r22 = 0x0;
                            r21 = 0x1;
                    }
                    else {
                            r20 = *__dispatch_main_q;
                            [r20 retain];
                            r21 = 0x0;
                            r22 = 0x1;
                    }
                    dispatch_async(r20, &var_48);
                    if (r22 != 0x0) {
                            [*__dispatch_main_q release];
                    }
                    if (r21 != 0x0) {
                            [r20 release];
                    }
            }
    }
    return;
}

-(void)setTimeInterval:(double)arg2 {
    self->_timeInterval = d0;
    return;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void *)userInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userInfo)), 0x0);
    return r0;
}

-(void)setUserInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTimer:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)timer {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timer)), 0x1);
    return r0;
}

-(void *)block {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_block)), 0x0);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)innerBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_innerBlock)), 0x0);
    return r0;
}

-(void)setInnerBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)condition {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_condition)), 0x0);
    return r0;
}

-(bool)repeats {
    r0 = *(int8_t *)(int64_t *)&self->_repeats;
    return r0;
}

-(void)setCondition:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setRepeats:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_repeats = arg2;
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdTimer");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)scheduledTimerWithTimeInterval:(double)arg2 repeats:(bool)arg3 block:(void *)arg4 {
    r21 = [arg3 retain];
    r19 = [[self scheduledTimerWithTimeInterval:arg2 repeats:*__dispatch_main_q queue:r21 block:r5] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)scheduledTimerWithTimeInterval:(double)arg2 repeatsUntilCondition:(void *)arg3 queue:(void *)arg4 block:(void *)arg5 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [self new];
    r23 = [[r0 scheduledTimerWithTimeInterval:r22 repeatsUntilCondition:r20 queue:r19 block:arg5] retain];
    [r19 release];
    [r20 release];
    [r22 release];
    [r0 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)scheduledTimerWithTimeInterval:(double)arg2 repeats:(bool)arg3 queue:(void *)arg4 block:(void *)arg5 {
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [self new];
    r21 = r0;
    r0 = [r0 scheduledTimerWithTimeInterval:&var_68 repeatsUntilCondition:r22 queue:r19 block:arg5];
    r20 = [r0 retain];
    [r19 release];
    [r22 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

@end