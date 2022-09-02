@implementation GADBackgroundTaskPinger

-(void *)initWithURL:(void *)arg2 eventContext:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r22->_backgroundTaskIdentifier = **_UIBackgroundTaskInvalid;
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_URL));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_context, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)ping {
    r31 = r31 - 0xc0;
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_URL));
    if (*(r19 + r25) != 0x0) {
            r20 = [[UIApplication sharedApplication] retain];
            r21 = [r19 retain];
            var_58 = r21;
            r21->_backgroundTaskIdentifier = [r20 beginBackgroundTaskWithName:@"com.google.backgroundPing" expirationHandler:&var_78];
            [r20 release];
            objc_initWeak(&stack[-144], r21);
            [[GADPinger sharedInstance] retain];
            [*__dispatch_main_q retain];
            objc_copyWeak(&var_A8 + 0x20, &stack[-144]);
            [r22 pingURL:r23 context:r21 queue:r24 completionBlock:&var_A8];
            [*__dispatch_main_q release];
            [r22 release];
            r0 = *(r19 + r25);
            *(r19 + r25) = 0x0;
            [r0 release];
            objc_destroyWeak(&var_A8 + 0x20);
            objc_destroyWeak(&stack[-144]);
            [var_58 release];
    }
    return;
}

-(void)endBackgroundTask {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundTaskIdentifier));
    if (*(r19 + r21) != **_UIBackgroundTaskInvalid) {
            r22 = **_UIBackgroundTaskInvalid;
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r0 endBackgroundTask:*(r19 + r21)];
            [r0 release];
            *(r19 + r21) = r22;
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_URL, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end