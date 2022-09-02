@implementation VungleUtil

+(void *)requiredVersion {
    objc_retainAutorelease(@"9.0");
    return @"9.0";
}

+(bool)isValidURLForKey:(void *)arg2 inDictionary:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r0 = [arg3 objectForKeyedSubscript:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    if (([r20 isNullOrNil:r19] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r21 = [[NSURL URLWithString:r19] retain];
            r20 = [r20 isValidURL:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isValidURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 scheme];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 host];
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r21 = 0x1;
                            }
                    }
                    [r0 release];
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

+(bool)isNullOrNil:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != r19) {
                    [NSNull class];
                    r21 = [r19 isKindOfClass:r2];
            }
            else {
                    r21 = 0x1;
            }
            [r20 release];
    }
    else {
            r21 = 0x1;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)isNull:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSNull null];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != r19) {
            [NSNull class];
            r21 = [r19 isKindOfClass:r2];
    }
    else {
            r21 = 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)performBlock:(void *)arg2 afterDelay:(double)arg3 {
    r31 = r31 - 0xc0;
    r0 = [arg2 retain];
    r0 = [r0 retain];
    var_60 = r0;
    r0 = objc_retainBlock(&var_80);
    r1 = @selector(copy);
    r20 = objc_msgSend(r0, r1);
    [r0 release];
    asm { fcvtzs     x1, d0 };
    r21 = dispatch_time(0x0, r1);
    var_88 = r20;
    [r20 retain];
    dispatch_after(r21, *__dispatch_main_q, &var_A8);
    objc_retainBlock(r20);
    [var_88 release];
    [r20 release];
    [var_60 release];
    _Block_object_dispose(r29 - 0x50, 0x8);
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)cancelBlock:(void *)arg2 {
    r2 = *(arg2 + 0x10);
    (r2)(arg2, 0x1, r2);
    return;
}

+(void *)convertFromSecondsToMilliseconds:(double)arg2 {
    r2 = arg2;
    r0 = @class(NSNumber);
    asm { frinta     d0, d0 };
    r0 = [r0 numberWithDouble:r2];
    return r0;
}

+(unsigned long long)dispatchTimeFromNowToDelta:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = dispatch_time(0x0, arg2);
    if (arg2 >= 0x1) {
            asm { csinv      x0, x0, xzr, ge };
    }
    return r0;
}

