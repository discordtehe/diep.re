@implementation ISServerResponseParser

+(void *)sharedInstance {
    if (*qword_1011dac38 != -0x1) {
            dispatch_once(0x1011dac38, 0x100e8c100);
    }
    r0 = *0x1011dac30;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)parseObject:(void *)arg2 {
    r0 = [arg2 retain];
    r22 = [[r0 objectForKeyedSubscript:@"configurations"] retain];
    [self parseConfiguration:r22];
    [r22 release];
    r22 = [[r0 objectForKeyedSubscript:@"providerOrder"] retain];
    [self parseProvidersOrder:r22];
    [r22 release];
    r21 = [[r0 objectForKeyedSubscript:@"providerSettings"] retain];
    [r0 release];
    [self parseProvidersSettings:r21];
    [r21 release];
    return;
}

-(void)parseProvidersSettings:(void *)arg2 {
    r20 = self->_rewardedVideoProvidersConfig;
    r22 = [arg2 retain];
    [self parseProvidersSettings:r22 forProviders:r20 perAdUnit:@"rewardedVideo"];
    [self parseProvidersSettings:r22 forProviders:self->_interstitialProvidersConfig perAdUnit:@"interstitial"];
    [self parseProvidersSettings:r22 forProviders:self->_bannerProvidersConfig perAdUnit:@"banner"];
    [self parseProvidersSettings:r22 forProviders:self->_offerwallProvidersConfig perAdUnit:@"offerwall"];
    [r22 release];
    return;
}

-(void *)parseAdUnitProvidersOrder:(void *)arg2 {
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
    r21 = [arg2 retain];
    r19 = [[NSMutableArray alloc] init];
    r0 = [r21 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(addObject:);
                            r26 = *(0x0 + r22 * 0x8);
                            [[ISAdapterConfig alloc] initWithProviderName:r26];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(r21, var_120);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r20 = [r19 copy];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)parseProvidersOrder:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r20 parseAdUnitProvidersOrder:r22];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoProvidersConfig));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r20 parseAdUnitProvidersOrder:r22];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialProvidersConfig));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r20 parseAdUnitProvidersOrder:r2];
            r29 = r29;
    }
    else {
            r23 = [[NSArray arrayWithObjects:&var_40 count:0x1] retain];
            r0 = [r20 parseAdUnitProvidersOrder:r2];
            r29 = r29;
    }
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_offerwallProvidersConfig));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r23 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r20 parseAdUnitProvidersOrder:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerProvidersConfig));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(double)getTimeOutForAdUnit:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1006e10dc;

loc_1006e10d0:
    r8 = 0x10116f97c;
    goto loc_1006e1144;

loc_1006e1144:
    [*(r20 + sign_extend_64(*(int32_t *)r8)) adapterTimeOutInSeconds];
    v8 = v0;
    goto loc_1006e115c;

loc_1006e115c:
    r0 = [r19 release];
    return r0;

loc_1006e10dc:
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_1006e1100;

loc_1006e10f4:
    r8 = 0x10116f980;
    goto loc_1006e1144;

loc_1006e1100:
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_1006e1124;

loc_1006e1118:
    r8 = 0x10116f988;
    goto loc_1006e1144;

loc_1006e1124:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006e115c;

loc_1006e113c:
    r8 = 0x10116f984;
    goto loc_1006e1144;
}

-(void)parseProvidersSettings:(void *)arg2 forProviders:(void *)arg3 perAdUnit:(void *)arg4 {
    r31 = r31 - 0x1a0;
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
    var_140 = self;
    var_120 = [arg2 retain];
    r21 = [arg3 retain];
    var_148 = [arg4 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_178 = [r0 retain];
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r0;
    var_180 = r1;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 == 0x0) goto loc_1006e0ff0;

loc_1006e0d1c:
    r19 = 0x0;
    goto loc_1006e0de0;

loc_1006e0de0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_150);
    }
    r26 = *(0x0 + r19 * 0x8);
    if (r26 == 0x0) goto loc_1006e0f44;

loc_1006e0e08:
    r20 = [[r26 providerName] retain];
    r21 = [[var_120 objectForKeyedSubscript:r20] retain];
    [var_140 fillProviderData:r26 withSettings:r21 forAdUnit:var_148];
    [r21 release];
    [r20 release];
    r28 = [[r26 providerName] retain];
    r0 = [var_120 objectForKeyedSubscript:r28];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"mpis"];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1006e0fa8;

loc_1006e0eb4:
    r21 = [[r26 providerName] retain];
    r0 = [var_120 objectForKeyedSubscript:r21];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"providerLoadName"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r23 release];
    [r28 release];
    if (r0 != 0x0) {
            [var_178 addObject:r2];
    }
    goto loc_1006e0fc0;

loc_1006e0fc0:
    r19 = r19 + 0x1;
    if (r19 < var_128) goto loc_1006e0de0;

