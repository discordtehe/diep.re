@implementation GADOMIDSDK

+(void *)versionString {
    *(&stack[-64] + 0x8) = @"google_20190423";
    stack[-64] = @"1.2.14";
    var_20 = [[[NSString stringWithFormat:@"%@-%@", r3, r4] retain] retain];
    objc_storeStrong(&var_18, 0x0);
    r0 = [var_20 autorelease];
    return r0;
}

+(long long)majorVersionFrom:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    r0 = [var_18 componentsSeparatedByString:@"."];
    r0 = [r0 retain];
    var_20 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    var_30 = [r0 integerValue];
    [r0 release];
    [var_20 release];
    objc_storeStrong(&var_18, 0x0);
    r0 = var_30;
    return r0;
}

+(void *)sharedInstance {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_storeStrong(&var_10, 0x100ea0610);
    if (*0x1011dc020 != -0x1) {
            dispatch_once(0x1011dc020, var_10);
    }
    objc_storeStrong(&var_10, 0x0);
    r0 = *qword_1011dc028;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(bool)isCompatibleWithGADOMIDAPIVersion:(void *)arg2 {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    var_10 = self;
    objc_storeStrong(&saved_fp - 0x20, arg2);
    var_58 = [[0x0 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:var_58 options:0x0 error:0x0];
    r29 = &saved_fp;
    var_28 = [r0 retain];
    [var_58 release];
    if (var_28 == 0x0) {
            var_1 = 0x0;
    }
    else {
            var_38 = [[var_28 objectForKey:@"v"] retain];
            r0 = [var_10 versionString];
            r29 = r29;
            var_68 = [r0 retain];
            var_70 = [var_10 majorVersionFrom:var_68];
            [var_68 release];
            r0 = [var_10 majorVersionFrom:var_38];
            r9 = &var_38;
            if (r0 == var_70) {
                    if (CPU_FLAGS & E) {
                            r12 = 0x1;
                    }
            }
            var_1 = r12 & 0x1;
            objc_storeStrong(r9, 0x0);
    }
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = var_1 & 0x1 & 0x1;
    return r0;
}

-(bool)activateWithGADOMIDAPIVersion:(void *)arg2 error:(void * *)arg3 {
    objc_storeStrong(&var_18, arg2);
    var_2C = [self activate];
    objc_storeStrong(&var_18, 0x0);
    r0 = var_2C & 0x1;
    return r0;
}

-(bool)activate {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = self;
    objc_storeStrong(r29 - 0x10, 0x100ea0650);
    if (*0x1011dc030 != -0x1) {
            dispatch_once(0x1011dc030, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    *(int8_t *)(int64_t *)&var_18->_active = 0x1;
    r0 = 0x1;
    return r0;
}

-(bool)isActive {
    r0 = *(int8_t *)(int64_t *)&self->_active & 0x1;
    return r0;
}

@end