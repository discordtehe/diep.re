@implementation FABNetworkResponseHandler

+(double)retryValueForResponse:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self headerForResponse:arg2 withKey:@"Retry-After"] retain];
    if (r19 != 0x0) {
            [r19 doubleValue];
            if (d0 < 0x0) {
                    asm { fcsel      d8, d1, d0, mi };
            }
    }
    r0 = [r19 release];
    return r0;
}

+(void *)headerForResponse:(void *)arg2 withKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 respondsToSelector:r2] != 0x0) {
            r0 = [r19 allHeaderFields];
            r0 = [r0 retain];
            r21 = [[r0 objectForKey:r2] retain];
            [r0 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)requestIdForResponse:(void *)arg2 {
    r0 = [self headerForResponse:arg2 withKey:@"X-Request-Id"];
    return r0;
}

+(void *)errorForCode:(long long)arg2 userInfo:(void *)arg3 {
    r0 = [NSError errorWithDomain:@"FABNetworkError" code:arg2 userInfo:arg3];
    return r0;
}

+(long long)cancelReasonFromURLError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 domain];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    if (r21 != 0x0 && [r19 code] == -0x3e7) {
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r21 = [[r0 objectForKey:r2] retain];
            [r0 release];
            if (r21 != 0x0) {
                    r20 = [r21 integerValue];
            }
            else {
                    r20 = 0xffffffffffffffff;
            }
            [r21 release];
    }
    else {
            r20 = 0xffffffffffffffff;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)retryableURLError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 domain];
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 code];
            if (r0 < 0xfffffffffffffc1d) {
                    asm { ccmp       x8, #0x0, #0x4, ls };
            }
            if (CPU_FLAGS & E) {
                    asm { ccmp       x8, #0x7, #0x0, eq };
            }
            r20 = 0x0;
            if (!CPU_FLAGS & B) {
                    if (r0 < 0xfffffffffffffbb4) {
                            asm { ccmp       x8, #0x1, #0x4, ls };
                    }
                    r20 = 0x0;
                    if (CPU_FLAGS & NE) {
                            if (!CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)contentTypeForResponse:(void *)arg2 matchesRequest:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 allHTTPHeaderFields];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (r21 != 0x0) {
            r0 = [r22 class];
            r0 = [r0 headerForResponse:r19 withKey:@"Content-Type"];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r20 allHTTPHeaderFields];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKeyedSubscript:@"Accept-Charset"] retain];
                    [r0 release];
                    r0 = [r22 componentsSeparatedByString:@"; charset="];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 == 0x0) {
                            r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r24 release];
                            r24 = r25;
                    }
                    r0 = [r24 objectAtIndex:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = [r0 caseInsensitiveCompare:r2];
                    [r0 release];
                    if (r28 != 0x0) {
                            r25 = 0x0;
                    }
                    else {
                            if (r23 != 0x0 && [r24 count] >= 0x2) {
                                    r25 = @selector(objectAtIndex:);
                                    r0 = objc_msgSend(r24, r25);
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    if ([r0 caseInsensitiveCompare:r2] == 0x0) {
                                            r25 = @selector(objectAtIndex:);
                                            if (CPU_FLAGS & E) {
                                                    r25 = 0x1;
                                            }
                                    }
                                    [r27 release];
                            }
                            else {
                                    r25 = 0x1;
                            }
                    }
                    [r24 release];
                    [r23 release];
            }
            else {
                    r25 = 0x0;
            }
            [r22 release];
    }
    else {
            r25 = 0x1;
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)clientResponseType:(void *)arg2 handler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r19 respondsToSelector:r2] & 0x1) == 0x0) goto loc_10009ec48;

loc_10009ec04:
    r8 = [r19 statusCode];
    r9 = r8 - 0x190;
    if (r9 > 0x1f) goto loc_10009ec9c;

loc_10009ec20:
    if ((0x1 << r9 & 0x80482c5b) == 0x0) goto loc_10009ec60;