loc_1006e0fd0:
    r0 = objc_msgSend(var_150, var_180);
    var_128 = r0;
    if (r0 != 0x0) goto loc_1006e0d1c;

loc_1006e0ff0:
    var_58 = **___stack_chk_guard;
    [var_150 release];
    [var_140 combineSubProvidersData:var_120 withParent:var_178 adUnit:var_148];
    [var_178 release];
    [var_148 release];
    [var_150 release];
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006e0fa8:
    [r20 release];
    [r23 release];
    r0 = r28;
    goto loc_1006e0fbc;

loc_1006e0fbc:
    [r0 release];
    goto loc_1006e0fc0;

loc_1006e0f44:
    r20 = [[NSString stringWithFormat:@"Cannot parse configuration"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 log:r20 level:0x2 tag:0x5];
    [r0 release];
    r0 = r20;
    goto loc_1006e0fbc;
}

-(void)fillProviderData:(void *)arg2 withSettings:(void *)arg3 forAdUnit:(void *)arg4 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
    }
    else {
            r0 = [r19 providerName];
            r29 = r29;
    }
    r24 = [r0 retain];
    [r19 setReflectionName:r24];
    [r24 release];
    [r23 getTimeOutForAdUnit:r21];
    [r19 setLoadTimeOut:r21];
    r0 = [r20 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            [r0 retain];
            [r19 setSettings:r2];
            [r25 release];
    }
    else {
            r24 = [[NSDictionary alloc] init];
            [r19 setSettings:r2];
    }
    [r24 release];
    r25 = [[NSMutableDictionary dictionary] retain];
    r0 = [r19 settings];
    r0 = [r0 retain];
    r24 = [r0 mutableCopy];
    [r25 release];
    [r0 release];
    r25 = [[r20 objectForKeyedSubscript:r2] retain];
    [r24 addEntriesFromDictionary:r25];
    [r25 release];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            [r0 retain];
            [r24 setObject:r2 forKey:r3];
            [r26 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            [r0 retain];
            [r24 setObject:r2 forKey:r3];
            [r26 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [[NSNumber numberWithBool:[r0 boolValue]] retain];
            [r24 setObject:r2 forKey:r3];
            [r25 release];
            [r22 release];
    }
    [r24 copy];
    [r19 setSettings:r2];
    [r22 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)parseLoggersSettings:(void *)arg2 {
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"server"];
    r0 = [r0 retain];
    r20 = [r0 unsignedIntegerValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"publisher"];
    r0 = [r0 retain];
    r23 = [r0 unsignedIntegerValue];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"console"];
    r0 = [r0 retain];
    r21 = [r0 unsignedIntegerValue];
    [r0 release];
    r21 = [[ISLoggersSettings alloc] initWithServer:r20 publisher:r23 console:r21];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)combineSubProvidersData:(void *)arg2 withParent:(void *)arg3 adUnit:(void *)arg4 {
    r31 = r31 - 0x1a0;
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
    var_138 = [arg2 retain];
    r21 = [arg3 retain];
    var_170 = [arg4 retain];
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_178 = r0;
    var_188 = r1;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 != 0x0) {
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_178);
                            }
                            r28 = *(0x0 + r23 * 0x8);
                            r20 = [[r28 reflectionName] retain];
                            r0 = [var_138 objectForKeyedSubscript:r20];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r20 release];
                            if (r24 != 0x0) {
                                    r20 = [[NSMutableDictionary dictionary] retain];
                                    r0 = [r24 objectForKeyedSubscript:@"application"];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [r24 objectForKeyedSubscript:@"application"];
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            [r20 addEntriesFromDictionary:r25];
                                            [r25 release];
                                    }
                                    r0 = [r24 objectForKeyedSubscript:@"adUnits"];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    if (r25 != 0x0) {
                                            r0 = [r24 objectForKeyedSubscript:@"adUnits"];
                                            r0 = [r0 retain];
                                            r19 = r0;
                                            r0 = [r0 objectForKeyedSubscript:var_170];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            [r19 release];
                                            [r25 release];
                                            if (r0 != 0x0) {
                                                    r0 = [r24 objectForKeyedSubscript:@"adUnits"];
                                                    r0 = [r0 retain];
                                                    r19 = r0;
                                                    r0 = [r0 objectForKeyedSubscript:var_170];
                                                    r29 = r29;
                                                    r25 = [r0 retain];
                                                    [r20 addEntriesFromDictionary:r25];
                                                    [r25 release];
                                                    [r19 release];
                                            }
                                    }
                                    r0 = [r28 settings];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r25 = [r0 count];
                                    [r0 release];
                                    if (r25 != 0x0) {
                                            r0 = [r28 settings];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = [r0 mutableCopy];
                                            [r20 addEntriesFromDictionary:r25];
                                            [r25 release];
                                            [r0 release];
                                    }
                                    r19 = [r20 copy];
                                    [r28 setSettings:r19];
                                    [r19 release];
                                    [r20 release];
                            }
                            [r24 release];
                            r23 = r23 + 0x1;
                    } while (r23 < var_128);
                    r0 = objc_msgSend(var_178, var_188);
                    var_128 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_178 release];
    [var_170 release];
    [var_178 release];
    [var_138 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)parseConfiguration:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r20 objectForKeyedSubscript:r2] retain];
            r25 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r21 parseProductSettings:r24 forProduct:@"rewardedVideo" sharedSettings:r25];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoProductSettings));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r20 objectForKeyedSubscript:r2] retain];
            r25 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r21 parseProductSettings:r24 forProduct:@"interstitial" sharedSettings:r25];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialProductSettings));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r20 objectForKeyedSubscript:r2] retain];
            r25 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r21 parseProductSettings:r24 forProduct:@"offerwall" sharedSettings:r25];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_offerwallProductSettings));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = [[r20 objectForKeyedSubscript:r2] retain];
            r25 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r21 parseProductSettings:r24 forProduct:@"banner" sharedSettings:r25];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerProductSettings));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r25 = [r0 boolValue] ^ 0x1;
            [r0 release];
            [r23 release];
            r23 = [[NSUserDefaults standardUserDefaults] retain];
            r0 = [NSNumber numberWithBool:r25];
            r29 = r29;
            r24 = [r0 retain];
            [r23 setObject:r24 forKey:@"isUuidStringDisabled"];
            [r24 release];
            [r23 synchronize];
            [r23 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
            r0 = [r23 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_segmentName));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r23 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_segmentId));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r23 objectForKeyedSubscript:r2];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r0 = [r23 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    [NSDictionary class];
                    r26 = [r25 isKindOfClass:r2];
                    [r25 release];
                    [r24 release];
                    if (r26 != 0x0) {
                            r0 = [r23 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_customSegmentParams));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                    }
            }
            [r23 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 boolValue];
    [r0 release];
    [r24 release];
    var_58 = r20;
    if ((r26 & 0x1) != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r21->_showIntegrationHelper = [r0 boolValue];
            [r0 release];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [r21 parseLoggersSettings:r24];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loggers));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r24 release];
    [r23 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r28 = r0;
    r20 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [r21 parseEventsSettings:r20 sharedSettings:r26];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoEvents));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r26 release];
    [r24 release];
    [r20 release];
    [r28 release];
    [r27 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r28 = r0;
    r20 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [r21 parseEventsSettings:r20 sharedSettings:r26];
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_bannerEvents));
    r8 = *(r21 + r23);
    *(r21 + r23) = r0;
    [r8 release];
    [r26 release];
    [r24 release];
    [r20 release];
    [r28 release];
    [r27 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r20 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [[r0 objectForKeyedSubscript:r2] retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r27 = r0;
            r20 = [[r0 objectForKeyedSubscript:r2] retain];
            r23 = @selector(parseEventsSettings:sharedSettings:);
            r0 = objc_msgSend(r21, r23);
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialEvents));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r20 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
    }
    else {
            objc_storeStrong((int64_t *)&r21->_interstitialEvents, *(r21 + r23));
            r23 = @selector(parseEventsSettings:sharedSettings:);
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    r27 = r0;
    r20 = [[r0 objectForKeyedSubscript:r2] retain];
    r0 = objc_msgSend(r21, r23);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_offerwallEvents));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r20 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [var_58 release];
    [r19 release];
    return;
}

