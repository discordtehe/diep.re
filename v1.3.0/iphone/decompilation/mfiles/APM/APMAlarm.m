@implementation APMAlarm

-(void *)initWithDispatchQueue:(void *)arg2 name:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_queue, r22);
            if ([r20 length] != 0x0) {
                    r22 = [r20 copy];
                    r23 = 0x1;
            }
            else {
                    r23 = 0x0;
                    r22 = @"Timer";
            }
            objc_storeStrong((int64_t *)&r21->_name, r22);
            if (r23 != 0x0) {
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)runAfterDelay:(double)arg2 withBlock:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    if (r19 != 0x0) {
            [r21 cancel];
            r0 = [NSDate dateWithTimeIntervalSinceNow:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_scheduledTimestamp));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_name));
            r0 = *(r21 + r26);
            r0 = [r0 stringByAppendingString:@" fired"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r21->_queue;
            r20 = [r0 retain];
            var_68 = r20;
            var_58 = [r19 retain];
            r25 = [r23 retain];
            r0 = [&var_88 retain];
            r23 = r0;
            r24 = dispatch_source_create(*__dispatch_source_type_timer, 0x0, 0x0, r25);
            [r25 release];
            if (r24 != 0x0) {
                    r1 = 0x0;
                    asm { fcvtzs     x1, d0 };
                    dispatch_source_set_timer(r24, dispatch_walltime(0x0, r1), 0xffffffffffffffff, 0x0);
                    dispatch_source_set_event_handler(r24, r23);
                    dispatch_resume(r24);
            }
            [r23 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
            r0 = *(r21 + r8);
            *(r21 + r8) = r24;
            [r0 release];
            r21 = [[*(r21 + r26) stringByAppendingString:@" scheduled to fire in approx. (s)"] retain];
            r22 = [[APMMeasurement monitor] retain];
            r23 = [[NSNumber numberWithDouble:@" scheduled to fire in approx. (s)"] retain];
            [r22 logWithLevel:0x7 messageCode:0x7d2 message:r21 context:r23];
            [r23 release];
            [r22 release];
            [r21 release];
            [var_58 release];
            r0 = var_68;
    }
    else {
            r20 = [[r21->_name stringByAppendingString:@" tried to schedule an empty block"] retain];
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7d0 message:r20];
            r0 = r0;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasActiveTimer {
    r0 = self->_timer;
    if (r0 != 0x0) {
            var_10 = r29;
            stack[-8] = r30;
            r31 = r31 + 0xfffffffffffffff0;
            r0 = dispatch_source_testcancel(r0);
            if (r0 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void)cancel {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_scheduledTimestamp));
    if (*(r19 + r25) != 0x0) {
            r23 = [[APMMeasurement monitor] retain];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_name));
            r0 = *(r19 + r27);
            r0 = [r0 stringByAppendingString:@" canceled"];
            r29 = r29;
            r24 = [r0 retain];
            [r23 logWithLevel:0x7 messageCode:0x7d3 message:r24];
            [r24 release];
            [r23 release];
            if ([r19 hasActiveTimer] != 0x0) {
                    dispatch_source_cancel(r19->_timer);
            }
            else {
                    r22 = [[*(r19 + r27) stringByAppendingString:@" is not active"] retain];
                    r0 = @class(APMMeasurement);
                    r0 = [r0 monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x7d4 message:r22];
                    [r0 release];
                    [r22 release];
            }
            r0 = *(r19 + r25);
            *(r19 + r25) = 0x0;
            [r0 release];
    }
    return;
}

-(void)dealloc {
    [self cancel];
    [[&var_20 super] dealloc];
    return;
}

-(void *)scheduledTimestamp {
    r0 = self->_scheduledTimestamp;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_scheduledTimestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

@end