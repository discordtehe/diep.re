@implementation FBAdCookieData

-(void *)init {
    r0 = [self initWithMetadata:0x0];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cookie, 0x0);
    objc_storeStrong((int64_t *)&self->_expiration, 0x0);
    objc_storeStrong((int64_t *)&self->_value, 0x0);
    objc_storeStrong((int64_t *)&self->_key, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

-(void *)key {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_key)), 0x0);
    return r0;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
    return r0;
}

-(void *)value {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_value)), 0x0);
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r19 = [arg2 retain];
    r0 = [[&var_B8 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a307c4;

loc_100a30544:
    if (r19 == 0x0) goto loc_100a30918;

loc_100a30548:
    r0 = [r19 stringForKeyOrNil:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_100a30910;

loc_100a30574:
    r0 = [NSURL URLWithString:r21];
    r0 = [r0 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_url));
    r8 = *(r20 + r28);
    *(r20 + r28) = r0;
    [r8 release];
    r0 = [r19 stringForKeyOrNil:r2];
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_key));
    r8 = *(r20 + r25);
    *(r20 + r25) = r0;
    [r8 release];
    r0 = [r19 stringForKeyOrNil:r2];
    r0 = [r0 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_value));
    r8 = *(r20 + r26);
    *(r20 + r26) = r0;
    [r8 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r23 = r0;
    [r0 timeIntervalSince1970];
    [r19 doubleForKey:@"expiration" orDefault:r3];
    r0 = [NSDate dateWithTimeIntervalSince1970:@"expiration"];
    r29 = r29;
    r0 = [r0 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_expiration));
    r8 = *(r20 + r27);
    *(r20 + r27) = r0;
    [r8 release];
    [r23 release];
    r0 = *(r20 + r28);
    if (r0 == 0x0) goto loc_100a30910;

loc_100a306a8:
    if (*(r20 + r25) == 0x0 || *(r20 + r26) == 0x0) goto loc_100a307b0;

loc_100a306b8:
    r0 = [r0 host];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(length);
    var_C0 = r1;
    r24 = objc_msgSend(r0, r1);
    [r0 release];
    if (r24 == 0x0) goto loc_100a307a8;

loc_100a306f4:
    *(int8_t *)(int64_t *)&r20->_localOnly = 0x1;
    r22 = [[*(r20 + r28) host] retain];
    r0 = *(r20 + r28);
    r0 = [r0 path];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [*(r20 + r27) retain];
    if (r22 != 0x0 && r24 != 0x0) {
            var_C8 = [r22 retain];
            if (objc_msgSend(r23, var_C0) != 0x0) {
                    r0 = [r23 retain];
                    var_C0 = 0x1;
            }
            else {
                    var_C0 = 0x0;
                    r0 = @"/";
            }
            var_D0 = [*(r20 + r25) retain];
            r28 = [*(r20 + r26) retain];
            r26 = [r24 retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_A8 count:0x5] retain];
            r0 = [NSHTTPCookie cookieWithProperties:r25];
            r0 = [r0 retain];
            r27 = (int64_t *)&r20->_cookie;
            r8 = *r27;
            *r27 = r0;
            [r8 release];
            [r25 release];
            [r26 release];
            [r28 release];
            [var_D0 release];
            if (var_C0 != 0x0) {
                    [r23 release];
            }
            [var_C8 release];
    }
    else {
            r27 = (int64_t *)&r20->_cookie;
    }
    r25 = *r27;
    [r24 release];
    [r23 release];
    [r22 release];
    if (r25 != 0x0) goto loc_100a307bc;

loc_100a30910:
    [r21 release];
    goto loc_100a30918;

loc_100a30918:
    r21 = 0x0;
    goto loc_100a3091c;

loc_100a3091c:
    var_58 = **___stack_chk_guard;
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a307bc:
    [r21 release];
    goto loc_100a307c4;

loc_100a307c4:
    r21 = [r20 retain];
    goto loc_100a3091c;

loc_100a307a8:
    if (*(r20 + r28) == 0x0) goto loc_100a30910;

loc_100a307b0:
    *(int8_t *)(int64_t *)&r20->_localOnly = 0x0;
    goto loc_100a307bc;
}

-(void *)cookie {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cookie)), 0x0);
    return r0;
}

-(void *)expiration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_expiration)), 0x0);
    return r0;
}

-(bool)isLocalOnly {
    r0 = *(int8_t *)(int64_t *)&self->_localOnly;
    return r0;
}

+(void *)parseCookieData:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = [arg2 retain];
    [NSArray class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r20 = [[NSMutableArray arrayWithCapacity:[r19 count]] retain];
            var_110 = q0;
            var_130 = r19;
            r0 = [r19 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r28 = *var_110;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r27 = *(var_118 + r22 * 0x8);
                                    r0 = [FBAdCookieData alloc];
                                    r0 = [r0 initWithMetadata:r27];
                                    r27 = r0;
                                    if (r0 != 0x0) {
                                            [r20 addObject:r2];
                                    }
                                    [r27 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r0 = objc_msgSend(r21, var_128);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
            r19 = var_130;
    }
    else {
            r20 = [**___NSArray0__ retain];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)cookieStringForCookies:(void *)arg2 {
    r31 = r31 - 0x1d0;
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
    r20 = [arg2 retain];
    r21 = [[NSMutableString string] retain];
    r22 = [NSDateFormatter new];
    r19 = [[NSTimeZone timeZoneWithAbbreviation:@"UTC"] retain];
    [r22 setTimeZone:r19];
    [r19 release];
    [r22 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss zzz"];
    r0 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    var_188 = r22;
    [r22 setLocale:r19];
    [r19 release];
    var_110 = q0;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_198 = r1;
    var_190 = r0;
    r0 = objc_msgSend(r0, r1);
    var_130 = r0;
    if (r0 != 0x0) {
            var_178 = r21;
            var_170 = *var_110;
            r26 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            do {
                    r20 = 0x0;
                    r25 = @selector(stringWithFormat:);
                    do {
                            r19 = r25;
                            if (*var_110 != var_170) {
                                    objc_enumerationMutation(var_190);
                            }
                            var_128 = r20;
                            r0 = *(var_118 + r20 * 0x8);
                            r0 = [r0 cookie];
                            r0 = [r0 retain];
                            r23 = r0;
                            r22 = *(r26 + 0xfa8);
                            [[r0 name] retain];
                            [[r23 value] retain];
                            [[r23 domain] retain];
                            r0 = [r23 value];
                            r0 = [r0 retain];
                            r25 = r19;
                            [objc_msgSend(r22, r19) retain];
                            [var_178 appendString:r2];
                            [r22 release];
                            r0 = r26;
                            r26 = r21;
                            r21 = var_178;
                            r19 = @selector(appendString:);
                            [r0 release];
                            [r24 release];
                            [r27 release];
                            [r20 release];
                            r0 = [r23 expiresDate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            if (r0 != 0x0) {
                                    r22 = *(r26 + 0xfa8);
                                    [[var_188 stringFromDate:r2] retain];
                                    r0 = objc_msgSend(r22, r25);
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r21, r19);
                                    [r22 release];
                                    [r24 release];
                            }
                            if ([r23 isSecure] != 0x0) {
                                    objc_msgSend(r21, r19);
                            }
                            objc_msgSend(r21, r19);
                            [r28 release];
                            [r23 release];
                            r20 = var_128 + 0x1;
                    } while (r20 < var_130);
                    r0 = objc_msgSend(var_190, var_198);
                    var_130 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_190 release];
    [var_188 release];
    [var_190 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end