@implementation SSAHelperMethods

+(void *)applicationKeyWindow {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [[r0 keyWindow] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)decodeJSONObject:(void *)arg2 forEncoding:(unsigned long long)arg3 withError:(void * *)arg4 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg4;
    if (r2 != 0x0) {
            r20 = [[r2 dataUsingEncoding:r3] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x0 error:&var_40];
            r21 = [r0 retain];
            r22 = [var_40 retain];
            if (r22 != 0x0) {
                    *r19 = objc_retainAutorelease(r22);
            }
            [r20 release];
            [r22 release];
    }
    else {
            r20 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
            *r19 = [[[NSError errorWithDomain:@"com.ironsrc.erros" code:0x0 userInfo:r20] retain] autorelease];
            [r20 release];
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

+(void *)getMACAddress {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (if_nametoindex("en0") == 0x0) goto loc_10070b3a8;

loc_10070b2f8:
    r0 = sysctl(r29 - 0x30, 0x6, 0x0, &var_38, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_10070b3b4;

loc_10070b318:
    r19 = malloc(var_38);
    if (r19 == 0x0) goto loc_10070b3cc;

loc_10070b328:
    r0 = sysctl(r29 - 0x30, 0x6, r19, &var_38, 0x0, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_10070b3d8;

loc_10070b348:
    r8 = *(int8_t *)(r19 + 0x75);
    r20 = [[NSString stringWithFormat:r2] retain];
    free(r19);
    goto loc_10070b3fc;

loc_10070b3fc:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10070b3d8:
    r20 = @"sysctl msgBuffer failure";
    goto loc_10070b3e0;

loc_10070b3e0:
    [r20 retain];
    goto loc_10070b3e8;

loc_10070b3e8:
    free(r19);
    [r20 release];
    r20 = 0x0;
    goto loc_10070b3fc;

loc_10070b3cc:
    r20 = @"buffer allocation failure";
    goto loc_10070b3e0;

loc_10070b3b4:
    r20 = @"sysctl mgmtInfoBase failure";
    goto loc_10070b3bc;

loc_10070b3bc:
    [r20 retain];
    r19 = 0x0;
    goto loc_10070b3e8;

loc_10070b3a8:
    r20 = @"if_nametoindex failure";
    goto loc_10070b3bc;
}

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
                    r0 = [SSAHelperMethods platformString];
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
            r0 = [SSAHelperMethods platformString];
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

+(void *)getGeneralParamsDic {
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
    r19 = [[SSAHelperMethods platformString] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r27 = [[r0 bundleIdentifier] retain];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r8 = [r21 rangeOfString:@"."];
    if (r8 == 0x7fffffffffffffff) {
            r0 = [r21 retain];
    }
    else {
            r0 = [r21 substringToIndex:r8];
            r29 = r29;
            r0 = [r0 retain];
    }
    r22 = r0;
    r0 = [CTTelephonyNetworkInfo alloc];
    r0 = [r0 init];
    var_70 = r0;
    r0 = [r0 subscriberCellularProvider];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 carrierName];
    r29 = r29;
    r24 = [r0 retain];
    [r25 release];
    r25 = [SSEDeviceStatus new];
    r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r0 = *(r8 + 0xf98);
    r0 = [r0 alloc];
    var_60 = r27;
    var_58 = r19;
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r19;
            }
            else {
                    r8 = @"";
            }
    }
    var_80 = r8;
    var_78 = r0;
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r20 = r21;
            }
            else {
                    r20 = @"";
            }
    }
    var_68 = r22;
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r23 = r22;
            }
            else {
                    r23 = @"";
            }
    }
    if (r27 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r22 = r27;
            }
            else {
                    r22 = @"";
            }
    }
    r0 = [r25 vendorId];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r19 = r27;
            }
            else {
                    r19 = @"";
            }
    }
    r26 = @"";
    r28 = [[r25 advertiserId] retain];
    if (r28 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r26 = r28;
            }
            else {
                    r26 = @"";
            }
    }
    r8 = @"true";
    if ([r25 isAdvertisingTrackingEnabled] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"true";
            }
            else {
                    r8 = @"false";
            }
    }
    r26 = [var_78 initWithObjectsAndKeys:@"Apple"];
    [r28 release];
    [r27 release];
    if (r24 != 0x0 && [r24 length] != 0x0) {
            [r26 setObject:r2 forKey:r3];
    }
    [r25 release];
    [r24 release];
    [var_70 release];
    [var_68 release];
    [r21 release];
    [var_60 release];
    [var_58 release];
    r0 = [r26 autorelease];
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

