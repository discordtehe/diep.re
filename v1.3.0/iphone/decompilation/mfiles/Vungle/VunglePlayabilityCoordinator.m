@implementation VunglePlayabilityCoordinator

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x20) = 0x0;
            *(int8_t *)(r19 + 0x8) = 0x0;
            r0 = [NSMutableArray new];
            r8 = *(r19 + 0x28);
            *(r19 + 0x28) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isAdPlayable {
    r0 = [self isPlayable];
    return r0;
}

-(void)delayNextPlay:(long long)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 >= 0x1) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            r21 = r0;
            [r0 timeIntervalSince1970];
            asm { scvtf      d1, x20 };
            [r19 setPreventPlayUntilTime:r2];
            [r21 release];
    }
    else {
            [r19 setPreventPlayUntilTime:r2];
    }
    return;
}

-(double)delayInSeconds {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self preventPlayUntilTime];
    if (d0 > 0x0) {
            [r19 preventPlayUntilTime];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r0 = [r19 release];
    }
    asm { fmaxnm     d0, d8, d9 };
    return r0;
}

-(void)fireAdPlayable:(bool)arg2 placement:(void *)arg3 {
    r31 = r31 - 0xf0;
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
    r20 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 referenceID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    if (arg2 != 0x0) {
            r0 = [r20 adUnit];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 type];
            r29 = r29;
            r0 = [r0 retain];
            r27 = [r0 isEqualToString:r2];
            [r0 release];
            [r22 release];
            if (r27 != 0x0) {
                    r0 = [r20 adUnit];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if ([r0 templateType] == 0x2 || [r22 templateType] == 0x3) {
                            r24 = @selector(copy);
                            r23 = [[r20 referenceID] retain];
                            r24 = objc_msgSend(r20, r24);
                            r0 = [r20 adUnit];
                            r0 = [r0 retain];
                            r25 = r0;
                            r26 = [[r0 cacheKey] retain];
                            r0 = @(0x0);
                            r0 = [r0 retain];
                            [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:&var_78 count:0x2] retain];
                            [r0 release];
                            [r26 release];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                            r0 = [r19 feedBasedArray];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 addObject:r2];
                            [r23 release];
                            [r27 release];
                    }
                    [r22 release];
            }
            objc_initWeak(&stack[-144], r19);
            r22 = &var_B0 + 0x28;
            objc_copyWeak(r22, &stack[-144]);
            var_90 = [r21 retain];
            [r19 delayInSeconds];
            [VungleUtil performBlock:&var_B0 afterDelay:r3];
            objc_unsafeClaimAutoreleasedReturnValue();
            r0 = var_90;
    }
    else {
            objc_initWeak(&stack[-144], r19);
            r22 = &var_E0 + 0x28;
            objc_copyWeak(r22, &stack[-144]);
            var_C0 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_E0);
            r0 = var_C0;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    objc_destroyWeak(r22);
    objc_destroyWeak(&stack[-144]);
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)readyPlacementForFeedBasedAdWithPlacementID:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r0 = [self feedBasedArray];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    if ([r20 count] == 0x0) goto loc_10062d974;

loc_10062d844:
    r21 = 0x0;
    goto loc_10062d888;

loc_10062d888:
    r0 = [r20 objectAtIndex:r21];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10062d954;

loc_10062d8c4:
    r0 = [r28 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 adUnit];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 cacheKey] retain];
    r0 = [r28 objectForKeyedSubscript:r26];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 integerValue];
    [r0 release];
    [r26 release];
    [r25 release];
    if (r27 == 0x0) goto loc_10062d97c;

loc_10062d94c:
    [r24 release];
    goto loc_10062d954;

loc_10062d954:
    var_60 = @selector(count);
    [r28 release];
    r21 = r21 + 0x1;
    if (objc_msgSend(r20, var_60) > r21) goto loc_10062d888;

loc_10062d974:
    r24 = 0x0;
    goto loc_10062d984;

loc_10062d984:
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;

loc_10062d97c:
    [r28 release];
    goto loc_10062d984;
}