+(void *)dictionaryWithURLQueryString:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r22 = [arg2 retain];
    var_128 = [NSMutableDictionary new];
    r0 = [arg2 componentsSeparatedByString:@"&"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r19;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r24 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(var_130);
                            }
                            r0 = *(var_118 + r19 * 0x8);
                            r0 = [r0 componentsSeparatedByString:@"="];
                            r0 = [r0 retain];
                            [[r0 lastObject] retain];
                            r0 = [r0 firstObject];
                            r29 = r29;
                            [r0 retain];
                            [var_128 setObject:r2 forKeyedSubscript:r3];
                            [r21 release];
                            [r22 release];
                            [r28 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = objc_msgSend(var_130, var_138);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r20 = [var_128 copy];
    [var_130 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)validateOSVersion:(void *)arg2 againstRequiredOSVersion:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg2 compare:arg3 options:0x40];
    r0 = [r21 release];
    if (r19 < 0x2) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)applicationSupportDirectoryURL {
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 URLsForDirectory:0xe inDomains:0x1];
    r0 = [r0 retain];
    r21 = [[r0 firstObject] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)safeMultiply64BitIntegerX:(long long)arg2 Y:(long long)arg3 result:(long long *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    *r4 = 0x0;
    if (r2 >= 0x1 && r3 >= 0x1) {
            r8 = 0x7fffffffffffffff;
            asm { udiv       x8, x8, x3 };
            if (r8 < r2) {
                    r0 = 0x0;
            }
            else {
                    if ((r3 & r2) < 0x0) {
                            if (0x7fffffffffffffff / r3 > r2) {
                                    r0 = 0x0;
                            }
                            else {
                                    *r4 = r3 * r2;
                                    r0 = 0x1;
                            }
                    }
                    else {
                            *r4 = r3 * r2;
                            r0 = 0x1;
                    }
            }
    }
    else {
            if ((r2 & 0xffffffff80000000) != 0x0 && r3 >= 0x1) {
                    if (0x8000000000000000 / r3 > r2) {
                            r0 = 0x0;
                    }
                    else {
                            if ((r3 & r2) < 0x0) {
                                    if (0x7fffffffffffffff / r3 > r2) {
                                            r0 = 0x0;
                                    }
                                    else {
                                            *r4 = r3 * r2;
                                            r0 = 0x1;
                                    }
                            }
                            else {
                                    *r4 = r3 * r2;
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    if (0x8000000000000000 / r2 > r3 && r2 >= 0x1 && (r3 & 0xffffffff80000000) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            if ((r3 & r2) < 0x0) {
                                    if (0x7fffffffffffffff / r3 > r2) {
                                            r0 = 0x0;
                                    }
                                    else {
                                            *r4 = r3 * r2;
                                            r0 = 0x1;
                                    }
                            }
                            else {
                                    *r4 = r3 * r2;
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

+(bool)isValidBundleDictionary:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x230;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10060bcb0;

loc_10060bc08:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10060bcb0;

loc_10060bc30:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 isEqualToString:r2];
    var_270 = r21;
    if (r0 == 0x0) goto loc_10060bcb8;

loc_10060bc70:
    r0 = [NSArray arrayWithObjects:&var_1E0 count:0x2];
    r29 = r29;
    goto loc_10060bd30;

loc_10060bd30:
    r0 = [r0 retain];
    goto loc_10060bd34;

loc_10060bd34:
    var_210 = q0;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_268 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10060be14;

loc_10060bd68:
    r24 = r0;
    r21 = *var_210;
    goto loc_10060bd7c;

loc_10060bd7c:
    r23 = 0x0;
    goto loc_10060bd88;

loc_10060bd88:
    if (*var_210 != r21) {
            objc_enumerationMutation(r22);
    }
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r20 isNullOrNil:r2];
    [r27 release];
    if ((r28 & 0x1) != 0x0) goto loc_10060bf6c;

loc_10060bde0:
    r23 = r23 + 0x1;
    if (r23 < r24) goto loc_10060bd88;

loc_10060bdec:
    r0 = objc_msgSend(r22, var_268);
    r24 = r0;
    if (r0 != 0x0) goto loc_10060bd7c;

loc_10060be14:
    var_278 = r22;
    [r22 release];
    r0 = [NSArray arrayWithObjects:&var_150 count:0x5];
    r29 = r29;
    r0 = [r0 retain];
    var_250 = q0;
    r0 = [r0 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, var_268);
    if (r0 == 0x0) goto loc_10060bf5c;

loc_10060beb0:
    r25 = r0;
    r23 = *var_250;
    goto loc_10060bec4;

loc_10060bec4:
    r24 = 0x0;
    goto loc_10060bed0;

loc_10060bed0:
    if (*var_250 != r23) {
            objc_enumerationMutation(r22);
    }
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r28 = [r0 retain];
    r21 = [r20 isNull:r2];
    [r28 release];
    if ((r21 & 0x1) != 0x0) goto loc_10060bf80;

loc_10060bf28:
    r24 = r24 + 0x1;
    if (r24 < r25) goto loc_10060bed0;

loc_10060bf34:
    r0 = objc_msgSend(r22, var_268);
    r25 = r0;
    if (r0 != 0x0) goto loc_10060bec4;

loc_10060bf5c:
    [r22 release];
    r20 = 0x1;
    goto loc_10060bf8c;

loc_10060bf8c:
    [r22 release];
    r22 = var_278;
    r0 = var_270;
    goto loc_10060bf98;

loc_10060bf98:
    [r0 release];
    [r22 release];
    goto loc_10060bfa4;

loc_10060bfa4:
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10060bf80:
    [r22 release];
    r20 = 0x0;
    goto loc_10060bf8c;

loc_10060bf6c:
    [r22 release];
    r20 = 0x0;
    r0 = var_270;
    goto loc_10060bf98;

loc_10060bcb8:
    if (([r21 isEqualToString:r2] & 0x1) != 0x0 || [r21 isEqualToString:r2] != 0x0) goto loc_10060bce8;

loc_10060bfe8:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_10060c04c;

loc_10060c000:
    r0 = [NSArray arrayWithObjects:r29 - 0xa0 count:0x3];
    r29 = r29;
    goto loc_10060bd30;

loc_10060c04c:
    r0 = 0x0;
    goto loc_10060bd34;

loc_10060bce8:
    r0 = [NSArray arrayWithObjects:r29 - 0x80 count:0x3];
    r29 = r29;
    goto loc_10060bd30;

loc_10060bcb0:
    r20 = 0x0;
    goto loc_10060bfa4;
}

+(bool)isTopMostViewController:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r23 = [[r0 rootViewController] retain];
    r20 = [[VungleUtil topViewControllerWithRootViewController:r23] retain];
    [r23 release];
    [r0 release];
    [r21 release];
    if (r20 == r19) {
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(void *)sha1FromString:(void *)arg2 {
    r2 = arg2;
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
    if (r2 != 0x0) {
            r0 = [r2 dataUsingEncoding:0x4];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r19 = r0;
            r20 = [r0 bytes];
            r0 = [r19 length];
            r23 = &stack[-92];
            CC_SHA1(r20, r0, &stack[-92]);
            r20 = [[NSMutableString stringWithCapacity:0x28] retain];
            r24 = 0x0;
            do {
                    [r20 appendFormat:r2];
                    r24 = r24 + 0x1;
            } while (r24 != 0x14);
            r21 = [r20 copy];
            [r20 release];
            [r19 release];
    }
    else {
            r21 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)topViewControllerWithRootViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [UITabBarController class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10060c2b8;

loc_10060c280:
    r21 = [[r19 selectedViewController] retain];
    r0 = [r20 topViewControllerWithRootViewController:r21];
    goto loc_10060c36c;

loc_10060c36c:
    r20 = [r0 retain];
    [r21 release];
    goto loc_10060c37c;

loc_10060c37c:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_10060c2b8:
    r22 = @selector(isKindOfClass:);
    [UINavigationController class];
    if (objc_msgSend(r19, r22) == 0x0) goto loc_10060c314;

loc_10060c2dc:
    r21 = [[r19 visibleViewController] retain];
    r0 = [r20 topViewControllerWithRootViewController:r21];
    goto loc_10060c36c;

loc_10060c314:
    r0 = [r19 presentedViewController];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    r0 = r19;
    if (r22 == 0x0) goto loc_10060c398;

loc_10060c340:
    r21 = [[r0 presentedViewController] retain];
    r0 = [r20 topViewControllerWithRootViewController:r21];
    goto loc_10060c36c;

loc_10060c398:
    r20 = [r0 retain];
    goto loc_10060c37c;
}

+(void *)storeParametersFromURL:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    r0 = [NSScanner scannerWithString:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r0 scanUpToString:@"/id" intoString:0x0];
    [r20 scanString:@"/id" intoString:0x0];
    [r20 scanInteger:&var_48];
    if (var_48 != 0x0) {
            r21 = [[NSNumber numberWithInteger:r2] retain];
            r0 = [NSURL URLWithString:r19];
            r0 = [r0 retain];
            r22 = r0;
            r24 = [[r0 query] retain];
            r0 = [VungleUtil dictionaryWithURLQueryString:r24];
            r0 = [r0 retain];
            r25 = [r0 mutableCopy];
            [r0 release];
            [r24 release];
            [r25 setValue:r21 forKey:**_SKStoreProductParameterITunesItemIdentifier];
            r23 = [r25 copy];
            [r25 release];
            [r22 release];
            [r21 release];
    }
    else {
            r23 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(bool)validateTPAT:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x30 count:0x1];
    r0 = [r0 retain];
    r0 = [r0 retain];
    [r19 enumerateKeysAndObjectsUsingBlock:&var_88];
    r21 = *(int8_t *)(&var_50 + 0x18);
    [r0 release];
    _Block_object_dispose(&var_50, 0x8);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isVersionMatching:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = [[r0 systemVersion] retain];
    [r0 release];
    var_110 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10060c6f8;

loc_10060c684:
    r22 = r0;
    r24 = *var_110;
    goto loc_10060c694;

loc_10060c694:
    r26 = 0x0;
    goto loc_10060c69c;

loc_10060c69c:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_10060c700;

loc_10060c6cc:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_10060c69c;

loc_10060c6d8:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_10060c694;

loc_10060c6f8:
    r21 = 0x0;
    goto loc_10060c704;

loc_10060c704:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10060c700:
    r21 = 0x1;
    goto loc_10060c704;
}

+(bool)validateURL:(void *)arg2 key:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[NSURL URLWithString:r19] retain];
    r21 = [VungleUtil isValidURL:r22];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)validateValue:(void *)arg2 key:(void *)arg3 {
    r31 = r31 - 0x130;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10060cc04;

loc_10060cbe8:
    r0 = [r21 validateURL:r19 key:r20];
    goto loc_10060cc3c;

loc_10060cc3c:
    r22 = r0;
    goto loc_10060cc40;

loc_10060cc40:
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10060cc04:
    r23 = @selector(isKindOfClass:);
    [NSDictionary class];
    if (objc_msgSend(r19, r23) == 0x0) goto loc_10060cc8c;

loc_10060cc28:
    r0 = [r21 validateTPAT:r19];
    goto loc_10060cc3c;

loc_10060cc8c:
    r23 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r19, r23) != 0x0) {
            r0 = [r19 retain];
            r23 = r0;
            var_110 = q0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r25 = r0;
                    r27 = *var_110;
                    r22 = 0x1;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_110 != r27) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r22 = r22 & [r21 validateValue:r2 key:r3];
                                    r28 = r28 + 0x1;
                            } while (r28 < r25);
                            r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            else {
                    r22 = 0x1;
            }
            [r23 release];
    }
    else {
            r22 = 0x1;
    }
    goto loc_10060cc40;
}

