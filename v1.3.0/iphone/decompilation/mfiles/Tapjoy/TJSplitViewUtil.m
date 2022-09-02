@implementation TJSplitViewUtil

+(void *)getSplitViewLayout:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"style"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_10091d17c;

loc_10091d128:
    r21 = [[r19 objectForKeyedSubscript:@"splitViewLayout"] retain];
    [NSDictionary class];
    if ([r21 isKindOfClass:r2] != 0x0) goto loc_10091d180;

loc_10091d174:
    [r21 release];
    goto loc_10091d17c;

loc_10091d17c:
    r21 = 0x0;
    goto loc_10091d180;

loc_10091d180:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getExitHosts:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"style"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_10091d280;

loc_10091d1fc:
    r0 = [r19 objectForKeyedSubscript:@"splitViewExitHosts"];
    r29 = r29;
    r21 = [r0 retain];
    [NSArray class];
    if (([r21 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10091d278;

loc_10091d248:
    r22 = [[NSSet setWithArray:r21] retain];
    [r21 release];
    goto loc_10091d284;

loc_10091d284:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_10091d278:
    [r21 release];
    goto loc_10091d280;

loc_10091d280:
    r22 = 0x0;
    goto loc_10091d284;
}

+(bool)supportLandscape:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r23 = @selector(isKindOfClass:);
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r20 = [r0 retain];
            [NSDictionary class];
            if (objc_msgSend(r20, r23) != 0x0) {
                    r0 = [r20 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 floatValue];
                    if (s0 > 0x0) {
                            r21 = @selector(objectForKeyedSubscript:);
                            r0 = objc_msgSend(r20, r21);
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 floatValue];
                            if (s0 > 0x0) {
                                    if (CPU_FLAGS & G) {
                                            r21 = 0x1;
                                    }
                            }
                            [r24 release];
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r22 release];
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(struct CGRect)rectWithSize:(struct CGSize)arg2 layout:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            if (d13 >= d12) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
            }
            else {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
            }
            r23 = @selector(isKindOfClass:);
            r21 = [r0 retain];
            [NSDictionary class];
            if (objc_msgSend(r21, r23) != 0x0) {
                    r0 = [r21 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    [r0 floatValue];
                    asm { fcvt       d8, s0 };
                    [r23 release];
                    r0 = objc_msgSend(r21, r20);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    asm { fcvt       d9, s0 };
                    [r23 release];
                    r0 = objc_msgSend(r21, r20);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    asm { fcvt       d10, s0 };
                    [r23 release];
                    r0 = objc_msgSend(r21, r20);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    asm { fcvt       d11, s0 };
                    [r20 release];
            }
    }
    else {
            r21 = 0x0;
    }
    [r21 release];
    r0 = [r19 release];
    return r0;
}

@end