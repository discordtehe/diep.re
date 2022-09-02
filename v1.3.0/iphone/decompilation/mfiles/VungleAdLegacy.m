@implementation VungleAdLegacy

-(void *)init {
    [NSException raise:@"VungleAdBundleException" format:@"try using initWithDictionary"];
    [self release];
    return 0x0;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_F0 super] initWithDictionary:r2];
    r20 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r20->_viewed = 0x0;
            *(int8_t *)(int64_t *)&r20->_isPersistent = 0x0;
            if ([r20 updateWithDictionary:r19] != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"parts"];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_parts));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    if (r22 != 0x0) {
                            var_140 = r22;
                            stack[-328] = r19;
                            var_120 = q0;
                            r0 = [r22 retain];
                            r23 = r0;
                            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r25 = r0;
                                    r28 = *var_120;
                                    do {
                                            r22 = 0x0;
                                            do {
                                                    if (*var_120 != r28) {
                                                            objc_enumerationMutation(r23);
                                                    }
                                                    [objc_alloc() initWithDictionary:r2];
                                                    [r20 addPart:r2];
                                                    [r27 release];
                                                    r22 = r22 + 0x1;
                                            } while (r22 < r25);
                                            r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r25 = r0;
                                    } while (r0 != 0x0);
                            }
                            [r23 release];
                            r22 = var_140;
                            r19 = stack[-328];
                    }
                    else {
                            [r20 createAdPartsWithDictionary:r19];
                    }
                    [r22 release];
            }
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_F0 super] initWithCoder:r19];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setIncentivized:[r19 decodeInt32ForKey:@"incentivized"]];
            r0 = [r19 decodeObjectForKey:@"md5"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_md5));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r20->_countdownDelay = [r19 decodeIntForKey:@"countdown_delay"];
            [r19 decodeFloatForKey:@"close_delay"];
            *(int32_t *)(int64_t *)&r20->_closeDelay = s0;
            [r19 decodeFloatForKey:@"close_delay_incentivized"];
            *(int32_t *)(int64_t *)&r20->_closeDelayIncentivized = s0;
            r0 = [r19 decodeObjectForKey:@"cta_url"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_ctaURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"cta_url_resolved"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_ctaURLResolved));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"config"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r0 = [r22 objectForKeyedSubscript:@"enabled"];
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_ctaEnabled = [r0 boolValue];
                    [r0 release];
                    r0 = [r22 objectForKeyedSubscript:@"show_onclick"];
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_ctaDisplayOntouch = [r0 boolValue];
                    [r0 release];
                    r0 = [r22 objectForKeyedSubscript:@"time_show"];
                    r0 = [r0 retain];
                    [r0 floatValue];
                    *(int32_t *)(int64_t *)&r20->_ctaShowDelay = s0;
                    [r0 release];
                    r0 = [r22 objectForKeyedSubscript:@"click_area"];
                    r0 = [r0 retain];
                    [r0 floatValue];
                    *(int32_t *)(int64_t *)&r20->_ctaButtonClickArea = s0;
                    [r0 release];
                    r0 = [r22 objectForKeyedSubscript:@"play_delay"];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int32_t *)(int64_t *)&r20->_preventPlayDelay = [r0 intValue];
                    [r0 release];
            }
            r0 = [r19 decodeObjectForKey:@"parts"];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_parts));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            var_120 = q0;
            r0 = *(r20 + r21);
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r24 = r0;
                    r26 = *var_120;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_120 != r26) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_128 + r28 * 0x8) setParentAdUnit:r2];
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
            [r22 release];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    var_58 = **___stack_chk_guard;
    r20 = [arg2 retain];
    [[&var_B8 super] encodeWithCoder:r20];
    [arg2 encodeObject:self->_parts forKey:@"parts"];
    [arg2 encodeObject:self->_md5 forKey:@"md5"];
    [arg2 encodeInt:*(int32_t *)(int64_t *)&self->_countdownDelay forKey:@"countdown_delay"];
    [arg2 encodeFloat:@"close_delay" forKey:@"countdown_delay"];
    [arg2 encodeFloat:@"close_delay_incentivized" forKey:@"countdown_delay"];
    [arg2 encodeObject:self->_ctaURL forKey:@"cta_url"];
    [arg2 encodeObject:self->_ctaURLResolved forKey:@"cta_url_resolved"];
    [arg2 encodeInt32:[self incentivized] forKey:@"incentivized"];
    r23 = [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&self->_ctaEnabled] retain];
    r0 = @class(NSNumber);
    r2 = *(int8_t *)(int64_t *)&self->_ctaDisplayOntouch;
    r24 = [[r0 numberWithBool:r2] retain];
    r25 = [[NSNumber numberWithFloat:r2] retain];
    r26 = [[NSNumber numberWithFloat:r2] retain];
    r22 = [[NSNumber numberWithInt:*(int32_t *)(int64_t *)&self->_preventPlayDelay] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_A8 count:0x5];
    r27 = [r0 retain];
    [r22 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [arg2 encodeObject:r27 forKey:@"config"];
    [r20 release];
    [r27 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)createAdPartsWithDictionary:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [arg2 retain];
    r19 = r0;
    r23 = [[r0 objectForKeyedSubscript:@"adType"] retain];
    r22 = [VungleAd adTypeWithRawAdType:r23];
    [r23 release];
    r0 = [r19 objectForKeyedSubscript:@"url"];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r24 = [VungleUtil isNullOrNil:r2];
    [r25 release];
    if ((r24 & 0x1) == 0x0) {
            if (r22 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r24 = 0x1;
                    }
            }
            r25 = objc_alloc();
            r0 = [r19 objectForKeyedSubscript:@"url"];
            r29 = r29;
            r26 = [r0 retain];
            r24 = [r25 initWithRemotePath:r26 type:0x1 local:r24];
            [r26 release];
            [r20 addPart:r24];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"postBundle"];
    r29 = r29;
    r25 = [r0 retain];
    r23 = [VungleUtil isNullOrNil:r2];
    [r25 release];
    if ((r23 & 0x1) == 0x0) {
            if (r22 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r22 = 0x1;
                    }
            }
            r23 = objc_alloc();
            r21 = [[r19 objectForKeyedSubscript:@"postBundle"] retain];
            r22 = [r23 initWithRemotePath:r21 type:0x2 local:r22];
            [r21 release];
            [r20 addPart:r22];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)addPart:(void *)arg2 {
    [arg2 retain];
    [arg2 setParentAdUnit:self];
    [self->_parts addObject:r2];
    [r22 release];
    return;
}

