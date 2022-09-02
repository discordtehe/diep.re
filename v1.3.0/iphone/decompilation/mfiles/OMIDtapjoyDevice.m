@implementation OMIDtapjoyDevice

+(void *)deviceDictionary {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc268 != -0x1) {
            dispatch_once(0x1011dc268, &var_28);
    }
    r0 = *0x1011dc260;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)deviceType {
    var_20 = r28;
    stack[-40] = r27;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffd0 - 0x510;
    r19 = &stack[-1336];
    r0 = uname(&stack[-1336]);
    if (r0 != 0x0) {
            r19 = @"n/a";
            [r19 retain];
    }
    else {
            r20 = [[NSString stringWithCString:r19 + 0x400 encoding:0x4] retain];
            if (r20 != 0x0) {
                    r19 = [r20 retain];
            }
            else {
                    r19 = @"n/a";
                    [r19 retain];
            }
            [r20 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)toJSON {
    r0 = [OMIDtapjoyDevice deviceDictionary];
    return r0;
}

+(void *)deviceOs {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = [[r0 systemName] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = @"n/a";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)deviceOsVersion {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = [[r0 systemVersion] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = @"n/a";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end