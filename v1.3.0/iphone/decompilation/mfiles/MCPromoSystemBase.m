@implementation MCPromoSystemBase

+(bool)useNewUserDefaults {
    return *(int8_t *)0x1011dc978;
}

+(void)setUseNewUserDefaults:(bool)arg2 {
    *(int8_t *)0x1011dc978 = arg2;
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x18) = [[NSMutableDictionary dictionary] retain];
            *(r19 + 0x20) = [[NSMutableDictionary dictionary] retain];
            *(r19 + 0x48) = [[NSMutableDictionary dictionary] retain];
            r0 = @class(NSMutableArray);
            r0 = [r0 array];
            r0 = [r0 retain];
            *(int128_t *)(r19 + 0x58) = 0x0;
            *(int128_t *)(r19 + 0x60) = 0x0;
            *(r19 + 0x50) = r0;
            *(r19 + 0x68) = [[NSMutableArray array] retain];
            *(r19 + 0x70) = [[NSMutableArray array] retain];
            *(r19 + 0x78) = [[NSMutableArray array] retain];
            *(r19 + 0x28) = 0xbff0000000000000;
            [r19 setDelegate:0x0];
            *(r19 + 0x10) = @"baseSystem";
            [r19 setDefaultSaveDataKey:@"promotionSystemBaseSaveData"];
            [r19 setCurrentSaveDataKey:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)reset {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            [*(r0 + 0x18) removeAllObjects];
            [*(r19 + 0x20) removeAllObjects];
            [*(r19 + 0x68) removeAllObjects];
            [*(r19 + 0x70) removeAllObjects];
            [*(r19 + 0x78) removeAllObjects];
            var_110 = q0;
            r20 = *(r19 + 0x48);
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r25 = *var_110;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_110 != r25) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [[*(r19 + 0x48) objectForKey:r2] reset];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            *(r19 + 0x58) = 0x0;
            *(r19 + 0x28) = 0xbff0000000000000;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)initWithOffersConfiguration:(void *)arg2 persistanceDelegate:(void *)arg3 defaultActionDelegate:(void *)arg4 forUser:(void *)arg5 {
    [self initWithOffersConfiguration:arg2 persistanceDelegate:arg3 defaultActionDelegate:arg4 withNumDisabledOffersToCheck:0x1 forUser:arg5];
    return;
}

