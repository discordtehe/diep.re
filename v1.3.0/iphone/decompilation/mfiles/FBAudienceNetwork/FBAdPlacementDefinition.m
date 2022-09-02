@implementation FBAdPlacementDefinition

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setType:0x0];
            [r19 setMinViewabilityPercentage:0x1];
            [r19 setRefreshInterval:0x0];
            [r19 setRefreshThreshold:0x14];
            [r19 setRequestTimeout:0x2710];
            r20 = [[NSNumber numberWithDouble:0x2710] retain];
            [r19 setRequestTime:r20];
            [r20 release];
            [r19 setInvalidationDuration:0x36ee80];
            [r19 setClientMaxRetryCount:0x3];
            [r19 setMinViewabilityTicks:0x0];
            [r19 setViewabilityCheckInitialDelay:0x0];
            [r19 setViewabilityCheckInterval:0x0];
            [r19 setVideoTimePollingInterval:0x0];
            [r19 setPlacementSize:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithPlacementData:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 ingestPlacementData:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cookieData, 0x0);
    objc_storeStrong((int64_t *)&self->_requestTime, 0x0);
    return;
}

-(long long)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

-(long long)minViewabilityPercentage {
    r0 = self->_minViewabilityPercentage;
    return r0;
}

-(void)ingestPlacementData:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r20 = self;
    r19 = [[arg2 retain] retain];
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100a6f85c;

loc_100a6f30c:
    r0 = [r19 retain];
    r21 = r0;
    r0 = [r0 stringForKeyOrNil:@"type"];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_100a6f368;

loc_100a6f354:
    r0 = r20;
    goto loc_100a6f3e8;

loc_100a6f3e8:
    [r0 setType:r2];
    goto loc_100a6f3ec;

loc_100a6f3ec:
    [r20 minViewabilityPercentage];
    [r20 setMinViewabilityPercentage:[r21 integerForKey:r2 orDefault:r3]];
    [r20 refreshInterval];
    [r20 setRefreshInterval:[r21 integerForKey:r2 orDefault:r3]];
    [r20 refreshThreshold];
    [r20 setRefreshThreshold:[r21 integerForKey:r2 orDefault:r3]];
    [r20 requestTimeout];
    r2 = [r21 integerForKey:r2 orDefault:r3];
    [r20 setRequestTimeout:r2];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r24 = r0;
    [r0 timeIntervalSince1970];
    r0 = [NSNumber numberWithDouble:r2];
    r29 = r29;
    r25 = [r0 retain];
    [r20 setRequestTime:r25];
    [r25 release];
    [r24 release];
    [r20 invalidationDuration];
    [r21 integerForKey:r2 orDefault:r3];
    asm { scvtf      d0, x0 };
    d0 = d0 * d8;
    asm { fcvtzs     x2, d0 };
    [r20 setInvalidationDuration:r2];
    [r20 clientMaxRetryCount];
    [r20 setClientMaxRetryCount:objc_msgSend(r21, r23)];
    [r20 setCacheable:[r21 boolForKey:@"cacheable" orDefault:0x0]];
    [r20 minViewabilityTicks];
    [r20 setMinViewabilityTicks:objc_msgSend(r21, r23)];
    [r20 viewabilityCheckInitialDelay];
    asm { fcvtzs     x3, d0 };
    objc_msgSend(r21, r23);
    asm { scvtf      d0, x0 };
    asm { fdiv       d0, d0, d8 };
    [r20 setViewabilityCheckInitialDelay:r2];
    [r20 viewabilityCheckInterval];
    asm { fcvtzs     x3, d0 };
    objc_msgSend(r21, r23);
    asm { scvtf      d0, x0 };
    asm { fdiv       d0, d0, d8 };
    [r20 setViewabilityCheckInterval:r2];
    [r20 videoTimePollingInterval];
    asm { fcvtzs     x3, d0 };
    objc_msgSend(r21, r23);
    asm { scvtf      d0, x0 };
    asm { fdiv       d0, d0, d8 };
    [r20 setVideoTimePollingInterval:r2];
    [r20 placementSize];
    [r21 cgfloatForKey:@"placement_width" orDefault:r3];
    v8 = v0;
    [r20 placementSize];
    [r21 cgfloatForKey:@"placement_height" orDefault:r3];
    if (d8 >= 0xbff0000000000000 && d1 >= 0xbff0000000000000) {
            [r20 setPlacementSize:@"placement_height"];
    }
    r24 = [[r21 arrayForKeyOrNil:@"conv_tracking_data"] retain];
    r23 = [[FBAdCookieData parseCookieData:r24] retain];
    [r20 setCookieData:r23];
    [r23 release];
    [r24 release];
    dispatch_async(*__dispatch_main_q, &var_78);
    [r22 release];
    [r21 release];
    goto loc_100a6f85c;