+(bool)isOrientationLandscapeOnly {
    r31 = r31 - 0x150;
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
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [[r0 delegate] retain];
    var_128 = r0;
    r0 = [r0 windows];
    r0 = [r0 retain];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-240];
    var_138 = r1;
    var_130 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r22 = 0x0;
            r28 = 0x0;
            r21 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(var_130);
                            }
                            r8 = var_118;
                            r27 = *(r8 + r19 * 0x8);
                            if ([r20 respondsToSelector:@selector(application:supportedInterfaceOrientationsForWindow:), r3] != 0x0) {
                                    r3 = r27;
                                    r0 = [r20 application:var_128 supportedInterfaceOrientationsForWindow:r3];
                            }
                            else {
                                    r0 = [var_128 supportedInterfaceOrientationsForWindow:r2];
                            }
                            if ((r0 & 0x3) != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                            r22 = r22 | r8;
                            r8 = 0x13;
                            if ((r0 & r8) != 0x0) {
                                    r8 = 0x13;
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                            r28 = r28 | r8;
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r3 = &stack[-240];
                    r0 = objc_msgSend(var_130, var_138);
                    r23 = r0;
            } while (r0 != 0x0);
            r19 = r28 & (r22 ^ 0x1);
    }
    else {
            r19 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [var_130 release];
    [r20 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r19 & 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end