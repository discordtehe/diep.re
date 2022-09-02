@implementation VungleAd

+(bool)isValidCTAURLResolvedForDictionary:(void *)arg2 {
    r0 = [VungleUtil isValidURLForKey:@"callToActionDest" inDictionary:arg2];
    return r0;
}

-(unsigned long long)adType {
    r0 = [VungleAd adTypeWithRawAdType:self->_type];
    return r0;
}

-(void *)rawAdType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self adType];
    if (r0 <= 0x3) {
            r0 = (0x1006552dc + *(int8_t *)(0x100bf2ee8 + r0) * 0x4)();
    }
    else {
            [@"" retain];
            r0 = [@"" autorelease];
    }
    return r0;
}

-(void)updateParametersWithAd:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [arg2 expireDate];
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_expireDate));
    r8 = *(self + r25);
    *(self + r25) = r0;
    [r8 release];
    r0 = [arg2 campaign];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_campaign));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r24 release];
    r0 = [arg2 expireDate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 copy];
    r8 = *(self + r25);
    *(self + r25) = r0;
    [r8 release];
    [r23 release];
    r0 = [arg2 appId];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_appId));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r23 release];
    [self setIncentivized:0x0];
    r0 = [arg2 user];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_user));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r23 release];
    r20 = [arg2 viewed];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_viewed = r20;
    return;
}

