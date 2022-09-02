@implementation MPAdConfiguration

-(bool)hasPreferredSize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self preferredSize];
    if (d0 > 0x0) {
            r0 = [r19 preferredSize];
            if (d1 > 0x0) {
                    if (CPU_FLAGS & G) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)customEventClassDataFromMetadata:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r20 = [arg2 retain];
    r0 = [r21 dictionaryFromMetadata:r2 forKey:r3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[r20 objectForKey:@"adunit-format"] retain];
            [r20 release];
            if ([r21 length] != 0x0) {
                    r0 = [r19 mutableCopy];
                    [r0 setObject:r21 forKeyedSubscript:*0x100e7f6a0];
                    [r19 release];
                    r19 = r0;
            }
    }
    else {
            r22 = [[r21 dictionaryFromMetadata:r2 forKey:r3] retain];
            [r20 release];
            r21 = r19;
            r19 = r22;
    }
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)setUpCustomEventClassFromMetadata:(void *)arg2 {
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
    r20 = self;
    r19 = [[arg2 objectForKey:r2] retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([r20 adType] == 0x0) goto loc_1004d93c4;

loc_1004d9324:
    if ([r20 adType] != 0x1) goto loc_1004d9458;

loc_1004d9338:
    [r21 setObject:r2 forKey:r3];
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r23);
    goto loc_1004d944c;

loc_1004d944c:
    [r21 setObject:r2 forKey:r3];
    goto loc_1004d9458;

loc_1004d9458:
    r22 = @selector(objectForKey:);
    r24 = [[r20 networkType] retain];
    r0 = objc_msgSend(r21, r22);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 != 0x0) {
            r22 = @selector(objectForKey:);
            r23 = [[r20 networkType] retain];
            r0 = objc_msgSend(r21, r22);
            r29 = r29;
            r22 = [r0 retain];
            [r19 release];
            [r23 release];
            r19 = r22;
    }
    r22 = NSClassFromString(r19);
    if (r19 != 0x0 && r22 == 0x0) {
            r25 = [[NSString stringWithFormat:@"Could not find custom event class named %@"] retain];
            r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r20 class]];
            [r24 release];
            [r25 release];
    }
    r20 = objc_retainAutoreleaseReturnValue(r22);
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;

loc_1004d93c4:
    [r21 setObject:r2 forKey:r3];
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r23);
    goto loc_1004d944c;
}

-(void *)adResponseHTMLString {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = *(self + 0x118);
    if (r0 == 0x0) {
            r20 = objc_alloc();
            r21 = [[r19 adResponseData] retain];
            r20 = [r20 initWithData:r21 encoding:0x4];
            [r19 setAdResponseHTMLString:r20];
            [r20 release];
            [r21 release];
            r0 = *(r19 + 0x118);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isMraidAd {
    r0 = [self metadataAdType];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)concatenateBaseUrlArray:(void *)arg2 withConditionalArray:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if ((r19 | r0) != 0x0) goto loc_1004d9c64;

loc_1004d9c5c:
    r21 = 0x0;
    goto loc_1004d9ca0;

loc_1004d9ca0:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1004d9c64:
    if (r19 == 0x0) goto loc_1004d9c8c;

loc_1004d9c68:
    if (r20 == 0x0) goto loc_1004d9c94;

loc_1004d9c6c:
    r0 = [r19 arrayByAddingObjectsFromArray:r20];
    r0 = [r0 retain];
    goto loc_1004d9c9c;

loc_1004d9c9c:
    r21 = r0;
    goto loc_1004d9ca0;

loc_1004d9c94:
    r0 = r19;
    goto loc_1004d9c98;

loc_1004d9c98:
    r0 = [r0 retain];
    goto loc_1004d9c9c;

loc_1004d9c8c:
    r0 = r20;
    goto loc_1004d9c98;
}

-(void *)networkTypeFromMetadata:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"x-adtype"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            r0 = [r19 objectForKey:@"x-fulladtype"];
            r0 = [r0 retain];
    }
    else {
            r0 = [r20 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)URLFromMetadata:(void *)arg2 forKey:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [[[NSURL URLWithString:r2] retain] autorelease];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)afterLoadUrlsWithLoadDuration:(double)arg2 loadResult:(unsigned long long)arg3 {
    r31 = r31 - 0x190;
    var_60 = d9;
    stack[-104] = d8;
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
    r27 = arg2;
    r21 = self;
    r0 = [self afterLoadUrlsWithMacros];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r27 == 0x1) {
            r22 = [r21 afterLoadSuccessUrlsWithMacros];
            r23 = 0x0;
            r19 = 0x1;
    }
    else {
            r22 = [r21 afterLoadFailureUrlsWithMacros];
            r19 = 0x0;
            r23 = 0x1;
    }
    r0 = [r21 concatenateBaseUrlArray:r20 withConditionalArray:[r22 retain]];
    r29 = r29;
    r21 = [r0 retain];
    if (r23 != 0x0) {
            [r22 release];
    }
    if (r19 != 0x0) {
            [r22 release];
    }
    [r20 release];
    if (r21 == 0x0 || [r21 count] == 0x0) goto loc_1004d9b64;

