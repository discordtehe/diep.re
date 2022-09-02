@implementation ADJTimerCycle

+(void *)timerWithBlock:(void *)arg2 queue:(void *)arg3 startTime:(double)arg4 intervalTime:(double)arg5 name:(void *)arg6 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[ADJTimerCycle alloc] initBlock:r21 queue:r20 startTime:r19 intervalTime:arg5 name:arg6];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)resume {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self source];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [r19 suspended];
            r21 = [[r19 logger] retain];
            r0 = [r19 name];
            r29 = r29;
            r22 = [r0 retain];
            if ((r23 & 0x1) != 0x0) {
                    [r21 verbose:r2];
                    [r22 release];
                    [r21 release];
                    r0 = [r19 source];
                    r0 = [r0 retain];
                    dispatch_resume(r0);
                    [r20 release];
                    [r19 setSuspended:0x0];
            }
            else {
                    [r21 verbose:r2];
                    [r22 release];
                    [r21 release];
            }
    }
    return;
}

-(void *)initBlock:(void *)arg2 queue:(void *)arg3 startTime:(double)arg4 intervalTime:(double)arg5 name:(void *)arg6 {
    r31 = r31 - 0xe0;
    var_70 = d11;
    stack[-120] = d10;
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
    v8 = v1;
    v9 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_80 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r23 = dispatch_source_create(*__dispatch_source_type_timer, 0x0, 0x0, r20);
            [r22 setSource:r23];
            [r23 release];
            r24 = [[ADJAdjustFactory logger] retain];
            [r22 setLogger:r24];
            [r24 release];
            r2 = r21;
            [r22 setName:r2];
            r1 = @selector(source);
            r0 = objc_msgSend(r22, r1);
            r25 = [r0 retain];
            asm { fcvtzs     x1, d0 };
            r1 = dispatch_walltime(0x0, r1);
            asm { fcvtzu     x2, d0 };
            dispatch_source_set_timer(r25, r1, r2, 0x3b9aca00);
            [r25 release];
            r25 = [objc_msgSend(r22, r24) retain];
            [r22 retain];
            var_88 = [r19 retain];
            dispatch_source_set_event_handler(r25, &var_B0);
            [r25 release];
            [r24 setSuspended:0x1];
            r25 = [[ADJUtil secondsNumberFormat:0x1] retain];
            r26 = [[ADJUtil secondsNumberFormat:0x1] retain];
            r23 = [objc_msgSend(r24, r23) retain];
            r27 = [[r24 name] retain];
            [r23 verbose:@"%@ configured to fire after %@ seconds of starting and cycles every %@ seconds"];
            [r27 release];
            [r23 release];
            r23 = [r24 retain];
            [r26 release];
            [r25 release];
            [var_88 release];
            [r24 release];
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;
}

-(void)suspend {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self source];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [r19 suspended];
            r21 = [[r19 logger] retain];
            r0 = [r19 name];
            r29 = r29;
            r22 = [r0 retain];
            if (r23 != 0x0) {
                    [r21 verbose:r2];
                    [r22 release];
                    [r21 release];
            }
            else {
                    [r21 verbose:r2];
                    [r22 release];
                    [r21 release];
                    r0 = [r19 source];
                    r0 = [r0 retain];
                    dispatch_suspend(r0);
                    [r20 release];
                    [r19 setSuspended:0x1];
            }
    }
    return;
}

-(void)cancel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self source];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 resume];
            r0 = [r19 source];
            r0 = [r0 retain];
            dispatch_source_cancel(r0);
            [r20 release];
    }
    [r19 setSource:0x0];
    return;
}

-(void)dealloc {
    r20 = [[self logger] retain];
    r21 = [[self name] retain];
    [r20 verbose:@"%@ dealloc"];
    [r21 release];
    [r20 release];
    [[&var_30 super] dealloc];
    return;
}

-(bool)suspended {
    r0 = *(int8_t *)(int64_t *)&self->_suspended;
    return r0;
}

-(void *)source {
    r0 = self->_source;
    return r0;
}

-(void)setSource:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_source, arg2);
    return;
}

-(void)setSuspended:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_suspended = arg2;
    return;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x0);
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_source, 0x0);
    return;
}

@end