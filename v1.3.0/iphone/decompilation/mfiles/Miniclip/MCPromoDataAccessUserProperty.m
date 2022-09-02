@implementation MCPromoDataAccessUserProperty

-(void *)getPropertyValue {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [self->mConfig objectForKey:@"dataAccess"];
    r0 = [[MCPromoDataAccessManager sharedMCPromoDataAccessManager] getPropertyType:[r20 objectForKey:@"propertyType"] withPropertyInfo:[r20 objectForKey:@"propertyInfo"]];
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"nil";
            }
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r19 = [self getPropertyValue];
    r0 = self->mConfig;
    r0 = [r0 objectForKey:@"dataAccess"];
    r0 = [r0 objectForKey:@"valueForProperty"];
    r21 = r0;
    var_190 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1F0 = r0;
    r23 = 0x0;
    if (r0 == 0x0) goto loc_1009d9988;

loc_1009d980c:
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r23 = 0x0;
    r25 = *var_190;
    var_200 = r21;
    var_1F8 = r22;
    var_208 = r25;
    goto loc_1009d9824;

loc_1009d9824:
    r26 = 0x0;
    goto loc_1009d9828;

loc_1009d9828:
    if (*var_190 != r25) {
            objc_enumerationMutation(r21);
    }
    var_1E8 = r26;
    r28 = *(var_198 + r26 * 0x8);
    r0 = [r28 objectForKey:@"properties"];
    r25 = r0;
    var_1D0 = q0;
    r0 = objc_msgSend(r0, r22);
    if (r0 == 0x0) goto loc_1009d9930;

loc_1009d9884:
    r21 = r0;
    r27 = *var_1D0;
    goto loc_1009d9890;

loc_1009d9890:
    r26 = 0x0;
    goto loc_1009d989c;

loc_1009d989c:
    if (*var_1D0 != r27) {
            objc_enumerationMutation(r25);
    }
    r24 = @selector(isEqualToString:);
    r22 = *(var_1D8 + r26 * 0x8);
    if ((objc_msgSend(r22, r24) & 0x1) != 0x0) goto loc_1009d9970;

loc_1009d98d0:
    if ([r22 isEqualToString:r2] != 0x0) {
            r23 = [r28 objectForKey:@"value"];
    }
    r26 = r26 + 0x1;
    if (r26 < r21) goto loc_1009d989c;

loc_1009d990c:
    r22 = var_1F8;
    r0 = objc_msgSend(r25, r22);
    r21 = r0;
    if (r0 != 0x0) goto loc_1009d9890;

loc_1009d9930:
    r26 = var_1E8 + 0x1;
    r25 = var_208;
    r21 = var_200;
    if (r26 < var_1F0) goto loc_1009d9828;

loc_1009d994c:
    r0 = objc_msgSend(r21, r22);
    var_1F0 = r0;
    if (r0 != 0x0) goto loc_1009d9824;

loc_1009d9988:
    var_60 = **___stack_chk_guard;
    r0 = [MCPromoDataAccess getDataAccessFromConfiguration:r23];
    r0 = [r0 execute];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009d9970:
    r23 = [r28 objectForKey:@"value"];
    goto loc_1009d9988;
}

@end