+(void *)decorateDictionary:(void *)arg2 withError:(void * *)arg3 {
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
    r29 = &saved_fp;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 mutableCopy];
            r0 = [r19 objectForKeyedSubscript:@"callToActionUrl"];
            r29 = r29;
            r25 = [r0 retain];
            r23 = [VungleUtil isNullOrNil:r2];
            [r25 release];
            if ((r23 & 0x1) != 0x0) {
                    r23 = 0x0;
            }
            else {
                    r25 = [[r19 objectForKeyedSubscript:@"callToActionUrl"] retain];
                    [r20 setObject:r25 forKey:@"cta_url"];
                    [r25 release];
                    r23 = [[r19 objectForKeyedSubscript:@"callToActionUrl"] retain];
                    r0 = [NSURL URLWithString:r23];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r23 release];
                    r23 = [VungleUtil isValidURL:r25];
                    [r25 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"callToActionDest"];
            r29 = r29;
            r26 = [r0 retain];
            r24 = [VungleUtil isNullOrNil:r2];
            [r26 release];
            if ((r24 & 0x1) == 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"callToActionDest"];
                    r29 = r29;
                    [r0 retain];
                    [r20 setObject:r2 forKey:r3];
                    [r24 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"showClose"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"showClose"];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r20 setObject:r24 forKeyedSubscript:@"close_delay"];
                    [r24 release];
            }
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"showCloseIncentivized"];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 setObject:r25 forKeyedSubscript:@"close_delay_incentivized"];
                    [r25 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"countdown"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"countdown"];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 setObject:r25 forKeyedSubscript:@"countdown_delay"];
                    [r25 release];
            }
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"tpat"];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 setObject:r25 forKeyedSubscript:@"tpat_events"];
                    [r25 release];
            }
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r24 = r0;
                    if ((r23 & 0x1) != 0x0) {
                            [r24 release];
                            r21 = [[r19 objectForKeyedSubscript:@"cta_overlay"] retain];
                            [r20 setObject:r21 forKeyedSubscript:@"config"];
                            [r21 release];
                    }
                    else {
                            r22 = [r22 isValidCTAURLResolvedForDictionary:r19];
                            [r24 release];
                            if ((r22 & 0x1) != 0x0) {
                                    r21 = [[r19 objectForKeyedSubscript:@"cta_overlay"] retain];
                                    [r20 setObject:r21 forKeyedSubscript:@"config"];
                                    [r21 release];
                            }
                    }
            }
            [r20 removeObjectForKey:r2];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(unsigned long long)adTypeWithRawAdType:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x2;
                    }
                    else {
                            r20 = @selector(isEqualToString:);
                            if (objc_msgSend(r19, r20) == 0x0) {
                                    asm { cinc       x20, x8, eq };
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"campaign"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
            *(int8_t *)(r20 + 0x10) = [r19 decodeBoolForKey:@"viewed"];
            r0 = [r19 decodeObjectForKey:@"app_id"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"tpatEvents"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"user"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"expireDate"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            *(int32_t *)(r20 + 0x38) = [r19 decodeIntForKey:@"preventPlayDelay"];
            r0 = [r19 decodeObjectForKey:@"adType"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x40);
            *(r20 + 0x40) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"ad_token"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x50);
            *(r20 + 0x50) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"bid_token"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x58);
            *(r20 + 0x58) = r0;
            [r8 release];
            *(r20 + 0x60) = [r19 decodeIntegerForKey:@"state"];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:@"campaign"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
            r0 = [r19 objectForKey:@"viewed"];
            r0 = [r0 retain];
            *(int8_t *)(r20 + 0x10) = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKey:@"app_id"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            r0 = [r19 objectForKey:@"tpat_events"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            r0 = [r19 objectForKey:@"user"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r0 = [r19 objectForKey:@"expiry"];
            r0 = [r0 retain];
            [r0 doubleValue];
            [r0 release];
            r0 = [NSDate dateWithTimeIntervalSince1970:@"expiry"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            r0 = [r19 objectForKey:@"delay"];
            r0 = [r0 retain];
            *(int32_t *)(r20 + 0x38) = [r0 intValue];
            [r0 release];
            r0 = [r19 objectForKey:@"ad_token"];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r8 = *(r20 + 0x50);
            *(r20 + 0x50) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 objectForKey:@"bid_token"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x58);
            *(r20 + 0x58) = r0;
            [r8 release];
            *(r20 + 0x60) = 0x0;
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r23 = r0;
                    r24 = [[r19 objectForKeyedSubscript:r2] retain];
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r24 release];
                    [r23 release];
                    if (r24 != r0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 copy];
                            r8 = *(r20 + 0x40);
                            *(r20 + 0x40) = r0;
                            [r8 release];
                            [r21 release];
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r23 = *(self + 0x8);
    r19 = [arg2 retain];
    [r20 encodeObject:r23 forKey:@"campaign"];
    [r20 encodeBool:*(int8_t *)(r21 + 0x10) forKey:@"viewed"];
    [r20 encodeObject:*(r21 + 0x18) forKey:@"app_id"];
    [r20 encodeObject:*(r21 + 0x20) forKey:@"tpatEvents"];
    [r20 encodeObject:*(r21 + 0x28) forKey:@"user"];
    [r20 encodeObject:*(r21 + 0x30) forKey:@"expireDate"];
    [r20 encodeInt:*(int32_t *)(r21 + 0x38) forKey:@"preventPlayDelay"];
    [r20 encodeObject:*(r21 + 0x40) forKey:@"adType"];
    [r20 encodeObject:*(r21 + 0x50) forKey:@"ad_token"];
    r23 = [[r21 bidToken] retain];
    [r20 encodeObject:r23 forKey:@"bid_token"];
    [r23 release];
    if ([r21 state] == 0x3) {
            r0 = r20;
    }
    else {
            r0 = r20;
    }
    [r0 encodeInteger:r2 forKey:r3];
    [r19 release];
    return;
}

+(long long)channel {
    return 0x0;
}

+(void *)category {
    objc_retainAutorelease(@"ad");
    return @"ad";
}

-(long long)persistenceChannel {
    return 0x0;
}

-(void *)persistenceCategory {
    objc_retainAutorelease(@"ad");
    return @"ad";
}

-(void *)persistenceKey {
    r0 = [self cacheKey];
    return r0;
}

-(bool)isExpired {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *(self + 0x30);
    r20 = [[NSDate date] retain];
    r19 = [r19 compare:r20];
    r0 = [r20 release];
    if (r19 == -0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)cacheKey {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = *(self + 0x68);
    if (r0 == 0x0) {
            r21 = [[r19 adToken] retain];
            r0 = [VungleUtil sha1FromString:r21];
            r0 = [r0 retain];
            r8 = *(r19 + 0x68);
            *(r19 + 0x68) = r0;
            [r8 release];
            [r21 release];
            r0 = *(r19 + 0x68);
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r20 != r0) {
            [VungleAd class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToVungleAd:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)campaign {
    r0 = *(self + 0x8);
    return r0;
}

-(bool)viewed {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void)setViewed:(bool)arg2 {
    *(int8_t *)(self + 0x10) = arg2;
    return;
}

-(bool)isEqualToVungleAd:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
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
    r0 = [r0 campaign];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100656f48;

loc_100656dd8:
    [r22 release];
    goto loc_100656de0;

loc_100656de0:
    if ([r19 viewed] != *(int8_t *)(r20 + 0x10)) goto loc_10065701c;

loc_100656dfc:
    r21 = @selector(isEqualToString:);
    r0 = [r19 appId];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r21) == 0x0) goto loc_100656f74;

loc_100656e2c:
    [r22 release];
    goto loc_100656e34;

loc_100656e34:
    r0 = [r19 tpatEvents];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToDictionary:*(r20 + 0x20)] == 0x0) goto loc_100656fa0;

