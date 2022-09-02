@implementation MPEnhancedDeeplinkRequest

-(void)setOriginalURL:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void *)originalURL {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x1);
    return r0;
}

-(void *)primaryURL {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(void)setPrimaryURL:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void *)primaryTrackingURLs {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x1);
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r24 = [arg2 retain];
    r0 = [[&var_170 super] init];
    r19 = r0;
    if (r0 == 0x0) goto loc_100503f04;

loc_100503b30:
    r0 = [r24 host];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_100503f1c;

loc_100503b90:
    r0 = [r24 mp_queryParameterForKey:@"primaryUrl"];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 length] == 0x0) goto loc_100503f14;

loc_100503bc8:
    var_218 = r21;
    r0 = [NSURL URLWithString:r21];
    r0 = [r0 retain];
    r8 = *(r19 + 0x10);
    *(r19 + 0x10) = r0;
    [r8 release];
    r0 = [r24 copy];
    r8 = *(r19 + 0x8);
    var_208 = r19;
    *(r19 + 0x8) = r0;
    [r8 release];
    r23 = [[NSMutableArray array] retain];
    r0 = [r24 mp_queryParametersForKey:@"primaryTrackingUrl"];
    r29 = r29;
    r0 = [r0 retain];
    var_1A0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_200 = r1;
    var_1F8 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r21 = r0;
            r19 = *var_1A0;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_1A0 != r19) {
                                    objc_enumerationMutation(var_1F8);
                            }
                            r27 = @selector(addObject:);
                            r0 = [NSURL URLWithString:*(var_1A8 + r25 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r23, r27);
                            [r28 release];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = objc_msgSend(var_1F8, var_200);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    r0 = [NSArray arrayWithArray:r23];
    r0 = [r0 retain];
    r8 = *(var_208 + 0x18);
    *(var_208 + 0x18) = r0;
    [r8 release];
    r2 = [[r24 mp_queryParameterForKey:@"fallbackUrl"] retain];
    r0 = @class(NSURL);
    var_230 = r2;
    r0 = [r0 URLWithString:r2];
    r0 = [r0 retain];
    r8 = *(var_208 + 0x20);
    *(var_208 + 0x20) = r0;
    [r8 release];
    r27 = [[NSMutableArray array] retain];
    var_210 = r24;
    r0 = [r24 mp_queryParametersForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    var_1E0 = q0;
    r0 = objc_msgSend(r0, var_200);
    if (r0 != 0x0) {
            r21 = r0;
            r25 = *var_1E0;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_1E0 != r25) {
                                    objc_enumerationMutation(r28);
                            }
                            r26 = @selector(addObject:);
                            r0 = [NSURL URLWithString:*(var_1E8 + r24 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r27, r26);
                            [r19 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r21);
                    r0 = objc_msgSend(r28, var_200);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    r0 = [NSArray arrayWithArray:r2];
    r0 = [r0 retain];
    r19 = var_208;
    r8 = *(r19 + 0x28);
    *(r19 + 0x28) = r0;
    [r8 release];
    [r28 release];
    [r27 release];
    [var_230 release];
    [var_1F8 release];
    [r23 release];
    [var_218 release];
    r24 = var_210;
    goto loc_100503f04;

loc_100503f04:
    r21 = [r19 retain];
    goto loc_100503f20;

loc_100503f20:
    var_60 = **___stack_chk_guard;
    [r24 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100503f14:
    [r21 release];
    goto loc_100503f1c;

loc_100503f1c:
    r21 = 0x0;
    goto loc_100503f20;
}

-(void)setPrimaryTrackingURLs:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setFallbackURL:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void *)fallbackURL {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x1);
    return r0;
}

-(void *)fallbackTrackingURLs {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x1);
    return r0;
}

-(void)setFallbackTrackingURLs:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end