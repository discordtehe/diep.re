@implementation MCPromoDataAccessNumberProperty

-(void *)getPropertyValue {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[MCPromoDataAccessManager sharedMCPromoDataAccessManager] getNumberPropertyType:[[self->mConfig objectForKey:@"dataAccess"] objectForKey:@"propertyType"]];
    if (r0 == 0x0) {
            r0 = [NSNumber numberWithInt:r2];
    }
    return r0;
}

-(void *)resolveDataAccess {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    var_200 = [self getPropertyValue];
    r0 = self->mConfig;
    r0 = [r0 objectForKey:@"dataAccess"];
    r0 = [r0 objectForKey:@"valueForRange"];
    r19 = r0;
    var_190 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_248 = r0;
    r2 = 0x0;
    if (r0 == 0x0) goto loc_1009d9e70;

loc_1009d9b58:
    r21 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = 0x0;
    r23 = *var_190;
    r27 = &@class(MCConfigurationData);
    var_258 = r23;
    stack[-608] = r19;
    var_238 = r21;
    goto loc_1009d9b74;

loc_1009d9b74:
    var_230 = r2;
    r20 = 0x0;
    goto loc_1009d9b7c;

loc_1009d9b7c:
    if (*var_190 != r23) {
            objc_enumerationMutation(r19);
    }
    var_240 = r20;
    r0 = *(var_198 + r20 * 0x8);
    var_228 = r0;
    r0 = [r0 objectForKey:r2];
    var_1D0 = q0;
    var_208 = r0;
    r0 = objc_msgSend(r0, r21);
    if (r0 == 0x0) goto loc_1009d9e14;

loc_1009d9bd8:
    r20 = r0;
    r19 = *var_1D0;
    var_218 = r19;
    goto loc_1009d9be8;

loc_1009d9be8:
    r21 = 0x0;
    r22 = @selector(class);
    r23 = @selector(isKindOfClass:);
    var_210 = r22;
    goto loc_1009d9c24;

loc_1009d9c24:
    if (*var_1D0 != r19) {
            objc_enumerationMutation(var_208);
    }
    r8 = var_1D8;
    r26 = *(r8 + r21 * 0x8);
    objc_msgSend(*(r27 + 0x18), r22);
    if (objc_msgSend(r26, r23) == 0x0) goto loc_1009d9cc8;

loc_1009d9c64:
    r24 = r23;
    r23 = r20;
    r19 = [r26 objectForKey:r2];
    r25 = [r26 objectForKey:r2];
    r0 = [r26 objectForKey:r2];
    if (r0 != 0x0) {
            r22 = [r0 boolValue];
    }
    else {
            r22 = 0x0;
    }
    r0 = [r26 objectForKey:r2];
    if (r0 != 0x0) {
            r26 = [r0 boolValue];
            if (r19 != 0x0) {
                    COND = [var_200 intValue] > [r19 intValue];
                    r27 = r27;
                    if (COND) {
                            if (CPU_FLAGS & G) {
                                    r8 = 0x1;
                            }
                    }
                    if (CPU_FLAGS & GE) {
                            if (CPU_FLAGS & GE) {
                                    r9 = 0x1;
                            }
                    }
                    if (r22 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r22 = r9;
                            }
                            else {
                                    r22 = r8;
                            }
                    }
            }
            else {
                    r22 = 0x1;
            }
    }
    else {
            r26 = 0x0;
            if (r19 == 0x0) {
                    r22 = 0x1;
            }
            else {
                    COND = [var_200 intValue] > [r19 intValue];
                    r27 = r27;
                    if (COND) {
                            if (CPU_FLAGS & G) {
                                    r8 = 0x1;
                            }
                    }
                    if (CPU_FLAGS & GE) {
                            if (CPU_FLAGS & GE) {
                                    r9 = 0x1;
                            }
                    }
                    if (r22 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r22 = r9;
                            }
                            else {
                                    r22 = r8;
                            }
                    }
            }
    }
    r20 = r23;
    r23 = r24;
    if (r25 != 0x0) {
            if ([var_200 intValue] < [r25 intValue]) {
                    if (CPU_FLAGS & L) {
                            r8 = 0x1;
                    }
            }
            if (CPU_FLAGS & LE) {
                    if (CPU_FLAGS & LE) {
                            r9 = 0x1;
                    }
            }
            if (r26 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = r9;
                    }
                    else {
                            r8 = r8;
                    }
            }
    }
    else {
            r8 = 0x1;
    }
    r8 = r22 & r8;
    r19 = var_218;
    r22 = var_210;
    if ((r8 & 0x1) != 0x0) goto loc_1009d9e58;

loc_1009d9de4:
    r21 = r21 + 0x1;
    if (r21 < r20) goto loc_1009d9c24;

loc_1009d9df0:
    r21 = var_238;
    r0 = objc_msgSend(var_208, r21);
    r20 = r0;
    if (r0 != 0x0) goto loc_1009d9be8;

loc_1009d9e14:
    r20 = var_240 + 0x1;
    r23 = var_258;
    r19 = stack[-608];
    if (r20 < var_248) goto loc_1009d9b7c;

loc_1009d9e30:
    r0 = objc_msgSend(r19, r21);
    r2 = var_230;
    var_248 = r0;
    if (r0 != 0x0) goto loc_1009d9b74;

loc_1009d9e70:
    var_60 = **___stack_chk_guard;
    r0 = [MCPromoDataAccess executeDataAccessFromConfig:r2];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009d9e58:
    r2 = [var_228 objectForKey:r2];
    goto loc_1009d9e70;

loc_1009d9cc8:
    objc_msgSend(@class(NSString), r22);
    if (objc_msgSend(r26, r23) != 0x0 && [r26 isEqualToString:r2] != 0x0) {
            var_230 = [var_228 objectForKey:r2];
    }
    goto loc_1009d9de4;
}

@end