loc_1004d98ec:
    r19 = @selector(count);
    var_178 = r19;
    var_158 = [[NSMutableArray arrayWithCapacity:objc_msgSend(r21, r19)] retain];
    var_120 = q0;
    var_168 = r21;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r0;
    var_170 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1004d9b38;

loc_1004d9960:
    r25 = r0;
    r19 = *var_120;
    asm { fcvtzu     x13, d0 };
    goto loc_1004d9994;

loc_1004d9994:
    r21 = 0x0;
    goto loc_1004d99b8;

loc_1004d99b8:
    if (*var_120 != r19) {
            objc_enumerationMutation(var_150);
    }
    if ([*(var_128 + r21 * 0x8) length] == 0x0) goto loc_1004d9af8;

loc_1004d99e8:
    if (r27 > 0x3) goto loc_1004d9b6c;

loc_1004d99f0:
    r0 = (0x1004d9a14 + *(int8_t *)(0x100be3f98 + r27) * 0x4)();
    return r0;

loc_1004d9b6c:
    [var_150 release];
    r19 = 0x0;
    r20 = var_158;
    goto loc_1004d9b7c;

loc_1004d9b7c:
    [r20 release];
    r21 = var_168;
    goto loc_1004d9b88;

loc_1004d9b88:
    var_70 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004d9af8:
    r21 = r21 + 0x1;
    if (r21 < r25) goto loc_1004d99b8;

loc_1004d9b04:
    r0 = objc_msgSend(var_150, var_170);
    r25 = r0;
    if (r0 != 0x0) goto loc_1004d9994;

loc_1004d9b38:
    [var_150 release];
    r20 = var_158;
    r0 = objc_msgSend(r20, var_178);
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = 0x0;
            }
    }
    r19 = [r0 retain];
    goto loc_1004d9b7c;

loc_1004d9b64:
    r19 = 0x0;
    goto loc_1004d9b88;
}