-(bool)updateWithDictionary:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg2 retain];
    [r20 setIncentivized:0x0];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_tpatEvents));
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            if (([VungleUtil validateTPAT:*(r20 + r22)] & 0x1) != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_campaign));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    [r0 doubleValue];
                    r0 = [NSDate dateWithTimeIntervalSince1970:@"expiry"];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_expireDate));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r23 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appId));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_ctaURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_ctaURLResolved));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_md5));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    [r0 floatValue];
                    *(int32_t *)(int64_t *)&r20->_closeDelay = s0;
                    [r0 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    [r0 floatValue];
                    *(int32_t *)(int64_t *)&r20->_closeDelayIncentivized = s0;
                    [r0 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    *(int32_t *)(int64_t *)&r20->_countdownDelay = [r0 intValue];
                    [r0 release];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            *(int8_t *)(int64_t *)&r20->_viewed = [r0 boolValue];
                            [r0 release];
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r0 != 0x0) {
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if ([VungleUtil isNullOrNil:r2] != 0x0) {
                                    *(int8_t *)(int64_t *)&r20->_ctaEnabled = 0x0;
                            }
                            else {
                                    r0 = [r24 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    *(int8_t *)(int64_t *)&r20->_ctaEnabled = [r0 boolValue];
                                    [r0 release];
                            }
                            [r26 release];
                            r27 = @class(VungleUtil);
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if ([r27 isNullOrNil:r2] != 0x0) {
                                    *(int8_t *)(int64_t *)&r20->_ctaDisplayOntouch = 0x0;
                            }
                            else {
                                    r0 = [r24 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    *(int8_t *)(int64_t *)&r20->_ctaDisplayOntouch = [r0 boolValue];
                                    [r0 release];
                            }
                            [r26 release];
                            r27 = @class(VungleUtil);
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if ([r27 isNullOrNil:r2] != 0x0) {
                                    *(int32_t *)(int64_t *)&r20->_ctaShowDelay = 0x0;
                            }
                            else {
                                    r0 = [r24 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 floatValue];
                                    *(int32_t *)(int64_t *)&r20->_ctaShowDelay = s0;
                                    [r0 release];
                            }
                            [r26 release];
                            r27 = @class(VungleUtil);
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if ([r27 isNullOrNil:r2] != 0x0) {
                                    *(int32_t *)(int64_t *)&r20->_ctaButtonClickArea = 0x3f800000;
                            }
                            else {
                                    r0 = [r24 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 floatValue];
                                    *(int32_t *)(int64_t *)&r20->_ctaButtonClickArea = s0;
                                    [r0 release];
                            }
                            [r26 release];
                            r23 = @class(VungleUtil);
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            r23 = [r23 isNullOrNil:r2];
                            [r26 release];
                            if ((r23 & 0x1) == 0x0) {
                                    r0 = [r24 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    *(int32_t *)(int64_t *)&r20->_preventPlayDelay = [r0 intValue];
                                    [r0 release];
                            }
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_user));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r24 release];
                    r20 = 0x1;
            }
            else {
                    [r20 setState:0x2];
                    r20 = 0x0;
            }
    }
    else {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_campaign));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = r0;
            [r0 doubleValue];
            r0 = [NSDate dateWithTimeIntervalSince1970:@"expiry"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_expireDate));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_appId));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_ctaURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_ctaURLResolved));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_md5));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r0 floatValue];
            *(int32_t *)(int64_t *)&r20->_closeDelay = s0;
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r0 floatValue];
            *(int32_t *)(int64_t *)&r20->_closeDelayIncentivized = s0;
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            *(int32_t *)(int64_t *)&r20->_countdownDelay = [r0 intValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r20->_viewed = [r0 boolValue];
                    [r0 release];
            }
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [r24 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    if ([VungleUtil isNullOrNil:r2] != 0x0) {
                            *(int8_t *)(int64_t *)&r20->_ctaEnabled = 0x0;
                    }
                    else {
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            *(int8_t *)(int64_t *)&r20->_ctaEnabled = [r0 boolValue];
                            [r0 release];
                    }
                    [r26 release];
                    r27 = @class(VungleUtil);
                    r0 = [r24 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    if ([r27 isNullOrNil:r2] != 0x0) {
                            *(int8_t *)(int64_t *)&r20->_ctaDisplayOntouch = 0x0;
                    }
                    else {
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            *(int8_t *)(int64_t *)&r20->_ctaDisplayOntouch = [r0 boolValue];
                            [r0 release];
                    }
                    [r26 release];
                    r27 = @class(VungleUtil);
                    r0 = [r24 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    if ([r27 isNullOrNil:r2] != 0x0) {
                            *(int32_t *)(int64_t *)&r20->_ctaShowDelay = 0x0;
                    }
                    else {
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 floatValue];
                            *(int32_t *)(int64_t *)&r20->_ctaShowDelay = s0;
                            [r0 release];
                    }
                    [r26 release];
                    r27 = @class(VungleUtil);
                    r0 = [r24 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    if ([r27 isNullOrNil:r2] != 0x0) {
                            *(int32_t *)(int64_t *)&r20->_ctaButtonClickArea = 0x3f800000;
                    }
                    else {
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 floatValue];
                            *(int32_t *)(int64_t *)&r20->_ctaButtonClickArea = s0;
                            [r0 release];
                    }
                    [r26 release];
                    r23 = @class(VungleUtil);
                    r0 = [r24 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    r23 = [r23 isNullOrNil:r2];
                    [r26 release];
                    if ((r23 & 0x1) == 0x0) {
                            r0 = [r24 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            *(int32_t *)(int64_t *)&r20->_preventPlayDelay = [r0 intValue];
                            [r0 release];
                    }
            }
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_user));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r24 release];
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isDownloaded {
    r31 = r31 - 0x120;
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
    var_100 = q0;
    r0 = [self parts];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100663fac;

loc_100663f3c:
    r21 = r0;
    r23 = *var_100;
    goto loc_100663f4c;

loc_100663f4c:
    r25 = 0x0;
    goto loc_100663f54;

loc_100663f54:
    if (*var_100 != r23) {
            objc_enumerationMutation(r19);
    }
    if ([*(var_108 + r25 * 0x8) isReady] == 0x0) goto loc_100663fbc;

loc_100663f80:
    r25 = r25 + 0x1;
    if (r25 < r21) goto loc_100663f54;

loc_100663f8c:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r21 = r0;
    if (r0 != 0x0) goto loc_100663f4c;

loc_100663fac:
    [r19 release];
    r0 = 0x1;
    goto loc_100663fc8;

loc_100663fc8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100663fbc:
    [r19 release];
    r0 = 0x0;
    goto loc_100663fc8;
}

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] isEqual:r2];
    if (r0 != 0x0) {
            [VungleAdLegacy class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToVungleAdLegacyClass:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isValid {
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
    r0 = [self parts];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) goto loc_100664188;

loc_10066406c:
    var_110 = q0;
    r0 = [r19 parts];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100664120;

loc_1006640b0:
    r22 = r0;
    r24 = *var_110;
    goto loc_1006640c0;

loc_1006640c0:
    r26 = 0x0;
    goto loc_1006640c8;

loc_1006640c8:
    if (*var_110 != r24) {
            objc_enumerationMutation(r20);
    }
    if ([*(var_118 + r26 * 0x8) isValid] == 0x0) goto loc_100664180;

loc_1006640f4:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_1006640c8;

loc_100664100:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1006640c0;

loc_100664120:
    [r20 release];
    r0 = [r19 campaign];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 type];
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r19 = [r19 isExpired] ^ 0x1;
            }
            else {
                    r19 = 0x0;
            }
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    goto loc_1006641ac;

