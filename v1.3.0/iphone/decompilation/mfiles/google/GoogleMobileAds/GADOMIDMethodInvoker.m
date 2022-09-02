@implementation GADOMIDMethodInvoker

+(void)performSelectorAsync:(void *)arg2 target:(void *)arg3 {
    r31 = r31 - 0x90;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = arg2;
    objc_storeStrong(r29 - 0x20, arg3);
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            [0x0 performSelector:var_18];
    }
    else {
            objc_initWeak(r29 - 0x28, 0x0);
            r0 = objc_retainAutoreleaseReturnValue(*__dispatch_main_q);
            r29 = r29;
            var_78 = [r0 retain];
            objc_copyWeak(&var_58 + 0x20, r29 - 0x28);
            dispatch_async(var_78, &var_58);
            [var_78 release];
            objc_destroyWeak(&var_58 + 0x20);
            objc_destroyWeak(r29 - 0x28);
    }
    objc_storeStrong(r29 - 0x20, 0x0);
    return;
}

+(void)performSelectorAsync:(void *)arg2 target:(void *)arg3 argument:(void *)arg4 {
    r31 = r31 - 0xb0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = arg2;
    objc_storeStrong(r29 - 0x20, arg3);
    objc_storeStrong(r29 - 0x28, arg4);
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            [0x0 performSelector:var_18 withObject:0x0];
    }
    else {
            objc_initWeak(r29 - 0x30, 0x0);
            r0 = objc_retainAutoreleaseReturnValue(*__dispatch_main_q);
            r29 = r29;
            var_98 = [r0 retain];
            objc_copyWeak(&var_68 + 0x28, r29 - 0x30);
            [0x0 retain];
            dispatch_async(var_98, &var_68);
            [var_98 release];
            objc_storeStrong(&var_68 + 0x20, 0x0);
            objc_destroyWeak(&var_68 + 0x28);
            objc_destroyWeak(r29 - 0x30);
    }
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    return;
}

+(void)performSelectorSync:(void *)arg2 target:(void *)arg3 argument:(void *)arg4 {
    r31 = r31 - 0xa0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = arg2;
    objc_storeStrong(r29 - 0x20, arg3);
    objc_storeStrong(r29 - 0x28, arg4);
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            [0x0 performSelector:var_18 withObject:0x0];
    }
    else {
            r0 = objc_retainAutoreleaseReturnValue(*__dispatch_main_q);
            r29 = r29;
            var_88 = [r0 retain];
            [0x0 retain];
            [0x0 retain];
            dispatch_sync(var_88, &var_60);
            [var_88 release];
            objc_storeStrong(&var_60 + 0x28, 0x0);
            objc_storeStrong(&var_60 + 0x20, 0x0);
    }
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    return;
}

@end