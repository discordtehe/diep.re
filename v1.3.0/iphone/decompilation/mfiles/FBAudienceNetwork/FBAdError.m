@implementation FBAdError

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdError");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)defaultDescriptions {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea94d8);
    if (*qword_1011dda50 != -0x1) {
            dispatch_once(0x1011dda50, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dda58);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)defaultDescriptionForKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [self defaultDescriptions];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    r0 = [r21 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = @"";
            }
    }
    r21 = objc_retainAutoreleaseReturnValue(r0);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)getNSError:(long long)arg2 {
    r0 = [FBAdError getNSError:arg2 description:0x0 detail:0x0];
    return r0;
}

+(void *)getNSError:(long long)arg2 description:(void *)arg3 {
    r0 = [FBAdError getNSError:arg2 description:arg3 detail:0x0];
    return r0;
}

+(void *)getNSError:(long long)arg2 detail:(void *)arg3 {
    r0 = [FBAdError getNSError:arg2 description:0x0 detail:arg3];
    return r0;
}

+(void *)getNSError:(long long)arg2 description:(void *)arg3 detail:(void *)arg4 {
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
    r21 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    if (r19 == 0x0) {
            r23 = [[NSNumber numberWithInteger:r21] retain];
            r0 = [r22 defaultDescriptionForKey:r23];
            r29 = r29;
            r22 = [r0 retain];
            [r19 release];
            [r23 release];
            r19 = r22;
    }
    r21 = [[FBAdError getNSError:r21 domain:@"com.facebook.ads.sdk" description:r19 detail:r20] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getErrorFromJSON:(void *)arg2 withCode:(long long)arg3 description:(void *)arg4 detail:(void *)arg5 {
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
    r29 = &saved_fp;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if (r19 != 0x0) {
            r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    [NSDictionary class];
                    if (([r23 isKindOfClass:r2] & 0x1) != 0x0) {
                            r0 = [r23 dictionaryForKeyOrNil:@"error"];
                            r0 = [r0 retain];
                            r24 = r0;
                            var_58 = [[r0 stringForKeyOrNil:@"message"] retain];
                            r26 = [[r24 stringForKeyOrNil:@"type"] retain];
                            r0 = [r24 stringForKeyOrNil:@"code"];
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r21 != 0x0) {
                                    r28 = [r21 mutableCopy];
                                    if (var_58 != 0x0) {
                                            [r28 setObject:var_58 forKeyedSubscript:@"message"];
                                    }
                                    if (r26 != 0x0) {
                                            [r28 setObject:r26 forKeyedSubscript:@"type"];
                                    }
                                    if (r27 != 0x0) {
                                            [r28 setObject:r27 forKeyedSubscript:@"code"];
                                    }
                            }
                            else {
                                    r0 = [NSMutableDictionary dictionary];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    if (var_58 != 0x0) {
                                            [r28 setObject:var_58 forKeyedSubscript:@"message"];
                                    }
                                    if (r26 != 0x0) {
                                            [r28 setObject:r26 forKeyedSubscript:@"type"];
                                    }
                                    if (r27 != 0x0) {
                                            [r28 setObject:r27 forKeyedSubscript:@"code"];
                                    }
                            }
                            [r21 release];
                            r22 = [[FBAdError getNSError:r22 description:r20 detail:r28] retain];
                            [r27 release];
                            [r26 release];
                            [var_58 release];
                            [r24 release];
                            r21 = r28;
                    }
                    else {
                            r22 = [[FBAdError getNSError:r22 description:r20 detail:r21] retain];
                    }
            }
            else {
                    r22 = [[FBAdError getNSError:r22 description:r20 detail:r21] retain];
            }
            [r23 release];
    }
    else {
            r22 = [[FBAdError getNSError:r22 description:r20 detail:r21] retain];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)getNSError:(long long)arg2 domain:(void *)arg3 description:(void *)arg4 detail:(void *)arg5 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [arg5 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r23 = [**___NSDictionary0__ retain];
            [r22 release];
            r22 = r23;
    }
    var_38 = **___stack_chk_guard;
    r22 = [r22 retain];
    r24 = [[NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2] retain];
    r21 = [[NSError errorWithDomain:r20 code:r21 userInfo:r24] retain];
    [r20 release];
    [r24 release];
    [r22 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end