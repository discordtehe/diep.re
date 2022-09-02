@implementation SoundEffectEntry

-(void *)name {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x1);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setName:0x0];
            [r19 setFilePath:0x0];
            [r19 setDuration:0x0];
            [r19 setCached:0x0];
            [r19 setPreloaded:0x0];
            [r19 setLoaded:0x0];
            [r19 setDataUpdated:0x0];
            *(r19 + 0x20) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
    }
    r0 = r19;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setName:0x0];
    [r19 setFilePath:0x0];
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setDuration:(float)arg2 {
    *(int32_t *)(self + 0x18) = s0;
    return;
}

-(void)setFilePath:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(float)duration {
    r0 = self;
    return r0;
}

-(void *)filePath {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(bool)loaded {
    r0 = *(int8_t *)(self + 0x1c) & 0x1;
    return r0;
}

-(bool)cached {
    r0 = *(int8_t *)(self + 0x1d) & 0x1;
    return r0;
}

-(void)setCached:(bool)arg2 {
    *(int8_t *)(self + 0x1d) = arg2;
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(self + 0x1c) = arg2;
    return;
}

-(bool)preloaded {
    r0 = *(int8_t *)(self + 0x1e) & 0x1;
    return r0;
}

-(void)setPreloaded:(bool)arg2 {
    *(int8_t *)(self + 0x1e) = arg2;
    return;
}

-(bool)dataUpdated {
    r0 = *(int8_t *)(self + 0x1f) & 0x1;
    return r0;
}

-(void)setDataUpdated:(bool)arg2 {
    *(int8_t *)(self + 0x1f) = arg2;
    return;
}

-(void *)soundInstanceDictionary {
    r0 = *(self + 0x20);
    return r0;
}

@end