-(void *)parseEventsSettings:(void *)arg2 sharedSettings:(void *)arg3 {
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
    r29 = &saved_fp;
    r25 = [arg2 retain];
    var_68 = [arg3 retain];
    var_60 = r25;
    r21 = [[NSMutableDictionary alloc] initWithDictionary:r2];
    if (r25 != 0x0) {
            [r21 addEntriesFromDictionary:r25];
    }
    r0 = [r21 objectForKeyedSubscript:@"sendUltraEvents"];
    r0 = [r0 retain];
    r28 = [r0 boolValue];
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:@"sendEventsToggle"];
    r0 = [r0 retain];
    var_6C = [r0 boolValue];
    [r0 release];
    r20 = [[r21 objectForKeyedSubscript:@"serverEventsURL"] retain];
    var_58 = [[NSURL URLWithString:r20] retain];
    [r20 release];
    r0 = [r21 objectForKeyedSubscript:@"backupThreshold"];
    r0 = [r0 retain];
    var_78 = [r0 unsignedIntegerValue];
    var_70 = r28;
    [r0 release];
    r0 = [r21 objectForKeyedSubscript:@"maxNumberOfEvents"];
    r0 = [r0 retain];
    var_80 = [r0 unsignedIntegerValue];
    [r0 release];
    r28 = [NSArray new];
    r0 = [r21 objectForKeyedSubscript:@"optOut"];
    r29 = r29;
    r20 = [r0 retain];
    [NSArray class];
    r25 = [r20 isKindOfClass:r2];
    [r20 release];
    if (r25 != 0x0) {
            r0 = [r21 objectForKeyedSubscript:@"optOut"];
            r29 = r29;
            r20 = [r0 retain];
            [r28 release];
            r28 = r20;
    }
    r27 = @selector(isKindOfClass:);
    r0 = [r21 objectForKeyedSubscript:@"maxEventsPerBatch"];
    r29 = r29;
    r20 = [r0 retain];
    [NSNumber class];
    if (objc_msgSend(r20, r27) != 0x0) {
            r0 = [r21 objectForKeyedSubscript:@"maxEventsPerBatch"];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 unsignedIntegerValue];
            [r0 release];
            if (r26 == 0x0) {
                    r26 = 0x1388;
            }
    }
    else {
            r26 = 0x1388;
    }
    r0 = [r21 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 objectForKeyedSubscript:@"abt"];
            r29 = r29;
            r27 = [r0 retain];
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            [r0 setCategorizeType:r27];
            [r0 release];
            [r27 release];
    }
    r19 = @selector(objectForKey:);
    r27 = [[r21 objectForKeyedSubscript:@"serverEventsType"] retain];
    r0 = objc_msgSend(r21, r19);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = @selector(objectForKey:);
            r25 = [NSMutableDictionary alloc];
            r24 = [[r21 objectForKeyedSubscript:@"genericParams"] retain];
            r23 = [r25 initWithDictionary:r2];
            [r24 release];
            r0 = objc_msgSend(r23, r19);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r23 objectForKey:r2];
                    r0 = [r0 retain];
                    r19 = r0;
                    r24 = [r0 copy];
                    r0 = [ISConfigurations getConfigurations];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setEventGenricParams:r24];
                    [r0 release];
                    [r24 release];
                    [r19 release];
            }
            [r23 removeObjectForKey:@"events"];
            r19 = [r23 copy];
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            [r0 setBatchGenricParams:r19];
            [r0 release];
            [r19 release];
            [r23 release];
    }
    r19 = [[ISEventsSettings alloc] initWithSendUltraEvents:var_70 sendEventsToggle:var_6C serverEventsURL:var_58 backupThreshold:var_78 maxNumberOfEvents:var_80 serverEventsType:r27 optOut:r28 maxEventsPerBatch:r26];
    [r27 release];
    [r20 release];
    [r28 release];
    [var_58 release];
    [r21 release];
    [var_68 release];
    [var_60 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)doesDictionary:(void *)arg2 containsObjectForKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_1006e38c0;