loc_10009ec38:
    r9 = *(r20 + 0x10);
    r1 = 0x2;
    goto loc_10009ec40;

loc_10009ec40:
    r0 = r20;
    goto loc_10009ecb8;

loc_10009ecb8:
    (r9)(r0, r1);
    goto loc_10009ecc0;

loc_10009ecc0:
    [r20 release];
    [r19 release];
    return;

loc_10009ec60:
    if ((0x1 << r9 & 0x20100000) == 0x0) goto loc_10009ec80;

loc_10009ec74:
    r9 = *(r20 + 0x10);
    r1 = 0x4;
    goto loc_10009ec40;

loc_10009ec80:
    if (r9 != 0x8) goto loc_10009ec9c;

loc_10009ec88:
    r8 = *(r20 + 0x10);
    r1 = 0x3;
    r2 = 0x198;
    r0 = r20;
    goto loc_10009ec58;

loc_10009ec58:
    (r8)(r0, r1, r2);
    goto loc_10009ecc0;

loc_10009ec9c:
    if (r8 < 0xcc) {
            asm { ccmp       x9, #0x3, #0x4, ls };
    }
    if (CPU_FLAGS & E) goto loc_10009ecdc;

loc_10009ecac:
    r9 = *(r20 + 0x10);
    r0 = r20;
    r1 = 0x0;
    goto loc_10009ecb8;

loc_10009ecdc:
    if (r8 == 0x130) goto loc_10009ecac;

loc_10009ece4:
    r9 = *(r20 + 0x10);
    if (r8 <= 0x257) {
            r1 = 0x3;
    }
    else {
            r1 = 0x1;
    }
    goto loc_10009ec40;

loc_10009ec48:
    r8 = *(r20 + 0x10);
    r1 = 0x1;
    r0 = r20;
    r2 = 0x0;
    goto loc_10009ec58;
}

+(void)handleCompletedResponse:(void *)arg2 forOriginalRequest:(void *)arg3 error:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (r21 != 0x0) {
            (*(r22 + 0x10))(r22, [r23 retryableURLError:r21], r21);
    }
    else {
            r24 = [r23 class];
            r23 = [r19 retain];
            var_40 = [r22 retain];
            var_38 = [r20 retain];
            [r24 clientResponseType:r23 handler:&var_70];
            [var_38 release];
            [var_40 release];
            [r23 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)errorForResponse:(void *)arg2 ofType:(long long)arg3 status:(long long)arg4 {
    r2 = arg2;
    r31 = r31 - 0xa0;
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
    r23 = arg4;
    r20 = arg3;
    r19 = self;
    if (r20 != 0x0) {
            r22 = [r2 retain];
            r24 = [[r19 requestIdForResponse:r22] retain];
            r0 = [r19 headerForResponse:r22 withKey:@"Content-Type"];
            r29 = r29;
            r25 = [r0 retain];
            r0 = [r22 release];
            if (r24 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r24;
                    }
                    else {
                            r0 = @"";
                    }
            }
            r21 = [r0 retain];
            r0 = [r24 release];
            if (r25 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r25;
                    }
                    else {
                            r0 = @"";
                    }
            }
            r22 = [r0 retain];
            [r25 release];
            r25 = [[NSNumber numberWithInteger:r20] retain];
            r23 = [[NSNumber numberWithInteger:r23] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4];
            r29 = r29;
            r24 = [r0 retain];
            [r23 release];
            [r25 release];
            if (r20 == 0x1) {
                    asm { csinv      x8, x8, xzr, eq };
            }
            if (r20 == 0x2) {
                    if (!CPU_FLAGS & E) {
                            r2 = 0xfffffffffffffffc;
                    }
                    else {
                            r2 = 0xfffffffffffffffb;
                    }
            }
            r19 = [[r19 errorForCode:r2 userInfo:r24] retain];
            [r22 release];
            [r24 release];
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end