+(void *)decodeFromPercentEscapeString:(void *)arg2 {
    r19 = [[arg2 stringByReplacingOccurrencesOfString:@"+" withString:@" "] retain];
    r20 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(0x0, r19, @"", 0x8000100);
    [r19 release];
    [r20 autorelease];
    r0 = r20;
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
                                    r22 = [[SSAHelperMethods encodeToPercentEscapeString:r21] retain];
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

+(void *)deepEncodeValuesInDictionary:(void *)arg2 decodeFirst:(bool)arg3 {
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
    var_12C = arg3;
    r0 = [arg2 mutableCopy];
    r19 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_158 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_10070bd60;

loc_10070bb00:
    r22 = 0x0;
    r23 = @selector(isKindOfClass:);
    var_120 = r23;
    goto loc_10070bb4c;

loc_10070bb4c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_138);
    }
    r27 = *(0x0 + r22 * 0x8);
    r0 = [r19 objectForKeyedSubscript:r27];
    r29 = r29;
    r21 = [r0 retain];
    [NSString class];
    r28 = objc_msgSend(r21, r23);
    [r21 release];
    if (r28 == 0x0) goto loc_10070bc1c;

loc_10070bbb8:
    if (var_12C != 0x0) {
            r21 = @class(SSAHelperMethods);
            r28 = [[r19 objectForKeyedSubscript:r27] retain];
            r0 = [r21 decodeFromPercentEscapeString:r28];
            r29 = r29;
            r21 = [r0 retain];
            r25 = r25;
            [r28 release];
    }
    else {
            r0 = [r19 objectForKeyedSubscript:r27];
            r29 = r29;
            r21 = [r0 retain];
    }
    r0 = *(&@class(MPVASTModel) + 0xd58);
    r0 = [r0 encodeToPercentEscapeString:r21];
    r29 = r29;
    r28 = [r0 retain];
    [r19 setObject:r28 forKeyedSubscript:r27];
    [r28 release];
    r0 = r21;
    goto loc_10070bd2c;

loc_10070bd2c:
    [r0 release];
    goto loc_10070bd30;

loc_10070bd30:
    r22 = r22 + 0x1;
    r23 = var_120;
    if (r22 < r25) goto loc_10070bb4c;

loc_10070bd40:
    r25 = objc_msgSend(var_138, var_158);
    if (r25 != 0x0) goto loc_10070bb00;

loc_10070bd60:
    var_58 = **___stack_chk_guard;
    [var_138 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10070bc1c:
    r0 = [r19 objectForKeyedSubscript:r27];
    r29 = r29;
    r21 = [r0 retain];
    [NSDictionary class];
    r28 = objc_msgSend(r21, r23);
    [r21 release];
    if (r28 == 0x0) goto loc_10070bd30;

loc_10070bc68:
    r28 = [[r19 objectForKeyedSubscript:r27] retain];
    r0 = [SSAHelperMethods deepEncodeValuesInDictionary:r2 decodeFirst:r3];
    r29 = r29;
    r21 = [r0 retain];
    [r19 setObject:r21 forKeyedSubscript:r27];
    [r21 release];
    r0 = r28;
    goto loc_10070bd2c;
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

+(void *)topMostController {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [SSAHelperMethods applicationKeyWindow];
    r0 = [r0 retain];
    r19 = [[r0 rootViewController] retain];
    [r0 release];
    r21 = @selector(presentedViewController);
    r0 = objc_msgSend(r19, r21);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            do {
                    r22 = r19;
                    r19 = [objc_msgSend(r22, r21) retain];
                    [r22 release];
                    r0 = [r19 presentedViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    r21 = @selector(presentedViewController);
            } while (r0 != 0x0);
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)productTypeBySSAType:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
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
    r19 = _cmd;
    r20 = self;
    if (r21 > 0x4) goto loc_10070c37c;

loc_10070c35c:
    switch (sign_extend_64(*(int32_t *)(0x10070c468 + r21 * 0x4)) + 0x10070c468) {
        case 0:
            r19 = @"RewardedVideo";
            break;
        case 1:
            r19 = @"Interstitial";
            break;
        case 2:
            r19 = @"OfferWall";
            break;
        case 3:
            r19 = @"Banner";
            break;
    }
    [r19 retain];
    goto loc_10070c44c;

loc_10070c44c:
    r0 = [r19 autorelease];
    return r0;

loc_10070c37c:
    r0 = [NSString stringWithUTF8String:"/var/lib/jenkins/workspace/IOS-SSP-unit-testing-develop-release-master-hotfix-branches/SDK5/SSASDK/HelperMethods/SSAHelperMethods.m"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r22;
            }
            else {
                    r0 = @"<Unknown File>";
            }
    }
    r23 = [r0 retain];
    [r22 release];
    r0 = [NSAssertionHandler currentHandler];
    r0 = [r0 retain];
    [r0 handleFailureInMethod:r19 object:r20 file:r23 lineNumber:0x188 description:@"SSAType %d is not valid"];
    [r23 release];
    [r0 release];
    r19 = 0x0;
    goto loc_10070c44c;
}

+(bool)isStringExistAndNotEmpty:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            var_10 = r29;
            stack[-8] = r30;
            r31 = r31 + 0xfffffffffffffff0;
            r0 = [r2 length];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void)setApplicationStatusBarHidden:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if ([SSEApplicationContext isUIViewControllerBasedStatusBarAppearanceFlagSetToNo] != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r0 setStatusBarHidden:r19 withAnimation:r19];
            [r0 release];
    }
    return;
}