loc_1006e3870:
    r21 = [[r19 objectForKeyedSubscript:r20] retain];
    if (r21 == 0x0 || [r21 length] == 0x0) goto loc_1006e38b8;

loc_1006e38a8:
    [r21 release];
    r21 = 0x1;
    goto loc_1006e38c4;

loc_1006e38c4:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1006e38b8:
    [r21 release];
    goto loc_1006e38c0;

loc_1006e38c0:
    r21 = 0x0;
    goto loc_1006e38c4;
}

-(void *)rewardedVideoProvidersConfig {
    r0 = self->_rewardedVideoProvidersConfig;
    return r0;
}

-(void)setRewardedVideoProvidersConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoProvidersConfig, arg2);
    return;
}

-(void *)getConfigForProvider:(void *)arg2 withKey:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x2a0;
    r21 = self;
    r19 = [arg2 retain];
    var_2A0 = [arg3 retain];
    var_2C0 = [[NSMutableSet alloc] init];
    var_2A8 = r19;
    if ([r19 length] != 0x0 || [var_2A0 length] != 0x0) goto loc_1006e3278;

loc_1006e37c8:
    var_58 = **___stack_chk_guard;
    r21 = [[var_2C0 allObjects] retain];
    [var_2C0 release];
    [var_2A0 release];
    [var_2A8 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006e3278:
    var_2B0 = @selector(length);
    *(int128_t *)(&stack[-759] + 0xff) = q0;
    var_208 = q0;
    var_2E0 = r21;
    r0 = r21->_rewardedVideoProvidersConfig;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2C8 = r0;
    var_2D8 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 == 0x0) goto loc_1006e3440;

loc_1006e32d0:
    var_2B8 = *var_208;
    goto loc_1006e32dc;

loc_1006e32dc:
    r20 = 0x0;
    goto loc_1006e330c;

