@implementation GADOMIDDevice

+(void *)deviceDictionary {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x10, &var_48);
    if (*0x1011dbff8 != -0x1) {
            dispatch_once(0x1011dbff8, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = *qword_1011dbff0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)deviceType {
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffe0 - 0x550;
    r10 = *___stack_chk_guard;
    stack[-1368] = **___stack_chk_guard;
    var_550 = &stack[-1368];
    r0 = uname(&stack[-1320]);
    if (r0 != 0x0) {
            var_520 = [@"n/a" retain];
    }
    else {
            var_538 = [[NSString stringWithCString:&stack[-1320] + 0x400 encoding:0x4] retain];
            if (var_538 != 0x0) {
                    var_520 = [var_538 retain];
            }
            else {
                    var_520 = [@"n/a" retain];
            }
            objc_storeStrong(&var_538, 0x0);
    }
    var_560 = [var_520 autorelease];
    if (**___stack_chk_guard == *var_550) {
            r0 = var_560;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)deviceOs {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    var_20 = [[r0 systemName] retain];
    [r0 release];
    if (var_20 != 0x0) {
            var_8 = [var_20 retain];
    }
    else {
            var_8 = [@"n/a" retain];
    }
    objc_storeStrong(&var_20, 0x0);
    r0 = [var_8 autorelease];
    return r0;
}

+(void *)deviceOsVersion {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    var_20 = [[r0 systemVersion] retain];
    [r0 release];
    if (var_20 != 0x0) {
            var_8 = [var_20 retain];
    }
    else {
            var_8 = [@"n/a" retain];
    }
    objc_storeStrong(&var_20, 0x0);
    r0 = [var_8 autorelease];
    return r0;
}

+(void *)toJSON {
    var_20 = [[[GADOMIDDevice deviceDictionary] retain] retain];
    objc_storeStrong(&var_18, 0x0);
    r0 = [var_20 autorelease];
    return r0;
}

@end