-(void)initWithOffersConfiguration:(void *)arg2 {
    [self initWithOffersConfiguration:arg2 persistanceDelegate:0x0 defaultActionDelegate:0x0 forUser:0x0];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x1f0;
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
    r19 = self;
    [self setPromoSystemId:0x0];
    [r19 setDefaultSaveDataKey:0x0];
    [r19 setCurrentSaveDataKey:0x0];
    [r19 setDelegate:r2];
    r0 = *(r19 + 0x68);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x68) = 0x0;
    }
    var_180 = q0;
    r22 = *(r19 + 0x50);
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r24 = *var_180;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_180 != r24) {
                                    objc_enumerationMutation(r22);
                            }
                            [*(var_188 + r25 * 0x8) setDelegate:r2];
                            r25 = r25 + 0x1;
                    } while (r25 < r23);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + 0x50);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x50) = 0x0;
    }
    r21 = @selector(countByEnumeratingWithState:objects:count:);
    var_1C0 = q0;
    r0 = *(r19 + 0x48);
    r0 = [r0 allValues];
    r22 = r0;
    r0 = objc_msgSend(r0, r21);
    if (r0 != 0x0) {
            r23 = r0;
            r24 = *var_1C0;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_1C0 != r24) {
                                    objc_enumerationMutation(r22);
                            }
                            [*(var_1C8 + r25 * 0x8) setDelegate:r2];
                            r25 = r25 + 0x1;
                    } while (r25 < r23);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x70);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x70) = 0x0;
    }
    r0 = *(r19 + 0x78);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x78) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    var_48 = **___stack_chk_guard;
    [[&var_1E0 super] dealloc];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)initWithOffersConfiguration:(void *)arg2 persistanceDelegate:(void *)arg3 defaultActionDelegate:(void *)arg4 withNumDisabledOffersToCheck:(unsigned long long)arg5 forUser:(void *)arg6 {
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
    r21 = arg4;
    r22 = arg3;
    var_130 = arg2;
    r19 = self;
    *(self + 0x60) = arg5;
    r20 = [self getSaveDataKeyForUser:arg6];
    r0 = [r20 isEqualToString:[r19 currentSaveDataKey]];
    r8 = *(int8_t *)(r19 + 0x8);
    if (r0 != 0x0) {
            if (r8 == 0x0) {
                    var_160 = r22;
                    var_158 = r21;
                    [r19 setCurrentSaveDataKey:r20];
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_150 = r1;
                    r0 = objc_msgSend(var_130, r1);
                    if (r0 != 0x0) {
                            r24 = r0;
                            r28 = *var_110;
                            do {
                                    r21 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(var_130);
                                            }
                                            r0 = [MCPromoOffer getOfferFromConfiguration:*(var_118 + r21 * 0x8) withError:&var_128];
                                            if (r0 != 0x0) {
                                                    asm { ccmp       x8, #0x0, #0x0, ne };
                                            }
                                            if (!CPU_FLAGS & NE) {
                                                    r23 = r0;
                                                    [r0 setDelegate:r19];
                                                    if (([r23 disableOffer] & 0x1) != 0x0) {
                                                            [*(r19 + 0x50) addObject:r2];
                                                    }
                                                    else {
                                                            [*(r19 + 0x48) setObject:r23 forKey:[r23 name]];
                                                    }
                                            }
                                            r21 = r21 + 0x1;
                                    } while (r21 < r24);
                                    r0 = objc_msgSend(var_130, var_150);
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
                    *(r19 + 0x40) = var_160;
                    *(r19 + 0x30) = var_158;
                    *(int8_t *)(r19 + 0x8) = 0x1;
                    [r19 loadData];
            }
    }
    else {
            if (r8 != 0x0) {
                    [r19 saveData];
                    [r19 reset];
            }
            var_160 = r22;
            var_158 = r21;
            [r19 setCurrentSaveDataKey:r20];
            var_110 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r1;
            r0 = objc_msgSend(var_130, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r28 = *var_110;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r0 = [MCPromoOffer getOfferFromConfiguration:*(var_118 + r21 * 0x8) withError:&var_128];
                                    if (r0 != 0x0) {
                                            asm { ccmp       x8, #0x0, #0x0, ne };
                                    }
                                    if (!CPU_FLAGS & NE) {
                                            r23 = r0;
                                            [r0 setDelegate:r19];
                                            if (([r23 disableOffer] & 0x1) != 0x0) {
                                                    [*(r19 + 0x50) addObject:r2];
                                            }
                                            else {
                                                    [*(r19 + 0x48) setObject:r23 forKey:[r23 name]];
                                            }
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r24);
                            r0 = objc_msgSend(var_130, var_150);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            *(r19 + 0x40) = var_160;
            *(r19 + 0x30) = var_158;
            *(int8_t *)(r19 + 0x8) = 0x1;
            [r19 loadData];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)initWithOffersConfiguration:(void *)arg2 forUser:(void *)arg3 {
    [self initWithOffersConfiguration:arg2 persistanceDelegate:0x0 defaultActionDelegate:0x0 forUser:arg3];
    return;
}

-(void)loadOffersConfiguration:(void *)arg2 {
    [self loadOffersConfiguration:arg2 withError:&var_8];
    return;
}

-(void)setDelegate:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = *(r0 + 0x38);
            if (r0 != r2) {
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x38) = 0x0;
                    }
                    r0 = [r20 retain];
                    *(r19 + 0x38) = r0;
                    if (r0 != 0x0) {
                            r0 = *(r19 + 0x68);
                            if (r0 != 0x0 && [r0 count] != 0x0) {
                                    var_110 = q0;
                                    r20 = *(r19 + 0x68);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            r26 = *var_110;
                                            do {
                                                    r27 = 0x0;
                                                    do {
                                                            if (*var_110 != r26) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            r0 = *(var_118 + r27 * 0x8);
                                                            [r0 name];
                                                            objc_msgSend(r25, r24);
                                                            r27 = r27 + 0x1;
                                                    } while (r27 < r22);
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r22 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadOffersConfiguration:(void *)arg2 withError:(void * *)arg3 {
    r3 = arg3;
    r0 = self;
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
    var_130 = arg2;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r3;
            r20 = r0;
            if (*(r0 + 0x28) < 0x0) {
                    var_168 = 0x0;
            }
            else {
                    var_168 = [r20 getState];
                    [r20 reset];
            }
            [*(r20 + 0x48) removeAllObjects];
            var_110 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r2 = &var_120;
            var_160 = r1;
            r0 = objc_msgSend(var_130, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r23 = *var_110;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_110 != r23) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r0 = [MCPromoOffer getOfferFromConfiguration:*(var_118 + r25 * 0x8) withError:r19];
                                    if (r0 != 0x0) {
                                            r21 = r0;
                                            [r0 setDelegate:r20];
                                            if (([r21 disableOffer] & 0x1) != 0x0) {
                                                    [*(r20 + 0x50) addObject:r21];
                                            }
                                            else {
                                                    [*(r20 + 0x48) setObject:r21 forKey:[r21 name]];
                                            }
                                    }
                                    else {
                                            if (*r19 != 0x0) {
                                                    [r20 class];
                                                    [NSString stringWithFormat:r2];
                                            }
                                    }
                                    r25 = r25 + 0x1;
                            } while (r25 < r24);
                            r2 = &var_120;
                            r0 = objc_msgSend(var_130, var_160);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            if (var_168 != 0x0) {
                    [r20 setState:r2 withError:r19];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addStoreChange:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = [r2 productToActivate];
            if (r0 != 0x0) {
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r19 + 0x18);
                            r0 = [r0 objectForKey:r2];
                            r22 = r0;
                            if (r0 == 0x0) {
                                    r22 = [NSMutableArray array];
                                    [*(r19 + 0x18) setObject:r2 forKey:r3];
                            }
@(YES);
                            [r22 addObject:r2];
                    }
            }
            r0 = [r20 productToDeactivate];
            if (r0 != 0x0) {
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r19 + 0x18);
                            r0 = [r0 objectForKey:r2];
                            r22 = r0;
                            if (r0 == 0x0) {
                                    r22 = [NSMutableArray array];
                                    [*(r19 + 0x18) setObject:r2 forKey:r3];
                            }
@(NO);
                            [r22 addObject:r2];
                    }
            }
            r21 = [r20 replacementProductToActivate];
            r0 = [r20 replacementProductToDeactivate];
            if (r21 != 0x0) {
                    r20 = r0;
                    r0 = [r21 isEqualToString:r2];
                    if (([r20 isEqualToString:r2] & 0x1) == 0x0 && r20 != 0x0 && (r0 & 0x1) == 0x0) {
                            r0 = *(r19 + 0x20);
                            r0 = [r0 objectForKey:r2];
                            r22 = r0;
                            if (r0 == 0x0) {
                                    r22 = [NSMutableArray array];
                                    [*(r19 + 0x20) setObject:r2 forKey:r3];
                            }
                            [r22 addObject:r2];
                    }
            }
    }
    return;
}

-(void)removeStoreChange:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r2;
            r19 = r0;
            r0 = [r2 productToActivate];
            if (r0 != 0x0) {
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r19 + 0x18);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    [r0 removeLastInstanceOfObject:@(YES)];
                                    if ([r0 count] == 0x0) {
                                            [*(r19 + 0x18) removeObjectForKey:r2];
                                    }
                            }
                    }
            }
            r0 = [r20 productToDeactivate];
            if (r0 != 0x0) {
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r19 + 0x18);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    [r0 removeLastInstanceOfObject:@(NO)];
                                    if ([r0 count] == 0x0) {
                                            [*(r19 + 0x18) removeObjectForKey:r2];
                                    }
                            }
                    }
            }
            r21 = [r20 replacementProductToActivate];
            r0 = [r20 replacementProductToDeactivate];
            if (r21 != 0x0) {
                    r20 = r0;
                    r0 = [r21 isEqualToString:r2];
                    if (([r20 isEqualToString:r2] & 0x1) == 0x0 && r20 != 0x0 && (r0 & 0x1) == 0x0) {
                            r0 = *(r19 + 0x20);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    [r0 removeLastInstanceOfObject:r21];
                                    if ([r0 count] == 0x0) {
                                            [*(r19 + 0x20) removeObjectForKey:r2];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)removeAllStoreChanges {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            [*(r0 + 0x18) removeAllObjects];
            objc_msgSend(*(r19 + 0x20), r20);
    }
    return;
}

-(void *)getProductReplacement:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x20);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r19 = r0;
                                    if ([r0 count] != 0x0) {
                                            r0 = [r19 lastObject];
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(bool)isProductActivated:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x18);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r19 = r0;
                                    if ([r0 count] != 0x0) {
                                            r0 = [r19 lastObject];
                                            r0 = [r0 boolValue];
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getReplacedProduct:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    r25 = 0x0;
    if (r2 == 0x0) goto loc_1009e29a8;

loc_1009e2838:
    r25 = 0x0;
    r20 = r0;
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto loc_1009e29a8;

loc_1009e2844:
    r19 = r2;
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_1009e29a4;

loc_1009e2868:
    var_110 = q0;
    r0 = *(r20 + 0x20);
    r0 = [r0 allKeys];
    var_140 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009e29a4;

loc_1009e28a8:
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r24 = r0;
    var_138 = *var_110;
    var_148 = r22;
    goto loc_1009e28c8;

loc_1009e28c8:
    r27 = 0x0;
    goto loc_1009e28e0;

loc_1009e28e0:
    if (*var_110 != var_138) {
            objc_enumerationMutation(var_140);
    }
    var_130 = @selector(count);
    var_128 = @selector(objectForKey:);
    r25 = *(var_118 + r27 * 0x8);
    r0 = *(r20 + 0x20);
    r0 = objc_msgSend(r0, var_128);
    r23 = r0;
    if (objc_msgSend(r0, var_130) == 0x0) goto loc_1009e2968;

loc_1009e2924:
    r22 = 0x0;
    goto loc_1009e2930;

loc_1009e2930:
    if (([[r23 objectAtIndex:r2] isEqualToString:r2] & 0x1) != 0x0) goto loc_1009e29a8;

loc_1009e2950:
    r22 = r22 + 0x1;
    if ([r23 count] > r22) goto loc_1009e2930;

loc_1009e2968:
    r27 = r27 + 0x1;
    if (r27 < r24) goto loc_1009e28e0;

loc_1009e2974:
    r0 = objc_msgSend(var_140, var_148);
    r24 = r0;
    if (r0 != 0x0) goto loc_1009e28c8;

loc_1009e29a0:
    r25 = 0x0;
    goto loc_1009e29a8;

loc_1009e29a8:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009e29a4:
    r25 = 0x0;
    goto loc_1009e29a8;
}