-(void *)dictionaryFromMetadata:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r21 = [[r0 objectForKey:arg3] retain];
    [r0 release];
    r0 = [r21 dataUsingEncoding:0x4];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r20 = [[NSJSONSerialization mp_JSONObjectWithData:r19 options:0x1 clearNullObjects:0x1 error:0x0] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)URLsFromMetadata:(void *)arg2 forKey:(void *)arg3 {
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
    r19 = [arg2 retain];
    r0 = [self URLStringsFromMetadata:r19 forKey:arg3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            var_128 = r19;
            r0 = [NSMutableArray arrayWithCapacity:[r20 count]];
            r29 = r29;
            r22 = [r0 retain];
            var_110 = q0;
            var_130 = r20;
            r0 = [r20 retain];
            r23 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r25 = r0;
                    r21 = *var_110;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_110 != r21) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r0 = [NSURL URLWithString:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    if (r0 != 0x0) {
                                            [r22 addObject:r2];
                                    }
                                    [r28 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r25);
                            r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            [r23 release];
            r0 = [r22 count];
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r22;
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            r21 = [r0 retain];
            [r22 release];
            r20 = var_130;
            r19 = var_128;
    }
    else {
            r21 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)refreshIntervalFromMetadata:(void *)arg2 {
    r0 = [arg2 mp_doubleForKey:@"x-refreshtime" defaultValue:r3];
    asm { fmax       d0, d0, d8 };
    return r0;
}

-(double)timeIntervalFromMetadata:(void *)arg2 forKey:(void *)arg3 {
    r0 = [arg2 retain];
    [r0 mp_doubleForKey:arg3 defaultValue:r3];
    r0 = [r0 release];
    return r0;
}

-(void *)URLStringsFromMetadata:(void *)arg2 forKey:(void *)arg3 {
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
    r0 = [arg2 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:arg3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [NSString class];
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r20 retain];
                    r21 = r0;
                    if ([r0 length] != 0x0) {
                            r22 = [[NSArray arrayWithObjects:r29 - 0x68 count:0x1] retain];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r21 release];
            }
            else {
                    r22 = @selector(isKindOfClass:);
                    [NSArray class];
                    if (objc_msgSend(r20, r22) != 0x0) {
                            var_148 = r20;
                            stack[-336] = r23;
                            r0 = [r20 retain];
                            r24 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
                            var_120 = q0;
                            r0 = [r0 retain];
                            r25 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            var_138 = r1;
                            r0 = objc_msgSend(r0, r1);
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    r20 = *var_120;
                                    do {
                                            r26 = 0x0;
                                            do {
                                                    if (*var_120 != r20) {
                                                            objc_enumerationMutation(r25);
                                                    }
                                                    r22 = @selector(isKindOfClass:);
                                                    r23 = *(var_128 + r26 * 0x8);
                                                    [NSString class];
                                                    if (objc_msgSend(r23, r22) != 0x0) {
                                                            [r24 addObject:r2];
                                                    }
                                                    r26 = r26 + 0x1;
                                            } while (r26 < r27);
                                            r0 = objc_msgSend(r25, var_138);
                                            r27 = r0;
                                    } while (r0 != 0x0);
                            }
                            [r25 release];
                            r0 = [r24 count];
                            if (r0 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = r24;
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            r22 = [r0 retain];
                            [r24 release];
                            [r25 release];
                            r20 = var_148;
                            r23 = stack[-336];
                    }
                    else {
                            r22 = 0x0;
                    }
            }
    }
    else {
            r22 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)timeIntervalFromMsmetadata:(void *)arg2 forKey:(void *)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    [r0 mp_doubleForKey:arg3 defaultValue:r3];
    r0 = [r0 release];
    asm { fdiv       d0, d8, d0 };
    if (d8 < 0x0) {
            asm { fcsel      d0, d8, d0, lt };
    }
    return r0;
}

-(long long)percentFromMetadata:(void *)arg2 forKey:(void *)arg3 {
    r0 = [arg2 retain];
    r19 = [r0 mp_integerForKey:arg3 defaultValue:0xffffffffffffffff];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)adAmountFromMetadata:(void *)arg2 key:(void *)arg3 {
    r0 = [arg2 retain];
    r19 = [r0 mp_integerForKey:arg3 defaultValue:0xffffffffffffffff];
    [r0 release];
    r0 = [NSNumber numberWithInteger:r19];
    return r0;
}

-(unsigned long long)orientationTypeFromMetadata:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKey:@"x-orientation"];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r20 = @selector(isEqualToString:);
            if (objc_msgSend(r19, r20) == 0x0) {
                    asm { cinc       x20, x8, eq };
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 data:(void *)arg3 adType:(unsigned long long)arg4 {
    r31 = r31 - 0x80;
    var_60 = d9;
    stack[-104] = d8;
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
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_70 super] init];
    r21 = r0;
    if (r0 == 0x0) goto loc_1004d9268;

