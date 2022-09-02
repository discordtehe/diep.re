@implementation CCResourcePackManager

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d4630 != -0x1) {
            dispatch_once(0x1011d4630, &var_28);
    }
    return *0x1011d4628;
}

+(void)setDelegate:(void *)arg2 {
    *0x1011d4638 = arg2;
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 delegate];
            if (*qword_1011d4638 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r20 = *qword_1011d4638;
                    }
                    else {
                            r20 = r0;
                    }
            }
            if ([r20 conformsToProtocol:r2] != 0x0) {
                    r0 = [r20 getResourcePacksInfo];
                    r22 = @selector(retain);
                    *(r19 + 0x28) = objc_msgSend(r0, r22);
                    [r19 assertResourcePacks];
                    *(r19 + 0x38) = objc_msgSend([r20 getDesiredPack], r22);
                    *(int32_t *)(r19 + 0x48) = 0x1;
                    [[CCFileUtils sharedFileUtils] setSearchMode:0x1];
                    [r19 createOrderForPack:*(r19 + 0x38)];
            }
            else {
                    *(int32_t *)(r19 + 0x48) = 0x0;
                    [[CCFileUtils sharedFileUtils] setSearchMode:0x0];
            }
            if ([r20 conformsToProtocol:r2] != 0x0) {
                    r0 = [r20 getDeviceCategoryConfig];
                    r21 = @selector(retain);
                    *(r19 + 0x30) = objc_msgSend(r0, r21);
                    [r19 assertDeviceCategories];
                    r0 = [r20 getDeviceCategory];
                    r0 = objc_msgSend(r0, r21);
                    *(r19 + 0x40) = r0;
                    [[[*(r19 + 0x30) objectForKey:r0] objectForKey:@"pointScale"] floatValue];
            }
            else {
                    s0 = 0x3ff0000000000000;
            }
            *(int32_t *)(r19 + 0x4c) = s0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [*(self + 0x20) release];
    [*(self + 0x28) release];
    [*(self + 0x38) release];
    [*(self + 0x30) release];
    [*(self + 0x40) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)assertDeviceCategories {
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
    r19 = self;
    r0 = *(self + 0x30);
    if (r0 == 0x0 || [r0 count] == 0x0) {
            [NSException raise:@"CCResourcePackException" format:@"The Device Categories Info cannot be nil and must have at least one category"];
    }
    r0 = *(r19 + 0x30);
    r0 = [r0 allKeys];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(objectForKey:);
                            objc_msgSend(objc_msgSend(*(r19 + 0x30), r24), r24);
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getSufixSearchOrder {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)suffixesForAllPacks {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)twinPackSuffixes {
    r0 = *(self + 0x20);
    return r0;
}

-(void)createOrderForPack:(void *)arg2 {
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
    r19 = self;
    r22 = [NSMutableArray array];
    r23 = [NSMutableArray array];
    r24 = [NSDictionary dictionaryWithObject:*(r19 + 0x38) forKey:@"fallback"];
    [r23 addObject:*(r19 + 0x38)];
    do {
            r26 = @selector(isEqualToString:);
            r21 = @selector(objectForKey:);
            r27 = objc_msgSend(r24, r21);
            r24 = objc_msgSend(*(r19 + 0x28), r21);
            [r23 addObject:r27];
            [r22 addObject:objc_msgSend(r24, r21)];
    } while (objc_msgSend(objc_msgSend(r24, r21), r26) == 0x0);
    r21 = @selector(objectForKey:);
    *(r19 + 0x8) = [[NSArray arrayWithArray:r22] retain];
    *(r19 + 0x10) = [[NSArray arrayWithArray:r23] retain];
    r0 = objc_msgSend(r24, r21);
    r23 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r26 = 0x0;
            r28 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r23);
                            }
                            r21 = @selector(objectForKey:);
                            r0 = *(r19 + 0x28);
                            r0 = objc_msgSend(r0, r21);
                            r0 = objc_msgSend(r0, r21);
                            if (r0 != 0x0) {
                                    r24 = r0;
                                    if (r26 == 0x0) {
                                            [r23 count];
                                            r26 = [NSMutableSet setWithCapacity:r2];
                                    }
                                    [r26 addObject:r24];
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r0 = objc_msgSend(r23, var_138);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    else {
            r26 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    *(r19 + 0x20) = [[r26 allObjects] retain];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)packForSuffix:(void *)arg2 {
    r2 = arg2;
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
    r19 = self;
    if (r2 != 0x0) {
            r20 = r2;
            if ([r20 isEqualToString:r2] != 0x0) {
                    r20 = @"";
            }
    }
    else {
            r20 = @"";
    }
    var_110 = q0;
    r21 = *(r19 + 0x10);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r21, r1);
    if (r0 == 0x0) goto loc_10031a178;

loc_10031a0d4:
    r24 = r0;
    r28 = *var_110;
    goto loc_10031a0ec;

loc_10031a0ec:
    r22 = 0x0;
    goto loc_10031a0f8;

loc_10031a0f8:
    if (*var_110 != r28) {
            objc_enumerationMutation(r21);
    }
    r26 = @selector(isEqualToString:);
    r25 = @selector(objectForKey:);
    r0 = *(r19 + 0x28);
    r0 = objc_msgSend(r0, r25);
    r27 = r0;
    if ((objc_msgSend(objc_msgSend(r0, r25), r26) & 0x1) != 0x0) goto loc_10031a17c;

loc_10031a144:
    r22 = r22 + 0x1;
    if (r22 < r24) goto loc_10031a0f8;

loc_10031a150:
    r0 = objc_msgSend(r21, var_128);
    r24 = r0;
    if (r0 != 0x0) goto loc_10031a0ec;

loc_10031a178:
    r27 = 0x0;
    goto loc_10031a17c;

loc_10031a17c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(float)scaleForSuffix:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self packForSuffix:arg2];
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 floatValue];
    }
    return r0;
}

