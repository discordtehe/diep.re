@implementation FBSDKBasicUtility

+(void *)JSONStringForObject:(void *)arg2 error:(void * *)arg3 invalidObjectHandler:(void *)arg4 {
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
    r21 = arg3;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    if (r19 != 0x0) {
            r3 = r19;
            r0 = [r20 _convertObjectToJSONObject:r22 invalidObjectHandler:r3 stop:0x0];
            r29 = r29;
            r20 = [r0 retain];
            [r22 release];
            if (([NSJSONSerialization isValidJSONObject:r2] & 0x1) != 0x0) {
                    r21 = [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:r21] retain];
                    if (r21 != 0x0) {
                            r22 = [[NSString alloc] initWithData:r21 encoding:0x4];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r21 release];
            }
            else {
                    if (r21 != 0x0) {
                            r0 = NSClassFromString(@"FBSDKError");
                            r22 = r0;
                            if ([r0 respondsToSelector:@selector(invalidArgumentErrorWithName:value:message:), r3, 0x0] != 0x0) {
                                    r0 = [r22 invalidArgumentErrorWithName:@"object" value:r20 message:@"Invalid object for JSON serialization."];
                                    r0 = [r0 retain];
                                    r0 = [r0 autorelease];
                                    r22 = 0x0;
                                    *r21 = r0;
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r22 = 0x0;
                    }
            }
    }
    else {
            if (([NSJSONSerialization isValidJSONObject:r2] & 0x1) != 0x0) {
                    r20 = r22;
                    r21 = [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:r21] retain];
                    if (r21 != 0x0) {
                            r22 = [[NSString alloc] initWithData:r21 encoding:0x4];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r21 release];
            }
            else {
                    r3 = r19;
                    r0 = [r20 _convertObjectToJSONObject:r22 invalidObjectHandler:r3 stop:0x0];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r22 release];
                    if (([NSJSONSerialization isValidJSONObject:r2] & 0x1) != 0x0) {
                            r21 = [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:r21] retain];
                            if (r21 != 0x0) {
                                    r22 = [[NSString alloc] initWithData:r21 encoding:0x4];
                            }
                            else {
                                    r22 = 0x0;
                            }
                            [r21 release];
                    }
                    else {
                            if (r21 != 0x0) {
                                    r0 = NSClassFromString(@"FBSDKError");
                                    r22 = r0;
                                    if ([r0 respondsToSelector:@selector(invalidArgumentErrorWithName:value:message:), r3, 0x0] != 0x0) {
                                            r0 = [r22 invalidArgumentErrorWithName:@"object" value:r20 message:@"Invalid object for JSON serialization."];
                                            r0 = [r0 retain];
                                            r0 = [r0 autorelease];
                                            r22 = 0x0;
                                            *r21 = r0;
                                    }
                                    else {
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    r22 = 0x0;
                            }
                    }
            }
    }
    [r19 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

+(bool)dictionary:(void *)arg2 setJSONStringForObject:(void *)arg3 forKey:(void *)arg4 error:(void * *)arg5 {
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
    r23 = arg5;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = 0x1;
    if (r20 != 0x0) {
            r24 = 0x1;
            if (r21 != 0x0) {
                    r23 = [[r22 JSONStringForObject:r20 error:r23 invalidObjectHandler:0x0] retain];
                    if (r23 != 0x0) {
                            [r22 dictionary:r19 setObject:r23 forKey:r21];
                            r24 = 0x1;
                    }
                    else {
                            r24 = 0x0;
                    }
                    [r23 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

+(void)array:(void *)arg2 addObject:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    if (r19 != 0x0) {
            [r20 addObject:r2];
    }
    [r20 release];
    return;
}

+(void)dictionary:(void *)arg2 setObject:(void *)arg3 forKey:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (r21 != 0x0 && r20 != 0x0) {
            [r19 setObject:r21 forKeyedSubscript:r20];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void *)objectForJSONString:(void *)arg2 error:(void * *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r0 = [arg2 dataUsingEncoding:0x4];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[NSJSONSerialization JSONObjectWithData:r19 options:0x4 error:r20] retain];
    }
    else {
            if (r20 != 0x0) {
                    r21 = 0x0;
                    *r20 = 0x0;
            }
            else {
                    r21 = 0x0;
            }
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)_convertObjectToJSONObject:(void *)arg2 invalidObjectHandler:(void *)arg3 stop:(bool *)arg4 {
    r31 = r31 - 0x1b0;
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
    r19 = arg4;
    r21 = self;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    var_F0 = &var_F8;
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) goto loc_10075ae08;

loc_10075ade4:
    r24 = @selector(isKindOfClass:);
    [NSNumber class];
    if ((objc_msgSend(r22, r24) & 0x1) == 0x0) goto loc_10075ae6c;

loc_10075ae08:
    r23 = r22;
    if (r19 != 0x0) {
            *(int8_t *)r19 = *(int8_t *)(var_F0 + 0x18);
    }
    goto loc_10075ae1c;

loc_10075ae1c:
    var_58 = **___stack_chk_guard;
    _Block_object_dispose(&var_F8, 0x8);
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10075ae6c:
    r24 = @selector(isKindOfClass:);
    [NSURL class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_10075aeb4;

loc_10075ae90:
    r0 = [r22 absoluteString];
    goto loc_10075aea4;

loc_10075aea4:
    r23 = [r0 retain];
    r0 = r22;
    goto loc_10075b0d4;

loc_10075b0d4:
    [r0 release];
    if (r19 != 0x0) {
            *(int8_t *)r19 = *(int8_t *)(var_F0 + 0x18);
    }
    goto loc_10075ae1c;

loc_10075aeb4:
    r24 = @selector(isKindOfClass:);
    [NSDictionary class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_10075af84;

loc_10075aed8:
    r21 = [[[NSMutableDictionary alloc] init] retain];
    var_108 = [r20 retain];
    [r22 enumerateKeysAndObjectsUsingBlock:&var_138];
    r23 = [r21 retain];
    [r22 release];
    [var_108 release];
    [r21 release];
    r0 = r23;
    goto loc_10075b0d4;

loc_10075af84:
    r24 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_10075b0e0;

loc_10075afa8:
    r23 = [[NSMutableArray alloc] init];
    var_168 = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_190 = r1;
    var_188 = r0;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_10075b0c4;

loc_10075b00c:
    var_180 = *var_168;
    goto loc_10075b018;

loc_10075b018:
    r22 = 0x0;
    goto loc_10075b02c;

loc_10075b02c:
    if (*var_168 != var_180) {
            objc_enumerationMutation(var_188);
    }
    r0 = [r21 _convertObjectToJSONObject:r2 invalidObjectHandler:r3 stop:r4];
    r29 = r29;
    [r0 retain];
    [r21 array:r2 addObject:r3];
    r24 = *(int8_t *)(var_F0 + 0x18);
    [r28 release];
    if (r24 != 0x0) goto loc_10075b0c4;

loc_10075b09c:
    r22 = r22 + 0x1;
    if (r22 < r25) goto loc_10075b02c;

loc_10075b0a8:
    r25 = objc_msgSend(var_188, var_190);
    if (r25 != 0x0) goto loc_10075b018;

loc_10075b0c4:
    [var_188 release];
    r0 = var_188;
    goto loc_10075b0d4;

loc_10075b0e0:
    r0 = (*(r20 + 0x10))(r20, r22, r19);
    goto loc_10075aea4;
}

+(void *)URLEncode:(void *)arg2 {
    r0 = CFURLCreateStringByAddingPercentEscapes(0x0, arg2, 0x0, @":!*();@/&?+$,='", 0x8000100);
    r0 = [r0 autorelease];
    return r0;
}

+(void *)convertRequestValue:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [NSNumber class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10075b910;

loc_10075b8f8:
    r0 = [r19 stringValue];
    goto loc_10075b948;

loc_10075b948:
    r20 = [r0 retain];
    [r19 release];
    r19 = r20;
    goto loc_10075b95c;

loc_10075b95c:
    r0 = [r19 autorelease];
    return r0;

loc_10075b910:
    r21 = @selector(isKindOfClass:);
    [NSURL class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_10075b95c;

loc_10075b934:
    r0 = [r19 absoluteString];
    goto loc_10075b948;
}

+(void *)URLDecode:(void *)arg2 {
    r0 = [arg2 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    r0 = [r0 retain];
    r20 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)anonymousID {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self class];
    r0 = [r0 retrievePersistedAnonymousID];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) {
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r23 = [[r0 UUIDString] retain];
            r21 = [[NSString stringWithFormat:@"XZ%@"] retain];
            [r20 release];
            [r23 release];
            [r0 release];
            [r19 persistAnonymousID:r21];
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)gzip:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x480;
    r21 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r19 = [r0 bytes];
    r20 = [r0 length];
    [r21 release];
    if (r19 != 0x0) {
            asm { ccmp       x8, x9, #0x2, ne };
    }
    if (CPU_FLAGS & A) goto loc_10075bd90;

loc_10075bd54:
    memset(&var_4A8, 0x0, 0x70);
    r0 = deflateInit2_(&var_4A8, 0xffffffffffffffff, 0x8, 0x1f, 0x8, 0x0, "1.2.11", 0x70);
    if (r0 == 0x0) goto loc_10075bdc8;

loc_10075bd90:
    r20 = 0x0;
    goto loc_10075bd94;

loc_10075bd94:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10075bdc8:
    r19 = [[NSMutableData dataWithCapacity:r20 >> 0x2] retain];
    r23 = &stack[-1096];
    goto loc_10075be04;

loc_10075be04:
    r0 = deflate(&var_4A8, 0x4);
    r21 = r0;
    if (r21 >= 0x2) goto loc_10075be60;

loc_10075be24:
    r8 = 0x0;
    if (r8 != 0x0) {
            [r19 appendBytes:r2 length:r3];
    }
    if (r21 == 0x0) goto loc_10075be04;

loc_10075be48:
    deflateEnd(&var_4A8);
    r20 = [r19 retain];
    goto loc_10075be6c;

loc_10075be6c:
    [r19 release];
    goto loc_10075bd94;

loc_10075be60:
    deflateEnd(&var_4A8);
    r20 = 0x0;
    goto loc_10075be6c;
}

+(void *)dictionaryWithQueryString:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r19 = self;
    r23 = [arg2 retain];
    var_148 = [[NSMutableDictionary alloc] init];
    r0 = [arg2 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    var_108 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r20;
    var_150 = r1;
    r23 = objc_msgSend(r20, r1);
    if (r23 != 0x0) {
            r21 = *var_108;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_108 != r21) {
                                    objc_enumerationMutation(var_128);
                            }
                            r22 = *(var_110 + r27 * 0x8);
                            if ([r22 length] != 0x0) {
                                    r20 = [r22 rangeOfString:@"="];
                                    if (r20 == 0x7fffffffffffffff) {
                                            r25 = [r22 retain];
                                            r22 = @"";
                                            [r22 retain];
                                    }
                                    else {
                                            r25 = [[r22 substringToIndex:r20] retain];
                                            r0 = [r22 substringFromIndex:r20 + @selector(rangeOfString:)];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                    }
                                    r20 = [[r19 URLDecode:r25] retain];
                                    [r25 release];
                                    r0 = [r19 URLDecode:r22];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r22 release];
                                    if (r20 != 0x0) {
                                            asm { ccmp       x25, #0x0, #0x4, ne };
                                    }
                                    if (!CPU_FLAGS & E) {
                                            [var_148 setObject:r2 forKeyedSubscript:r3];
                                    }
                                    [r25 release];
                                    [r20 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = objc_msgSend(var_128, var_150);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_148 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)retrievePersistedAnonymousID {
    r19 = [[[self class] persistenceFilePath:@"com-facebook-sdk-PersistedAnonymousID.json"] retain];
    r20 = [[NSString alloc] initWithContentsOfFile:r19 encoding:0x1 error:0x0];
    r0 = [FBSDKBasicUtility objectForJSONString:r20 error:0x0];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:@"anon_id"] retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)persistenceFilePath:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x5, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r22 = [[r0 stringByAppendingPathComponent:r19] retain];
    [r19 release];
    [r0 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)queryStringWithDictionary:(void *)arg2 error:(void * *)arg3 invalidObjectHandler:(void *)arg4 {
    r31 = r31 - 0x1c0;
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
    r23 = arg3;
    var_150 = self;
    r19 = [arg2 retain];
    var_148 = [arg4 retain];
    r22 = [[NSMutableString alloc] init];
    var_F0 = &var_F8;
    if (r19 == 0x0) goto loc_10075b77c;

loc_10075b474:
    r0 = [r19 allKeys];
    r0 = [r0 retain];
    r20 = [r0 mutableCopy];
    [r0 release];
    r0 = [NSPredicate predicateWithBlock:0x100e8ed70];
    r29 = r29;
    r21 = [r0 retain];
    [r20 filterUsingPredicate:r21];
    [r21 release];
    [r20 sortUsingSelector:@selector(compare:)];
    var_188 = r23;
    var_158 = r22;
    r0 = [r20 retain];
    var_168 = r0;
    r26 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r26 == 0x0) goto loc_10075b760;

loc_10075b550:
    var_190 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_10075b57c;

loc_10075b57c:
    r24 = 0x0;
    goto loc_10075b5a8;

loc_10075b5a8:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_168);
    }
    r25 = @selector(class);
    r23 = *(0x0 + r24 * 0x8);
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [var_150 convertRequestValue:r2];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    objc_msgSend(@class(NSString), r25);
    if (objc_msgSend(r20, r22) != 0x0) {
            r0 = [var_150 URLEncode:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            r20 = r21;
    }
    if (var_148 == 0x0) goto loc_10075b6b8;

loc_10075b660:
    r25 = @selector(class);
    objc_msgSend(@class(NSString), r25);
    if ((objc_msgSend(r20, r22) & 0x1) != 0x0) goto loc_10075b6b8;

loc_10075b684:
    r0 = (*(var_148 + 0x10))(var_148, r20, &var_F9);
    r29 = r29;
    r21 = [r0 retain];
    [r20 release];
    if (var_F9 != 0x0) goto loc_10075b758;

loc_10075b6b4:
    r20 = r21;
    goto loc_10075b6b8;

loc_10075b6b8:
    if (r20 != 0x0) {
            if (*(int8_t *)(var_F0 + 0x18) != 0x0) {
                    [var_158 appendString:r2];
            }
            [var_158 appendFormat:r2];
            *(int8_t *)(var_F0 + 0x18) = 0x1;
    }
    [r20 release];
    r24 = r24 + 0x1;
    if (r24 < r26) goto loc_10075b5a8;

loc_10075b714:
    r26 = objc_msgSend(var_168, var_190);
    if (r26 != 0x0) goto loc_10075b57c;

loc_10075b760:
    [var_168 release];
    [var_168 release];
    r22 = var_158;
    r23 = var_188;
    goto loc_10075b77c;

loc_10075b77c:
    if (r23 != 0x0) {
            *r23 = 0x0;
    }
    if ([r22 length] != 0x0) {
            r20 = [[r22 copy] autorelease];
    }
    else {
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    _Block_object_dispose(&var_F8, 0x8);
    [r22 release];
    [var_148 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10075b758:
    [r21 release];
    goto loc_10075b760;
}

+(void)persistAnonymousID:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r22 = [[self JSONStringForObject:r20 error:0x0 invalidObjectHandler:0x0] retain];
    r21 = [[[self class] persistenceFilePath:@"com-facebook-sdk-PersistedAnonymousID.json"] retain];
    [r22 writeToFile:r21 atomically:0x1 encoding:0x1 error:0x0];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

@end