loc_1004d85a8:
    [r21 setAdResponseData:r20];
    [r21 setAdType:r22];
    [r21 setAdUnitWarmingUp:[r19 mp_boolForKey:@"x-warmup"]];
    r24 = [[r21 networkTypeFromMetadata:r19] retain];
    [r21 setNetworkType:r24];
    [r24 release];
    r0 = [r21 networkType];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r21 networkType];
            r29 = r29;
            r25 = [r0 retain];
            [r21 setNetworkType:r25];
            [r25 release];
    }
    else {
            [r21 setNetworkType:@""];
    }
    [r24 release];
    [r19 mp_floatForKey:r2];
    asm { fcvt       d8, s0 };
    objc_msgSend(r19, r22);
    asm { fcvt       d1, s0 };
    [r21 setPreferredSize:r2];
    r22 = [[r21 URLFromMetadata:r19 forKey:@"x-clickthrough"] retain];
    [r21 setClickTrackingURL:r22];
    [r22 release];
    r22 = [[r21 URLFromMetadata:r19 forKey:@"x-next-url"] retain];
    [r21 setNextURL:r22];
    [r22 release];
    r25 = [[r19 objectForKey:@"adunit-format"] retain];
    [r21 setFormat:r25];
    [r25 release];
    r24 = [[r21 URLFromMetadata:r19 forKey:@"x-before-load-url"] retain];
    [r21 setBeforeLoadURL:r24];
    [r24 release];
    r25 = [[r21 URLStringsFromMetadata:r19 forKey:@"x-after-load-url"] retain];
    [r21 setAfterLoadUrlsWithMacros:r25];
    [r25 release];
    r25 = [[r21 URLStringsFromMetadata:r19 forKey:@"x-after-load-success-url"] retain];
    [r21 setAfterLoadSuccessUrlsWithMacros:r25];
    [r25 release];
    r24 = [[r21 URLStringsFromMetadata:r19 forKey:@"x-after-load-fail-url"] retain];
    [r21 setAfterLoadFailureUrlsWithMacros:r24];
    [r24 release];
    [r21 refreshIntervalFromMetadata:r19];
    [r21 setRefreshInterval:r19];
    [r21 timeIntervalFromMsmetadata:r2 forKey:r3];
    [r21 setAdTimeoutInterval:r19];
    r25 = [[r21 dictionaryFromMetadata:r19 forKey:@"x-nativeparams"] retain];
    [r21 setNativeSDKParameters:r25];
    [r25 release];
    [r21 setOrientationType:[r21 orientationTypeFromMetadata:r19]];
    [r21 setCustomEventClass:[r21 setUpCustomEventClassFromMetadata:r19]];
    r25 = [[r21 customEventClassDataFromMetadata:r19] retain];
    [r21 setCustomEventClassData:r25];
    [r25 release];
    r25 = [[r19 objectForKey:@"x-dspcreativeid"] retain];
    [r21 setDspCreativeId:r25];
    [r25 release];
    [r21 setPrecacheRequired:objc_msgSend(r19, r23)];
    [r21 setIsVastVideoPlayer:objc_msgSend(r19, r23)];
    r23 = [[NSDate date] retain];
    [r21 setCreationTimestamp:r23];
    [r23 release];
    r23 = [[r19 objectForKey:@"x-creativeid"] retain];
    [r21 setCreativeId:r23];
    [r23 release];
    r23 = [[r19 objectForKey:@"x-adtype"] retain];
    [r21 setMetadataAdType:r23];
    [r23 release];
    [r21 setNativeVideoPlayVisiblePercent:[r21 percentFromMetadata:r2 forKey:r3]];
    [r21 setNativeVideoPauseVisiblePercent:[r21 percentFromMetadata:r2 forKey:r3]];
    r0 = [r21 adAmountFromMetadata:r2 key:r3];
    r0 = [r0 retain];
    [r0 floatValue];
    asm { fcvt       d0, s0 };
    [r21 setNativeImpressionMinVisiblePixels:r2];
    [r27 release];
    [r21 setNativeImpressionMinVisiblePercent:objc_msgSend(r21, r26)];
    objc_msgSend(r21, r24);
    [r21 setNativeImpressionMinVisibleTimeInterval:r19];
    objc_msgSend(r21, r24);
    [r21 setNativeVideoMaxBufferingTime:r19];
    r26 = [[r21 nativeVideoTrackersFromMetadata:r19 key:@"x-video-trackers"] retain];
    [r21 setNativeVideoTrackers:r26];
    [r26 release];
    objc_msgSend(r21, r24);
    [r21 setImpressionMinVisibleTimeInSec:r19];
    r0 = objc_msgSend(r21, r25);
    r0 = [r0 retain];
    objc_msgSend(r0, r23);
    asm { fcvt       d0, s0 };
    [r21 setImpressionMinVisiblePixels:r2];
    [r24 release];
    r23 = [[r21 impressionDataFromMetadata:r19] retain];
    [r21 setImpressionData:r23];
    [r23 release];
    r0 = [r21 URLsFromMetadata:r19 forKey:@"imptrackers"];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 count] != 0x0) {
            [r21 setImpressionTrackingURLs:r23];
    }
    else {
            r0 = [r21 URLsFromMetadata:r19 forKey:@"x-imptracker"];
            r29 = r29;
            r24 = [r0 retain];
            [r21 setImpressionTrackingURLs:r24];
            [r24 release];
    }
    r27 = [[r21 parseAvailableRewardsFromMetadata:r19] retain];
    [r21 setAvailableRewards:r27];
    [r27 release];
    r0 = [r21 availableRewards];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004d8edc;

