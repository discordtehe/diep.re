@implementation TR_DDLogMessage

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [TR_DDLogMessage new];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_message));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_level));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_flag));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_file));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_function));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_line));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_tag));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_options));
    *(r20 + r8) = *(self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_threadID));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_threadName));
    objc_storeStrong(r20 + r8, *(self + r8));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_queueLabel));
    objc_storeStrong(r20 + r8, *(self + r8));
    r0 = r20;
    return r0;
}

-(void *)message {
    r0 = self->_message;
    return r0;
}

-(unsigned long long)level {
    r0 = self->_level;
    return r0;
}

-(unsigned long long)flag {
    r0 = self->_flag;
    return r0;
}

-(long long)context {
    r0 = self->_context;
    return r0;
}

-(void *)file {
    r0 = self->_file;
    return r0;
}

-(void *)initWithMessage:(void *)arg2 level:(unsigned long long)arg3 flag:(unsigned long long)arg4 context:(long long)arg5 file:(void *)arg6 function:(void *)arg7 line:(unsigned long long)arg8 tag:(void *)arg9 options:(long long)arg10 timestamp:(void *)arg11 {
    var_16 = arg10;
    var_0 = arg8;
    r31 = r31 - 0xb0;
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
    r26 = arg5;
    r27 = arg4;
    r22 = arg3;
    r25 = arg9;
    r28 = [arg2 retain];
    r20 = [arg6 retain];
    r21 = [arg7 retain];
    r19 = [r25 retain];
    r24 = [arg11 retain];
    r0 = [[&var_70 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            var_88 = r19;
            r19 = var_16;
            var_90 = r28;
            r0 = [r28 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_message));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r23->_level = r22;
            r23->_flag = r27;
            r23->_context = r26;
            var_80 = r20;
            if ((r19 & 0x1) == 0x0) {
                    r22 = r20;
                    r20 = 0x0;
            }
            else {
                    r22 = [r20 copy];
                    r20 = 0x1;
            }
            r27 = (int64_t *)&r23->_file;
            objc_storeStrong(r27, r22);
            if (r20 != 0x0) {
                    [r22 release];
            }
            var_98 = r21;
            if ((r19 & 0x2) == 0x0) {
                    r20 = 0x0;
                    r22 = r21;
            }
            else {
                    r22 = [r21 copy];
                    r20 = 0x1;
            }
            r21 = var_0;
            objc_storeStrong((int64_t *)&r23->_function, r22);
            if (r20 != 0x0) {
                    [r22 release];
            }
            r23->_line = r21;
            objc_storeStrong((int64_t *)&r23->_tag, r25);
            r23->_options = r19;
            if (r24 != 0x0) {
                    r19 = 0x0;
                    r22 = r24;
            }
            else {
                    r22 = [NSDate new];
                    r19 = 0x1;
            }
            objc_storeStrong((int64_t *)&r23->_timestamp, r22);
            if (r19 != 0x0) {
                    [r22 release];
            }
            if (**_kCFCoreFoundationVersionNumber < *0x100bdfae0) {
                    r22 = [NSString alloc];
                    r0 = pthread_self();
                    pthread_mach_thread_np(r0);
                    r0 = r22;
            }
            else {
                    pthread_threadid_np(0x0, &var_78);
                    r0 = [NSString alloc];
            }
            r0 = [r0 initWithFormat:r2];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_threadID));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [NSThread currentThread];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 name];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_threadName));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = *r27;
            r0 = [r0 lastPathComponent];
            r29 = r29;
            r0 = [r0 retain];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
            r8 = *(r23 + r19);
            *(r23 + r19) = r0;
            [r8 release];
            r8 = [*(r23 + r19) rangeOfString:@"." options:0x4];
            if (r8 != 0x7fffffffffffffff) {
                    r0 = *(r23 + r19);
                    r0 = [r0 substringToIndex:r8];
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(r23 + r19);
                    *(r23 + r19) = r0;
                    [r8 release];
            }
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            [r0 floatValue];
            [r20 release];
            [r19 release];
            if (s8 < 0x401c000000000000) {
                    r0 = [UIDevice currentDevice];
                    r0 = [r0 retain];
                    r0 = [r0 systemVersion];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 floatValue];
                    asm { fcvt       d8, s0 };
                    [r20 release];
                    [r19 release];
                    r21 = var_98;
                    r28 = var_90;
                    if (d8 < *0x100bdfae8) {
                            objc_storeStrong((int64_t *)&r23->_queueLabel, @"");
                    }
                    else {
                            r19 = [dispatch_get_current_queue() retain];
                            [NSString alloc];
                            dispatch_queue_get_label(r19);
                            r0 = [r20 initWithFormat:r2];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queueLabel));
                            r8 = *(r23 + r9);
                            *(r23 + r9) = r0;
                            [r8 release];
                            [r19 release];
                    }
            }
            else {
                    [NSString alloc];
                    dispatch_queue_get_label(0x0);
                    r0 = [r19 initWithFormat:r2];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_queueLabel));
                    r8 = *(r23 + r9);
                    *(r23 + r9) = r0;
                    [r8 release];
                    r21 = var_98;
                    r28 = var_90;
            }
            r20 = var_80;
            r19 = var_88;
    }
    [r24 release];
    [r19 release];
    [r21 release];
    [r20 release];
    [r28 release];
    r0 = r23;
    return r0;
}

-(void *)fileName {
    r0 = self->_fileName;
    return r0;
}

-(void *)function {
    r0 = self->_function;
    return r0;
}

-(unsigned long long)line {
    r0 = self->_line;
    return r0;
}

-(void *)tag {
    r0 = self->_tag;
    return r0;
}

-(long long)options {
    r0 = self->_options;
    return r0;
}

-(void *)timestamp {
    r0 = self->_timestamp;
    return r0;
}

-(void *)threadID {
    r0 = self->_threadID;
    return r0;
}

-(void *)threadName {
    r0 = self->_threadName;
    return r0;
}

-(void *)queueLabel {
    r0 = self->_queueLabel;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queueLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_threadName, 0x0);
    objc_storeStrong((int64_t *)&self->_threadID, 0x0);
    objc_storeStrong((int64_t *)&self->_timestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_tag, 0x0);
    objc_storeStrong((int64_t *)&self->_function, 0x0);
    objc_storeStrong((int64_t *)&self->_fileName, 0x0);
    objc_storeStrong((int64_t *)&self->_file, 0x0);
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    return;
}

@end