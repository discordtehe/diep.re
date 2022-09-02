@implementation USRVInitializeStateReset

-(void *)execute {
    r31 = r31 - 0x190;
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
    [USRVCacheQueue start];
    [USRVWebRequestQueue start];
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r20 setWebAppLoaded:0x0];
            [r20 setWebAppInitialized:0x0];
            r0 = [NSCondition alloc];
            r0 = [r0 init];
            r21 = r0;
            [r0 lock];
            r0 = [r20 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    var_E8 = [r20 retain];
                    var_E0 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_108);
                    [var_E0 release];
                    [var_E8 release];
            }
            r22 = [[NSDate alloc] initWithTimeIntervalSinceNow:0x0];
            r2 = r22;
            r23 = [r21 waitUntilDate:r2];
            [r22 release];
            [r21 unlock];
            if ((r23 & 0x1) == 0x0 && [USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: dispatch async did not run through while resetting SDK", @selector(getLogLevel), r2, r3);
            }
            [USRVWebViewApp setCurrentApp:0x0];
            [r21 release];
    }
    var_158 = r20;
    var_138 = q0;
    r0 = [r19 configuration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getModuleConfigurationList];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    r24 = objc_msgSend(r22, r1);
    if (r24 != 0x0) {
            r20 = *var_138;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_138 != r20) {
                                    objc_enumerationMutation(r22);
                            }
                            r0 = [r19 configuration];
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = [r0 getModuleConfiguration:r2];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r28 release];
                            if (r27 != 0x0) {
                                    r0 = [r19 configuration];
                                    r29 = r29;
                                    [r0 retain];
                                    [r27 resetState:r2];
                                    [r28 release];
                            }
                            [r27 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r24 = objc_msgSend(r22, var_150);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    r22 = [USRVInitializeStateInitModules alloc];
    r21 = [[r19 configuration] retain];
    r19 = [r22 initWithConfiguration:r21];
    [r21 release];
    [var_158 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end