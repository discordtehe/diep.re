@implementation MPAPIEndpoints

+(void)setBaseHostname:(void *)arg2 {
    objc_storeStrong(0x1011d83c0, arg2);
    return;
}

+(void *)baseHostname {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d83c0 != 0x0 && ([*0x1011d83c0 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = *0x1011d83c0;
            r0 = [r0 retain];
    }
    else {
            r0 = @"ads.mopub.com";
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void)setUsesHTTPS:(bool)arg2 {
    *(int8_t *)0x1011beb08 = arg2;
    return;
}

+(void *)baseURL {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    r21 = [r0 appTransportSecuritySettings];
    [r0 release];
    r0 = [self baseHostname];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = @"http://";
            }
            else {
                    r0 = @"https://";
            }
    }
    r20 = [[r0 stringByAppendingString:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)baseURLComponentsWithPath:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = [arg2 retain];
    r0 = objc_alloc();
    r0 = [r0 init];
    r20 = r0;
    if (*(int8_t *)byte_1011beb08 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = @"https";
            }
            else {
                    r2 = @"http";
            }
    }
    [r0 setScheme:r2];
    r19 = [[r19 baseHostname] retain];
    [r20 setHost:r19];
    [r19 release];
    [r20 setPath:r21];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

@end