-(float)pointScaleForSuffix:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self packForSuffix:arg2];
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 floatValue];
    }
    return r0;
}

-(float)scaleForAssetOfPack:(void *)arg2 {
    [self scaleForSuffix:arg2];
    r0 = *(self + 0x28);
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [self scaleForSuffix:objc_msgSend(r0, r21)];
    asm { fdiv       s0, s0, s8 };
    return r0;
}

-(float)pointScaleForAssetOfPack:(void *)arg2 {
    [self pointScaleForSuffix:arg2];
    r0 = *(self + 0x28);
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [self pointScaleForSuffix:objc_msgSend(r0, r21)];
    asm { fdiv       s0, s0, s8 };
    return r0;
}

-(int)searchMode {
    r0 = *(int32_t *)(self + 0x48);
    return r0;
}

-(float)currentDeviceCategoryPointScale {
    r0 = self;
    return r0;
}

-(void)assertResourcePacks {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x3c0;
    r19 = self;
    var_3D8 = [NSMutableDictionary dictionary];
    r0 = *(r19 + 0x28);
    if (r0 == 0x0 || [r0 count] == 0x0) {
            [NSException raise:@"CCResourcePackException" format:@"The Resources Packs Info cannot be nil and must have at least one pack"];
    }
    r0 = *(r19 + 0x28);
    r0 = [r0 allKeys];
    var_290 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_2A0;
    var_3F8 = r0;
    var_370 = r1;
    r0 = objc_msgSend(r0, r1);
    var_3C0 = r0;
    if (r0 != 0x0) {
            var_3E8 = *var_290;
            do {
                    r20 = 0x0;
                    r23 = @selector(setValue:forKey:);
                    var_3B8 = r23;
                    do {
                            if (*var_290 != var_3E8) {
                                    objc_enumerationMutation(var_3F8);
                            }
                            var_3A8 = r20;
                            var_368 = *(var_298 + r20 * 0x8);
                            r20 = [*(r19 + 0x28) objectForKey:r2];
                            r28 = [NSMutableDictionary dictionary];
                            r22 = [r20 objectForKey:@"suffix"];
                            var_398 = [r20 objectForKey:@"baseScale"];
                            var_3B0 = [r20 objectForKey:@"basePointScale"];
                            var_380 = [r20 objectForKey:@"fallback"];
                            r24 = [r20 objectForKey:@"twinPacks"];
                            objc_msgSend(r28, r23);
                            var_390 = r28;
                            if (r24 != 0x0) {
                                    var_2D0 = q0;
                                    r0 = objc_msgSend(r24, var_370);
                                    if (r0 != 0x0) {
                                            r20 = r0;
                                            r26 = *var_2D0;
                                            do {
                                                    r23 = 0x0;
                                                    do {
                                                            if (*var_2D0 != r26) {
                                                                    objc_enumerationMutation(r24);
                                                            }
                                                            r28 = @selector(isEqualToString:);
                                                            r27 = *(var_2D8 + r23 * 0x8);
                                                            if (objc_msgSend(r27, r28) != 0x0) {
                                                                    [NSException raise:r2 format:r3];
                                                            }
                                                            if ([*(r19 + 0x28) objectForKey:r27] == 0x0) {
                                                                    [NSException raise:r2 format:r3];
                                                            }
                                                            r23 = r23 + 0x1;
                                                    } while (r23 < r20);
                                                    r0 = objc_msgSend(r24, var_370);
                                                    r20 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r28 = var_390;
                                    r23 = var_3B8;
                                    objc_msgSend(r28, r23);
                            }
                            r20 = var_398;
                            if (r20 == 0x0) {
                                    r20 = @(0x1);
                            }
                            [r20 floatValue];
                            r22 = var_3B0;
                            if (s0 <= 0x0) {
                                    [NSException raise:@"CCResourcePackException" format:@"Scale must be bigger than 0"];
                            }
                            if (r22 == 0x0) {
                                    r22 = @(0x1);
                            }
                            [r22 floatValue];
                            if (s0 <= 0x0) {
                                    [NSException raise:@"CCResourcePackException" format:@"Point scale must be bigger than 0"];
                            }
                            objc_msgSend(r28, r23);
                            objc_msgSend(r28, r23);
                            r1 = @selector(dictionary);
                            r8 = var_380;
                            if (r8 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r22 = r8;
                                    }
                                    else {
                                            r22 = @"";
                                    }
                            }
                            r20 = objc_msgSend(@class(NSMutableDictionary), r1);
                            var_398 = r22;
                            if (([r22 isEqual:@""] & 0x1) == 0x0) {
                                    r24 = var_398;
                                    r22 = var_368;
                                    do {
                                            r23 = r24;
                                            [r20 setObject:r2 forKey:r3];
                                            if ([*(r19 + 0x28) objectForKey:r24] == 0x0) {
                                                    [NSException raise:@"CCResourcePackException" format:@"There is no ressource pack for the name %@. Used as fallback in the %@ pack"];
                                            }
                                            if ([r20 objectForKey:r24] != 0x0) {
                                                    [NSException raise:@"CCResourcePackException" format:@"There is a ciclic fallback"];
                                            }
                                            r28 = @selector(isEqual:);
                                            r0 = *(r19 + 0x28);
                                            r0 = [r0 objectForKey:r24];
                                            r0 = [r0 objectForKey:@"fallback"];
                                            r24 = r0;
                                            r0 = objc_msgSend(r0, r28);
                                            r22 = r23;
                                    } while (r0 == 0x0);
                            }
                            r21 = r19;
                            r24 = [NSMutableDictionary dictionary];
                            r0 = [r20 allKeys];
                            r20 = r0;
                            var_310 = q0;
                            r0 = objc_msgSend(r0, var_370);
                            if (r0 != 0x0) {
                                    r28 = r0;
                                    r23 = *var_310;
                                    do {
                                            r19 = 0x0;
                                            do {
                                                    if (*var_310 != r23) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    r26 = [[*(r21 + 0x28) objectForKey:*(var_318 + r19 * 0x8)] objectForKey:@"suffix"];
                                                    if ([r24 objectForKey:r26] != 0x0) {
                                                            [NSException raise:@"CCResourcePackException" format:@"There cannot be two Resources Packs with the same suffix in the same branch of the tree"];
                                                    }
                                                    [r24 setObject:r2 forKey:r3];
                                                    r19 = r19 + 0x1;
                                            } while (r19 < r28);
                                            r0 = objc_msgSend(r20, var_370);
                                            r28 = r0;
                                    } while (r0 != 0x0);
                            }
                            r23 = var_3B8;
                            objc_msgSend(var_390, r23);
                            r2 = var_390;
                            [var_3D8 setObject:r2 forKey:r3];
                            r20 = var_3A8 + 0x1;
                            r19 = r21;
                    } while (r20 < var_3C0);
                    r2 = &var_2A0;
                    r0 = objc_msgSend(var_3F8, var_370);
                    var_3C0 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
    }
    r0 = [var_3D8 retain];
    r22 = r0;
    *(r19 + 0x28) = r0;
    var_350 = q0;
    r0 = objc_msgSend(r0, var_370);
    if (r0 != 0x0) {
            r23 = r0;
            r24 = 0x0;
            r26 = *var_350;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_350 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            r2 = *(var_358 + r27 * 0x8);
                            r0 = *(r19 + 0x28);
                            r0 = [r0 objectForKey:r2];
                            r0 = [r0 objectForKey:@"suffix"];
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if (r24 == 0x0) {
                                            r24 = [NSMutableSet setWithCapacity:[*(r19 + 0x28) count]];
                                    }
                                    [r24 addObject:r2];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = objc_msgSend(r22, var_370);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            r24 = 0x0;
    }
    var_60 = **___stack_chk_guard;
    *(r19 + 0x18) = [[r24 allObjects] retain];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

@end