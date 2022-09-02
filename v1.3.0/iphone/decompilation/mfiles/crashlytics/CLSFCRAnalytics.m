@implementation CLSFCRAnalytics

+(void)logCrashWithTimeStamp:(double)arg2 firebaseCrashlyticsEnabled:(bool)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    v8 = v0;
    r19 = self;
    if ((sub_10011a9f4() & 0x1) != 0x0 || r20 != 0x0) {
            r0 = [Fabric sharedSDK];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 debug];
            [r0 release];
            if (r21 != 0x0) {
                    NSLog(@"[Crashlytics:Crash:Reports:Event] Sending event.");
            }
            r19 = [[r19 buildLogParamsFromCrash:r2] retain];
            if (*qword_1011d1e20 != -0x1) {
                    dispatch_once(0x1011d1e20, 0x100e6b778);
            }
            [objc_retainAutorelease(*0x1011d1e18) logInternalEventWithOrigin:@"clx" name:@"_ae" parameters:r19];
            [r19 release];
    }
    return;
}

+(void)registerAnalyticsEventListener:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*0x1011d1e20 != -0x1) {
            dispatch_once(0x1011d1e20, 0x100e6b778);
    }
    objc_retainAutorelease(*0x1011d1e18);
    NSSelectorFromString(@"addLogEventListener:");
    if ([r20 respondsToSelector:r2] != 0x0) {
            if (*0x1011d1e20 != -0x1) {
                    dispatch_once(0x1011d1e20, 0x100e6b778);
            }
            [[[objc_retainAutorelease(*0x1011d1e18) addLogEventListener:r19] retain] release];
            r0 = [Fabric sharedSDK];
            r0 = [r0 retain];
            r21 = [r0 debug];
            [r0 release];
            if (r21 != 0x0) {
                    NSLog(@"[Crashlytics:Crash:Reports:Event] Registered Firebase Analytics event listener");
            }
    }
    [r19 release];
    return;
}

+(void *)buildLogParamsFromCrash:(double)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = @class(NSNumber);
    r19 = [[r19 numberWithLongLong:llrint(self)] retain];
    r21 = [@(0x1) retain];
    r22 = [@(0x1) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_58 count:0x3];
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end