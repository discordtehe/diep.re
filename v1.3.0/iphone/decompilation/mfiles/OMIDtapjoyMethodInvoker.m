@implementation OMIDtapjoyMethodInvoker

+(void)performSelectorAsync:(void *)arg2 target:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = [arg3 retain];
    if ([NSThread isMainThread] != 0x0) {
            [r20 performSelector:r2];
            [r20 release];
    }
    else {
            objc_initWeak(r29 - 0x28, r20);
            [r20 release];
            objc_copyWeak(&var_58 + 0x20, r29 - 0x28);
            dispatch_async(*__dispatch_main_q, &var_58);
            objc_destroyWeak(&var_58 + 0x20);
            objc_destroyWeak(r29 - 0x28);
    }
    return;
}

+(void)performSelectorAsync:(void *)arg2 target:(void *)arg3 argument:(void *)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    if ([NSThread isMainThread] != 0x0) {
            [r21 performSelector:r2 withObject:r3];
            [r21 release];
    }
    else {
            objc_initWeak(r29 - 0x28, r21);
            [r21 release];
            objc_copyWeak(&var_60 + 0x28, r29 - 0x28);
            var_40 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_60);
            [var_40 release];
            objc_destroyWeak(&var_60 + 0x28);
            objc_destroyWeak(r29 - 0x28);
    }
    [r19 release];
    return;
}

+(void)performSelectorSync:(void *)arg2 target:(void *)arg3 argument:(void *)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if ([NSThread isMainThread] != 0x0) {
            [r19 performSelector:r2 withObject:r3];
    }
    else {
            var_38 = [r19 retain];
            var_30 = [r20 retain];
            dispatch_sync(*__dispatch_main_q, &var_58);
            [var_30 release];
            [var_38 release];
    }
    [r20 release];
    [r19 release];
    return;
}

@end