loc_100a6f85c:
    [r19 release];
    [r19 release];
    return;

loc_100a6f368:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_100a6f394;

loc_100a6f380:
    r0 = r20;
    goto loc_100a6f3e8;

loc_100a6f394:
    if ([r22 isEqualToString:r2] == 0x0) goto loc_100a6f3c0;

loc_100a6f3ac:
    r0 = r20;
    goto loc_100a6f3e8;

loc_100a6f3c0:
    if (([r22 isEqualToString:r2] & 0x1) == 0x0) goto loc_100a6f3ec;

loc_100a6f3d8:
    r0 = r20;
    goto loc_100a6f3e8;
}

-(void)setMinViewabilityPercentage:(long long)arg2 {
    self->_minViewabilityPercentage = arg2;
    return;
}

-(long long)minViewabilityTicks {
    r0 = self->_minViewabilityTicks;
    return r0;
}

-(void)setMinViewabilityTicks:(long long)arg2 {
    self->_minViewabilityTicks = arg2;
    return;
}

-(long long)refreshInterval {
    r0 = self->_refreshInterval;
    return r0;
}

-(void)setRefreshInterval:(long long)arg2 {
    self->_refreshInterval = arg2;
    return;
}

-(long long)refreshThreshold {
    r0 = self->_refreshThreshold;
    return r0;
}

-(long long)requestTimeout {
    r0 = self->_requestTimeout;
    return r0;
}

-(void)setRefreshThreshold:(long long)arg2 {
    self->_refreshThreshold = arg2;
    return;
}

-(void)setRequestTimeout:(long long)arg2 {
    self->_requestTimeout = arg2;
    return;
}

-(void *)requestTime {
    r0 = self->_requestTime;
    return r0;
}

-(void)setRequestTime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestTime, arg2);
    return;
}

-(long long)invalidationDuration {
    r0 = self->_invalidationDuration;
    return r0;
}

-(long long)clientMaxRetryCount {
    r0 = self->_clientMaxRetryCount;
    return r0;
}

-(void)setInvalidationDuration:(long long)arg2 {
    self->_invalidationDuration = arg2;
    return;
}

-(void)setClientMaxRetryCount:(long long)arg2 {
    self->_clientMaxRetryCount = arg2;
    return;
}

-(double)viewabilityCheckInitialDelay {
    r0 = self;
    return r0;
}

-(void)setViewabilityCheckInitialDelay:(double)arg2 {
    self->_viewabilityCheckInitialDelay = d0;
    return;
}

-(double)viewabilityCheckInterval {
    r0 = self;
    return r0;
}

-(void)setVideoTimePollingInterval:(double)arg2 {
    self->_videoTimePollingInterval = d0;
    return;
}

-(void)setViewabilityCheckInterval:(double)arg2 {
    self->_viewabilityCheckInterval = d0;
    return;
}

-(double)videoTimePollingInterval {
    r0 = self;
    return r0;
}

-(struct FBAdSize)placementSize {
    r0 = self;
    return r0;
}

-(void)setPlacementSize:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placementSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(bool)isCacheable {
    r0 = *(int8_t *)(int64_t *)&self->_cacheable;
    return r0;
}

-(void)setCacheable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_cacheable = arg2;
    return;
}

-(void *)cookieData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cookieData)), 0x0);
    return r0;
}

-(void)setCookieData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdPlacementDefinition");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end