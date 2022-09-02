@implementation MCPromoManager

+(void *)mcPromoManagerWithPromoClientDelegate:(void *)arg2 withPromoSystemDelegate:(void *)arg3 {
    r0 = [MCPromoManager alloc];
    r0 = [r0 initWithPromoClientDelegate:arg2 withPromoSystemDelegate:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithPromoClientDelegate:(void *)arg2 withPromoSystemDelegate:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionary] retain];
            *(r19 + 0x10) = [[NSMutableDictionary dictionary] retain];
            *(r19 + 0x38) = 0x0;
            [r19 setupPromoClientDelegate:r22 andPromoSystemDelegate:r23];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(storeSystemsData) name:**_UIApplicationWillResignActiveNotification object:0x0];
            r0 = [MCLocalizationManager getMCLocalizationManagerWithDelegate:[[[MCPromoLocalizationDelegate alloc] initWithPromoClientDelegate:r22] autorelease]];
            r0 = [r0 retain];
            *(r19 + 0x40) = r0;
            [r0 setReloadNotification:@"ForceReloadPromoLocalizationData"];
            *(r19 + 0x20) = [[MCPromoSystemNotificationCenter mcPromoSystemNotificationCenterWithGameDelegate:r22 withLocalizationManager:*(r19 + 0x40)] retain];
            *(r19 + 0x58) = [[NSMutableDictionary dictionary] retain];
            *(r19 + 0x50) = [[NSMutableDictionary dictionary] retain];
    }
    r0 = r19;
    return r0;
}

-(void)storeSystemsData {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    [self saveSystemsData];
    if (([MCPromoSystem useNewUserDefaults] & 0x1) == 0x0) {
            [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return;
}

-(void)setupUser:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0 && [r0 isEqualToString:r2] == 0x0) {
            r0 = *(r19 + 0x18);
            if (r0 != 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    if (([*(r19 + 0x18) isEqualToString:r2] & 0x1) == 0x0) {
                            [r19 saveSystemsData];
                            r0 = *(r19 + 0x18);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x18) = 0x0;
                            }
                            *(r19 + 0x18) = [r20 retain];
                    }
            }
            else {
                    [r19 saveSystemsData];
                    r0 = *(r19 + 0x18);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r19 + 0x18) = 0x0;
                    }
                    *(r19 + 0x18) = [r20 retain];
            }
    }
    else {
            if (r20 != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = *(r19 + 0x18);
                    if (r0 != 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            if (([*(r19 + 0x18) isEqualToString:r2] & 0x1) == 0x0) {
                                    [r19 saveSystemsData];
                                    r0 = *(r19 + 0x18);
                                    if (r0 != 0x0) {
                                            [r0 release];
                                            *(r19 + 0x18) = 0x0;
                                    }
                                    *(r19 + 0x18) = [r20 retain];
                            }
                    }
                    else {
                            [r19 saveSystemsData];
                            r0 = *(r19 + 0x18);
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *(r19 + 0x18) = 0x0;
                            }
                            *(r19 + 0x18) = [r20 retain];
                    }
            }
    }
    return;
}

-(void)setCurrentTimestamp:(double)arg2 {
    r31 = r31 - 0x130;
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
    v8 = v0;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r19 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_110;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_110 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_118 + r25 * 0x8) setCurrentTimestamp:r2];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)setupPromoClientWithConfigFile:(void *)arg2 withSystemId:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (*(r0 + 0x28) == 0x0) goto loc_100767f20;

loc_100767eb4:
    r20 = r3;
    r21 = r2;
    r19 = r0;
    r0 = *(r0 + 0x8);
    r23 = @selector(objectForKey:);
    r22 = objc_msgSend(r0, r23);
    r0 = *(r19 + 0x10);
    r0 = objc_msgSend(r0, r23);
    r0 = sub_1005d85d8(r0, 0x0);
    if (r0 == 0x0) goto loc_100767f28;

loc_100767efc:
    r24 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r23 = 0x0;
    }
    else {
            r23 = [r24 isEqualToString:r2];
    }
    r0 = [r24 isEqualToString:r2];
    if (r0 == 0x0) goto loc_100767f74;

loc_100767f5c:
    if (r21 == 0x0) goto loc_100767f7c;

loc_100767f60:
    r0 = [r21 isEqualToString:r2];
    goto loc_100767f74;

loc_100767f74:
    if (r22 == 0x0) {
            r0 = [MCPromoSystemClient getClientWithConfiguration:sub_1005d8554(sub_1005d980c(r21, 0x3, 0x1, *(r19 + 0x38)), [NSArray class], 0x0) withSystemId:r20 forUser:*(r19 + 0x18) withPromoClientDelegate:*(r19 + 0x28) withPromoSystemDelegate:0x0 withLocalizationManager:*(r19 + 0x40)];
            if (r0 != 0x0) {
                    [*(r19 + 0x8) setObject:r0 forKey:r20];
                    [*(r19 + 0x10) setObject:r21 forKey:r20];
                    [[r0 promoSystem] setDelegate:*(r19 + 0x30)];
                    [*(r19 + 0x20) registerSystemForNotifications:[r0 promoSystem]];
                    r0 = 0x1;
            }
    }
    else {
            if ((r23 | r0) != 0x0) {
                    r0 = [r19 reloadSystem:r20];
            }
            else {
                    r0 = [MCPromoSystemClient getClientWithConfiguration:sub_1005d8554(sub_1005d980c(r21, 0x3, 0x1, *(r19 + 0x38)), [NSArray class], 0x0) withSystemId:r20 forUser:*(r19 + 0x18) withPromoClientDelegate:*(r19 + 0x28) withPromoSystemDelegate:0x0 withLocalizationManager:*(r19 + 0x40)];
                    if (r0 != 0x0) {
                            [*(r19 + 0x8) setObject:r0 forKey:r20];
                            [*(r19 + 0x10) setObject:r21 forKey:r20];
                            [[r0 promoSystem] setDelegate:*(r19 + 0x30)];
                            [*(r19 + 0x20) registerSystemForNotifications:[r0 promoSystem]];
                            r0 = 0x1;
                    }
            }
    }
    return r0;

