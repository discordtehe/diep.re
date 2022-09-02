@implementation IROMoatConfig

+(void *)configWithResponse:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithResponse:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithResponse:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setVwIntervalMillis:0xc8];
            [r20 parseConfig:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isOSBlacklisted:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r2 = [NSArray class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            [IROMoatCoreUtil getMajorSystemVersion];
            asm { sxtw       x2, w0 };
            r21 = [[NSNumber numberWithInteger:r2] retain];
            r20 = [r19 containsObject:r2];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isAppBlacklisted:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [NSArray class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r21 = [[IROMoatCoreUtil getBundleId] retain];
            r20 = [r19 containsObject:r2];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isOn {
    r0 = *(int8_t *)(int64_t *)&self->_isOn;
    return r0;
}

-(void)setIsOn:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isOn = arg2;
    return;
}

-(bool)isDebug {
    r0 = *(int8_t *)(int64_t *)&self->_isDebug;
    return r0;
}

-(void)parseConfig:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:&var_58];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [var_58 retain];
    if (r21 != 0x0) {
            [IROMoatLogging reportDevLogWithObject:r22 format:@"JSON Response was malformed."];
    }
    else {
            [NSDictionary class];
            if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                    r0 = [r20 retain];
                    r23 = r0;
                    var_60 = @selector(objectForKey:);
                    r25 = [[r0 objectForKey:@"sa"] retain];
                    r28 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
                    r0 = [r25 stringByTrimmingCharactersInSet:r28];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r28 release];
                    [r25 release];
                    if (r24 != 0x0) {
                            r25 = [r24 isEqualToString:r2];
                            if (r25 != 0x0) {
                                    [r22 setIsDebug:0x1];
                            }
                            var_60 = @selector(objectForKey:);
                            r0 = objc_msgSend(r23, var_60);
                            r29 = r29;
                            r0 = [r0 retain];
                            r2 = 0xa;
                            var_68 = r0;
                            if (r0 != 0x0) {
                                    r2 = [var_68 integerValue];
                            }
                            r28 = @selector(isEqualToString:);
                            [r22 setSamplingRate:r2];
                            if ((r25 | objc_msgSend(r24, r28)) == 0x1) {
                                    var_60 = @selector(objectForKey:);
                                    r28 = [objc_msgSend(r23, var_60) retain];
                                    r0 = objc_msgSend(r23, var_60);
                                    r29 = r29;
                                    var_70 = [r0 retain];
                                    if (([r22 isOSBlacklisted:r28] & 0x1) == 0x0 && [r22 isAppBlacklisted:r2] == 0x0) {
                                            r27 = @selector(isKindOfClass:);
                                            [r22 setIsOn:0x1];
                                            r0 = [r23 objectForKey:r2];
                                            r29 = r29;
                                            r26 = [r0 retain];
                                            [NSString class];
                                            if (objc_msgSend(r26, r27) != 0x0) {
                                                    r8 = [r26 intValue];
                                                    if (r8 <= 0x3e8) {
                                                            [r22 setVwIntervalMillis:r8];
                                                    }
                                            }
                                            var_60 = @selector(objectForKey:);
                                            r0 = objc_msgSend(r23, var_60);
                                            r29 = r29;
                                            r25 = [r0 retain];
                                            if ([r22 isAppBlacklisted:r2] != 0x0) {
                                                    [r22 setIsAppLocationBlacklisted:0x1];
                                            }
                                            [r25 release];
                                            [r26 release];
                                    }
                                    else {
                                            [IROMoatLogging reportDevLogWithObject:r22 format:@"OS or app is blacklisted"];
                                    }
                                    [var_70 release];
                                    [r28 release];
                            }
                            [var_68 release];
                    }
                    else {
                            [IROMoatLogging reportDevLogWithObject:r22 format:@"JSON Response does not contain a status."];
                    }
                    [r24 release];
                    [r23 release];
            }
            else {
                    [IROMoatLogging reportDevLogWithObject:r22 format:@"JSON Response was not a dictionary."];
            }
    }
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)setIsDebug:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isDebug = arg2;
    return;
}

-(bool)isAppLocationBlacklisted {
    r0 = *(int8_t *)(int64_t *)&self->_isAppLocationBlacklisted;
    return r0;
}

-(void)setIsAppLocationBlacklisted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAppLocationBlacklisted = arg2;
    return;
}

-(void)setVwIntervalMillis:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_vwIntervalMillis = arg2;
    return;
}

-(int)vwIntervalMillis {
    r0 = *(int32_t *)(int64_t *)&self->_vwIntervalMillis;
    return r0;
}

-(long long)samplingRate {
    r0 = self->_samplingRate;
    return r0;
}

-(void)setSamplingRate:(long long)arg2 {
    self->_samplingRate = arg2;
    return;
}

@end