loc_1004d8e5c:
    r26 = @selector(count);
    r0 = [r21 availableRewards];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r26);
    [r0 release];
    if (r26 == 0x0) goto loc_1004d9018;

loc_1004d8e8c:
    r0 = [r21 availableRewards];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectAtIndexedSubscript:0x0];
    r29 = r29;
    r24 = [r0 retain];
    [r21 setSelectedReward:r24];
    r0 = r24;
    goto loc_1004d9010;

loc_1004d9010:
    [r0 release];
    goto loc_1004d90d4;

loc_1004d90d4:
    [r25 release];
    r24 = [[r19 objectForKey:@"x-rewarded-video-completion-url"] retain];
    [r21 setRewardedVideoCompletionUrl:r24];
    [r24 release];
    [r21 timeIntervalFromMetadata:r19 forKey:@"x-rewarded-duration"];
    [r21 setRewardedPlayableDuration:r19];
    r0 = [r19 objectForKey:@"x-should-reward-on-click"];
    r29 = r29;
    r0 = [r0 retain];
    [r21 setRewardedPlayableShouldRewardOnClick:[r0 boolValue]];
    [r0 release];
    [r21 setClickthroughExperimentBrowserAgent:[r21 clickthroughExperimentVariantFromMetadata:r19 forKey:@"x-browser-agent"]];
    [MOPUBExperimentProvider setDisplayAgentFromAdServer:[r21 clickthroughExperimentBrowserAgent]];
    r0 = [r19 mp_integerForKey:@"x-disable-viewability"];
    if (r0 <= 0x3) {
            [MPViewabilityTracker disableViewability:r0];
    }
    r22 = [[r19 objectForKey:@"adm"] retain];
    [r21 setAdvancedBidPayload:r22];
    [r22 release];
    [r23 release];
    goto loc_1004d9268;

loc_1004d9268:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1004d9018:
    r25 = objc_alloc();
    r27 = [[NSNumber numberWithInteger:*0x100be3f18] retain];
    r25 = [r25 initWithCurrencyType:*0x100e7e860 amount:r27];
    [r27 release];
    r0 = [NSArray arrayWithObject:r25];
    r29 = r29;
    r26 = [r0 retain];
    [r21 setAvailableRewards:r26];
    [r26 release];
    [r21 setSelectedReward:r25];
    goto loc_1004d90d4;