loc_1006e330c:
    if (*var_208 != var_2B8) {
            objc_enumerationMutation(var_2C8);
    }
    r22 = *(var_210 + r20 * 0x8);
    r0 = [r22 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:var_2A0] retain];
    [r0 release];
    r0 = [r22 reflectionName];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 isEqualToString:var_2A8];
    if (r21 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1006e33a0;

loc_1006e3398:
    r0 = r25;
    goto loc_1006e3408;

loc_1006e3408:
    [r0 release];
    goto loc_1006e340c;

loc_1006e340c:
    [r21 release];
    r20 = r20 + 0x1;
    if (r20 < r26) goto loc_1006e330c;

loc_1006e3420:
    r26 = objc_msgSend(var_2C8, var_2D8);
    if (r26 != 0x0) goto loc_1006e32dc;

loc_1006e3440:
    [var_2C8 release];
    var_248 = q0;
    r0 = var_2E0->_interstitialProvidersConfig;
    r0 = [r0 retain];
    var_2C8 = r0;
    r26 = objc_msgSend(r0, var_2D8);
    if (r26 == 0x0) goto loc_1006e3600;

loc_1006e3490:
    var_2B8 = *var_248;
    goto loc_1006e349c;

loc_1006e349c:
    r20 = 0x0;
    goto loc_1006e34cc;

loc_1006e34cc:
    if (*var_248 != var_2B8) {
            objc_enumerationMutation(var_2C8);
    }
    r22 = *(var_250 + r20 * 0x8);
    r0 = [r22 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:var_2A0] retain];
    [r0 release];
    r0 = [r22 reflectionName];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 isEqualToString:var_2A8];
    if (r21 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1006e3560;

loc_1006e3558:
    r0 = r25;
    goto loc_1006e35c8;

loc_1006e35c8:
    [r0 release];
    goto loc_1006e35cc;

loc_1006e35cc:
    [r21 release];
    r20 = r20 + 0x1;
    if (r20 < r26) goto loc_1006e34cc;

loc_1006e35e0:
    r26 = objc_msgSend(var_2C8, var_2D8);
    if (r26 != 0x0) goto loc_1006e349c;

loc_1006e3600:
    [var_2C8 release];
    var_288 = q0;
    r0 = var_2E0->_bannerProvidersConfig;
    r0 = [r0 retain];
    var_2C8 = r0;
    r25 = objc_msgSend(r0, var_2D8);
    if (r25 == 0x0) goto loc_1006e37c0;

loc_1006e3650:
    var_2B8 = *var_288;
    goto loc_1006e365c;

loc_1006e365c:
    r20 = 0x0;
    goto loc_1006e368c;

loc_1006e368c:
    if (*var_288 != var_2B8) {
            objc_enumerationMutation(var_2C8);
    }
    r22 = *(var_290 + r20 * 0x8);
    r0 = [r22 settings];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:var_2A0] retain];
    [r0 release];
    r0 = [r22 reflectionName];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 isEqualToString:var_2A8];
    if (r21 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1006e3720;

loc_1006e3718:
    r0 = r24;
    goto loc_1006e3788;

loc_1006e3788:
    [r0 release];
    goto loc_1006e378c;

loc_1006e378c:
    [r21 release];
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_1006e368c;

loc_1006e37a0:
    r25 = objc_msgSend(var_2C8, var_2D8);
    if (r25 != 0x0) goto loc_1006e365c;

loc_1006e37c0:
    [var_2C8 release];
    goto loc_1006e37c8;

loc_1006e3720:
    r19 = objc_msgSend(r21, var_2B0);
    [r24 release];
    if (r19 == 0x0) goto loc_1006e378c;

loc_1006e373c:
    r0 = [r22 settings];
    r0 = [r0 retain];
    r0 = [r0 objectForKeyedSubscript:var_2A0];
    r29 = r29;
    [r0 retain];
    [var_2C0 addObject:r2];
    [r22 release];
    r0 = r19;
    goto loc_1006e3788;

loc_1006e3560:
    r19 = objc_msgSend(r21, var_2B0);
    [r25 release];
    if (r19 == 0x0) goto loc_1006e35cc;

loc_1006e357c:
    r0 = [r22 settings];
    r0 = [r0 retain];
    r0 = [r0 objectForKeyedSubscript:var_2A0];
    r29 = r29;
    [r0 retain];
    [var_2C0 addObject:r2];
    [r22 release];
    r0 = r19;
    goto loc_1006e35c8;

loc_1006e33a0:
    r19 = objc_msgSend(r21, var_2B0);
    [r25 release];
    if (r19 == 0x0) goto loc_1006e340c;

loc_1006e33bc:
    r0 = [r22 settings];
    r0 = [r0 retain];
    r0 = [r0 objectForKeyedSubscript:var_2A0];
    r29 = r29;
    [r0 retain];
    [var_2C0 addObject:r2];
    [r22 release];
    r0 = r19;
    goto loc_1006e3408;
}

-(void *)interstitialProvidersConfig {
    r0 = self->_interstitialProvidersConfig;
    return r0;
}

-(void)setInterstitialProvidersConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialProvidersConfig, arg2);
    return;
}

-(void *)offerwallProvidersConfig {
    r0 = self->_offerwallProvidersConfig;
    return r0;
}