loc_1006641ac:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100664180:
    [r20 release];
    goto loc_100664188;

loc_100664188:
    r19 = 0x0;
    goto loc_1006641ac;
}

-(void *)parts {
    r0 = self->_parts;
    return r0;
}

-(void)setParts:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parts, arg2);
    return;
}

-(void *)md5 {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_md5)), 0x0);
    return r0;
}

-(void)setMd5:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isEqualToVungleAdLegacyClass:(void *)arg2 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = [[r20 md5] retain];
    r0 = [r19 md5];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if ([r22 isEqualToString:r2] == 0x0) goto loc_100664540;

loc_100664314:
    [r24 release];
    [r22 release];
    goto loc_100664324;

loc_100664324:
    if ([r20 countdownDelay] != [r19 countdownDelay]) goto loc_1006645a0;

loc_100664350:
    [r20 closeDelay];
    [r19 closeDelay];
    if (s8 != s0) goto loc_1006645a0;

loc_10066437c:
    [r20 closeDelayIncentivized];
    [r19 closeDelayIncentivized];
    if (s8 != s0) goto loc_1006645a0;

loc_1006643a8:
    r21 = @selector(isEqualToString:);
    r22 = [[r20 ctaURL] retain];
    r0 = [r19 ctaURL];
    r29 = r29;
    r24 = [r0 retain];
    if (objc_msgSend(r22, r21) == 0x0) goto loc_1006645c8;

