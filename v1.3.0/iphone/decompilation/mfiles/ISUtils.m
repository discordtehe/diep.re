@implementation ISUtils

+(void *)platformString {
    sysctlbyname("hw.machine", 0x0, &var_18, 0x0, 0x0);
    sysctlbyname("hw.machine", malloc(var_18), &var_18, 0x0, 0x0);
    [[NSString stringWithCString:r20 encoding:0x4] retain];
    free(r20);
    r0 = [r19 autorelease];
    return r0;
}

+(bool)isIphoneAppOnIpadDevice {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r21 = [r0 userInterfaceIdiom];
            [r20 release];
            [r19 release];
            if (r21 == 0x1) {
                    r0 = 0x0;
            }
            else {
                    r0 = [ISUtils platformString];
                    r0 = [r0 retain];
                    r19 = r0;
                    if ([r0 rangeOfString:@"ipad" options:0x1] != 0x7fffffffffffffff) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r19 release];
                    r0 = r20;
            }
    }
    else {
            r20 = @selector(currentDevice);
            [r19 release];
            r0 = [ISUtils platformString];
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 rangeOfString:@"ipad" options:0x1] != 0x7fffffffffffffff) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r19 release];
            r0 = r20;
    }
    return r0;
}

+(void *)getMACAddress {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (if_nametoindex("en0") == 0x0) goto loc_1006b646c;

loc_1006b63bc:
    r0 = sysctl(r29 - 0x30, 0x6, 0x0, &var_38, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1006b6478;

loc_1006b63dc:
    r19 = malloc(var_38);
    if (r19 == 0x0) goto loc_1006b6490;

loc_1006b63ec:
    r0 = sysctl(r29 - 0x30, 0x6, r19, &var_38, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1006b649c;

loc_1006b640c:
    r8 = *(int8_t *)(r19 + 0x75);
    r20 = [[NSString stringWithFormat:r2] retain];
    free(r19);
    goto loc_1006b64c0;

loc_1006b64c0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006b649c:
    r20 = @"sysctl msgBuffer failure";
    goto loc_1006b64a4;

loc_1006b64a4:
    [r20 retain];
    goto loc_1006b64ac;

loc_1006b64ac:
    free(r19);
    [r20 release];
    r20 = 0x0;
    goto loc_1006b64c0;

loc_1006b6490:
    r20 = @"buffer allocation failure";
    goto loc_1006b64a4;

loc_1006b6478:
    r20 = @"sysctl mgmtInfoBase failure";
    goto loc_1006b6480;

loc_1006b6480:
    [r20 retain];
    r19 = 0x0;
    goto loc_1006b64ac;

loc_1006b646c:
    r20 = @"if_nametoindex failure";
    goto loc_1006b6480;
}

+(unsigned long long)getFreeDiskspace {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1) retain];
    r22 = [[NSFileManager defaultManager] retain];
    r23 = [[r19 lastObject] retain];
    r0 = [r22 attributesOfFileSystemForPath:r23 error:&var_38];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [var_38 retain];
    [r23 release];
    [r22 release];
    if (r21 != 0x0) {
            r0 = [r21 objectForKey:**_NSFileSystemFreeSize];
            r0 = [r0 retain];
            r23 = [r0 unsignedLongLongValue];
            [r0 release];
            r22 = r23 >> 0x14;
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

+(void *)encodeToPercentEscapeString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = CFURLCreateStringByAddingPercentEscapes(0x0, r19, 0x0, @"!*'()\";:@&=+$,/?%#[] ", 0x8000100);
            }
            else {
                    r20 = @"";
                    [r20 retain];
            }
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getGeneralParamsDic {
    r31 = r31 - 0xd0;
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
    r20 = [[ISUtils platformString] retain];
    var_B8 = [[ISUtils getMACAddress] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 bundleIdentifier] retain];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = [[r0 systemVersion] retain];
    [r0 release];
    r0 = [CTTelephonyNetworkInfo alloc];
    r0 = [r0 init];
    var_C0 = r0;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 carrierName];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r27 release];
    var_B0 = r20;
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = r20;
            }
            else {
                    r9 = @"";
            }
    }
    r9 = @"deviceOSVersion";
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = r22;
            }
            else {
                    r9 = @"";
            }
    }
    r8 = @"";
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r21;
            }
            else {
                    r8 = @"";
            }
    }
    r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&stack[-184] count:0x5];
    r0 = [r0 retain];
    r27 = [r0 mutableCopy];
    [r0 release];
    r0 = [ASIdentifierManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r19 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    if (r19 != 0x0) {
            r0 = [ASIdentifierManager sharedManager];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 advertisingIdentifier];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 UUIDString];
            r29 = r29;
            [r0 retain];
            [r20 release];
            [r19 release];
            [r27 setObject:r2 forKey:r3];
            [r28 release];
    }
    if (r26 != 0x0) {
            if ([r26 length] != 0x0) {
                    [r27 setObject:r2 forKey:r3];
            }
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r24 = [r0 integerValue];
    [r0 release];
    [r19 release];
    r19 = var_B8;
    if (r19 != 0x0 && r24 <= 0x6) {
            [r27 setObject:r2 forKey:r3];
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [var_C0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [var_B0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r27 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)decodeFromPercentEscapeString:(void *)arg2 {
    r19 = [[arg2 stringByReplacingOccurrencesOfString:@"+" withString:@" "] retain];
    r20 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(0x0, r19, @"", 0x8000100);
    [r19 release];
    [r20 autorelease];
    r0 = r20;
    return r0;
}

+(long long)getOrientationLockedState {
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
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 objectForInfoDictionaryKey:@"UISupportedInterfaceOrientations"] retain];
    [r0 release];
    var_108 = q0;
    r0 = [r20 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r21 = objc_msgSend(r0, r1);
    if (r21 != 0x0) {
            r26 = 0x0;
            r27 = 0x0;
            r28 = *var_108;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_108 != r28) {
                                    objc_enumerationMutation(r19);
                            }
                            r8 = var_110;
                            r25 = *(r8 + r23 * 0x8);
                            if ([r25 rangeOfString:r2 options:r3] == 0x7fffffffffffffff) {
                                    if ([r25 rangeOfString:r2 options:r3] != 0x7fffffffffffffff) {
                                            if (CPU_FLAGS & NE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    r26 = r26 | r8;
                            }
                            else {
                                    r27 = 0x1;
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r21);
                    r21 = objc_msgSend(r19, var_120);
            } while (r21 != 0x0);
            [r19 release];
            r8 = r26 ^ r27;
            if ((r26 & 0x1) == 0x0) {
                    asm { cinc       x9, x9, eq };
            }
            r20 = 0x7fffffffffffffff;
            if ((r8 & 0x1) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = 0x1;
                    }
            }
    }
    else {
            [r19 release];
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)colorWithHex:(unsigned int)arg2 {
    asm { ubfx       w9, w2, #0x8, #0x8 };
    asm { ubfx       w10, w2, #0x10, #0x8 };
    r0 = @class(UIColor);
    asm { ucvtf      s0, w10 };
    asm { fdiv       s0, s0, s2 };
    asm { fcvt       d0, s0 };
    asm { ucvtf      s1, w9 };
    asm { fdiv       s1, s1, s2 };
    asm { ucvtf      s3, w8 };
    asm { fcvt       d1, s1 };
    asm { fdiv       s2, s3, s2 };
    asm { fcvt       d2, s2 };
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

+(void *)encodeToPercentEscapeStringWithDomain:(void *)arg2 andParams:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r28 = [r20 retain];
    r21 = r28;
    if (r19 != 0x0) {
            r21 = [r19 mutableCopy];
            [r19 release];
            var_108 = q0;
            var_120 = r21;
            r0 = [r21 allKeys];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            var_128 = r0;
            r23 = objc_msgSend(r0, r1);
            r19 = r28;
            if (r23 != 0x0) {
                    r24 = *var_108;
                    var_138 = r28;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_108 != r24) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r21 = [[var_120 objectForKeyedSubscript:*(var_110 + r20 * 0x8)] retain];
                                    r22 = [[ISUtils encodeToPercentEscapeString:r21] retain];
                                    r0 = [r28 stringByAppendingFormat:r2];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    [r28 release];
                                    [r22 release];
                                    [r21 release];
                                    r20 = r20 + 0x1;
                                    r28 = r19;
                            } while (r20 < r23);
                            r23 = objc_msgSend(var_128, var_130);
                            r28 = r19;
                    } while (r23 != 0x0);
                    r28 = var_138;
            }
            [var_128 release];
            r21 = [[r19 stringByReplacingOccurrencesOfString:@"?&" withString:@"?"] retain];
            [r19 release];
            [var_120 release];
    }
    var_58 = **___stack_chk_guard;
    [r28 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void)report_memory:(void *)arg2 {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = *(int32_t *)*_mach_task_self_;
    r0 = task_info(r0, 0x14, &stack[-80], &var_44);
    if (r0 != 0x0) {
            mach_error_string(r0);
            r0 = @"Error with task_info(): %s";
    }
    else {
            r0 = @"%@: %u";
    }
    NSLog(r0);
    [r19 release];
    return;
}

+(void *)colorWithHexString:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = [arg2 stringByReplacingOccurrencesOfString:@"#" withString:@""];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] == 0x3) {
            r21 = [[r19 substringWithRange:0x0] retain];
            r22 = [[r19 substringWithRange:0x0] retain];
            r24 = [[r19 substringWithRange:0x1] retain];
            r26 = [[r19 substringWithRange:0x1] retain];
            r27 = [[r19 substringWithRange:0x2] retain];
            r3 = 0x1;
            r25 = [[r19 substringWithRange:0x2] retain];
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r23 = [r0 retain];
            [r19 release];
            [r25 release];
            [r27 release];
            [r26 release];
            [r24 release];
            [r22 release];
            [r21 release];
            r19 = r23;
    }
    if ([r19 length] == 0x6) {
            r0 = [r19 stringByAppendingString:@"ff"];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            r19 = r20;
    }
    r0 = [NSScanner scannerWithString:r19];
    r0 = [r0 retain];
    r2 = &var_54;
    [r0 scanHexInt:r2];
    [r0 release];
    asm { ucvtf      s0, w9 };
    asm { ubfx       w9, w8, #0x10, #0x8 };
    asm { ucvtf      s1, w9 };
    asm { fdiv       s0, s0, s3 };
    asm { fdiv       s1, s1, s3 };
    asm { ubfx       w9, w8, #0x8, #0x8 };
    asm { ucvtf      s2, w9 };
    asm { fdiv       s2, s2, s3 };
    asm { ucvtf      s4, w8 };
    r0 = @class(UIColor);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       d2, s2 };
    asm { fdiv       s3, s4, s3 };
    asm { fcvt       d3, s3 };
    r20 = [[r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getMD5Hash:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) UTF8String];
    [r20 release];
    r0 = sub_100021280();
    r22 = &stack[-88];
    CC_MD5(r19, r0, &stack[-88]);
    r0 = [NSMutableString string];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r23 = 0x0;
    do {
            [r19 appendFormat:r2];
            r23 = r23 + 0x1;
    } while (r23 != 0x10);
    var_38 = **___stack_chk_guard;
    r20 = [[r19 lowercaseString] retain];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)checkRegWithVal:(void *)arg2 pattern:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    var_38 = 0x0;
    r19 = [r20 retain];
    r20 = [[NSRegularExpression regularExpressionWithPattern:r21 options:0x0 error:&var_38] retain];
    [r21 release];
    r21 = [var_38 retain];
    [r19 length];
    r22 = [[r20 firstMatchInString:r19 options:0x0 range:0x0] retain];
    [r21 release];
    [r19 release];
    if (r22 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)checkLengthWithVal:(int)arg2 minLength:(int)arg3 maxLength:(int)arg4 {
    r4 = arg4;
    r2 = arg2;
    if (r2 >= arg3) {
            if (CPU_FLAGS & GE) {
                    r8 = 0x1;
            }
    }
    if (r2 <= r4) {
            if (CPU_FLAGS & LE) {
                    r9 = 0x1;
            }
    }
    r0 = r8 & r9;
    return r0;
}

