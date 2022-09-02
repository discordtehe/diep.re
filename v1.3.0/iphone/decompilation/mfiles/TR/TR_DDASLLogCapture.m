@implementation TR_DDASLLogCapture

+(void)initialize {
    return;
}

+(void)start {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ((*(int8_t *)0x1011d6d78 & 0x1) == 0x0) {
            *(int8_t *)0x1011d6d78 = 0x1;
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, &var_38);
            [r20 release];
    }
    return;
}

+(void)stop {
    *(int8_t *)0x1011d6d78 = 0x0;
    return;
}

+(unsigned long long)captureLevel {
    return *0x1011bd138;
}

+(void)setCaptureLevel:(unsigned long long)arg2 {
    *0x1011bd138 = arg2;
    return;
}

+(void)configureAslQuery:(struct __asl_object_s *)arg2 {
    asl_set_query(arg2, "Level", 0x100bdfab0, 0x85);
    asl_set_query(arg2, *0x100e7b898, *0x100e7b8a0, 0x6);
    return;
}

+(void)captureAslLogs {
    objc_autoreleasePoolPush();
    gettimeofday(&saved_fp - 0x40, 0x0);
    notify_register_dispatch("com.apple.system.logger.message", &var_64, [dispatch_get_global_queue(0x2, 0x0) retain], &var_A0);
    [r20 release];
    _Block_object_dispose(&var_60, 0x8);
    objc_autoreleasePoolPop(r19);
    return;
}

+(void)aslMessageReceived:(struct __asl_object_s *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = arg2;
    r21 = asl_get(r22, "Message");
    if (r21 == 0x0) goto .l1;

loc_1003f008c:
    r0 = asl_get(r22, "Level");
    if (r0 == 0x0) goto loc_1003f00d8;

loc_1003f00a0:
    r0 = atoi(r0);
    if (r0 > 0x5) goto loc_1003f00e4;

loc_1003f00ac:
    r19 = 0x0;
    r20 = 0x1;
    goto *0x1003f0290[sign_extend_64(*(int32_t *)(0x1003f0290 + r0 * 0x4)) + 0x1003f0290];

loc_1003f0104:
    if ((*0x1011bd138 & r20) != 0x0) {
            r2 = r21;
            r0 = [NSString stringWithUTF8String:r2];
            r29 = r29;
            r21 = [r0 retain];
            r23 = asl_get(r22, "Time");
            r22 = asl_get(r22, "TimeNanoSec");
            if (r23 != 0x0) {
                    strtod(r23, 0x0);
                    if (r22 != 0x0) {
                            strtod(r22, 0x0);
                    }
                    else {
                            d0 = 0x0;
                    }
            }
            else {
                    [NSDate timeIntervalSinceReferenceDate];
                    d8 = d0 + *0x100bdfaa8;
                    if (r22 == 0x0) {
                            d0 = 0x0;
                    }
                    else {
                            strtod(r22, 0x0);
                    }
            }
            r24 = 0x1011bd000;
            asm { fdiv       d0, d0, d1 };
            r22 = [[NSDate dateWithTimeIntervalSince1970:r2] retain];
            r20 = [[TR_DDLogMessage alloc] initWithMessage:r21 level:*(r24 + 0x138) flag:r20 context:0x0 file:@"DDASLLogCapture" function:0x0 line:0x0 tag:0x0 options:0x0 timestamp:r22];
            [TR_DDLog log:r19 message:r20];
            [r20 release];
            [r22 release];
            [r21 release];
    }
    return;

.l1:
    return;

loc_1003f00cc:
    r19 = 0x1;
    r20 = 0x2;
    goto loc_1003f0104;

loc_1003f00f0:
    r19 = 0x1;
    r20 = 0x4;
    goto loc_1003f0104;

loc_1003f00fc:
    r19 = 0x1;
    r20 = 0x8;
    goto loc_1003f0104;

loc_1003f00e4:
    r19 = 0x1;
    r20 = 0x10;
    goto loc_1003f0104;

loc_1003f00d8:
    r19 = 0x0;
    r20 = 0x1;
    goto loc_1003f0104;
}

@end