loc_100656e68:
    [r22 release];
    goto loc_100656e70;

loc_100656e70:
    r21 = @selector(isEqualToString:);
    r0 = [r19 user];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r21) == 0x0) goto loc_100656fcc;

loc_100656ea0:
    [r22 release];
    goto loc_100656ea8;

loc_100656ea8:
    r0 = [r19 expireDate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToDate:*(r20 + 0x30)] == 0x0) goto loc_100656ff8;

loc_100656edc:
    [r22 release];
    goto loc_100656ee4;

loc_100656ee4:
    if (*(int32_t *)(r20 + 0x38) != [r19 preventPlayDelay]) goto loc_10065701c;

loc_100656f00:
    r21 = @selector(isEqualToString:);
    r24 = *(r20 + 0x40);
    r0 = [r19 type];
    r29 = r29;
    r22 = [r0 retain];
    if (objc_msgSend(r24, r21) == 0x0) goto loc_100657054;

loc_100656f38:
    [r22 release];
    r20 = 0x1;
    goto loc_100657020;

loc_100657020:
    [r19 release];
    r0 = r20;
    return r0;

loc_100657054:
    if (*(r20 + 0x40) != 0x0) goto loc_100657014;

loc_10065705c:
    r0 = [r19 type];
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 == 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    goto loc_100657020;

loc_100657014:
    [r22 release];
    goto loc_10065701c;

loc_10065701c:
    r20 = 0x0;
    goto loc_100657020;

loc_100656ff8:
    r0 = [r19 expireDate];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100657040;

loc_100657010:
    [r0 release];
    goto loc_100657014;

loc_100657040:
    r23 = *(r20 + 0x30);
    [r22 release];
    if (r23 != 0x0) goto loc_10065701c;
    goto loc_100656ee4;

loc_100656fcc:
    r0 = [r19 user];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100657010;

loc_100656fe4:
    r23 = *(r20 + 0x28);
    [r22 release];
    if (r23 != 0x0) goto loc_10065701c;
    goto loc_100656ea8;

loc_100656fa0:
    r0 = [r19 tpatEvents];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100657010;

loc_100656fb8:
    r23 = *(r20 + 0x20);
    [r22 release];
    if (r23 != 0x0) goto loc_10065701c;
    goto loc_100656e70;

loc_100656f74:
    r0 = [r19 appId];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100657010;

loc_100656f8c:
    r23 = *(r20 + 0x18);
    [r22 release];
    if (r23 != 0x0) goto loc_10065701c;
    goto loc_100656e34;

loc_100656f48:
    r0 = [r19 campaign];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100657010;

loc_100656f60:
    r23 = *(r20 + 0x8);
    [r22 release];
    if (r23 != 0x0) goto loc_10065701c;
}

-(void *)appId {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setAppId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)tpatEvents {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setTpatEvents:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setIncentivized:(int)arg2 {
    *(int32_t *)(self + 0x48) = arg2;
    return;
}

-(int)incentivized {
    r0 = *(int32_t *)(self + 0x48);
    return r0;
}

-(void)setUser:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)user {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void *)expireDate {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setExpireDate:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(int)preventPlayDelay {
    r0 = *(int32_t *)(self + 0x38);
    return r0;
}

-(void)setPreventPlayDelay:(int)arg2 {
    *(int32_t *)(self + 0x38) = arg2;
    return;
}

-(void *)adToken {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setAdToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setBidToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)bidToken {
    r0 = objc_getProperty(self, _cmd, 0x58, 0x0);
    return r0;
}

-(long long)state {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setState:(long long)arg2 {
    *(self + 0x60) = arg2;
    return;
}

-(void)setCacheKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)type {
    r0 = *(self + 0x40);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end