loc_1006643f4:
    [r24 release];
    [r22 release];
    goto loc_100664404;

loc_100664404:
    r21 = @selector(isEqualToString:);
    r22 = [[r20 ctaURLResolved] retain];
    r0 = [r19 ctaURLResolved];
    r29 = r29;
    r24 = [r0 retain];
    if (objc_msgSend(r22, r21) == 0x0) goto loc_100664614;

loc_100664450:
    [r24 release];
    [r22 release];
    if ([r20 ctaEnabled] == [r19 ctaEnabled] && [r20 ctaDisplayOntouch] == [r19 ctaDisplayOntouch]) {
            [r20 ctaShowDelay];
            [r19 ctaShowDelay];
            if (s8 == s0) {
                    [r20 ctaButtonClickArea];
                    [r19 ctaButtonClickArea];
                    if (s8 == s0) {
                            r20 = [r20 isPersistent];
                            r20 = r20 ^ [r19 isPersistent] ^ 0x1;
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    goto loc_1006645a4;

loc_1006645a4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100664614:
    r0 = [r20 ctaURLResolved];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100664558;

loc_10066462c:
    r0 = [r19 ctaURLResolved];
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r0 == 0x0) {
            if ([r20 ctaEnabled] == [r19 ctaEnabled] && [r20 ctaDisplayOntouch] == [r19 ctaDisplayOntouch]) {
                    [r20 ctaShowDelay];
                    [r19 ctaShowDelay];
                    if (s8 == s0) {
                            [r20 ctaButtonClickArea];
                            [r19 ctaButtonClickArea];
                            if (s8 == s0) {
                                    r20 = [r20 isPersistent];
                                    r20 = r20 ^ [r19 isPersistent] ^ 0x1;
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    goto loc_1006645a4;

loc_100664558:
    [r0 release];
    [r24 release];
    [r22 release];
    goto loc_1006645a0;

loc_1006645a0:
    r20 = 0x0;
    goto loc_1006645a4;

loc_1006645c8:
    r0 = [r20 ctaURL];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100664558;

loc_1006645e0:
    r0 = [r19 ctaURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r0 != 0x0) goto loc_1006645a0;
    goto loc_100664404;

loc_100664540:
    r0 = [r20 md5];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100664570;
    goto loc_100664558;

loc_100664570:
    r0 = [r19 md5];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r0 == 0x0) goto loc_100664324;
}

-(int)countdownDelay {
    r0 = *(int32_t *)(int64_t *)&self->_countdownDelay;
    return r0;
}

-(void)setCountdownDelay:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_countdownDelay = arg2;
    return;
}

-(float)closeDelayIncentivized {
    r0 = self;
    return r0;
}

-(float)closeDelay {
    r0 = self;
    return r0;
}

-(void)setCloseDelay:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_closeDelay = s0;
    return;
}

-(void)setCloseDelayIncentivized:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_closeDelayIncentivized = s0;
    return;
}

-(void *)ctaURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_ctaURL)), 0x0);
    return r0;
}