loc_100767f7c:
    r0 = 0x1;
    if (r22 != 0x0) {
            if ((r23 | r0) != 0x0) {
                    r0 = [r19 reloadSystem:r20];
            }
            else {
                    r0 = [MCPromoSystemClient getClientWithConfiguration:sub_1005d8554(sub_1005d980c(r21, 0x3, 0x1, *(r19 + 0x38)), [NSArray class], 0x0) withSystemId:r20 forUser:*(r19 + 0x18) withPromoClientDelegate:*(r19 + 0x28) withPromoSystemDelegate:0x0 withLocalizationManager:*(r19 + 0x40)];
                    if (r0 != 0x0) {
                            [*(r19 + 0x8) setObject:r0 forKey:r20];
                            [*(r19 + 0x10) setObject:r21 forKey:r20];
                            [[r0 promoSystem] setDelegate:*(r19 + 0x30)];
                            [*(r19 + 0x20) registerSystemForNotifications:[r0 promoSystem]];
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [MCPromoSystemClient getClientWithConfiguration:sub_1005d8554(sub_1005d980c(r21, 0x3, 0x1, *(r19 + 0x38)), [NSArray class], 0x0) withSystemId:r20 forUser:*(r19 + 0x18) withPromoClientDelegate:*(r19 + 0x28) withPromoSystemDelegate:0x0 withLocalizationManager:*(r19 + 0x40)];
            if (r0 != 0x0) {
                    [*(r19 + 0x8) setObject:r0 forKey:r20];
                    [*(r19 + 0x10) setObject:r21 forKey:r20];
                    [[r0 promoSystem] setDelegate:*(r19 + 0x30)];
                    [*(r19 + 0x20) registerSystemForNotifications:[r0 promoSystem]];
                    r0 = 0x1;
            }
    }
    return r0;

loc_100767f28:
    r23 = 0x0;
    goto loc_100767f5c;

loc_100767f20:
    r0 = 0x0;
    return r0;
}

-(void)reloadSystems {
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
    r0 = *(self + 0x8);
    r0 = [r0 allKeys];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 reloadSystem:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)reloadSystem:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r22 = @selector(objectForKey:);
            r19 = r0;
            r0 = *(r20 + 0x10);
            r0 = objc_msgSend(r0, r22);
            r0 = sub_1005d85d8(r0, 0x0);
            if (r0 != 0x0) {
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x0;
                    }
                    else {
                            r3 = *(r20 + 0x38);
                            r20 = 0x1;
                            [[r19 promoSystem] loadOffersConfiguration:sub_1005d8554(sub_1005d980c(r21, 0x3, 0x1, r3), [NSArray class], 0x0)];
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)processLocalNotificationUserInfo:(void *)arg2 {
    [*(self + 0x20) processLocalNotificationUserInfo:arg2];
    return;
}

-(void)resetSystems {
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
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r19 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r24 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            [[*(var_118 + r27 * 0x8) promoSystem] reset];
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)saveSystemsData {
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
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r19 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r24 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            [[*(var_118 + r27 * 0x8) promoSystem] saveData];
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)treatABTestData:(void *)arg2 withDefaultGroup:(void *)arg3 {
    [self treatConfigData:arg2 forType:@"ABtest" withInfo:@"testId" withDefaultGroup:arg3];
    return;
}

-(void)treatCMSData:(void *)arg2 withDefaultGroup:(void *)arg3 {
    [self treatConfigData:arg2 forType:@"Segment" withInfo:@"model" withDefaultGroup:arg3];
    return;
}

-(void *)getAllRegisteredClients {
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    return r0;
}

-(void *)getClientForSystem:(void *)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)treatConfigData:(void *)arg2 forType:(void *)arg3 withInfo:(void *)arg4 withDefaultGroup:(void *)arg5 {
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
    var_158 = arg5;
    var_128 = arg4;
    r21 = arg3;
    r19 = sub_1005d980c(arg2, 0x3, 0x1, *(self + 0x38));
    r0 = [NSDictionary class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    var_150 = r0;
    r0 = [r0 allKeys];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_178 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r26 = r0;
            r27 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(var_138);
                            }
                            r24 = *(var_118 + r20 * 0x8);
                            r0 = [[MCPromoDataAccessManager sharedMCPromoDataAccessManager] getPropertyType:r21 withPropertyInfo:[NSDictionary dictionaryWithObject:r24 forKey:var_128]];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    if (([r0 isEqualToString:@""] & 0x1) == 0x0) {
                                            r24 = [var_150 objectForKey:r2];
                                            r0 = [NSDictionary class];
                                            r0 = sub_1005d8554(r24, r0, 0x0);
                                            if (r0 != 0x0) {
                                                    r24 = r0;
                                                    if ([r0 count] != 0x0) {
                                                            r22 = [r24 objectForKey:r2];
                                                            r0 = [NSDictionary class];
                                                            r0 = sub_1005d8554(r22, r0, 0x0);
                                                            if (r0 != 0x0) {
                                                                    r22 = r0;
                                                                    if ([r0 count] == 0x0) {
                                                                            r22 = [r24 objectForKey:r2];
                                                                            r0 = [NSDictionary class];
                                                                            r0 = sub_1005d8554(r22, r0, 0x0);
                                                                            if (r0 != 0x0) {
                                                                                    r22 = r0;
                                                                                    if ([r0 count] != 0x0) {
                                                                                            r0 = [r22 objectForKey:r2];
                                                                                            r0 = sub_1005d85d8(r0, 0x0);
                                                                                            if (r0 != 0x0) {
                                                                                                    r22 = r0;
                                                                                                    if (([r0 isEqualToString:@""] & 0x1) == 0x0) {
                                                                                                            r24 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
                                                                                                            [NSArray arrayWithObjects:r22];
                                                                                                            [r24 postEvent:r2];
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                                    else {
                                                                            r0 = [r22 objectForKey:r2];
                                                                            r0 = sub_1005d85d8(r0, 0x0);
                                                                            if (r0 != 0x0) {
                                                                                    r22 = r0;
                                                                                    if (([r0 isEqualToString:@""] & 0x1) == 0x0) {
                                                                                            r24 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
                                                                                            [NSArray arrayWithObjects:r22];
                                                                                            [r24 postEvent:r2];
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    r22 = [r24 objectForKey:r2];
                                                                    r0 = [NSDictionary class];
                                                                    r0 = sub_1005d8554(r22, r0, 0x0);
                                                                    if (r0 != 0x0) {
                                                                            r22 = r0;
                                                                            if ([r0 count] != 0x0) {
                                                                                    r0 = [r22 objectForKey:r2];
                                                                                    r0 = sub_1005d85d8(r0, 0x0);
                                                                                    if (r0 != 0x0) {
                                                                                            r22 = r0;
                                                                                            if (([r0 isEqualToString:@""] & 0x1) == 0x0) {
                                                                                                    r24 = [MCPromoEventDispatcher sharedMCPromoEventDispatcher];
                                                                                                    [NSArray arrayWithObjects:r22];
                                                                                                    [r24 postEvent:r2];
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r26);
                    r0 = objc_msgSend(var_138, var_178);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isProductDeactivated:(void *)arg2 {
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
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100768c3c;

loc_100768bb0:
    r22 = r0;
    r25 = *var_110;
    goto loc_100768bc4;

loc_100768bc4:
    r28 = 0x0;
    goto loc_100768bd0;

loc_100768bd0:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    if (([[*(var_118 + r28 * 0x8) promoSystem] isProductDeactivated:r2] & 0x1) != 0x0) goto loc_100768c38;

loc_100768c08:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100768bd0;

loc_100768c14:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100768bc4;

loc_100768c3c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100768c38:
    r0 = 0x1;
    goto loc_100768c3c;
}

-(bool)isProductActivated:(void *)arg2 {
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
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100768b00;

loc_100768a74:
    r22 = r0;
    r25 = *var_110;
    goto loc_100768a88;

loc_100768a88:
    r28 = 0x0;
    goto loc_100768a94;

loc_100768a94:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    if (([[*(var_118 + r28 * 0x8) promoSystem] isProductActivated:r2] & 0x1) != 0x0) goto loc_100768afc;

loc_100768acc:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100768a94;

loc_100768ad8:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100768a88;

loc_100768b00:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100768afc:
    r0 = 0x1;
    goto loc_100768b00;
}

-(void *)getProductReplacement:(void *)arg2 {
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
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100768da0;

loc_100768cec:
    r22 = r0;
    r28 = *var_110;
    goto loc_100768d0c;

loc_100768d0c:
    r21 = 0x0;
    goto loc_100768d1c;

loc_100768d1c:
    if (*var_110 != r28) {
            objc_enumerationMutation(r20);
    }
    r0 = *(var_118 + r21 * 0x8);
    r0 = [r0 promoSystem];
    r0 = [r0 getProductReplacement:r2];
    if (r0 == 0x0) goto loc_100768d68;

loc_100768d54:
    r27 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100768da4;

loc_100768d68:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_100768d1c;

loc_100768d74:
    r0 = objc_msgSend(r20, var_128);
    r22 = r0;
    if (r0 != 0x0) goto loc_100768d0c;

loc_100768da0:
    r27 = 0x0;
    goto loc_100768da4;

loc_100768da4:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getReplacedProduct:(void *)arg2 {
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
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100768f0c;

loc_100768e58:
    r22 = r0;
    r28 = *var_110;
    goto loc_100768e78;

loc_100768e78:
    r21 = 0x0;
    goto loc_100768e88;

loc_100768e88:
    if (*var_110 != r28) {
            objc_enumerationMutation(r20);
    }
    r0 = *(var_118 + r21 * 0x8);
    r0 = [r0 promoSystem];
    r0 = [r0 getReplacedProduct:r2];
    if (r0 == 0x0) goto loc_100768ed4;

loc_100768ec0:
    r27 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100768f10;

loc_100768ed4:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_100768e88;

loc_100768ee0:
    r0 = objc_msgSend(r20, var_128);
    r22 = r0;
    if (r0 != 0x0) goto loc_100768e78;

loc_100768f0c:
    r27 = 0x0;
    goto loc_100768f10;

loc_100768f10:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r27;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)initCycle:(void *)arg2 forSystem:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    r22 = sub_1005d86c0([*(self + 0x58) objectForKey:arg3], 0x0);
    r23 = [sub_1005d8554([*(r20 + 0x48) objectForKey:r21], [NSDictionary class], 0x0) objectForKey:@"offerList"];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r23, r0, 0x0);
    r0 = [r0 objectAtIndex:r2];
    r0 = sub_1005d85d8(r0, 0x0);
    if (r0 != 0x0) {
            r23 = r0;
            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
@(0x1);
                    [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2];
                    [r22 setObject:r2 forKey:r3];
                    objc_msgSend(*(r20 + 0x58), r23);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getCycleOverrideForOffer:(void *)arg2 inCycle:(void *)arg3 inSystem:(void *)arg4 {
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
    r22 = arg3;
    r19 = arg2;
    r23 = [*(self + 0x50) objectForKey:arg4];
    r0 = [NSDictionary class];
    r0 = sub_1005d8554(r23, r0, 0x0);
    if (r0 != 0x0) {
            r24 = r0;
            if ([r0 count] != 0x0) {
                    r21 = @selector(class);
                    r22 = [r24 objectForKey:r22];
                    r0 = @class(NSDictionary);
                    r0 = objc_msgSend(r0, r21);
                    r0 = sub_1005d8554(r22, r0, 0x0);
                    if (r0 != 0x0) {
                            r22 = r0;
                            if ([r0 count] != 0x0) {
                                    r0 = sub_1005d8554([r22 objectForKey:r19], [NSDictionary class], 0x0);
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

-(void)loadCycleDataForSystem:(void *)arg2 {
    [NSString stringWithFormat:r2];
    sub_1005d86c0(sub_1009d6c9c(), [NSMutableDictionary dictionary]);
    [*(self + 0x58) setObject:r2 forKey:r3];
    return;
}

-(void)clearStoredCycleDataForSystem:(void *)arg2 {
    sub_1009d6f68([NSString stringWithFormat:r2], @"PromoManager");
    return;
}

-(void)storeCycleDataForSystem:(void *)arg2 {
    sub_1009d6e58([*(self + 0x58) objectForKey:r2], [NSString stringWithFormat:r2], @"PromoManager");
    return;
}

-(void)bumpCycle:(void *)arg2 forSystem:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    r20 = arg3;
    r27 = arg2;
    r21 = self;
    r0 = *(self + 0x58);
    r0 = [r0 objectForKey:arg3];
    r0 = sub_1005d86c0(r0, 0x0);
    var_80 = r0;
    r19 = [r0 objectForKey:r27];
    r0 = @class(NSDictionary);
    r0 = [r0 class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    r26 = r0;
    r25 = sub_1005d85d8([r0 objectForKey:@"id"], 0x0);
    r19 = [*(r21 + 0x48) objectForKey:r27];
    r0 = @class(NSDictionary);
    r0 = [r0 class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    r22 = r0;
    r19 = [r0 objectForKey:@"offerList"];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    r23 = r0;
    r0 = [r0 indexOfObject:r25];
    if (r0 == 0x7fffffffffffffff) {
            if (**___stack_chk_guard == **___stack_chk_guard) {
                    [r21 initCycle:r27 forSystem:r20];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            r28 = r0;
            r0 = [r26 objectForKey:@"session"];
            r0 = sub_1005d8370(r0, 0x0);
            var_84 = r0;
            var_94 = r0 + 0x1;
            r22 = sub_1005d8370([r22 objectForKey:@"sessionsToCycle"], 0x3);
            var_90 = r21;
            r0 = r21;
            r21 = r27;
            r26 = r20;
            r0 = [r0 getCycleOverrideForOffer:r25 inCycle:r27 inSystem:r20];
            if (r0 != 0x0) {
                    r19 = r0;
                    r0 = [r0 count];
                    r27 = var_80;
                    if (r0 != 0x0) {
                            r22 = sub_1005d8370([r19 objectForKey:@"sessionsToCycle"], r22);
                    }
                    r20 = r26;
                    r26 = var_90;
                    r2 = var_94;
            }
            else {
                    r20 = r26;
                    r26 = var_90;
                    r27 = var_80;
                    r2 = var_94;
            }
            if (r22 > 0x1) {
                    asm { csinc      w8, w22, wzr, gt };
            }
            if (var_84 >= &@selector(fetchCompletion)) {
                    if (r28 + 0x1 >= [r23 count]) {
                            asm { csinc      x2, xzr, x28, hs };
                    }
                    r25 = sub_1005d85d8([r23 objectAtIndex:r2], 0x0);
                    r2 = 0x1;
            }
            var_58 = **___stack_chk_guard;
            [NSNumber numberWithInt:r2];
            [r27 setObject:[NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2] forKey:r21];
            [*(r26 + 0x58) setObject:r27 forKey:r20];
            if (**___stack_chk_guard != var_58) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)addExtraButton:(void *)arg2 toDictionary:(void *)arg3 atPosition:(void *)arg4 withPriority:(void *)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
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
    if (r2 != 0x0) {
            r21 = r5;
            r19 = r4;
            r20 = r3;
            r22 = r2;
            if (([r4 intValue] & 0xffffffff80000000) == 0x0 && ([r21 intValue] & 0xffffffff80000000) == 0x0) {
                    r0 = [r20 objectForKey:r2];
                    r0 = sub_1005d86c0(r0, 0x0);
                    if (r0 != 0x0) {
                            r23 = r0;
                            if ([r0 count] != 0x0) {
                                    r0 = [r23 objectForKey:r2];
                                    r0 = sub_1005d8728(r0, 0x0);
                                    if (r0 != 0x0) {
                                            r24 = r0;
                                            if ([r0 count] != 0x0) {
                                                    [r24 insertObject:r22 atIndex:0x0];
                                            }
                                            else {
                                                    r24 = [NSMutableArray arrayWithObject:r2];
                                            }
                                    }
                                    else {
                                            r24 = [NSMutableArray arrayWithObject:r2];
                                    }
                            }
                            else {
                                    r24 = [NSMutableArray arrayWithObject:r22];
                                    r23 = [NSMutableDictionary dictionary];
                            }
                    }
                    else {
                            r24 = [NSMutableArray arrayWithObject:r22];
                            r23 = [NSMutableDictionary dictionary];
                    }
                    [r23 setObject:r2 forKey:r3];
                    objc_msgSend(r20, r22);
            }
    }
    return;
}

-(void *)getEntryPointForOffer:(void *)arg2 inSystem:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self getClientForSystem:arg3];
    r20 = r0;
    if ([[[r0 promoSystem] getOfferFromID:r19] badgeConfiguration] != 0x0) {
            r1 = @selector(getBadgeForOffer:);
            r0 = r20;
    }
    else {
            r0 = [r20 getPopupForOffer:r19 isAuto:0x0];
            r0 = [r0 buttonList];
            r1 = @selector(objectAtIndex:);
    }
    r0 = objc_msgSend(r0, r1);
    return r0;
}

-(void)reloadCycleOverridesForCycle:(void *)arg2 forSystem:(void *)arg3 {
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
    r23 = arg3;
    r25 = arg2;
    r27 = self;
    r0 = *(self + 0x50);
    r0 = [r0 objectForKey:r2];
    r0 = sub_1005d86c0(r0, 0x0);
    if (r0 != 0x0) {
            r19 = r0;
            if ([r0 count] != 0x0) {
                    var_170 = r19;
            }
            else {
                    var_170 = [NSMutableDictionary dictionary];
            }
    }
    else {
            var_170 = [NSMutableDictionary dictionary];
    }
    r22 = @selector(objectForKey:);
    r24 = [NSMutableDictionary dictionary];
    var_168 = r25;
    r19 = objc_msgSend(*(r27 + 0x48), r22);
    r0 = [NSDictionary class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    if (r0 != 0x0) {
            r19 = r0;
            if ([r0 count] != 0x0) {
                    r26 = @selector(class);
                    r19 = [r19 objectForKey:r2];
                    r0 = objc_msgSend(@class(NSArray), r26);
                    r0 = sub_1005d8554(r19, r0, 0x0);
                    var_110 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_138 = r0;
                    var_160 = r1;
                    r0 = objc_msgSend(r0, r1);
                    var_128 = r0;
                    if (r0 != 0x0) {
                            r21 = @selector(count);
                            r28 = &@class(MCConfigurationData);
                            var_130 = *var_110;
                            var_150 = r21;
                            do {
                                    r25 = 0x0;
                                    do {
                                            if (*var_110 != var_130) {
                                                    objc_enumerationMutation(var_138);
                                            }
                                            r22 = @selector(objectForKey:);
                                            r19 = *(var_118 + r25 * 0x8);
                                            if (objc_msgSend(r24, r22) == 0x0) {
                                                    r20 = [r27 getCustomDataForOffer:r19 inSystem:r23];
                                                    r0 = *(r28 + 0x18);
                                                    r0 = objc_msgSend(r0, r26);
                                                    r0 = sub_1005d8554(r20, r0, 0x0);
                                                    if (r0 != 0x0) {
                                                            r20 = r0;
                                                            if (objc_msgSend(r0, r21) != 0x0) {
                                                                    r2 = [r20 objectForKey:r2];
                                                                    r23 = r23;
                                                                    r27 = r27;
                                                                    r28 = r28;
                                                                    r24 = r24;
                                                                    r26 = r26;
                                                                    r21 = var_150;
                                                                    r20 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
                                                                    r0 = *(r28 + 0x18);
                                                                    r0 = objc_msgSend(r0, r26);
                                                                    r0 = sub_1005d8554(r20, r0, 0x0);
                                                                    if (r0 != 0x0) {
                                                                            r20 = r0;
                                                                            if (objc_msgSend(r0, r21) != 0x0) {
                                                                                    [r24 setObject:r2 forKey:r3];
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                            r25 = r25 + 0x1;
                                    } while (r25 < var_128);
                                    r0 = objc_msgSend(var_138, var_160);
                                    var_128 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    var_60 = **___stack_chk_guard;
    [var_170 setObject:r24 forKey:var_168];
    [*(r27 + 0x50) setObject:var_170 forKey:r23];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getOrderedExtraButtons:(void *)arg2 {
    r21 = [NSMutableDictionary dictionary];
    r22 = [NSMutableArray arrayWithArray:[[[self getClientForSystem:arg2] promoSystem] getActiveOffers]];
    [self setCycleExtraButtonPositions:r22 inDictionary:r21 forSystem:arg2];
    [self setNormalExtraButtonPositions:r22 inDictionary:r21 forSystem:arg2];
    r0 = [NSDictionary dictionaryWithDictionary:r21];
    return r0;
}

-(void)setNormalExtraButtonPositions:(void *)arg2 inDictionary:(void *)arg3 forSystem:(void *)arg4 {
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
    r19 = arg4;
    var_160 = arg3;
    r22 = self;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = arg2;
    var_168 = r1;
    r0 = objc_msgSend(arg2, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            var_138 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != var_138) {
                                    objc_enumerationMutation(var_148);
                            }
                            r25 = *(var_118 + r27 * 0x8);
@(0xffffffffffffffff);
                            r0 = [MCPromoDataAccess clearAllDataAccessFromConfig:[r22 getCustomDataForOffer:r25 inSystem:r19]];
                            r21 = @class(NSNumber);
                            r21 = [r21 numberWithInt:sub_1005d8370([r0 objectForKey:@"buttonPosition"], 0xffffffffffffffff)];
                            r0 = [r22 getEntryPointForOffer:r25 inSystem:r19];
                            if (r0 != 0x0) {
                                    r24 = r0;
                                    if ([r21 intValue] != -0x1) {
                                            sub_1005d820c([r22 getBadgePriorityForOffer:r25 inSystem:r19], @(0x0));
                                            [r22 addExtraButton:r2 toDictionary:r3 atPosition:r4 withPriority:r5];
                                    }
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < var_128);
                    r0 = objc_msgSend(var_148, var_168);
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)encryptPassword {
    r0 = *(self + 0x38);
    return r0;
}

-(void)handleCycleWithConfig:(void *)arg2 forSystem:(void *)arg3 {
    r3 = arg3;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    if (r3 == 0x0) goto loc_100769aec;

loc_1007695cc:
    r25 = r3;
    r19 = r2;
    r20 = r0;
    if (([r3 isEqualToString:r2] & 0x1) != 0x0 || [r20 getClientForSystem:r25] == 0x0) goto loc_100769aec;

loc_10076960c:
    *(r20 + 0x48) = [[MCPromoDataAccess clearAllDataAccessFromConfig:sub_1005d8554(sub_1005d980c(r19, 0x3, 0x1, *(r20 + 0x38)), [NSDictionary class], 0x0)] retain];
    *(r20 + 0x50) = [[NSMutableDictionary dictionary] retain];
    [r20 loadCycleDataForSystem:r25];
    r0 = *(r20 + 0x48);
    r0 != 0x0 && [r0 count] == 0x0;
    r23 = [*(r20 + 0x58) objectForKey:r25];
    r0 = [NSDictionary class];
    r0 = sub_1005d8554(r23, r0, 0x0);
    if (r0 == 0x0) goto loc_100769774;

loc_100769714:
    r8 = &@class(MCConfigurationData);
    if ([r0 count] == 0x0) {
            r8 = &@class(MCConfigurationData);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (0x1 == 0x0) goto loc_10076977c;

loc_100769728:
    if ((r8 & 0x1) == 0x0) {
            if (**___stack_chk_guard == **___stack_chk_guard) {
                    [r20 clearStoredCycleDataForSystem:r25];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    __stack_chk_fail();
            }
    }
    return;

loc_10076977c:
    if (r8 != 0x0) {
            [NSMutableDictionary dictionary];
            [*(r20 + 0x58) setObject:r2 forKey:r3];
    }
    r24 = [*(r20 + 0x48) allKeys];
    var_190 = q0;
    var_200 = r25;
    r19 = [*(r20 + 0x58) objectForKey:r25];
    r19 = [sub_1005d8554(r19, [NSDictionary class], 0x0) allKeys];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_220 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r21 = *var_190;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_190 != r21) {
                                    objc_enumerationMutation(r19);
                            }
                            r26 = @selector(containsObject:);
                            r28 = *(var_198 + r23 * 0x8);
                            if ((objc_msgSend(r24, r26) & 0x1) == 0x0) {
                                    [*(r20 + 0x58) removeObjectForKey:r2];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r25);
                    r0 = objc_msgSend(r19, var_220);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    var_1D0 = q0;
    r0 = *(r20 + 0x48);
    r0 = [r0 allKeys];
    var_1F8 = r0;
    r0 = objc_msgSend(r0, var_220);
    if (r0 != 0x0) {
            r25 = r0;
            r26 = *var_1D0;
            r23 = @selector(class);
            do {
                    r21 = 0x0;
                    do {
                            if (*var_1D0 != r26) {
                                    objc_enumerationMutation(var_1F8);
                            }
                            r19 = *(var_1D8 + r21 * 0x8);
                            r24 = [*(r20 + 0x48) objectForKey:r19];
                            r0 = objc_msgSend(@class(NSDictionary), r23);
                            r0 = sub_1005d8554(r24, r0, 0x0);
                            r28 = r0;
                            r24 = [r0 objectForKey:@"offerList"];
                            r0 = objc_msgSend(@class(NSArray), r23);
                            r0 = sub_1005d8554(r24, r0, 0x0);
                            if (r28 != 0x0) {
                                    r24 = r0;
                                    [r28 count];
                                    if (r24 != 0x0) {
                                            asm { ccmp       x0, #0x0, #0x4, ne };
                                    }
                                    if (!CPU_FLAGS & E && [r24 count] != 0x0) {
                                            [r20 reloadCycleOverridesForCycle:r19 forSystem:var_200];
                                            r0 = *(r20 + 0x58);
                                            r0 = [r0 objectForKey:var_200];
                                            r0 = sub_1005d86c0(r0, 0x0);
                                            r0 = [r0 objectForKey:r19];
                                            r0 = sub_1005d86c0(r0, 0x0);
                                            if (r0 != 0x0 && [r0 count] != 0x0) {
                                                    r0 = r20;
                                                    r1 = @selector(bumpCycle:forSystem:);
                                            }
                                            else {
                                                    r0 = r20;
                                                    r1 = @selector(initCycle:forSystem:);
                                            }
                                            objc_msgSend(r0, r1);
                                    }
                                    else {
                                            [*(r20 + 0x58) removeObjectForKey:r2];
                                    }
                            }
                            else {
                                    [*(r20 + 0x58) removeObjectForKey:r2];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r25);
                    r0 = objc_msgSend(var_1F8, var_220);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    [r20 storeCycleDataForSystem:var_200];
    goto loc_100769aec;

loc_100769aec:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100769774:
    r8 = 0x1;
    if (0x1 != 0x0) goto loc_100769728;
}

-(void)setEncryptPassword:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)clientDelegate {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setClientDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)localizationManager {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setCycleExtraButtonPositions:(void *)arg2 inDictionary:(void *)arg3 forSystem:(void *)arg4 {
    r4 = arg4;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    var_1E8 = arg3;
    var_170 = arg2;
    var_148 = self;
    r0 = *(self + 0x48);
    if (r0 == 0x0) goto loc_10076af74;

loc_10076a824:
    r25 = r4;
    r1 = @selector(count);
    var_158 = r1;
    if (objc_msgSend(r0, r1) == 0x0) goto loc_10076af74;

loc_10076a83c:
    var_1E0 = sub_1005d86c0([*(var_148 + 0x58) objectForKey:r25], 0x0);
    var_130 = q0;
    r0 = *(var_148 + 0x48);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B8 = r0;
    var_228 = r1;
    r0 = objc_msgSend(r0, r1);
    var_180 = r0;
    if (r0 == 0x0) goto loc_10076af74;

loc_10076a89c:
    var_190 = *var_130;
    var_1F0 = r25;
    goto loc_10076a8ac;

loc_10076a8ac:
    r24 = 0x0;
    goto loc_10076a8d4;

loc_10076a8d4:
    r9 = var_190;
    if (*var_130 != r9) {
            objc_enumerationMutation(var_1B8);
    }
    var_160 = *(var_138 + r24 * 0x8);
    r19 = [*(var_148 + 0x48) objectForKey:r2];
    r0 = [NSDictionary class];
    r0 = sub_1005d8554(r19, r0, 0x0);
    if (r0 == 0x0) goto loc_10076af44;

loc_10076a930:
    r19 = r0;
    if (objc_msgSend(r0, var_158) == 0x0) goto loc_10076af44;

loc_10076a940:
    r20 = [r19 objectForKey:r2];
    r0 = [NSArray class];
    r0 = sub_1005d8554(r20, r0, 0x0);
    if (r0 == 0x0) goto loc_10076af44;

loc_10076a97c:
    r26 = r0;
    if (objc_msgSend(r0, var_158) == 0x0) goto loc_10076af44;

loc_10076a98c:
    var_1AC = sub_1005d8370([r19 objectForKey:r2], 0xffffffffffffffff);
    var_1F4 = sub_1005d8370([r19 objectForKey:r2], 0xffffffffffffffff);
    var_1BC = sub_1005d8370([r19 objectForKey:r2], 0xffffffffffffffff);
    var_214 = sub_1005d8370([r19 objectForKey:r2], 0xffffffffffffffff);
    var_1C0 = sub_1005d8370([r19 objectForKey:r2], 0x64);
    var_218 = sub_1005d8370([r19 objectForKey:r2], 0x64);
    r28 = objc_msgSend(r26, var_158);
    if ([var_1E0 objectForKey:r2] == 0x0) goto loc_10076af44;

loc_10076aa74:
    r27 = sub_1005d85d8([sub_1005d8554([var_1E0 objectForKey:r2], [NSDictionary class], 0x0) objectForKey:r2], @"");
    r0 = [r26 indexOfObject:r27];
    if (r0 == 0x7fffffffffffffff) goto loc_10076af44;

loc_10076aae8:
    r21 = r0;
    r20 = [var_170 indexOfObject:r27];
    r0 = [var_148 getEntryPointForOffer:r2 inSystem:r3];
    if (r28 < 0x1) goto loc_10076af44;

loc_10076ab18:
    r8 = 0x7fffffffffffffff;
    if (r20 == r8) {
            r8 = 0x7fffffffffffffff;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r22 = r8 | r9;
    r23 = @selector(numberWithInt:);
    var_220 = r26;
    goto loc_10076ab90;

loc_10076ab90:
    if (r20 != 0x7fffffffffffffff) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_10076adc0;

loc_10076aba0:
    var_1A8 = r0;
    var_198 = r28;
    if ((r22 & 0x1) != 0x0) {
            objc_msgSend(@class(NSNumber), r23);
            [var_1E0 setObject:[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] forKey:var_160];
            [*(var_148 + 0x58) setObject:var_1E0 forKey:r25];
            [var_148 storeCycleDataForSystem:r25];
    }
    r22 = [var_148 getCycleOverrideForOffer:r27 inCycle:var_160 inSystem:r25];
    r28 = r23;
    r20 = objc_msgSend(@class(NSNumber), r23);
    r0 = @class(NSNumber);
    r0 = objc_msgSend(r0, r23);
    r8 = var_1AC;
    if ((r8 & 0xffffffff80000000) != 0x0) goto loc_10076ad18;

loc_10076ac8c:
    if (r8 == 0x0) goto loc_10076ae20;

loc_10076ac90:
    sub_1005d8370([r22 objectForKey:r2], var_1BC);
    r20 = objc_msgSend(@class(NSNumber), r23);
    sub_1005d8370([r22 objectForKey:r2], var_1C0);
    r0 = r25;
    r25 = var_1F0;
    r5 = objc_msgSend(r0, r23);
    var_1AC = r8 - 0x1;
    r26 = var_220;
    goto loc_10076ad90;

loc_10076ad90:
    r28 = var_198;
    goto loc_10076ad94;

loc_10076ad94:
    [var_148 addExtraButton:var_1A8 toDictionary:var_1E8 atPosition:r20 withPriority:r5];
    [var_170 removeObject:r27];
    r22 = 0x0;
    goto loc_10076adc0;

loc_10076adc0:
    if (r21 + 0x1 == objc_msgSend(r26, var_158)) {
            asm { csinc      x21, xzr, x21, eq };
    }
    if (r28 < 0x2) goto loc_10076af44;

loc_10076ade0:
    r28 = r28 - 0x1;
    r27 = [r26 objectAtIndex:r2];
    r20 = [var_170 indexOfObject:r27];
    r0 = [var_148 getEntryPointForOffer:r2 inSystem:r3];
    goto loc_10076ab90;

loc_10076af44:
    r24 = r24 + 0x1;
    if (r24 < var_180) goto loc_10076a8d4;

loc_10076af54:
    r0 = objc_msgSend(var_1B8, var_228);
    var_180 = r0;
    if (r0 != 0x0) goto loc_10076a8ac;

loc_10076af74:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10076ae20:
    r8 = var_1F4;
    r28 = var_198;
    if ((r8 & 0xffffffff80000000) != 0x0) goto loc_10076aebc;

loc_10076ae2c:
    if (r8 == 0x0) goto loc_10076af34;

loc_10076ae30:
    sub_1005d8370([r22 objectForKey:r2], var_214);
    r20 = objc_msgSend(@class(NSNumber), r23);
    sub_1005d8370([r22 objectForKey:r2], var_218);
    r0 = r25;
    r25 = var_1F0;
    r5 = objc_msgSend(r0, r23);
    var_1AC = 0x0;
    var_1F4 = r8 - 0x1;
    goto loc_10076ad94;

loc_10076af34:
    r5 = r0;
    var_1F4 = 0x0;
    goto loc_10076af3c;

loc_10076af3c:
    var_1AC = 0x0;
    goto loc_10076ad94;

loc_10076aebc:
    sub_1005d8370([r22 objectForKey:r2], var_214);
    r20 = objc_msgSend(@class(NSNumber), r23);
    sub_1005d8370([r22 objectForKey:r2], var_218);
    r0 = r25;
    r25 = var_1F0;
    r5 = objc_msgSend(r0, r23);
    goto loc_10076af3c;

loc_10076ad18:
    sub_1005d8370([r22 objectForKey:r2], var_1BC);
    r20 = objc_msgSend(@class(NSNumber), r28);
    sub_1005d8370([r22 objectForKey:r2], var_1C0);
    r0 = r25;
    r25 = var_1F0;
    r5 = objc_msgSend(r0, r28);
    r23 = r28;
    goto loc_10076ad90;
}

-(void)setupPromoClientDelegate:(void *)arg2 andPromoSystemDelegate:(void *)arg3 {
    r3 = arg3;
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
            r20 = r3;
            r22 = r2;
            r19 = r0;
            r0 = *(r0 + 0x28);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x28) = 0x0;
            }
            *(r19 + 0x28) = [r22 retain];
            r0 = *(r19 + 0x30);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + 0x30) = 0x0;
            }
            *(r19 + 0x30) = [r20 retain];
    }
    else {
            sub_10076b3a4();
    }
    return;
}

-(void *)getAllShowablePopupsForSystem:(void *)arg2 {
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
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r19 = r0;
            r20 = [NSMutableArray array];
            r0 = [r19 promoSystem];
            r0 = [r0 getActiveOffers];
            r21 = r0;
            var_110 = q0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r26 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r0 = [r19 getPopupForOffer:r2 isAuto:r3];
                                    if (r0 != 0x0) {
                                            [r20 addObject:r2];
                                    }
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            var_60 = **___stack_chk_guard;
            r0 = [NSArray arrayWithArray:r20];
            if (**___stack_chk_guard != var_60) {
                    r0 = __stack_chk_fail();
            }
    }
    else {
            r0 = sub_10076b3cc();
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[NSNotificationCenter defaultCenter] removeObserver:r2];
    r0 = *(r19 + 0x58);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x58) = 0x0;
    }
    r0 = *(r19 + 0x50);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x50) = 0x0;
    }
    r0 = *(r19 + 0x48);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x48) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)getNextShowablePopupForSystem:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 getNextShowablePopup];
    }
    else {
            r0 = sub_10076b3f4();
    }
    return r0;
}

-(void *)getNextShowableBadgeForSystem:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 getNextShowableBadge];
    }
    else {
            r0 = sub_10076b41c();
    }
    return r0;
}

-(void *)getActivePromoTokensForSystem:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 promoSystem];
            r0 = [r0 getActiveOffersTokens];
    }
    else {
            r0 = sub_10076b444();
    }
    return r0;
}

-(void *)getAllActivePromoTokens {
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
    r20 = [NSMutableArray array];
    r0 = *(r19 + 0x8);
    r0 = [r0 allKeys];
    r21 = r0;
    var_110 = q0;
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
                            r0 = [r19 getActivePromoTokensForSystem:*(var_118 + r22 * 0x8)];
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    if ([r0 count] != 0x0) {
                                            [r20 addObjectsFromArray:r2];
                                    }
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r0 = objc_msgSend(r21, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getTokenForOffer:(void *)arg2 inSystem:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 promoSystem];
            r0 = [r0 getTokenForOffer:r19 onlyActive:0x1];
    }
    else {
            r0 = sub_10076b46c();
    }
    return r0;
}

-(void *)getCustomDataForOffer:(void *)arg2 inSystem:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = sub_1005d8554([[[r0 promoSystem] getPopUpInfoForOffer:r19] customData], [NSDictionary class], 0x0);
    }
    else {
            r0 = sub_10076b494();
    }
    return r0;
}

-(void *)getBadgePriorityForOffer:(void *)arg2 inSystem:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            [[[r0 promoSystem] getOfferFromID:r19] badgePriority];
            r0 = [NSNumber numberWithUnsignedInt:r2];
    }
    else {
            r0 = sub_10076b4bc();
    }
    return r0;
}

-(void *)getSystemIdContainingPromoId:(void *)arg2 {
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
    r19 = arg2;
    var_110 = q0;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10076955c;

loc_1007694b4:
    r22 = r0;
    r26 = *var_110;
    r8 = &@selector(fetchCompletion);
    goto loc_1007694c8;

loc_1007694c8:
    r27 = 0x0;
    r28 = r8;
    r24 = *(r8 + 0x170);
    goto loc_1007694d8;

loc_1007694d8:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r0 = *(var_118 + r27 * 0x8);
    r0 = [r0 promoSystem];
    r25 = r0;
    if (objc_msgSend(r0, r24) != 0x0) goto loc_10076954c;

loc_100769514:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1007694d8;

loc_100769520:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    r8 = r28;
    if (r0 != 0x0) goto loc_1007694c8;

loc_10076955c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10076954c:
    r0 = [r25 promoSystemId];
    goto loc_10076955c;
}

@end