-(void)setOfferwallProvidersConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offerwallProvidersConfig, arg2);
    return;
}

-(void *)bannerProvidersConfig {
    r0 = self->_bannerProvidersConfig;
    return r0;
}

-(void)setBannerProvidersConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerProvidersConfig, arg2);
    return;
}

-(void)setRewardedVideoProductSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoProductSettings, arg2);
    return;
}

-(void *)rewardedVideoProductSettings {
    r0 = self->_rewardedVideoProductSettings;
    return r0;
}

-(void *)offerwallProductSettings {
    r0 = self->_offerwallProductSettings;
    return r0;
}

-(void *)interstitialProductSettings {
    r0 = self->_interstitialProductSettings;
    return r0;
}

-(void)setInterstitialProductSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialProductSettings, arg2);
    return;
}

-(void *)bannerProductSettings {
    r0 = self->_bannerProductSettings;
    return r0;
}

-(void)setOfferwallProductSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offerwallProductSettings, arg2);
    return;
}

-(void)setBannerProductSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerProductSettings, arg2);
    return;
}

-(void)setRewardedVideoEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedVideoEvents, arg2);
    return;
}

-(void *)parseProductSettings:(void *)arg2 forProduct:(void *)arg3 sharedSettings:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    r21 = [arg2 retain];
    var_1A0 = [arg3 retain];
    r0 = [arg4 retain];
    var_208 = r21;
    var_200 = r0;
    r0 = [r21 objectForKeyedSubscript:@"placements"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    var_1A8 = [[NSMutableArray alloc] init];
    r0 = [r19 retain];
    r27 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r1;
    r24 = objc_msgSend(r0, r1);
    var_1B0 = r27;
    if (r24 == 0x0) goto loc_1006e22e0;

loc_1006e1ac8:
    r26 = *0x0;
    var_1C0 = r26;
    goto loc_1006e1adc;

loc_1006e1adc:
    r20 = 0x0;
    var_180 = r24;
    goto loc_1006e1c50;

loc_1006e1c50:
    if (*0x0 != r26) {
            objc_enumerationMutation(r27);
    }
    r28 = *(0x0 + r20 * 0x8);
    r0 = [r28 objectForKeyedSubscript:@"placementId"];
    r29 = r29;
    r21 = [r0 retain];
    if (([r21 isKindOfClass:[NSNumber class]] & 0x1) == 0x0) goto loc_1006e1e1c;

loc_1006e1cb0:
    r0 = [r28 objectForKeyedSubscript:@"placementName"];
    r29 = r29;
    r22 = [r0 retain];
    r19 = [r22 isKindOfClass:[NSString class]];
    [r22 release];
    [r21 release];
    if ((r19 & 0x1) == 0x0) goto loc_1006e22b4;

loc_1006e1d08:
    r22 = [[r28 objectForKeyedSubscript:@"placementId"] retain];
    var_148 = [[NSString stringWithFormat:@"%@"] retain];
    [r22 release];
    var_150 = [[r28 objectForKeyedSubscript:@"placementName"] retain];
    var_158 = [[r28 objectForKeyedSubscript:@"virtualItemName"] retain];
    var_160 = [[r28 objectForKeyedSubscript:@"virtualItemCount"] retain];
    r0 = [r28 objectForKeyedSubscript:@"delivery"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r28 objectForKeyedSubscript:@"delivery"];
            r29 = r29;
            r0 = [r0 retain];
            var_164 = [r0 boolValue];
            [r0 release];
    }
    else {
            var_164 = 0x1;
    }
    [r21 release];
    r0 = [r28 objectForKeyedSubscript:@"isDefault"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r28 objectForKeyedSubscript:@"isDefault"];
            r29 = r29;
            r0 = [r0 retain];
            var_168 = [r0 boolValue];
            [r0 release];
    }
    else {
            var_168 = 0x0;
    }
    [r21 release];
    r0 = [r28 objectForKeyedSubscript:@"capping"];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"enabled"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [r22 release];
    r0 = [r28 objectForKeyedSubscript:@"capping"];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"maxImpressions"];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r23 isKindOfClass:[NSNumber class]];
    [r23 release];
    [r22 release];
    if (r24 != 0x0) {
            r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r0 = [r28 objectForKeyedSubscript:@"capping"];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:@"maxImpressions"];
            r29 = r29;
            r26 = [r0 retain];
            [r22 release];
            if ([r26 integerValue] >= 0x0) {
                    r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    if (CPU_FLAGS & GE) {
                            r8 = 0x1;
                    }
            }
            r21 = r21 & r8;
    }
    else {
            r26 = 0x0;
            r21 = 0x0;
    }
    r0 = [r28 objectForKeyedSubscript:@"capping"];
    r0 = [r0 retain];
    r24 = [[r0 objectForKeyedSubscript:@"unit"] retain];
    [r0 release];
    r0 = [r28 objectForKeyedSubscript:@"pacing"];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"enabled"];
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    [r23 release];
    r0 = [r28 objectForKeyedSubscript:@"pacing"];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:@"numOfSeconds"];
    r29 = r29;
    r27 = [r0 retain];
    r19 = [r27 isKindOfClass:[NSNumber class]];
    [r27 release];
    [r23 release];
    if (r19 != 0x0) {
            r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r0 = [r28 objectForKeyedSubscript:@"pacing"];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:@"numOfSeconds"];
            r29 = r29;
            r28 = [r0 retain];
            [r23 release];
            if ([r28 integerValue] >= 0x0) {
                    r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    if (CPU_FLAGS & GE) {
                            r8 = 0x1;
                    }
            }
            r19 = r22 & r8;
    }
    else {
            r28 = 0x0;
    }
    r27 = var_1B0;
    r22 = var_1A0;
    r21 = [[ISPlacement alloc] initWithUid:var_148 name:var_150 reward:var_158 amount:var_160 isCappingEnable:r21 cappingMaxImpressions:r26 cappingUnit:r24 isPacingEnable:r19 pacingNumOfSeconds:r28 delivery:var_164 isDefault:stack[-544]];
    [var_1A8 addObject:r21];
    if ([r22 isEqualToString:@"rewardedVideo"] == 0x0) goto loc_1006e21e0;