-(void)setCtaURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)ctaURLResolved {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_ctaURLResolved)), 0x0);
    return r0;
}

-(void)setCtaURLResolved:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)ctaEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_ctaEnabled;
    return r0;
}

-(void)setCtaEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaEnabled = arg2;
    return;
}

-(bool)ctaDisplayOntouch {
    r0 = *(int8_t *)(int64_t *)&self->_ctaDisplayOntouch;
    return r0;
}

-(void)setCtaDisplayOntouch:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaDisplayOntouch = arg2;
    return;
}

-(float)ctaShowDelay {
    r0 = self;
    return r0;
}

-(void)setCtaShowDelay:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_ctaShowDelay = s0;
    return;
}

-(float)ctaButtonClickArea {
    r0 = self;
    return r0;
}

-(void)setCtaButtonClickArea:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_ctaButtonClickArea = s0;
    return;
}

-(bool)isPersistent {
    r0 = *(int8_t *)(int64_t *)&self->_isPersistent;
    return r0;
}

-(void)setIsPersistent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPersistent = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_ctaURLResolved, 0x0);
    objc_storeStrong((int64_t *)&self->_ctaURL, 0x0);
    objc_storeStrong((int64_t *)&self->_md5, 0x0);
    objc_storeStrong((int64_t *)&self->_parts, 0x0);
    return;
}

@end