@implementation MCPromoDataAccessIndirectTemplate

-(void *)getPropertyValue {
    return 0x0;
}

-(void *)resolveDataAccess {
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
    var_128 = self;
    r0 = self->mConfig;
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009d9070;

loc_1009d8e20:
    r21 = r0;
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009d9070;

loc_1009d8e38:
    r22 = r0;
    [NSDictionary class];
    if ([r22 isKindOfClass:r2] == 0x0 || [[r22 allKeys] containsObject:r2] == 0x0) goto loc_1009d8ec0;

loc_1009d8e98:
    r0 = [MCPromoDataAccess getDataAccessFromConfiguration:r22];
    r0 = [r0 execute];
    goto loc_1009d8f4c;

loc_1009d8f4c:
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r21 objectForKey:r2];
            var_110 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r1;
            var_130 = r0;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r25 = r0;
                    r19 = *var_110;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_110 != r19) {
                                            objc_enumerationMutation(var_130);
                                    }
                                    r20 = @selector(objectForKey:);
                                    r28 = *(var_118 + r21 * 0x8);
                                    objc_msgSend(r28, r20);
                                    objc_msgSend(r28, r20);
                                    r22 = objc_msgSend(var_128, r27);
                                    r21 = r21 + 0x1;
                            } while (r21 < r25);
                            r0 = objc_msgSend(var_130, var_138);
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            r0 = [MCPromoDataAccess getDataAccessFromConfiguration:r22];
            r0 = [r0 execute];
    }
    else {
            r0 = 0x0;
    }
    goto loc_1009d9070;

loc_1009d9070:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009d8ec0:
    r24 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_1009d8f04;

loc_1009d8ee4:
    r0 = [MCPromoIndirectManager sharedMCPromoIndirectManager];
    r1 = @selector(getTemplateForKey:);
    goto loc_1009d8f44;

loc_1009d8f44:
    r0 = objc_msgSend(r0, r1);
    goto loc_1009d8f4c;

loc_1009d8f04:
    r24 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_1009d906c;

loc_1009d8f28:
    r0 = [MCPromoIndirectManager sharedMCPromoIndirectManager];
    r1 = @selector(getTemplateForPath:);
    goto loc_1009d8f44;

loc_1009d906c:
    r0 = 0x0;
    goto loc_1009d9070;
}

-(void *)replaceObject:(void *)arg2 withTag:(void *)arg3 forValue:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r22 = arg4;
    var_1F0 = self;
    var_1E8 = arg3;
    r19 = arg2;
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1009d9190;

loc_1009d9124:
    r23 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r22, r23) == 0x0) goto loc_1009d92b4;

loc_1009d9144:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 stringByReplacingOccurrencesOfString:var_1E8 withString:r22];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009d92b4:
    if ([r19 isEqualToString:r2] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r19 = r19;
            }
            else {
                    r19 = r22;
            }
    }
    goto loc_1009d93d8;

loc_1009d93d8:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009d9190:
    r23 = @selector(isKindOfClass:);
    [NSDictionary class];
    if (objc_msgSend(r19, r23) == 0x0) goto loc_1009d92d4;

loc_1009d91b4:
    r23 = [[objc_alloc() init] autorelease];
    var_190 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F8 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r20 = *var_190;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_190 != r20) {
                                    objc_enumerationMutation(r19);
                            }
                            [var_1F0 replaceObject:[r19 valueForKey:*(var_198 + r21 * 0x8)] withTag:var_1E8 forValue:r22];
                            [r23 setValue:r2 forKey:r3];
                            r21 = r21 + 0x1;
                    } while (r21 < r25);
                    r0 = objc_msgSend(r19, var_1F8);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1009d93d4;

loc_1009d93d4:
    r19 = r23;
    goto loc_1009d93d8;

loc_1009d92d4:
    r23 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r19, r23) == 0x0) goto loc_1009d93d8;

loc_1009d92f8:
    r23 = [[objc_alloc() init] autorelease];
    var_1D0 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r20 = *var_1D0;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_1D0 != r20) {
                                    objc_enumerationMutation(r19);
                            }
                            [var_1F0 replaceObject:r2 withTag:r3 forValue:r4];
                            objc_msgSend(r23, r27);
                            r21 = r21 + 0x1;
                    } while (r21 < r25);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1009d93d4;
}

@end