loc_1004d8edc:
    r0 = [r19 objectForKey:@"x-rewarded-video-currency-name"];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = *0x100e7e860;
            }
    }
    r26 = [r0 retain];
    [r27 release];
    r0 = [r21 adAmountFromMetadata:r19 key:@"x-rewarded-video-currency-amount"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 integerValue] <= 0x0) {
            r0 = [NSNumber numberWithInteger:*0x100be3f18];
            r29 = r29;
            r27 = [r0 retain];
            [r25 release];
            r25 = r27;
    }
    r27 = [objc_alloc() initWithCurrencyType:r26 amount:r25];
    [r26 release];
    r0 = [NSArray arrayWithObject:r27];
    r29 = r29;
    r26 = [r0 retain];
    [r21 setAvailableRewards:r26];
    [r26 release];
    [r21 setSelectedReward:r27];
    r0 = r27;
    goto loc_1004d9010;
}

-(void *)parseAvailableRewardsFromMetadata:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg2 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [NSMutableArray arrayWithCapacity:[r20 count]];
                    r0 = [r0 retain];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r20 enumerateObjectsUsingBlock:&var_58];
                    r22 = r0;
            }
            else {
                    r22 = [[NSString stringWithFormat:@"No available rewards found."] retain];
                    r24 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
                    [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
                    [r24 release];
                    r21 = 0x0;
            }
            [r22 release];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)setVideoTrackers:(void *)arg2 event:(void *)arg3 urls:(void *)arg4 {
    r31 = r31 - 0x190;
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
    var_178 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    var_168 = [NSMutableArray new];
    var_130 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r0;
    var_170 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r27 = *var_130;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_130 != r27) {
                                    objc_enumerationMutation(var_148);
                            }
                            r21 = *(var_138 + r28 * 0x8);
                            if ([r21 rangeOfString:@"%%VIDEO_EVENT%%"] != 0x7fffffffffffffff) {
                                    r23 = @selector(addObject:);
                                    [[r21 stringByReplacingOccurrencesOfString:@"%%VIDEO_EVENT%%" withString:r20] retain];
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-256] forKeys:&var_100 count:0x2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [objc_alloc() initWithDictionary:r0];
                                    objc_msgSend(var_168, r23);
                                    [r20 release];
                                    r20 = r19;
                                    [r22 release];
                                    [r21 release];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r0 = objc_msgSend(var_148, var_170);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    [var_148 release];
    r21 = var_168;
    r0 = [r21 count];
    r19 = var_178;
    if (r0 != 0x0) {
            [r19 setObject:r21 forKeyedSubscript:r20];
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [var_148 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)nativeVideoTrackersFromMetadata:(void *)arg2 key:(void *)arg3 {
    r31 = r31 - 0x180;
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
    var_128 = self;
    r0 = [self dictionaryFromMetadata:r20 forKey:arg3];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            var_138 = r20;
            r22 = [NSMutableDictionary new];
            r20 = [[r21 objectForKeyedSubscript:@"events"] retain];
            var_140 = r21;
            r23 = [[r21 objectForKeyedSubscript:@"urls"] retain];
            r24 = [[NSSet setWithObjects:*0x100e7e358] retain];
            var_110 = q0;
            r0 = [r20 retain];
            r25 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r27 = r0;
                    r26 = *var_110;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(r25);
                                    }
                                    r20 = *(var_118 + r21 * 0x8);
                                    if ([r24 containsObject:r20] != 0x0) {
                                            [var_128 setVideoTrackers:r2 event:r3 urls:r4];
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r27);
                            r0 = objc_msgSend(r25, var_130);
                            r27 = r0;
                    } while (r0 != 0x0);
            }
            [r25 release];
            if ([r22 count] != 0x0) {
                    r19 = [r22 retain];
            }
            else {
                    r19 = 0x0;
            }
            r20 = var_138;
            [r24 release];
            [r23 release];
            [r25 release];
            [r22 release];
            r21 = var_140;
    }
    else {
            r19 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)clickthroughExperimentVariantFromMetadata:(void *)arg2 forKey:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = [r0 mp_integerForKey:arg3];
    r0 = [r0 release];
    if (r19 <= 0x2) {
            asm { csinv      x0, x19, xzr, le };
    }
    return r0;
}

-(void *)impressionDataFromMetadata:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:@"impdata"];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [objc_alloc() initWithDictionary:r19];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(unsigned long long)adType {
    r0 = *(self + 0x10);
    return r0;
}

