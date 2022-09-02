@implementation USRVWebViewMethodInvokeOperation

-(void *)initWithMethod:(void *)arg2 webViewClass:(void *)arg3 parameters:(void *)arg4 waitTime:(int)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            [r23 setWebViewClass:r20];
            [r23 setWebViewMethod:r19];
            [r23 setWaitTime:r22];
            [r23 setParameters:r21];
            [r23 setSuccess:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)main {
    r31 = r31 - 0x90;
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
    r20 = self;
    r19 = [NSStringFromClass([self class]) retain];
    r0 = [NSCondition alloc];
    r0 = [r0 init];
    r8 = *0x1011d1b00;
    *0x1011d1b00 = r0;
    [r8 release];
    [*0x1011d1b00 lock];
    r23 = [[USRVWebViewApp getCurrentApp] retain];
    r24 = [[r20 webViewMethod] retain];
    r25 = [[r20 webViewClass] retain];
    r26 = [[r20 parameters] retain];
    r2 = r24;
    r3 = r25;
    r4 = r19;
    [r23 invokeMethod:r2 className:r3 receiverClass:r4 callback:@"callback:" params:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    if ([r20 waitTime] >= 0x1) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Locking", r1, r2, r3);
            }
            [NSDate alloc];
            [r20 waitTime];
            asm { scvtf      d0, w0 };
            r21 = [r21 initWithTimeIntervalSinceNow:r2];
            r2 = [r25 waitUntilDate:r21];
            [r20 setSuccess:r2];
            [r21 release];
            [*(r27 + 0xb00) unlock];
            if (([r20 success] & 0x1) == 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x1) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads callback timed out! %@ %@", r1, r2, r3, r4, @"callback:");
                    }
            }
    }
    [r19 release];
    return;
}

+(void)callback:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d1b00 != 0x0) {
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unlocking", @selector(getLogLevel), r2, r3);
            }
            [*0x1011d1b00 lock];
            [*0x1011d1b00 signal];
            [*0x1011d1b00 unlock];
    }
    return;
}

-(void *)webViewMethod {
    r0 = self->_webViewMethod;
    return r0;
}

-(void)setWebViewMethod:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewMethod, arg2);
    return;
}

-(void *)webViewClass {
    r0 = self->_webViewClass;
    return r0;
}

-(void)setWebViewClass:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewClass, arg2);
    return;
}

-(void *)parameters {
    r0 = self->_parameters;
    return r0;
}

-(void)setParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parameters, arg2);
    return;
}

-(int)waitTime {
    r0 = *(int32_t *)(int64_t *)&self->_waitTime;
    return r0;
}

-(void)setWaitTime:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_waitTime = arg2;
    return;
}

-(bool)success {
    r0 = *(int8_t *)(int64_t *)&self->_success;
    return r0;
}

-(void)setSuccess:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_success = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_parameters, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewClass, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewMethod, 0x0);
    return;
}

@end