+(void *)timeInMilliSeconds {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    r20 = @class(NSString);
    r21 = @class(NSNumber);
    [r0 timeIntervalSince1970];
    asm { frintm     d0, d0 };
    r0 = [r21 numberWithDouble:r2];
    r0 = [r0 retain];
    [r0 longLongValue];
    r20 = [[r20 stringWithFormat:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(unsigned long long)freeDiskSpace {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1) retain];
    r21 = [[NSFileManager defaultManager] retain];
    r22 = [[r19 lastObject] retain];
    r0 = [r21 attributesOfFileSystemForPath:r22 error:&var_28];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r20 objectForKey:**_NSFileSystemFreeSize];
            r0 = [r0 retain];
            r21 = [r0 unsignedLongLongValue] >> 0x14;
            [r0 release];
    }
    else {
            r21 = 0xffffffffffffffff;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)timeFormatted:(int)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r19 = @"+";
            [r19 retain];
    }
    else {
            r19 = @"-";
            [r19 retain];
            asm { neg        w20, w20 };
    }
    r8 = 0x88888889;
    asm { smull      x9, w20, w8 };
    r9 = (SAR((r9 >> 0x20) + r20, 0x5)) + ((r9 >> 0x20) + r20) / 0xffffffff80000000;
    asm { smull      x8, w9, w8 };
    asm { smull      x9, w20, w9 };
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAppVersion {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void)saveValueToUDForKey:(void *)arg2 forKey:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r20 forKey:r19];
    [r19 release];
    [r20 release];
    [r0 synchronize];
    [r21 release];
    return;
}