-(bool)placementAdUnitIsFeedbased:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adUnit];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 type];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_10062dfd0;

loc_10062df74:
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 templateType] == 0x3 || [r20 templateType] == 0x2) goto loc_10062dfb8;

loc_10062dfc8:
    [r20 release];
    goto loc_10062dfd0;

loc_10062dfd0:
    r20 = 0x0;
    goto loc_10062dfd4;

loc_10062dfd4:
    [r19 release];
    r0 = r20;
    return r0;

loc_10062dfb8:
    [r20 release];
    r20 = 0x1;
    goto loc_10062dfd4;
}

-(unsigned long long)adPlaybackStateForPlacement:(void *)arg2 adCacheKey:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r25 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self feedBasedArray];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    if ([r21 count] == 0x0) goto loc_10062dba0;

loc_10062da40:
    r23 = 0x0;
    r26 = @selector(objectAtIndex:);
    r24 = @selector(objectForKeyedSubscript:);
    var_60 = r24;
    var_80 = r21;
    goto loc_10062da80;

loc_10062da80:
    r0 = objc_msgSend(r21, r26);
    r0 = [r0 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, r24);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10062db80;

loc_10062dabc:
    r27 = [objc_msgSend(r22, r24) retain];
    r0 = objc_msgSend(r22, r24);
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_10062db78;

loc_10062daf4:
    r28 = r0;
    r0 = [r27 adUnit];
    r0 = [r0 retain];
    r21 = r20;
    r20 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r0 = [r0 retain];
    r19 = [r0 isEqualToString:r21];
    r25 = r25;
    r26 = r26;
    r27 = r27;
    [r0 release];
    r0 = r20;
    r20 = r21;
    r21 = var_80;
    r24 = var_60;
    [r0 release];
    [r28 release];
    if ((r19 & 0x1) != 0x0) goto loc_10062dbe0;

loc_10062db78:
    [r27 release];
    goto loc_10062db80;

loc_10062db80:
    var_58 = @selector(count);
    [r22 release];
    r23 = r23 + 0x1;
    if (objc_msgSend(r21, var_58) > r23) goto loc_10062da80;

loc_10062dba0:
    r23 = 0x4;
    goto loc_10062dba4;

loc_10062dba4:
    [r21 release];
    [r20 release];
    [r25 release];
    r0 = r23;
    return r0;

loc_10062dbe0:
    r0 = objc_msgSend(r22, r24);
    r0 = [r0 retain];
    r23 = [r0 integerValue];
    [r0 release];
    [r27 release];
    [r22 release];
    goto loc_10062dba4;
}

-(void)updateAdPlayableState:(unsigned long long)arg2 feedBasedPlacement:(void *)arg3 adCacheKey:(void *)arg4 {
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
    var_90 = arg2;
    r21 = [arg3 retain];
    var_68 = [arg4 retain];
    var_88 = self;
    r0 = [self feedBasedArray];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 mutableCopy];
    [r0 release];
    if ([r22 count] == 0x0) goto loc_10062deac;

loc_10062dcbc:
    r24 = 0x0;
    goto loc_10062dcfc;

loc_10062dcfc:
    r0 = [r22 objectAtIndex:r24];
    r0 = [r0 retain];
    r25 = [r0 mutableCopy];
    [r0 release];
    r0 = [r25 objectForKeyedSubscript:r21];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10062ddc8;

loc_10062dd50:
    r27 = r21;
    r0 = [r25 objectForKeyedSubscript:r21];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adUnit];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r0 = [r0 retain];
    r2 = var_68;
    r26 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    if (r26 != 0x0) goto loc_10062ddec;

loc_10062ddbc:
    [r20 release];
    r21 = r27;
    goto loc_10062ddc8;

loc_10062ddc8:
    r23 = @selector(count);
    [r25 release];
    r24 = r24 + 0x1;
    if (objc_msgSend(r22, r23) > r24) goto loc_10062dcfc;

loc_10062deac:
    [var_88 setFeedBasedArray:r22];
    [r22 release];
    [var_68 release];
    [r21 release];
    return;

