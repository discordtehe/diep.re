@implementation GADOperation

-(void *)initWithBlock:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = objc_retainBlock(r19);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_operationBlock));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = dispatch_group_create();
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_completionGroup));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            dispatch_group_enter(*(r20 + r21));
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)start {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x1a0;
    r20 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            objc_initWeak(r29 - 0x68, r20);
            r22 = [r20->_completionGroup retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_operationBlock));
            r19 = objc_retainBlock(*(r20 + r23));
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_completionBlock));
            r21 = objc_retainBlock(*(r20 + r24));
            d8 = r20->_timeout;
            r0 = *(r20 + r23);
            *(r20 + r23) = 0x0;
            [r0 release];
            r0 = *(r20 + r24);
            *(r20 + r24) = 0x0;
            [r0 release];
            r20 = [[NSString alloc] initWithFormat:@"Timed out after %f seconds."];
            r23 = [sub_1008098f8(0x16, r20) retain];
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r29 = r29;
            r25 = [r0 retain];
            r21 = [r21 retain];
            var_110 = r21;
            r23 = [r23 retain];
            var_108 = r23;
            dispatch_group_notify(r22, r25, &var_130);
            [r25 release];
            r24 = &var_1A0 + 0x40;
            objc_copyWeak(r24, r29 - 0x68);
            r22 = [r22 retain];
            var_180 = r22;
            r1 = &var_1A0;
            (*(r19 + 0x10))(r19, r1);
            if (d8 > 0x0) {
                    asm { fcvtzs     x1, d0 };
                    dispatch_time(0x0, r1);
                    [r25 retain];
                    objc_copyWeak(&var_1E8 + 0x40, r29 - 0x68);
                    var_1C8 = [r23 retain];
                    var_1C0 = [r22 retain];
                    dispatch_after(r26, r25, &var_1E8);
                    [r25 release];
                    [var_1C0 release];
                    [var_1C8 release];
                    objc_destroyWeak(&var_1E8 + 0x40);
            }
            [var_180 release];
            objc_destroyWeak(r24);
            _Block_object_dispose(&var_158, 0x8);
            [var_108 release];
            [var_110 release];
            [r23 release];
            [r20 release];
            _Block_object_dispose(r29 - 0xe8, 0x8);
            _Block_object_dispose(r29 - 0xc8, 0x8);
            [0x0 release];
            _Block_object_dispose(r29 - 0x98, 0x8);
            [0x0 release];
            [r21 release];
            [r19 release];
            [r22 release];
            objc_destroyWeak(r29 - 0x68);
    }
    return;
}

-(void)waitForCompletion {
    [self start];
    dispatch_group_wait(self->_completionGroup, 0xffffffffffffffff);
    return;
}

-(void *)resultAfterWaitingWithError:(void * *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [self waitForCompletion];
    if (r20 != 0x0) {
            r0 = r19->_error;
            if (r0 != 0x0) {
                    *r20 = objc_retainAutorelease(r0);
            }
    }
    r0 = r19->_result;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)completionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionBlock)), 0x0);
    return r0;
}

-(void)setCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)timeout {
    r0 = self;
    return r0;
}

-(void)setTimeout:(double)arg2 {
    self->_timeout = d0;
    return;
}

-(bool)timedOut {
    r0 = *(int8_t *)(int64_t *)&self->_timedOut;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_result, 0x0);
    objc_storeStrong((int64_t *)&self->_completionGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_operationBlock, 0x0);
    return;
}

@end