+(void *)URLEncodedString:(void *)arg2 {
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
    r22 = [arg2 retain];
    r19 = [[NSMutableString string] retain];
    r20 = [objc_retainAutorelease(arg2) UTF8String];
    [r22 release];
    r21 = sub_100021280();
    if (r21 != 0x0) {
            do {
                    r8 = *(int8_t *)r20;
                    if (r8 <= 0x5e) {
                            if (r8 >= 0x2f) {
                                    if (r8 == 0x20) {
                                            r0 = r19;
                                            r1 = @selector(appendString:);
                                    }
                                    else {
                                            if (r8 >= 0x3a) {
                                                    asm { ccmp       w9, #0x19, #0x0, hs };
                                            }
                                            if (!CPU_FLAGS & A) {
                                                    r0 = r19;
                                                    r1 = @selector(appendFormat:);
                                            }
                                            else {
                                                    r0 = r19;
                                                    r1 = @selector(appendFormat:);
                                            }
                                    }
                            }
                            else {
                                    r0 = r19;
                                    r1 = @selector(appendFormat:);
                            }
                    }
                    else {
                            if (r8 != 0x5f && r8 != 0x7e) {
                                    if (r8 >= 0x3a) {
                                            asm { ccmp       w9, #0x19, #0x0, hs };
                                    }
                                    if (!CPU_FLAGS & A) {
                                            r0 = r19;
                                            r1 = @selector(appendFormat:);
                                    }
                                    else {
                                            r0 = r19;
                                            r1 = @selector(appendFormat:);
                                    }
                            }
                            else {
                                    r0 = r19;
                                    r1 = @selector(appendFormat:);
                            }
                    }
                    objc_msgSend(r0, r1);
                    r20 = r20 + 0x1;
                    r21 = r21 - 0x1;
            } while (r21 != 0x0);
    }
    r0 = [r19 autorelease];
    return r0;
}

+(long long)getIntegerUDForKey:(void *)arg2 defaultValue:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r21 objectForKey:r2];
            r0 = [r0 retain];
            r20 = [r0 integerValue];
            [r0 release];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(double)getCGFloatUDForKey:(void *)arg2 defaultValue:(long long)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r0 = [r0 retain];
            [r0 floatValue];
            v8 = v0;
            [r0 release];
    }
    else {
            asm { scvtf      s8, x21 };
    }
    asm { fcvt       d8, s8 };
    [r22 release];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

