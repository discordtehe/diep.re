@implementation VNGMoatOptions

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setIDFACollectionEnabled:0x1];
            [r19 setDebugLoggingEnabled:0x0];
    }
    r0 = r19;
    return r0;
}

-(bool)locationServicesEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_locationServicesEnabled & 0x1;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[VNGMoatOptions alloc] init];
    [r20 setDebugLoggingEnabled:[self debugLoggingEnabled]];
    [r20 setIDFACollectionEnabled:[self IDFACollectionEnabled]];
    r0 = r20;
    return r0;
}

-(void)setLocationServicesEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_locationServicesEnabled = arg2;
    return;
}

-(bool)IDFACollectionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_IDFACollectionEnabled & 0x1;
    return r0;
}

-(void)setIDFACollectionEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_IDFACollectionEnabled = arg2;
    return;
}

-(bool)debugLoggingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_debugLoggingEnabled & 0x1;
    return r0;
}

-(void)setDebugLoggingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugLoggingEnabled = arg2;
    return;
}

@end