@implementation GADRTBRequestParameters

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void *)extras {
    r0 = self->_extras;
    return r0;
}

-(struct GADAdSize)adSize {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(r8 + 0x10) = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    return r0;
}

-(void *)credentials {
    r0 = self->_credentials;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_credentials, 0x0);
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    return;
}

-(void *)initWithTargeting:(void *)arg2 RTBAdapter:(void *)arg3 {
    r31 = r31 - 0x1f0;
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
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [[&var_130 super] init];
    r26 = r0;
    if (r26 == 0x0) goto loc_100807ef0;

loc_100807860:
    var_150 = @selector(init);
    r24 = [r25 class];
    r28 = [r23 retain];
    r19 = [[GADRTBAdapterManager sharedInstance] retain];
    r20 = [[r28 adUnitID] retain];
    r0 = [r28 adTypes];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    r22 = r23;
    r23 = r0;
    r0 = [r19 credentialsForAdapterClass:r24 adUnitID:r20 defaultFormat:sub_100807674()];
    r29 = r29;
    r27 = [r0 retain];
    [r23 release];
    [r21 release];
    r0 = r20;
    r20 = r27;
    [r0 release];
    [r19 release];
    if (r20 != 0x0) {
            r19 = [r20 retain];
            r27 = @selector(firstObject);
            r23 = r22;
    }
    else {
            var_1C0 = r20;
            var_1B0 = r26;
            var_1A8 = r25;
            var_1A0 = r22;
            r25 = @selector(class);
            r2 = objc_msgSend(@class(GADExtras), r25);
            var_170 = r28;
            r0 = [r28 networkExtrasForClass:r2];
            r0 = [r0 retain];
            var_1C8 = r0;
            r19 = [[r0 additionalParameters] retain];
            r20 = [sub_10081ba6c(r19, *0x100e9f058, objc_msgSend(@class(NSDictionary), r25)) retain];
            [r19 release];
            r0 = @class(NSDictionary);
            r0 = objc_msgSend(r0, r25);
            var_1D0 = r20;
            r20 = [sub_10081ba6c(r20, *0x100e9f060, r0) retain];
            var_1B8 = r24;
            r19 = [NSStringFromClass(r24) retain];
            r0 = objc_msgSend(@class(NSArray), r25);
            var_1D8 = r20;
            r0 = sub_10081ba6c(r20, r19, r0);
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            var_188 = objc_msgSend([NSMutableArray alloc], var_150);
            r0 = [r20 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r0;
            var_190 = r1;
            r20 = objc_msgSend(r0, r1);
            r19 = @selector(adTypes);
            if (r20 != 0x0) {
                    r26 = &@class(MCConfigurationData);
                    r23 = *0x0;
                    do {
                            r27 = 0x0;
                            r21 = @selector(isKindOfClass:);
                            var_158 = r21;
                            do {
                                    if (*0x0 != r23) {
                                            objc_enumerationMutation(var_150);
                                    }
                                    r24 = *(0x0 + r27 * 0x8);
                                    objc_msgSend(*(r26 + 0x18), r25);
                                    if (objc_msgSend(r24, r21) != 0x0) {
                                            r0 = objc_msgSend(var_170, r19);
                                            r0 = [r0 retain];
                                            r21 = r20;
                                            r20 = r23;
                                            r23 = r26;
                                            r26 = r0;
                                            r0 = [r24 objectForKeyedSubscript:@"format"];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = [r26 containsObject:r0];
                                            r25 = r25;
                                            r19 = r19;
                                            [r0 release];
                                            r0 = r26;
                                            r26 = r23;
                                            r23 = r20;
                                            r20 = r21;
                                            r21 = var_158;
                                            [r0 release];
                                            if (r22 != 0x0) {
                                                    r24 = [[GADMediationCredentials alloc] initWithDictionary:r2];
                                                    if (r24 != 0x0) {
                                                            sub_100822370(var_188, r24);
                                                    }
                                                    [r24 release];
                                            }
                                    }
                                    r27 = r27 + 0x1;
                            } while (r27 < r20);
                            r20 = objc_msgSend(var_150, var_190);
                    } while (r20 != 0x0);
            }
            [var_150 release];
            r22 = var_188;
            if ([r22 count] != 0x0) {
                    r19 = [[GADRTBMediationSignalsConfiguration alloc] initWithCredentials:r22];
                    r25 = var_1A8;
                    r23 = var_1A0;
                    r26 = var_1B0;
                    r28 = var_170;
                    r27 = @selector(firstObject);
            }
            else {
                    r28 = var_170;
                    r0 = objc_msgSend(r28, r19);
                    r0 = [r0 retain];
                    r20 = r0;
                    r27 = @selector(firstObject);
                    r0 = objc_msgSend(r0, r27);
                    r29 = r29;
                    r21 = [r0 retain];
                    r19 = sub_100807674();
                    [r21 release];
                    [r20 release];
                    r23 = var_1A0;
                    r26 = var_1B0;
                    if (r19 != -0x1) {
                            r20 = [[GADMediationCredentials alloc] initWithAdFormat:r19 credentials:0x0];
                            r19 = [GADRTBMediationSignalsConfiguration alloc];
                            r0 = [NSArray arrayWithObjects:r29 - 0xe0 count:0x1];
                            r29 = r29;
                            r21 = [r0 retain];
                            r19 = [r19 initWithCredentials:r21];
                            [r21 release];
                            [r20 release];
                    }
                    else {
                            r19 = 0x0;
                    }
                    r25 = var_1A8;
            }
            [r22 release];
            [var_150 release];
            [var_1D8 release];
            [var_1D0 release];
            [var_1C8 release];
            r20 = var_1C0;
            r24 = var_1B8;
    }
    [r20 release];
    [r28 release];
    [r19 autorelease];
    objc_storeStrong((int64_t *)&r26->_configuration, r19);
    r0 = r26->_configuration;
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_credentials));
    r8 = *(r26 + r9);
    *(r26 + r9) = r0;
    [r8 release];
    [r19 release];
    if (r26->_configuration == 0x0) goto loc_100807e98;

loc_100807e6c:
    r19 = (int64_t *)&r26->_adSize;
    if (r28 != 0x0) {
            r20 = &var_148;
            [r28 adSize];
    }
    else {
            r20 = &var_148;
    }
    *(r19 + 0x10) = *(r20 + 0x10);
    *(int128_t *)r19 = *(int128_t *)r20;
    r0 = [r28 networkExtrasForAdapterClass:r24];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_extras));
    r8 = *(r26 + r9);
    *(r26 + r9) = r0;
    [r8 release];
    goto loc_100807ef0;

loc_100807ef0:
    r19 = [r26 retain];
    goto loc_100807efc;

loc_100807efc:
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r23 release];
    [r26 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100807e98:
    r19 = 0x0;
    goto loc_100807efc;
}

@end