+(void *)stringFromData:(void *)arg2 encoding:(unsigned long long)arg3 {
    r22 = [arg2 retain];
    r19 = [[NSString alloc] initWithData:r22 encoding:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(bool)areKeysExistInDictionary:(void *)arg2 keys:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [r20 retain];
    [r19 enumerateObjectsUsingBlock:&var_70];
    [r20 release];
    _Block_object_dispose(&var_40, 0x8);
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(struct CGRect)frameForButtonFromParamsDictionary:(void *)arg2 relativeToFrame:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    var_70 = d13;
    stack[-120] = d12;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    [arg2 retain];
    [[[arg2 objectForKeyedSubscript:r2] retain] intValue];
    [r0 release];
    r19 = [objc_msgSend(r23, r20) retain];
    r0 = objc_msgSend(r23, r20);
    r0 = [r0 retain];
    objc_msgSend(r0, r24);
    asm { scvtf      d8, w0 };
    [r25 release];
    r0 = objc_msgSend(r23, r20);
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    objc_msgSend(r23, r24);
    asm { scvtf      d9, w0 };
    [r23 release];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            if ([r19 isEqualToString:r2] != 0x0) {
                    asm { scvtf      d12, w21 };
                    v13 = v12;
            }
            else {
                    if ([r19 isEqualToString:r2] != 0x0) {
                            asm { scvtf      d12, w21 };
                    }
                    else {
                            if ([r19 isEqualToString:r2] != 0x0) {
                                    asm { scvtf      d13, w21 };
                                    d0 = d10 - d13;
                            }
                            else {
                                    if ([r19 isEqualToString:r2] != 0x0) {
                                            asm { scvtf      d0, w21 };
                                            d0 = d10 - d0;
                                    }
                            }
                    }
            }
    }
    else {
            r23 = @selector(isKindOfClass:);
            [NSDictionary class];
            if (objc_msgSend(r19, r23) != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"x"];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:@"y"];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r21 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    [r0 integerValue];
                                    asm { scvtf      d13, x0 };
                                    [r21 release];
                                    r0 = objc_msgSend(r19, r20);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, r22);
                                    asm { scvtf      d12, x0 };
                                    [r20 release];
                            }
                    }
            }
    }
    r0 = [r19 release];
    return r0;
}

+(void *)JSONStringFromDictionary:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r0 = [NSJSONSerialization dataWithJSONObject:arg2 options:0x1 error:&var_38];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r22 = var_38;
    r21 = [r22 retain];
    if (r21 != 0x0) {
            [[r22 localizedDescription] retain];
            NSLog(@"SSAHelperMethods convertDictionaryIntoJSON JSON Error %@", @selector(localizedDescription));
            [r23 release];
            objc_retainAutorelease(r22);
            [r21 release];
            r22 = 0x0;
            *r20 = r21;
    }
    else {
            r22 = [[NSString alloc] initWithData:r19 encoding:0x4];
            [r21 release];
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)errorWithReason:(void *)arg2 code:(long long)arg3 domain:(void *)arg4 {
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
    r29 = &saved_fp;
    r19 = arg4;
    r20 = arg3;
    r21 = [arg2 retain];
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r23 = r21;
            }
            else {
                    r23 = @"internal error - unknown reason";
            }
    }
    r24 = **_NSLocalizedDescriptionKey;
    r19 = [r19 retain];
    r22 = [[NSDictionary dictionaryWithObject:r23 forKey:r24] retain];
    [r21 release];
    r0 = [NSError alloc];
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r19;
            }
            else {
                    r2 = @"ironsrc.com.errors.undefinedErrors";
            }
    }
    r20 = [r0 initWithDomain:r2 code:r20 userInfo:r22];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)dictionaryFromJsonString:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r8 = arg2;
    if (r8 != 0x0) {
            r22 = [[r8 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r22 options:0x0 error:&var_38];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_38 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [r21 localizedDescription];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [r21 localizedDescription];
                            r29 = r29;
                            r22 = [r0 retain];
                    }
                    else {
                            r22 = @"internal error - unknown reason";
                            [r22 retain];
                    }
                    [r23 release];
                    *r19 = [[[SSAHelperMethods errorWithReason:r22 code:0x0 domain:@"ironsrc.com.errors.osapi"] retain] autorelease];
                    [r22 release];
                    r22 = 0x0;
            }
            else {
                    r22 = [r20 copy];
            }
            [r20 release];
            [r21 release];
    }
    else {
            r0 = [SSAHelperMethods errorWithReason:@"cannot serialize json string - empty string param" code:0x0 domain:@"ironsrc.com.errors.undefinedErrors"];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r22 = 0x0;
            *r19 = r0;
    }
    r0 = [r22 autorelease];
    return r0;
}

@end