+(double)getDoubleUDForKey:(void *)arg2 defaultValue:(long long)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r20 objectForKey:r2];
            r0 = [r0 retain];
            [r0 doubleValue];
            v8 = v0;
            [r0 release];
    }
    else {
            asm { scvtf      d8, x21 };
    }
    [r22 release];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

+(bool)getBOOLUDForKey:(void *)arg2 defaultValue:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r22 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 objectForKey:r2] retain];
    [r22 release];
    if (r21 != 0x0) {
            r19 = [r21 boolValue];
    }
    if (r19 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)getStringUDForKey:(void *)arg2 defaultValue:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r24 = [[r21 objectForKey:r2] retain];
            r25 = 0x1;
    }
    else {
            r25 = 0x0;
            r24 = r20;
    }
    r23 = [r24 retain];
    if (r25 != 0x0) {
            [r24 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)getObjectFromUDForKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getFullNameForAdUnit:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            r20 = [*0x100e8cce0 retain];
    }
    else {
            r20 = 0x0;
    }
    if ([r19 isEqualToString:r2] != 0x0) {
            r22 = [*0x100e8cce8 retain];
            [r20 release];
            r20 = r22;
    }
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
            r21 = [*0x100e8ccf0 retain];
            [r20 release];
            r20 = r21;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)UUIDForSession {
    if (*qword_1011dab80 != -0x1) {
            dispatch_once(0x1011dab80, 0x100e8b360);
    }
    r0 = *0x1011dab78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)sendAutomationLog:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    r21 = [[NSString stringWithFormat:@"automation_log:%.20ftext:%@"] retain];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x0 tag:0x6];
    [r0 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

@end