-(void *)getProductReplacements {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            var_130 = [NSMutableDictionary dictionary];
            var_110 = q0;
            r0 = *(r19 + 0x20);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r0;
            var_138 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r20 = *var_110;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_110 != r20) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r28 = *(var_118 + r21 * 0x8);
                                    r0 = *(r19 + 0x20);
                                    r0 = [r0 objectForKey:r28];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            if ([r0 count] != 0x0) {
                                                    r27 = @selector(setObject:forKey:);
                                                    [r22 lastObject];
                                                    objc_msgSend(var_130, r27);
                                            }
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r23);
                            r0 = objc_msgSend(var_128, var_138);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            var_130 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_130;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isProductDeactivated:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = 0x0;
    if (r2 != 0x0) {
            r0 = 0x0;
            if (*(int8_t *)(r20 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = *(r20 + 0x18);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r19 = r0;
                                    r0 = [r0 count];
                                    if (r0 != 0x0) {
                                            r0 = [r19 lastObject];
                                            r0 = [r0 boolValue];
                                            r0 = r0 ^ 0x1;
                                    }
                            }
                    }
            }
    }
    return r0;
}

-(void *)getDeactivatedProducts {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            var_138 = [NSMutableArray array];
            var_110 = q0;
            r0 = *(r19 + 0x18);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r0;
            var_140 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r28 = *var_110;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r22 = *(var_118 + r21 * 0x8);
                                    r0 = *(r19 + 0x18);
                                    r0 = [r0 objectForKey:r22];
                                    if (r0 != 0x0) {
                                            r20 = r0;
                                            if ([r0 count] != 0x0 && ([[r20 lastObject] boolValue] & 0x1) == 0x0) {
                                                    [var_138 addObject:r2];
                                            }
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r23);
                            r0 = objc_msgSend(var_128, var_140);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            var_138 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_138;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getActivatedProducts {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            var_138 = [NSMutableArray array];
            var_110 = q0;
            r0 = *(r19 + 0x18);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r0;
            var_140 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r28 = *var_110;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r22 = *(var_118 + r21 * 0x8);
                                    r0 = *(r19 + 0x18);
                                    r0 = [r0 objectForKey:r22];
                                    if (r0 != 0x0) {
                                            r20 = r0;
                                            if ([r0 count] != 0x0 && [[r20 lastObject] boolValue] != 0x0) {
                                                    [var_138 addObject:r2];
                                            }
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r23);
                            r0 = objc_msgSend(var_128, var_140);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            var_138 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_138;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getProductReplacementsForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    r19 = 0x0;
    if (r2 != 0x0) {
            r19 = 0x0;
            r22 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r21 = r2;
                    if (([r21 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r22 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 storeChanges];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            if ([r0 count] != 0x0) {
                                                    var_140 = @selector(count);
                                                    var_130 = [NSMutableDictionary dictionary];
                                                    var_110 = q0;
                                                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                                                    var_138 = r1;
                                                    r0 = objc_msgSend(r22, r1);
                                                    if (r0 != 0x0) {
                                                            r24 = r0;
                                                            r20 = *var_110;
                                                            do {
                                                                    r28 = 0x0;
                                                                    do {
                                                                            if (*var_110 != r20) {
                                                                                    objc_enumerationMutation(r22);
                                                                            }
                                                                            r23 = *(var_118 + r28 * 0x8);
                                                                            r21 = [r23 replacementProductToActivate];
                                                                            r0 = [r23 replacementProductToDeactivate];
                                                                            if (r21 != 0x0) {
                                                                                    r23 = r0;
                                                                                    r0 = [r21 isEqualToString:r2];
                                                                                    if (r23 != 0x0 && (r0 & 0x1) == 0x0) {
                                                                                            if (([r23 isEqualToString:r2] & 0x1) == 0x0) {
                                                                                                    [var_130 setObject:r2 forKey:r3];
                                                                                            }
                                                                                    }
                                                                            }
                                                                            r28 = r28 + 0x1;
                                                                    } while (r28 < r24);
                                                                    r0 = objc_msgSend(r22, var_138);
                                                                    r24 = r0;
                                                            } while (r0 != 0x0);
                                                    }
                                                    r19 = var_130;
                                                    if (r19 == 0x0 || objc_msgSend(r19, var_140) == 0x0) {
                                                            r19 = 0x0;
                                                    }
                                            }
                                            else {
                                                    r19 = 0x0;
                                            }
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                            }
                            else {
                                    r19 = 0x0;
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getDeactivatedProductsForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    r19 = 0x0;
    if (r2 != 0x0) {
            r19 = 0x0;
            r21 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r20 = r2;
                    if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = sub_1009e3224(r20, *(r21 + 0x48));
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if ([r0 count] != 0x0) {
                                            var_130 = [NSMutableArray array];
                                            var_110 = q0;
                                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                                            var_138 = r1;
                                            r0 = objc_msgSend(r21, r1);
                                            if (r0 != 0x0) {
                                                    r23 = r0;
                                                    r19 = *var_110;
                                                    do {
                                                            r27 = 0x0;
                                                            do {
                                                                    if (*var_110 != r19) {
                                                                            objc_enumerationMutation(r21);
                                                                    }
                                                                    r28 = *(var_118 + r27 * 0x8);
                                                                    r0 = [r21 objectForKey:r28];
                                                                    if (r0 != 0x0) {
                                                                            r22 = r0;
                                                                            if ([r0 count] != 0x0 && ([[r22 lastObject] boolValue] & 0x1) == 0x0) {
                                                                                    [var_130 addObject:r2];
                                                                            }
                                                                    }
                                                                    r27 = r27 + 0x1;
                                                            } while (r27 < r23);
                                                            r0 = objc_msgSend(r21, var_138);
                                                            r23 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                            r19 = var_130;
                                            if (r19 == 0x0 || [r19 count] == 0x0) {
                                                    r19 = 0x0;
                                            }
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                            }
                            else {
                                    r19 = 0x0;
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getActivatedProductsForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    r19 = 0x0;
    if (r2 != 0x0) {
            r19 = 0x0;
            r21 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r20 = r2;
                    if (([r20 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = sub_1009e3224(r20, *(r21 + 0x48));
                            if (r0 != 0x0) {
                                    r21 = r0;
                                    if ([r0 count] != 0x0) {
                                            var_130 = [NSMutableArray array];
                                            var_110 = q0;
                                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                                            var_138 = r1;
                                            r0 = objc_msgSend(r21, r1);
                                            if (r0 != 0x0) {
                                                    r23 = r0;
                                                    r19 = *var_110;
                                                    do {
                                                            r27 = 0x0;
                                                            do {
                                                                    if (*var_110 != r19) {
                                                                            objc_enumerationMutation(r21);
                                                                    }
                                                                    r28 = *(var_118 + r27 * 0x8);
                                                                    r0 = [r21 objectForKey:r28];
                                                                    if (r0 != 0x0) {
                                                                            r22 = r0;
                                                                            if ([r0 count] != 0x0 && [[r22 lastObject] boolValue] != 0x0) {
                                                                                    [var_130 addObject:r2];
                                                                            }
                                                                    }
                                                                    r27 = r27 + 0x1;
                                                            } while (r27 < r23);
                                                            r0 = objc_msgSend(r21, var_138);
                                                            r23 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                            r19 = var_130;
                                            if (r19 == 0x0 || [r19 count] == 0x0) {
                                                    r19 = 0x0;
                                            }
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                            }
                            else {
                                    r19 = 0x0;
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isOfferActive:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x68);
            if (r0 != 0x0) {
                    r20 = r2;
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            r0 = *(r19 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    r0 = [r0 isOfferActive];
                                    if (r0 != 0x0) {
                                            r0 = sub_1009e3bf4(r20, *(r19 + 0x68));
                                            if (r0 != 0x7fffffffffffffff) {
                                                    if (CPU_FLAGS & NE) {
                                                            r0 = 0x1;
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isOfferKilled:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x48);
            if (r0 != 0x0) {
                    r19 = r2;
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r19 = r0;
                                    if (([r0 hidePromotion] & 0x1) != 0x0) {
                                            r0 = 0x0;
                                    }
                                    else {
                                            r0 = [r19 offerState];
                                            if (r0 == 0x4) {
                                                    if (CPU_FLAGS & E) {
                                                            r0 = 0x1;
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isOfferHidden:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x48);
            if (r0 != 0x0) {
                    r19 = r2;
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r19 = r0;
                                    if (([r0 hidePromotion] & 0x1) != 0x0) {
                                            r0 = 0x1;
                                    }
                                    else {
                                            r0 = [r19 interruptPromotion];
                                    }
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getDisabledOffers {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x50);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r19 = [NSMutableArray array];
                    var_110 = q0;
                    r20 = *(r20 + 0x50);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r25 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [*(var_118 + r28 * 0x8) name];
                                            objc_msgSend(r19, r24);
                                            r28 = r28 + 0x1;
                                    } while (r28 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getActiveOffersTokens {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x68);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r19 = [NSMutableArray array];
                    var_110 = q0;
                    r20 = *(r20 + 0x68);
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r1;
                    r0 = objc_msgSend(r20, r1);
                    if (r0 != 0x0) {
                            r22 = r0;
                            r28 = *var_110;
                            do {
                                    r21 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            r27 = *(var_118 + r21 * 0x8);
                                            r0 = [r27 promoToken];
                                            if (r0 != 0x0) {
                                                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                                            r26 = @selector(addObject:);
                                                            [r27 promoToken];
                                                            objc_msgSend(r19, r26);
                                                    }
                                            }
                                            r21 = r21 + 0x1;
                                    } while (r21 < r22);
                                    r0 = objc_msgSend(r20, var_128);
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getActiveOffers {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x68);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r19 = [NSMutableArray array];
                    var_110 = q0;
                    r20 = *(r20 + 0x68);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r25 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [*(var_118 + r28 * 0x8) name];
                                            objc_msgSend(r19, r24);
                                            r28 = r28 + 0x1;
                                    } while (r28 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setOfferPopUpState:(void *)arg2 isActive:(bool)arg3 {
    [[self getOfferFromID:arg2] setPopUpActiveState:arg3];
    return;
}

-(void *)getTokenForOffer:(void *)arg2 onlyActive:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto loc_1009e4420;

loc_1009e43d0:
    r21 = r0;
    r0 = *(r0 + 0x68);
    if (r0 == 0x0) goto loc_1009e4424;

loc_1009e43dc:
    r22 = r3;
    r19 = r2;
    r8 = [r0 count];
    r0 = 0x0;
    if (r19 == 0x0) goto loc_1009e4424;

loc_1009e43fc:
    r0 = 0x0;
    if (r8 == 0x0) goto loc_1009e4424;

loc_1009e4400:
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_1009e445c;

loc_1009e4420:
    r0 = 0x0;
    goto loc_1009e4424;

loc_1009e4424:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009e445c:
    if (r22 != 0x0) {
            r21 = *(r21 + 0x68);
    }
    else {
            r21 = [*(r21 + 0x48) allValues];
    }
    var_110 = q0;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009e4424;

loc_1009e44ac:
    r23 = r0;
    r26 = *var_110;
    goto loc_1009e44bc;

loc_1009e44bc:
    r28 = 0x0;
    goto loc_1009e44c4;

loc_1009e44c4:
    if (*var_110 != r26) {
            objc_enumerationMutation(r21);
    }
    r25 = *(var_118 + r28 * 0x8);
    [r25 name];
    if ((objc_msgSend(r19, r20) & 0x1) != 0x0) goto loc_1009e4538;

loc_1009e4504:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_1009e44c4;

loc_1009e4510:
    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_1009e44bc;

loc_1009e4534:
    r0 = 0x0;
    goto loc_1009e4424;

loc_1009e4538:
    r0 = [r25 promoToken];
    goto loc_1009e4424;
}

-(bool)isOfferPopUpActive:(void *)arg2 {
    r0 = [self getOfferFromID:arg2];
    r0 = [r0 isPopUpActive];
    return r0;
}

-(void *)getAllOffersPrioritized {
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r21 = r0;
            r0 = *(r0 + 0x48);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r19 = [NSMutableArray array];
                    r0 = *(r21 + 0x48);
                    r0 = [r0 allKeys];
                    r23 = r0;
                    var_190 = q0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r24 = r0;
                            r28 = *var_190;
                            do {
                                    r27 = 0x0;
                                    do {
                                            if (*var_190 != r28) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            [*(r21 + 0x48) objectForKey:r2];
                                            objc_msgSend(r19, r26);
                                            r27 = r27 + 0x1;
                                    } while (r27 < r24);
                                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
                    r20 = @selector(countByEnumeratingWithState:objects:count:);
                    [r19 sortUsingFunction:0x1009e3958 context:0x0];
                    r21 = [NSMutableArray array];
                    var_1D0 = q0;
                    r0 = objc_msgSend(r19, r20);
                    if (r0 != 0x0) {
                            r22 = r0;
                            r25 = *var_1D0;
                            do {
                                    r27 = 0x0;
                                    do {
                                            if (*var_1D0 != r25) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            [*(var_1D8 + r27 * 0x8) name];
                                            objc_msgSend(r21, r24);
                                            r27 = r27 + 0x1;
                                    } while (r27 < r22);
                                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getOfferFromID:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x48);
            if (r0 != 0x0) {
                    r19 = r2;
                    if ([r0 count] != 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getTopActiveOffer {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x68);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r0 = *(r19 + 0x68);
                    r0 = [r0 objectAtIndex:r2];
                    if (r0 != 0x0) {
                            r0 = [r0 name];
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getBadgeInfoForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto loc_1009e4b84;

loc_1009e4a70:
    r20 = r0;
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto loc_1009e4b84;

loc_1009e4a7c:
    r19 = r2;
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_1009e4b84;

loc_1009e4a9c:
    r0 = *(r20 + 0x48);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009e4b84;

loc_1009e4ab4:
    r19 = r0;
    if ([r0 badgeConfiguration] == 0x0) goto loc_1009e4b00;

loc_1009e4acc:
    r0 = [objc_alloc() initWithConfiguration:[r19 badgeConfiguration]];
    goto loc_1009e4b74;

loc_1009e4b74:
    r0 = [r0 autorelease];
    return r0;

loc_1009e4b00:
    if ([r19 badgeImage] != 0x0 || [r19 badgeText] != 0x0) goto loc_1009e4b30;

loc_1009e4b84:
    r0 = 0x0;
    return r0;

loc_1009e4b30:
    r0 = [objc_alloc() initWithImage:[r19 badgeImage] andText:[r19 badgeText]];
    goto loc_1009e4b74;
}

-(bool)isOfferCloseToBegin:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 isOfferCloseToBegin];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getOffers {
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r0;
            r0 = *(r0 + 0x48);
            if (r0 != 0x0 && [r0 count] != 0x0) {
                    r20 = [NSMutableArray array];
                    r0 = *(r19 + 0x48);
                    r0 = [r0 allKeys];
                    r21 = r0;
                    var_110 = q0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r23 = r0;
                            r27 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r27) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            r26 = @selector(addObject:);
                                            [[*(r19 + 0x48) objectForKey:*(var_118 + r28 * 0x8)] name];
                                            objc_msgSend(r20, r26);
                                            r28 = r28 + 0x1;
                                    } while (r28 < r23);
                                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)getRemainingBadgeTimeForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    r0 = [r19 isEqualToString:r2];
                    if ((r0 & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 badgeRemainingTime];
                            }
                    }
            }
    }
    return r0;
}

-(void *)getBeforeBeginNotificationTextForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 beforeBeginNotificationText];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(bool)isOfferCloseToEnd:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 isOfferCloseToEnd];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getAfterStartDateNotificationTextForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 afterStartDateNotificationText];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getBeforeEndNotificationTextForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 beforeEndNotificationText];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getActiveNotificationTextForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 activeNotificationText];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getTopOfferPopUp {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto loc_1009e5234;

loc_1009e51d4:
    r19 = r0;
    r0 = *(r0 + 0x70);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_1009e51f8;

loc_1009e51f0:
    r0 = *(r19 + 0x70);
    goto loc_1009e5210;

loc_1009e5210:
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 name];
    return r0;

loc_1009e51f8:
    r0 = *(r19 + 0x78);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_1009e5234;

loc_1009e520c:
    r0 = *(r19 + 0x78);
    goto loc_1009e5210;

loc_1009e5234:
    r0 = 0x0;
    return r0;
}

-(void *)getBeforeEndDateNotificationTextForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [r0 beforeEndDateNotificationText];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void)runPopUpAction:(void *)arg2 forOffer:(void *)arg3 withDelegate:(void *)arg4 {
    [self runPopUpAction:arg2 forOffer:arg3 withDelegate:arg4 withError:&var_8];
    return;
}

-(void *)getPopUpInfoForOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r0 = [objc_alloc() initWithImage:[r0 popUpImage] buttonText:[r0 popUpButtonText] dismissEvent:[r0 getPopUpDismissedEvent] killEvent:[r0 getKillEvent] andCustomData:[r0 popUpCustomData]];
                                    r0 = [r0 autorelease];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
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

-(void *)getEnqueuedOfferPopUps {
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r20 = r0;
            r0 = *(r0 + 0x70);
            if (r0 != 0x0) {
                    r1 = @selector(count);
                    var_1E8 = r1;
                    if (objc_msgSend(r0, r1) == 0x0) {
                            r0 = *(r20 + 0x78);
                            if (r0 != 0x0) {
                                    r1 = @selector(count);
                                    var_1E8 = r1;
                                    if (objc_msgSend(r0, r1) != 0x0) {
                                            r19 = [NSMutableArray array];
                                            r0 = *(r20 + 0x70);
                                            if (r0 != 0x0 && objc_msgSend(r0, var_1E8) != 0x0) {
                                                    var_190 = q0;
                                                    r22 = *(r20 + 0x70);
                                                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    if (r0 != 0x0) {
                                                            r24 = r0;
                                                            r27 = *var_190;
                                                            do {
                                                                    r28 = 0x0;
                                                                    do {
                                                                            if (*var_190 != r27) {
                                                                                    objc_enumerationMutation(r22);
                                                                            }
                                                                            [*(var_198 + r28 * 0x8) name];
                                                                            objc_msgSend(r19, r26);
                                                                            r28 = r28 + 0x1;
                                                                    } while (r28 < r24);
                                                                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                                    r24 = r0;
                                                            } while (r0 != 0x0);
                                                    }
                                            }
                                            r0 = *(r20 + 0x78);
                                            if (r0 != 0x0 && objc_msgSend(r0, var_1E8) != 0x0) {
                                                    var_1D0 = q0;
                                                    r20 = *(r20 + 0x78);
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    if (r0 != 0x0) {
                                                            r22 = r0;
                                                            r25 = *var_1D0;
                                                            do {
                                                                    r28 = 0x0;
                                                                    do {
                                                                            if (*var_1D0 != r25) {
                                                                                    objc_enumerationMutation(r20);
                                                                            }
                                                                            [*(var_1D8 + r28 * 0x8) name];
                                                                            objc_msgSend(r19, r24);
                                                                            r28 = r28 + 0x1;
                                                                    } while (r28 < r22);
                                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                                    r22 = r0;
                                                            } while (r0 != 0x0);
                                                    }
                                            }
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                            }
                            else {
                                    r19 = 0x0;
                            }
                    }
                    else {
                            r19 = [NSMutableArray array];
                            r0 = *(r20 + 0x70);
                            if (r0 != 0x0 && objc_msgSend(r0, var_1E8) != 0x0) {
                                    var_190 = q0;
                                    r22 = *(r20 + 0x70);
                                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r24 = r0;
                                            r27 = *var_190;
                                            do {
                                                    r28 = 0x0;
                                                    do {
                                                            if (*var_190 != r27) {
                                                                    objc_enumerationMutation(r22);
                                                            }
                                                            [*(var_198 + r28 * 0x8) name];
                                                            objc_msgSend(r19, r26);
                                                            r28 = r28 + 0x1;
                                                    } while (r28 < r24);
                                                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r24 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                            r0 = *(r20 + 0x78);
                            if (r0 != 0x0 && objc_msgSend(r0, var_1E8) != 0x0) {
                                    var_1D0 = q0;
                                    r20 = *(r20 + 0x78);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            r25 = *var_1D0;
                                            do {
                                                    r28 = 0x0;
                                                    do {
                                                            if (*var_1D0 != r25) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            [*(var_1D8 + r28 * 0x8) name];
                                                            objc_msgSend(r19, r24);
                                                            r28 = r28 + 0x1;
                                                    } while (r28 < r22);
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r22 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                    }
            }
            else {
                    r0 = *(r20 + 0x78);
                    if (r0 != 0x0) {
                            r1 = @selector(count);
                            var_1E8 = r1;
                            if (objc_msgSend(r0, r1) != 0x0) {
                                    r19 = [NSMutableArray array];
                                    r0 = *(r20 + 0x70);
                                    if (r0 != 0x0 && objc_msgSend(r0, var_1E8) != 0x0) {
                                            var_190 = q0;
                                            r22 = *(r20 + 0x70);
                                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            if (r0 != 0x0) {
                                                    r24 = r0;
                                                    r27 = *var_190;
                                                    do {
                                                            r28 = 0x0;
                                                            do {
                                                                    if (*var_190 != r27) {
                                                                            objc_enumerationMutation(r22);
                                                                    }
                                                                    [*(var_198 + r28 * 0x8) name];
                                                                    objc_msgSend(r19, r26);
                                                                    r28 = r28 + 0x1;
                                                            } while (r28 < r24);
                                                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r24 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                    }
                                    r0 = *(r20 + 0x78);
                                    if (r0 != 0x0 && objc_msgSend(r0, var_1E8) != 0x0) {
                                            var_1D0 = q0;
                                            r20 = *(r20 + 0x78);
                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            if (r0 != 0x0) {
                                                    r22 = r0;
                                                    r25 = *var_1D0;
                                                    do {
                                                            r28 = 0x0;
                                                            do {
                                                                    if (*var_1D0 != r25) {
                                                                            objc_enumerationMutation(r20);
                                                                    }
                                                                    [*(var_1D8 + r28 * 0x8) name];
                                                                    objc_msgSend(r19, r24);
                                                                    r28 = r28 + 0x1;
                                                            } while (r28 < r22);
                                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r22 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                    }
                            }
                            else {
                                    r19 = 0x0;
                            }
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)runPopUpActionForOffer:(void *)arg2 withDelegate:(void *)arg3 {
    [self runPopUpAction:[NSString string] forOffer:arg2 withDelegate:arg3];
    return;
}

-(void)runPopUpAction:(void *)arg2 forOffer:(void *)arg3 withDelegate:(void *)arg4 withError:(void * *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r24 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r5;
                    r21 = r4;
                    r23 = r3;
                    r20 = r2;
                    if (([r3 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r24 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    r23 = r0;
                                    if ([r0 offerState] == 0x2) {
                                            if (r21 == 0x0) {
                                                    r21 = *(r24 + 0x30);
                                                    if (r21 == 0x0) {
                                                            if (r19 != 0x0) {
                                                                    *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                            }
                                                    }
                                                    else {
                                                            if (r20 != 0x0) {
                                                                    r22 = @selector(objectForKey:);
                                                                    r0 = [r23 popUpActions];
                                                                    r0 = objc_msgSend(r0, r22);
                                                                    if (r0 != 0x0) {
                                                                            [r0 run:r21];
                                                                    }
                                                                    else {
                                                                            [NSString stringWithFormat:r2];
                                                                            if (r19 != 0x0) {
                                                                                    *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    if (r19 != 0x0) {
                                                                            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                                    }
                                                            }
                                                    }
                                            }
                                            else {
                                                    if (r20 != 0x0) {
                                                            r22 = @selector(objectForKey:);
                                                            r0 = [r23 popUpActions];
                                                            r0 = objc_msgSend(r0, r22);
                                                            if (r0 != 0x0) {
                                                                    [r0 run:r21];
                                                            }
                                                            else {
                                                                    [NSString stringWithFormat:r2];
                                                                    if (r19 != 0x0) {
                                                                            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            if (r19 != 0x0) {
                                                                    *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            r21 = [[objc_alloc() init] autorelease];
                                            if (r21 != 0x0) {
                                                    if (r20 != 0x0) {
                                                            r22 = @selector(objectForKey:);
                                                            r0 = [r23 popUpActions];
                                                            r0 = objc_msgSend(r0, r22);
                                                            if (r0 != 0x0) {
                                                                    [r0 run:r21];
                                                            }
                                                            else {
                                                                    [NSString stringWithFormat:r2];
                                                                    if (r19 != 0x0) {
                                                                            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            if (r19 != 0x0) {
                                                                    *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                            }
                                                    }
                                            }
                                            else {
                                                    if (r19 != 0x0) {
                                                            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)runPopUpActionForOffer:(void *)arg2 withError:(void * *)arg3 {
    [self runPopUpAction:[NSString string] forOffer:arg2 withDelegate:0x0 withError:arg3];
    return;
}

-(void)runPopUpActionForOffer:(void *)arg2 {
    [self runPopUpActionForOffer:arg2 withError:&var_8];
    return;
}

-(void)getPopupActionDataForOffer:(void *)arg2 withDelegate:(void *)arg3 {
    [self getPopupAction:[NSString string] forOffer:arg2 withDelegate:arg3 withError:&var_28];
    return;
}

-(void)getPopupActionDataForOffer:(void *)arg2 {
    [self getPopupActionDataForOffer:arg2 withError:&var_8];
    return;
}

-(void)getPopupAction:(void *)arg2 forOffer:(void *)arg3 withDelegate:(void *)arg4 withError:(void * *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 == 0x0) goto .l1;

loc_1009e5630:
    r20 = r0;
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto .l1;

loc_1009e563c:
    r19 = r5;
    r22 = r4;
    r24 = r3;
    r21 = r2;
    if (([r3 isEqualToString:r2] & 0x1) != 0x0) goto .l1;

loc_1009e5668:
    r0 = *(r20 + 0x48);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto .l1;

loc_1009e5684:
    if (r22 != 0x0) goto loc_1009e5690;

loc_1009e5688:
    r22 = *(r20 + 0x30);
    if (r22 == 0x0) goto loc_1009e5790;

loc_1009e5690:
    if (r21 == 0x0) goto loc_1009e56d4;

loc_1009e5694:
    r23 = @selector(objectForKey:);
    r0 = [r0 popUpActions];
    r0 = objc_msgSend(r0, r23);
    if (r0 == 0x0) goto loc_1009e5708;

loc_1009e56b0:
    [r0 getData:r22];
    return;

.l1:
    return;

loc_1009e5708:
    [r20 class];
    goto loc_1009e5738;

loc_1009e5738:
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto .l1;

loc_1009e5740:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009e5814;

loc_1009e5814:
    *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    return;

loc_1009e56d4:
    [r20 class];
    goto loc_1009e5738;

loc_1009e5790:
    [r20 class];
    r0 = [NSString stringWithFormat:r2];
    if (r19 == 0x0) goto .l1;

loc_1009e57c8:
    [[objc_alloc() initWithObjectsAndKeys:r0] autorelease];
    goto loc_1009e5814;
}

-(void)killOffer:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            r0 = *(r20 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            if (r0 != 0x0) {
                                    [r0 kill];
                            }
                    }
            }
    }
    return;
}

-(void)getPopupActionDataForOffer:(void *)arg2 withError:(void * *)arg3 {
    [self getPopupAction:[NSString string] forOffer:arg2 withDelegate:0x0 withError:arg3];
    return;
}

-(void)activateStoreChanges:(void *)arg2 forOffer:(void *)arg3 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if ([r2 count] != 0x0) {
                            var_110 = q0;
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    r24 = *var_110;
                                    do {
                                            r26 = 0x0;
                                            do {
                                                    if (*var_110 != r24) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    [r20 addStoreChange:r2];
                                                    r26 = r26 + 0x1;
                                            } while (r26 < r22);
                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r22 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)showOfferPopUp:(void *)arg2 prioritize:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto .l1;

loc_1009e5c20:
    r20 = r0;
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto .l1;

loc_1009e5c2c:
    r21 = r3;
    r19 = r2;
    if (sub_1009e3bf4(r2, *(r20 + 0x70)) != 0x7fffffffffffffff) goto .l1;

loc_1009e5c4c:
    r0 = sub_1009e3bf4(r19, *(r20 + 0x78));
    if (r0 != 0x7fffffffffffffff) goto loc_1009e5c7c;

loc_1009e5c60:
    if (r21 == 0x0) {
            [*(r20 + 0x78) addObject:r2];
    }
    else {
            [*(r20 + 0x70) addObject:r19];
            [*(r20 + 0x70) sortUsingFunction:0x1009e3958 context:0x0];
    }
    goto loc_1009e5cc4;

loc_1009e5cc4:
    r20 = *(r20 + 0x38);
    if (r20 != 0x0) {
            [r20 offerPopUpAddedToQueue:[r19 name]];
    }
    return;

.l1:
    return;

loc_1009e5c7c:
    if (r21 == 0x0) goto .l1;

loc_1009e5c80:
    [*(r20 + 0x78) removeObjectAtIndex:r0];
    [*(r20 + 0x70) addObject:r19];
    [*(r20 + 0x70) sortUsingFunction:0x1009e3958 context:0x0];
    goto loc_1009e5cc4;
}

-(void)deactivateStoreChanges:(void *)arg2 forOffer:(void *)arg3 {
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if ([r2 count] != 0x0) {
                            var_110 = q0;
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    r24 = *var_110;
                                    do {
                                            r26 = 0x0;
                                            do {
                                                    if (*var_110 != r24) {
                                                            objc_enumerationMutation(r19);
                                                    }
                                                    [r20 removeStoreChange:r2];
                                                    r26 = r26 + 0x1;
                                            } while (r26 < r22);
                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r22 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)hideOfferPopUp:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    r21 = r20 + 0x70;
                    r0 = sub_1009e3bf4(r2, *r21);
                    if (r0 == 0x7fffffffffffffff) {
                            r21 = r20 + 0x78;
                            r0 = sub_1009e3bf4(r19, *r21);
                            if (r0 != 0x7fffffffffffffff) {
                                    [*r21 removeObjectAtIndex:r0];
                                    r20 = *(r20 + 0x38);
                                    if (r20 != 0x0) {
                                            [r20 offerPopupRemovedFromQueue:[r19 name]];
                                    }
                            }
                    }
                    else {
                            [*r21 removeObjectAtIndex:r0];
                            r20 = *(r20 + 0x38);
                            if (r20 != 0x0) {
                                    [r20 offerPopupRemovedFromQueue:[r19 name]];
                            }
                    }
            }
    }
    return;
}

-(void)offerDeactivated:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    r0 = sub_1009e3bf4(r2, *(r20 + 0x68));
                    if (r0 != 0x7fffffffffffffff) {
                            [*(r20 + 0x68) removeObjectAtIndex:r0];
                            r20 = *(r20 + 0x38);
                            if (r20 != 0x0) {
                                    [r20 offerWasDeactivated:[r19 name]];
                            }
                    }
            }
    }
    return;
}

-(void)offerActivated:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + 0x8) != 0x0) {
                    r19 = r2;
                    if (sub_1009e3bf4(r2, *(r20 + 0x68)) == 0x7fffffffffffffff) {
                            [*(r20 + 0x68) addObject:r19];
                            [*(r20 + 0x68) sortUsingFunction:0x1009e3958 context:0x0];
                            r20 = *(r20 + 0x38);
                            if (r20 != 0x0) {
                                    [r20 offerWasActivated:[r19 name]];
                            }
                    }
            }
    }
    return;
}

-(double)getDeltaToDisplayActiveNotificationForOffer:(void *)arg2 {
    r0 = *(self + 0x48);
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 getDeltaToDisplayActiveNotification];
    return r0;
}

-(double)getDeltaToDisplayCloseToBeginNotificationForOffer:(void *)arg2 {
    r0 = *(self + 0x48);
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 getDeltaToDisplayCloseToBeginNotification];
    return r0;
}

-(void)setCurrentTimestamp:(double)arg2 {
    r0 = self;
    r31 = r31 - 0x150;
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
    if (d0 >= 0x0) {
            asm { ccmp       w8, #0x0, #0x4, pl };
    }
    if (CPU_FLAGS & E) goto loc_1009e6138;

loc_1009e5f38:
    v8 = v0;
    r19 = r0;
    if (d0 < 0x0 || *(r19 + 0x28) < d8) goto loc_1009e5f54;

loc_1009e6138:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1009e5f54:
    *(r19 + 0x28) = d8;
    if ([*(r19 + 0x50) count] == 0x0) goto loc_1009e6064;

loc_1009e5f70:
    r21 = *(r19 + 0x60);
    if (r21 != 0x0) goto loc_1009e5fc0;

loc_1009e5f78:
    r20 = @selector(count);
    r0 = *(r19 + 0x50);
    r0 = objc_msgSend(r0, r20);
    r21 = r0;
    if (r0 == 0x0) goto loc_1009e6064;

loc_1009e5fc0:
    if (*(int128_t *)(r19 + 0x58) < [*(int128_t *)(r19 + 0x50) count]) {
            r2 = *(r19 + 0x58);
    }
    else {
            r2 = 0x0;
            *(r19 + 0x58) = 0x0;
    }
    r0 = *(r19 + 0x50);
    r0 = [r0 objectAtIndex:r2];
    r28 = r0;
    [r0 updateDisableOffer];
    if (([r28 disableOffer] & 0x1) == 0x0) goto loc_1009e601c;

loc_1009e600c:
    *(r19 + 0x58) = *(r19 + 0x58) + 0x1;
    goto loc_1009e605c;

loc_1009e605c:
    r21 = r21 - 0x1;
    if (r21 != 0x0) goto loc_1009e5fc0;

loc_1009e6064:
    var_120 = q0;
    r20 = *(r19 + 0x48);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_120;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_120 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r2 = *(var_128 + r28 * 0x8);
                            r0 = *(r19 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            r26 = r0;
                            if (([r0 hidePromotion] & 0x1) == 0x0) {
                                    [r26 setCurrentTimestamp:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1009e6138;

loc_1009e601c:
    [*(r19 + 0x48) setObject:r28 forKey:[r28 name]];
    [*(int128_t *)(r19 + 0x50) removeObjectAtIndex:r2];
    if (objc_msgSend(*(r19 + 0x50), r20) == 0x0) goto loc_1009e6064;
}

-(double)getDeltaToDisplayCloseToEndNotificationForOffer:(void *)arg2 {
    r0 = *(self + 0x48);
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 getDeltaToDisplayCloseToEndNotification];
    return r0;
}

-(double)getDeltaToDisplayAfterStartDateNotificationForOffer:(void *)arg2 {
    r0 = *(self + 0x48);
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 getDeltaToDisplayAfterStartDateNotification];
    return r0;
}

-(double)getDeltaToDisplayBeforeEndDateNotificationForOffer:(void *)arg2 {
    r0 = *(self + 0x48);
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 getDeltaToDisplayBeforeEndDateNotification];
    return r0;
}

-(void)setState:(void *)arg2 {
    [self setState:arg2 withError:&var_8];
    return;
}

-(void)loadData {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) == 0x0) goto .l1;

loc_1009e6d84:
    r19 = r0;
    r0 = *(r0 + 0x40);
    if (r0 == 0x0) goto loc_1009e6dc0;

loc_1009e6d90:
    r0 = [r0 loadData];
    goto loc_1009e6d9c;

loc_1009e6d9c:
    r2 = r0;
    if (r0 != 0x0) {
            [r19 setState:r2 withError:&var_18];
    }
    return;

.l1:
    return;

loc_1009e6dc0:
    r0 = *(r19 + 0x88);
    if (r0 == 0x0 || ([r0 isEqualToString:r2] & 0x1) != 0x0) goto .l1;

loc_1009e6df4:
    if ([MCPromoSystem useNewUserDefaults] != 0x0) {
            r0 = sub_1009d6c9c();
    }
    else {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 objectForKey:r2];
    }
    goto loc_1009e6d9c;
}

-(void)saveDataAndSynchronize:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x8) != 0x0) {
            r19 = r2;
            r21 = r0;
            r20 = [r0 getState];
            r0 = *(r21 + 0x40);
            if (r0 != 0x0) {
                    [r0 saveData:r20];
            }
            else {
                    r0 = *(r21 + 0x88);
                    if (r0 != 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            if ([MCPromoSystem useNewUserDefaults] != 0x0) {
                                    sub_1009d6e58(r20, *(r21 + 0x88), @"PromoSystem");
                            }
                            else {
                                    r0 = [NSUserDefaults standardUserDefaults];
                                    r22 = r0;
                                    [r0 setObject:r2 forKey:r3];
                                    if (r19 != 0x0) {
                                            [r22 synchronize];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)saveData {
    [self saveDataAndSynchronize:0x0];
    return;
}

-(void *)getState {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x380;
    var_370 = [NSMutableDictionary dictionary];
    var_368 = self;
    var_290 = q0;
    r22 = *(self + 0x48);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_378 = r1;
    r0 = objc_msgSend(r22, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r19 = *var_290;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_290 != r19) {
                                    objc_enumerationMutation(r22);
                            }
                            r27 = @selector(setObject:forKey:);
                            r2 = *(var_298 + r20 * 0x8);
                            r0 = *(var_368 + 0x48);
                            r0 = [r0 objectForKey:r2];
                            [r0 getState];
                            [r0 name];
                            objc_msgSend(var_370, r27);
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r0 = objc_msgSend(r22, var_378);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r22 = [NSMutableArray array];
    var_2D0 = q0;
    r23 = *(var_368 + 0x68);
    r0 = objc_msgSend(r23, var_378);
    if (r0 != 0x0) {
            r25 = r0;
            r19 = *var_2D0;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_2D0 != r19) {
                                    objc_enumerationMutation(r23);
                            }
                            [*(var_2D8 + r20 * 0x8) name];
                            objc_msgSend(r22, r27);
                            r20 = r20 + 0x1;
                    } while (r20 < r25);
                    r0 = objc_msgSend(r23, var_378);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    r23 = [NSMutableArray array];
    var_310 = q0;
    r25 = *(var_368 + 0x70);
    r0 = objc_msgSend(r25, var_378);
    if (r0 != 0x0) {
            r26 = r0;
            r19 = *var_310;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_310 != r19) {
                                    objc_enumerationMutation(r25);
                            }
                            [*(var_318 + r20 * 0x8) name];
                            objc_msgSend(r23, r28);
                            r20 = r20 + 0x1;
                    } while (r20 < r26);
                    r0 = objc_msgSend(r25, var_378);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    r24 = [NSMutableArray array];
    var_350 = q0;
    r25 = *(var_368 + 0x78);
    r2 = &var_360;
    r0 = objc_msgSend(r25, var_378);
    if (r0 != 0x0) {
            r26 = r0;
            r19 = *var_350;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_350 != r19) {
                                    objc_enumerationMutation(r25);
                            }
                            [*(var_358 + r20 * 0x8) name];
                            objc_msgSend(r24, r28);
                            r20 = r20 + 0x1;
                    } while (r20 < r26);
                    r2 = &var_360;
                    r0 = objc_msgSend(r25, var_378);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithDouble:r2]];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getSaveDataKeyForUser:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    if (r2 != 0x0) {
            r19 = r2;
            if ([r19 isEqualToString:r2] != 0x0) {
                    r0 = *(r20 + 0x80);
            }
            else {
                    r0 = [NSString stringWithFormat:r2];
            }
    }
    else {
            r0 = *(r20 + 0x80);
    }
    return r0;
}

-(void *)promoSystemId {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setPromoSystemId:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(double)currentTimestamp {
    r0 = self;
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)defaultSaveDataKey {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setDefaultSaveDataKey:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)currentSaveDataKey {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setCurrentSaveDataKey:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x430;
    r19 = arg3;
    if (r2 != 0x0) {
            r20 = r0;
            r24 = [r2 objectForKey:@"currentTimestampState"];
            r22 = [r2 objectForKey:@"offersState"];
            var_448 = [r2 objectForKey:@"activeOffersState"];
            var_440 = [r2 objectForKey:@"offerPopUpPrioritizedQueueState"];
            var_438 = [r2 objectForKey:@"offerPopUpQueueState"];
            [r24 doubleValue];
            *(r20 + 0x28) = d0;
            var_310 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_428 = r1;
            r0 = objc_msgSend(r22, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r23 = *var_310;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_310 != r23) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r27 = *(var_318 + r28 * 0x8);
                                    r25 = [r22 objectForKey:r27];
                                    r0 = *(r20 + 0x48);
                                    r0 = [r0 objectForKey:r27];
                                    if (r0 != 0x0) {
                                            [r0 setState:r2 withError:r3];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r0 = objc_msgSend(r22, var_428);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            var_450 = r19;
            [*(r20 + 0x18) removeAllObjects];
            objc_msgSend(*(r20 + 0x20), r22);
            objc_msgSend(*(r20 + 0x68), r22);
            objc_msgSend(*(r20 + 0x70), r22);
            objc_msgSend(*(r20 + 0x78), r22);
            var_350 = q0;
            r0 = objc_msgSend(var_448, var_428);
            if (r0 != 0x0) {
                    r26 = r0;
                    r22 = *var_350;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_350 != r22) {
                                            objc_enumerationMutation(var_448);
                                    }
                                    r2 = *(var_358 + r23 * 0x8);
                                    r0 = *(r20 + 0x48);
                                    r0 = [r0 objectForKey:r2];
                                    if (r0 != 0x0) {
                                            r24 = r0;
                                            if ([r0 offerState] == 0x2) {
                                                    if (([r24 hidePromotion] & 0x1) == 0x0) {
                                                            [*(r20 + 0x68) addObject:r24];
                                                            r0 = [r24 storeChanges];
                                                            if (r0 != 0x0) {
                                                                    r24 = r0;
                                                                    if ([r0 count] != 0x0) {
                                                                            var_390 = q0;
                                                                            r0 = objc_msgSend(r24, var_428);
                                                                            if (r0 != 0x0) {
                                                                                    r27 = r0;
                                                                                    r19 = *var_390;
                                                                                    do {
                                                                                            r28 = 0x0;
                                                                                            do {
                                                                                                    if (*var_390 != r19) {
                                                                                                            objc_enumerationMutation(r24);
                                                                                                    }
                                                                                                    [r20 addStoreChange:r2];
                                                                                                    r28 = r28 + 0x1;
                                                                                            } while (r28 < r27);
                                                                                            r0 = objc_msgSend(r24, var_428);
                                                                                            r27 = r0;
                                                                                    } while (r0 != 0x0);
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                            else {
                                                    if (var_450 != 0x0) {
                                                            *var_450 = [NSError errorWithDomain:@"InconsistentState" code:0x0 userInfo:0x0];
                                                    }
                                            }
                                    }
                                    r23 = r23 + 0x1;
                            } while (r23 < r26);
                            r0 = objc_msgSend(var_448, var_428);
                            r26 = r0;
                    } while (r0 != 0x0);
            }
            [*(r20 + 0x68) sortUsingFunction:0x1009e3958 context:0x0];
            var_3D0 = q0;
            r0 = objc_msgSend(var_440, var_428);
            r19 = var_450;
            if (r0 != 0x0) {
                    r24 = r0;
                    r23 = *var_3D0;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_3D0 != r23) {
                                            objc_enumerationMutation(var_440);
                                    }
                                    r2 = *(var_3D8 + r22 * 0x8);
                                    r0 = *(r20 + 0x48);
                                    r0 = [r0 objectForKey:r2];
                                    if (r0 != 0x0) {
                                            r25 = r0;
                                            if ([r0 offerState] == 0x2) {
                                                    if (([r25 hidePromotion] & 0x1) == 0x0) {
                                                            [*(r20 + 0x70) addObject:r2];
                                                    }
                                            }
                                            else {
                                                    if (r19 != 0x0) {
                                                            *r19 = [NSError errorWithDomain:@"InconsistentState" code:0x0 userInfo:0x0];
                                                    }
                                            }
                                    }
                                    r22 = r22 + 0x1;
                            } while (r22 < r24);
                            r0 = objc_msgSend(var_440, var_428);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [*(r20 + 0x70) sortUsingFunction:r2 context:r3];
            var_410 = q0;
            r0 = objc_msgSend(var_438, var_428);
            if (r0 != 0x0) {
                    r22 = r0;
                    r23 = *var_410;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_410 != r23) {
                                            objc_enumerationMutation(var_438);
                                    }
                                    r2 = *(var_418 + r28 * 0x8);
                                    r0 = *(r20 + 0x48);
                                    r0 = [r0 objectForKey:r2];
                                    if (r0 != 0x0) {
                                            r24 = r0;
                                            if ([r0 offerState] == 0x2) {
                                                    if (([r24 hidePromotion] & 0x1) == 0x0) {
                                                            [*(r20 + 0x78) addObject:r2];
                                                    }
                                            }
                                            else {
                                                    if (r19 != 0x0) {
                                                            *r19 = [NSError errorWithDomain:@"InconsistentState" code:0x0 userInfo:0x0];
                                                    }
                                            }
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r0 = objc_msgSend(var_438, var_428);
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            if (r19 != 0x0) {
                    *r19 = [NSError errorWithDomain:@"NoStateDefined" code:0x0 userInfo:0x0];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end