-(bool)visibleImpressionTrackingEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self impressionMinVisibleTimeInSec];
    if (d0 >= 0x0) {
            [r19 impressionMinVisiblePixels];
            if (d0 >= 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setAdType:(unsigned long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void *)networkType {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(bool)adUnitWarmingUp {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setAdUnitWarmingUp:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)setNetworkType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isEndOfWaterfall {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setIsEndOfWaterfall:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(struct CGSize)preferredSize {
    r0 = self;
    return r0;
}

-(void)setPreferredSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x140) = d0;
    *(self + 0x148) = d1;
    return;
}

-(void *)clickTrackingURL {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setClickTrackingURL:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setImpressionTrackingURLs:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)impressionTrackingURLs {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)nextURL {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)beforeLoadURL {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setNextURL:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void)setBeforeLoadURL:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void)setRefreshInterval:(double)arg2 {
    *(self + 0x40) = d0;
    return;
}

-(double)refreshInterval {
    r0 = self;
    return r0;
}

-(void)setAdTimeoutInterval:(double)arg2 {
    *(self + 0x48) = d0;
    return;
}

-(double)adTimeoutInterval {
    r0 = self;
    return r0;
}

-(void)setAdResponseData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adResponseData {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void *)nativeSDKParameters {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setNativeSDKParameters:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)customEventClass {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setCustomEventClass:(void *)arg2 {
    *(self + 0x60) = arg2;
    return;
}

-(void)setCustomEventClassData:(void *)arg2 {
    objc_storeStrong(self + 0x68, arg2);
    return;
}

-(void *)customEventClassData {
    r0 = *(self + 0x68);
    return r0;
}

-(unsigned long long)orientationType {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setDspCreativeId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dspCreativeId {
    r0 = objc_getProperty(self, _cmd, 0x78, 0x0);
    return r0;
}

-(void)setOrientationType:(unsigned long long)arg2 {
    *(self + 0x70) = arg2;
    return;
}

-(bool)precacheRequired {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setPrecacheRequired:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(bool)isVastVideoPlayer {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setIsVastVideoPlayer:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(void *)creationTimestamp {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setCreationTimestamp:(void *)arg2 {
    objc_storeStrong(self + 0x80, arg2);
    return;
}

-(void *)creativeId {
    r0 = objc_getProperty(self, _cmd, 0x88, 0x0);
    return r0;
}

-(void)setCreativeId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)metadataAdType {
    r0 = objc_getProperty(self, _cmd, 0x90, 0x0);
    return r0;
}

-(void)setMetadataAdType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(long long)nativeVideoPlayVisiblePercent {
    r0 = *(self + 0x98);
    return r0;
}

-(void)setNativeVideoPlayVisiblePercent:(long long)arg2 {
    *(self + 0x98) = arg2;
    return;
}

-(long long)nativeVideoPauseVisiblePercent {
    r0 = *(self + 0xa0);
    return r0;
}

-(double)nativeImpressionMinVisiblePixels {
    r0 = self;
    return r0;
}

-(void)setNativeVideoPauseVisiblePercent:(long long)arg2 {
    *(self + 0xa0) = arg2;
    return;
}

-(void)setNativeImpressionMinVisiblePixels:(double)arg2 {
    *(self + 0xa8) = d0;
    return;
}

-(long long)nativeImpressionMinVisiblePercent {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setNativeImpressionMinVisiblePercent:(long long)arg2 {
    *(self + 0xb0) = arg2;
    return;
}

-(double)nativeImpressionMinVisibleTimeInterval {
    r0 = self;
    return r0;
}

-(void)setNativeImpressionMinVisibleTimeInterval:(double)arg2 {
    *(self + 0xb8) = d0;
    return;
}

-(double)nativeVideoMaxBufferingTime {
    r0 = self;
    return r0;
}

-(void *)nativeVideoTrackers {
    r0 = *(self + 0xc8);
    return r0;
}

-(void)setNativeVideoMaxBufferingTime:(double)arg2 {
    *(self + 0xc0) = d0;
    return;
}

-(void)setNativeVideoTrackers:(void *)arg2 {
    objc_storeStrong(self + 0xc8, arg2);
    return;
}

-(void *)availableRewards {
    r0 = *(self + 0xd0);
    return r0;
}

-(void)setAvailableRewards:(void *)arg2 {
    objc_storeStrong(self + 0xd0, arg2);
    return;
}

-(void *)selectedReward {
    r0 = *(self + 0xd8);
    return r0;
}

-(void)setSelectedReward:(void *)arg2 {
    objc_storeStrong(self + 0xd8, arg2);
    return;
}

-(void *)rewardedVideoCompletionUrl {
    r0 = objc_getProperty(self, _cmd, 0xe0, 0x0);
    return r0;
}

-(void)setRewardedVideoCompletionUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)rewardedPlayableDuration {
    r0 = self;
    return r0;
}

-(void)setRewardedPlayableDuration:(double)arg2 {
    *(self + 0xe8) = d0;
    return;
}

-(bool)rewardedPlayableShouldRewardOnClick {
    r0 = *(int8_t *)(self + 0xc);
    return r0;
}

-(void *)advancedBidPayload {
    r0 = objc_getProperty(self, _cmd, 0xf0, 0x0);
    return r0;
}

-(void)setRewardedPlayableShouldRewardOnClick:(bool)arg2 {
    *(int8_t *)(self + 0xc) = arg2;
    return;
}

-(void)setAdvancedBidPayload:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)impressionData {
    r0 = *(self + 0xf8);
    return r0;
}

-(void)setImpressionData:(void *)arg2 {
    objc_storeStrong(self + 0xf8, arg2);
    return;
}

-(void *)format {
    r0 = objc_getProperty(self, _cmd, 0x100, 0x0);
    return r0;
}

-(void)setFormat:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)impressionMinVisibleTimeInSec {
    r0 = self;
    return r0;
}

-(double)impressionMinVisiblePixels {
    r0 = self;
    return r0;
}

-(void)setImpressionMinVisibleTimeInSec:(double)arg2 {
    *(self + 0x108) = d0;
    return;
}

-(void)setImpressionMinVisiblePixels:(double)arg2 {
    *(self + 0x110) = d0;
    return;
}

-(void)setVisibleImpressionTrackingEnabled:(bool)arg2 {
    *(int8_t *)(self + 0xd) = arg2;
    return;
}

-(long long)clickthroughExperimentBrowserAgent {
    r0 = *(self + 0x120);
    return r0;
}

-(void)setAdResponseHTMLString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setClickthroughExperimentBrowserAgent:(long long)arg2 {
    *(self + 0x120) = arg2;
    return;
}

-(void *)afterLoadUrlsWithMacros {
    r0 = objc_getProperty(self, _cmd, 0x128, 0x0);
    return r0;
}

-(void)setAfterLoadUrlsWithMacros:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)afterLoadSuccessUrlsWithMacros {
    r0 = objc_getProperty(self, _cmd, 0x130, 0x0);
    return r0;
}

-(void)setAfterLoadSuccessUrlsWithMacros:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)afterLoadFailureUrlsWithMacros {
    r0 = objc_getProperty(self, _cmd, 0x138, 0x0);
    return r0;
}

-(void)setAfterLoadFailureUrlsWithMacros:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x138, 0x0);
    objc_storeStrong(self + 0x130, 0x0);
    objc_storeStrong(self + 0x128, 0x0);
    objc_storeStrong(self + 0x118, 0x0);
    objc_storeStrong(self + 0x100, 0x0);
    objc_storeStrong(self + 0xf8, 0x0);
    objc_storeStrong(self + 0xf0, 0x0);
    objc_storeStrong(self + 0xe0, 0x0);
    objc_storeStrong(self + 0xd8, 0x0);
    objc_storeStrong(self + 0xd0, 0x0);
    objc_storeStrong(self + 0xc8, 0x0);
    objc_storeStrong(self + 0x90, 0x0);
    objc_storeStrong(self + 0x88, 0x0);
    objc_storeStrong(self + 0x80, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    return;
}

@end