loc_10062ddec:
    if (var_90 == 0x3) {
            [r22 removeObjectAtIndex:r24];
    }
    else {
            r19 = [[NSNumber numberWithUnsignedInteger:r2] retain];
            [r25 setValue:r19 forKey:var_68];
            [r19 release];
            [r22 removeObjectAtIndex:r24];
            r19 = [r25 copy];
            [r22 insertObject:r19 atIndex:r24];
            [r19 release];
    }
    r21 = r27;
    [r20 release];
    [r25 release];
    goto loc_10062deac;
}

-(void *)placementArrayWithPlayableState:(unsigned long long)arg2 {
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
    var_128 = arg2;
    r0 = [self feedBasedArray];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 copy];
    [r0 release];
    var_168 = [NSMutableArray new];
    if ([r22 count] != 0x0) {
            r20 = 0x0;
            var_160 = r22;
            do {
                    r0 = [r22 objectAtIndex:r20];
                    r0 = [r0 retain];
                    r19 = r0;
                    var_110 = q0;
                    r0 = [r0 allValues];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 countByEnumeratingWithState:&var_120 objects:&stack[-240] count:0x10];
                    if (r0 != 0x0) {
                            r23 = r0;
                            var_140 = r19;
                            stack[-328] = r20;
                            r25 = 0x0;
                            r26 = 0x0;
                            r19 = *var_110;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r19) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            r28 = *(var_118 + r22 * 0x8);
                                            if ([r28 isKindOfClass:[VunglePlacement class]] != 0x0) {
                                                    r8 = &@class(MPVASTModel);
                                                    r28 = [r28 retain];
                                                    [r26 release];
                                                    r26 = r28;
                                            }
                                            else {
                                                    r8 = var_128;
                                                    if ([r28 integerValue] == r8) {
                                                            if (CPU_FLAGS & E) {
                                                                    r8 = 0x1;
                                                            }
                                                    }
                                                    r25 = r25 | r8;
                                            }
                                            r22 = r22 + 0x1;
                                    } while (r22 < r23);
                                    r0 = [r21 countByEnumeratingWithState:&var_120 objects:&stack[-240] count:0x10];
                                    r23 = r0;
                            } while (r0 != 0x0);
                            [r21 release];
                            if (r26 == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r8 = 0x1;
                                    }
                            }
                            asm { orn        w8, w8, w25 };
                            if ((r8 & 0x1) == 0x0) {
                                    [var_168 addObject:r26];
                            }
                            r22 = var_160;
                            r19 = var_140;
                            r20 = stack[-328];
                    }
                    else {
                            [r21 release];
                            r26 = 0x0;
                    }
                    var_158 = @selector(count);
                    [r26 release];
                    [r19 release];
                    r20 = r20 + 0x1;
            } while (objc_msgSend(r22, var_158) > r20);
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_168 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sdkDelegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)supportedAdTemplateTypeForStreaming:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adUnit];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 type];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_10062e0e4;

loc_10062e074:
    r0 = [r19 adUnit];
    r0 = [r0 retain];
    r20 = r0;
    if ([r20 templateType] == 0x1 || [r0 templateType] == 0x3 || [r20 templateType] == 0x2) goto loc_10062e0cc;

loc_10062e0dc:
    [r20 release];
    goto loc_10062e0e4;

loc_10062e0e4:
    r20 = 0x1;
    goto loc_10062e0e8;

loc_10062e0e8:
    [r19 release];
    r0 = r20;
    return r0;

loc_10062e0cc:
    [r20 release];
    r20 = 0x0;
    goto loc_10062e0e8;
}

-(void)setPlayableEventTimer:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void)setSdkDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)playableEventTimer {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x1);
    return r0;
}

-(bool)isPlayable {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void *)feedBasedArray {
    r0 = *(self + 0x28);
    return r0;
}

-(double)preventPlayUntilTime {
    r0 = self;
    return r0;
}

-(void)setIsPlayable:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)setPreventPlayUntilTime:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(void)setFeedBasedArray:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end