loc_1006e21b4:
    r0 = [ISPlacementCappingManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 addCappingInfoPlacementRV:r21];
    goto loc_1006e2264;

loc_1006e2264:
    [r19 release];
    goto loc_1006e226c;

loc_1006e226c:
    [r21 release];
    [r28 release];
    [r24 release];
    [r26 release];
    [var_160 release];
    [var_158 release];
    [var_150 release];
    [var_148 release];
    r24 = var_180;
    r26 = var_1C0;
    goto loc_1006e22b4;

loc_1006e22b4:
    r20 = r20 + 0x1;
    if (r20 < r24) goto loc_1006e1c50;

loc_1006e22c0:
    r24 = objc_msgSend(r27, var_1E8);
    if (r24 != 0x0) goto loc_1006e1adc;

loc_1006e22e0:
    [r27 release];
    var_130 = [var_1A8 copy];
    r28 = var_208;
    r0 = [r28 objectForKeyedSubscript:@"maxNumOfAdaptersToLoadOnStart"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 unsignedIntegerValue];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r28 objectForKeyedSubscript:@"maxNumOfAdaptersToLoadOnStart"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r20 = [r0 unsignedIntegerValue];
    }
    else {
            r0 = [var_200 objectForKeyedSubscript:@"maxNumOfAdaptersToLoadOnStart"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r20 = [r0 unsignedIntegerValue];
    }
    [r21 release];
    if ([var_1A0 isEqualToString:r2] != 0x0) {
            r0 = [r28 objectForKeyedSubscript:@"loadRVInterval"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            [r23 release];
            if (d8 != 0x0) {
                    r0 = [r28 objectForKeyedSubscript:@"loadRVInterval"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    asm { fcvtzu     x19, d0 };
                    [r23 release];
            }
            else {
                    r19 = 0x12c;
            }
    }
    if ([var_1A0 isEqualToString:r2] != 0x0) {
            r0 = [r28 objectForKeyedSubscript:@"atim"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            [r24 release];
            if (d8 != 0x0) {
                    r0 = [r28 objectForKeyedSubscript:@"atim"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    asm { fcvtzu     x27, d0 };
                    [r24 release];
            }
            r0 = [r28 objectForKeyedSubscript:@"bannerInterval"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            [r24 release];
            if (d8 != 0x0) {
                    r0 = [r28 objectForKeyedSubscript:@"bannerInterval"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    asm { fcvtzu     x26, d0 };
                    [r24 release];
            }
            else {
                    r26 = 0x3c;
            }
    }
    else {
            r0 = [r28 objectForKeyedSubscript:@"adapterTimeOutInSeconds"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            [r24 release];
            if (d8 != 0x0) {
                    r0 = [r28 objectForKeyedSubscript:@"adapterTimeOutInSeconds"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 doubleValue];
            }
            else {
                    r0 = [var_200 objectForKeyedSubscript:@"adapterTimeOutInSeconds"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 doubleValue];
            }
            asm { fcvtzu     x27, d0 };
            [r24 release];
            r26 = 0x3c;
    }
    r21 = @selector(isEqualToString:);
    r23 = [[r28 objectForKeyedSubscript:@"adapterAlgorithm"] retain];
    r24 = [[r28 objectForKeyedSubscript:@"backFill"] retain];
    r0 = [r28 objectForKeyedSubscript:@"premium"];
    r29 = r29;
    r25 = [r0 retain];
    r22 = var_1A0;
    if (objc_msgSend(r22, r21) == 0x0) goto loc_1006e26c4;

loc_1006e2674:
    r0 = [ISProductSettings alloc];
    asm { ucvtf      d0, x27 };
    r27 = var_130;
    r0 = [r0 initWithplacements:r27 maxNumOfAdaptersToLoadOnStart:r20 adapterTimeOutInSeconds:r23 algo:r24 backFillProviderName:r25 premiumProviderName:r7];
    r20 = r0;
    r1 = @selector(setLoadRVInterval:);
    goto loc_1006e26bc;

loc_1006e26bc:
    objc_msgSend(r0, r1);
    goto loc_1006e2760;

loc_1006e2760:
    var_68 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    [r23 release];
    [r27 release];
    [var_1A8 release];
    [var_1B0 release];
    [var_200 release];
    [r22 release];
    [r28 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006e26c4:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1006e2708;

loc_1006e26dc:
    r0 = [ISProductSettings alloc];
    asm { ucvtf      d0, x27 };
    r27 = var_130;
    goto loc_1006e274c;

loc_1006e274c:
    r20 = [r0 initWithplacements:r2 maxNumOfAdaptersToLoadOnStart:r3 adapterTimeOutInSeconds:r4 algo:r5 backFillProviderName:r6 premiumProviderName:r7];
    goto loc_1006e2760;

loc_1006e2708:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1006e27e8;

loc_1006e2720:
    r0 = [ISProductSettings alloc];
    r27 = var_130;
    goto loc_1006e274c;

loc_1006e27e8:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_1006e2858;

loc_1006e2800:
    r0 = [ISProductSettings alloc];
    asm { ucvtf      d0, x27 };
    asm { fdiv       d0, d0, d1 };
    r27 = var_130;
    r0 = [r0 initWithplacements:r27 maxNumOfAdaptersToLoadOnStart:0x1 adapterTimeOutInSeconds:r23 algo:r24 backFillProviderName:r25 premiumProviderName:r7];
    r20 = r0;
    r1 = @selector(setBannerInterval:);
    goto loc_1006e26bc;

loc_1006e2858:
    r20 = [[NSString stringWithFormat:@"could not parse settings for product %@"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x3 tag:0x5];
    [r0 release];
    [r20 release];
    r20 = 0x0;
    r27 = var_130;
    goto loc_1006e2760;

loc_1006e21e0:
    if ([r22 isEqualToString:@"interstitial"] == 0x0) goto loc_1006e2224;

loc_1006e21f8:
    r0 = [ISPlacementCappingManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 addCappingInfoPlacementIS:r21];
    goto loc_1006e2264;

loc_1006e2224:
    if ([r22 isEqualToString:@"banner"] == 0x0) goto loc_1006e226c;

loc_1006e223c:
    r0 = [ISPlacementCappingManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 addCappingInfoPlacementBN:r2];
    goto loc_1006e2264;

loc_1006e1e1c:
    [r21 release];
    goto loc_1006e22b4;
}

-(void *)rewardedVideoEvents {
    r0 = self->_rewardedVideoEvents;
    return r0;
}

-(void *)interstitialEvents {
    r0 = self->_interstitialEvents;
    return r0;
}

-(void)setInterstitialEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialEvents, arg2);
    return;
}

-(void *)offerwallEvents {
    r0 = self->_offerwallEvents;
    return r0;
}

-(void)setOfferwallEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offerwallEvents, arg2);
    return;
}

-(void *)bannerEvents {
    r0 = self->_bannerEvents;
    return r0;
}

-(void)setBannerEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerEvents, arg2);
    return;
}

-(void *)loggers {
    r0 = self->_loggers;
    return r0;
}

-(void)setLoggers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loggers, arg2);
    return;
}

-(void *)segmentName {
    r0 = self->_segmentName;
    return r0;
}

-(void)setSegmentName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_segmentName, arg2);
    return;
}

-(void *)segmentId {
    r0 = self->_segmentId;
    return r0;
}

-(void)setSegmentId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_segmentId, arg2);
    return;
}

-(void *)customSegmentParams {
    r0 = self->_customSegmentParams;
    return r0;
}

-(void)setCustomSegmentParams:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_customSegmentParams, arg2);
    return;
}

-(bool)showIntegrationHelper {
    r0 = *(int8_t *)(int64_t *)&self->_showIntegrationHelper;
    return r0;
}

-(void)setShowIntegrationHelper:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showIntegrationHelper = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customSegmentParams, 0x0);
    objc_storeStrong((int64_t *)&self->_segmentId, 0x0);
    objc_storeStrong((int64_t *)&self->_segmentName, 0x0);
    objc_storeStrong((int64_t *)&self->_loggers, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_offerwallEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerProductSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_offerwallProductSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialProductSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoProductSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerProvidersConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_offerwallProvidersConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialProvidersConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoProvidersConfig, 0x0);
    return;
}

@end