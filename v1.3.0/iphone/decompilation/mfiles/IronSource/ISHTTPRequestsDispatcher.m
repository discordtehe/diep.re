@implementation ISHTTPRequestsDispatcher

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [r19 createSession];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_httpSession));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)sendHTTPRequest:(void *)arg2 isbackground:(bool)arg3 retries:(long long)arg4 completion:(void *)arg5 {
    r31 = r31 - 0xf0;
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
    r21 = arg4;
    r20 = arg3;
    r19 = self;
    r23 = [arg2 retain];
    r22 = [arg5 retain];
    if (([r19 isvValidRequestScheme:r23] & 0x1) == 0x0) {
            r25 = [[NSDictionary dictionaryWithObjects:r29 - 0x50 forKeys:r29 - 0x58 count:0x1] retain];
            r0 = [NSError errorWithDomain:@"com.ironsrc.erros" code:0x0 userInfo:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            (*(r22 + 0x10))(r22, 0x0, 0x0, r24);
            [r24 release];
    }
    objc_initWeak(r29 - 0x60, r19);
    if (r20 != 0x0 && [r19 backgroundTaskIdentifier] == **_UIBackgroundTaskInvalid) {
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            [r19 setBackgroundTaskIdentifier:[r0 beginBackgroundTaskWithExpirationHandler:&var_88]];
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    [[r19 httpSession] retain];
    [r23 retain];
    objc_copyWeak(&var_D8 + 0x38, r29 - 0x60);
    r20 = [r22 retain];
    r19 = [[r25 dataTaskWithRequest:r23 completionHandler:&var_D8] retain];
    [r25 release];
    [r19 resume];
    [r19 release];
    [r20 release];
    objc_destroyWeak(&var_D8 + 0x38);
    [r23 release];
    objc_destroyWeak(r29 - 0x60);
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)cancelRequest:(void *)arg2 {
    r0 = [arg2 retain];
    var_28 = r0;
    r20 = [r0 retain];
    r0 = objc_retainBlock(&var_48);
    r21 = r0;
    r0 = [self httpSession];
    r0 = [r0 retain];
    [r0 getTasksWithCompletionHandler:r21];
    [r0 release];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)cancelRequests {
    r20 = objc_retainBlock(0x100e8d7e0);
    r0 = [self httpSession];
    r0 = [r0 retain];
    [r0 getTasksWithCompletionHandler:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void *)pendingRequests {
    r0 = [self httpSession];
    r0 = [r0 retain];
    [r0 getAllTasksWithCompletionHandler:&var_38];
    [r0 release];
    [0x0 release];
    return 0x0;
}

-(void *)createSession {
    r0 = [NSURLSession sharedSession];
    return r0;
}

-(void *)httpSession {
    r0 = self->_httpSession;
    return r0;
}

-(bool)isvValidRequestScheme:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 URL];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 scheme];
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] == 0x0) {
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setHttpSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_httpSession, arg2);
    return;
}

-(unsigned long long)backgroundTaskIdentifier {
    r0 = self->_backgroundTaskIdentifier;
    return r0;
}

-(void)setBackgroundTaskIdentifier:(unsigned long long)arg2 {
    self->_backgroundTaskIdentifier = arg2;
    return;
}

-(void *)failedRequestsKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_failedRequestsKey)), 0x1);
    return r0;
}

-(void)setFailedRequestsKey:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(unsigned long long)limitEntries {
    r0 = self->_limitEntries;
    return r0;
}

-(void)setLimitEntries:(unsigned long long)arg2 {
    self->_limitEntries = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_failedRequestsKey, 0x0);
    objc_storeStrong((int64_t *)&self->_httpSession, 0x0);
    return;
}

@end