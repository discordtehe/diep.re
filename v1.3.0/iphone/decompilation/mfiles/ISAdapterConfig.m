@implementation ISAdapterConfig

-(void *)initWithProviderName:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r1 = @selector(init);
    r0 = objc_msgSendSuper2(&var_20, r1);
    r20 = r0;
    if (r20 != 0x0) {
            if (r19 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r1 = r19;
                    }
                    else {
                            r1 = @"";
                    }
            }
            objc_storeStrong((int64_t *)&r20->_providerName, r1);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_settings, arg2);
    return;
}

-(void)setLoadTimeOut:(double)arg2 {
    self->_loadTimeOutSec = d0;
    return;
}

-(void)setReflectionName:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r19 = r2;
            }
            else {
                    r19 = @"";
            }
    }
    [r2 retain];
    objc_storeStrong((int64_t *)&r0->_reflectionName, r19);
    [r21 release];
    return;
}

-(void *)maxAdsPerIteration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + r22);
            r0 = [r0 objectForKeyedSubscript:r2];
    }
    else {
            r0 = @(0x63);
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)maxAdsPerSession {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + r22);
            r0 = [r0 objectForKeyedSubscript:r2];
    }
    else {
            r0 = @(0x63);
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)name {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = 0x10116f854;
    if ([self isMultiProviderInstance] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x10116f854;
            }
            else {
                    r8 = 0x10116f85c;
            }
    }
    r0 = *(r19 + sign_extend_64(*(int32_t *)r8));
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(long long)maxAdsPerDay {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + r22);
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r20 = [r0 integerValue];
            [r0 release];
    }
    else {
            r20 = 0x63;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isMultiProviderInstance {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = *(r20 + r22);
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r20 = [r0 boolValue];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)instanceId {
    r0 = [self subAdapterId];
    return r0;
}

-(void *)requestUrl {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[*(r20 + r22) objectForKeyedSubscript:r2] retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)subAdapterId {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_settings));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[*(r20 + r22) objectForKeyedSubscript:r2] retain];
    }
    else {
            r20 = @"0";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adSourceNameForEvent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_settings;
    r0 = [r0 objectForKeyedSubscript:@"adSourceName"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [r20 name];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [ISAdapterConfig class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = r20->_providerName;
            r21 = [[r19 providerName] retain];
            [r19 release];
            r19 = [r20 isEqual:r2];
            [r21 release];
            r0 = r19;
    }
    else {
            r0 = [[&var_30 super] isEqual:r2];
            [r19 release];
            r0 = r0;
    }
    return r0;
}

-(long long)compare:(void *)arg2 {
    r19 = self->_providerName;
    r20 = [[arg2 providerName] retain];
    r19 = [r19 compare:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)settings {
    r0 = self->_settings;
    return r0;
}

-(void *)providerName {
    r0 = self->_providerName;
    return r0;
}

-(void *)reflectionName {
    r0 = self->_reflectionName;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reflectionName, 0x0);
    objc_storeStrong((int64_t *)&self->_providerName, 0x0);
    objc_storeStrong((int64_t *)&self->_settings, 0x0);
    return;
}

-(double)loadTimeOutSec {
    r0 = self;
    return r0;
}

@end