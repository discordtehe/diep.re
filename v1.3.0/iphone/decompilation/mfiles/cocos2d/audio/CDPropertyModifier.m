@implementation CDPropertyModifier

-(void)dealloc {
    [*(self + 0x18) release];
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init:(void *)arg2 interpolationType:(int)arg3 startVal:(float)arg4 endVal:(float)arg5 {
    r4 = arg4;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = arg3;
    r21 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = *(r20 + 0x18);
            if (r0 != 0x0) {
                    [r0 release];
            }
            *(r20 + 0x18) = r21;
            [r21 retain];
            *(int128_t *)(r20 + 0x10) = s9;
            *(int128_t *)(r20 + 0x14) = s8;
            r0 = *(r20 + 0x8);
            if (r0 != 0x0) {
                    [r0 release];
            }
            *(r20 + 0x8) = [[CDFloatInterpolator alloc] init:r19 startVal:r3 endVal:r4];
            *(int8_t *)(r20 + 0x20) = 0x0;
    }
    r0 = r20;
    return r0;
}

-(float)startValue {
    r0 = self;
    return r0;
}

-(void)modify:(float)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (s0 < 0x3ff0000000000000) {
            [*(r19 + 0x8) interpolate:r2];
            [r19 _setTargetProperty:r2];
    }
    else {
            [r19 _setTargetProperty:r2];
            if (*(int8_t *)(r19 + 0x20) != 0x0) {
                    [r19 _stopTarget];
            }
    }
    return;
}

-(void)setStartValue:(float)arg2 {
    *(int32_t *)(self + 0x10) = s0;
    [*(self + 0x8) setStart:arg2];
    return;
}

-(float)endValue {
    r0 = self;
    return r0;
}

-(void)setEndValue:(float)arg2 {
    *(int32_t *)(self + 0x14) = s0;
    [*(self + 0x8) setEnd:arg2];
    return;
}

-(int)interpolationType {
    r0 = *(self + 0x8);
    r0 = [r0 interpolationType];
    return r0;
}

-(void)setInterpolationType:(int)arg2 {
    [*(self + 0x8) setInterpolationType:arg2];
    return;
}

-(void)_setTargetProperty:(float)arg2 {
    return;
}

-(float)_getTargetProperty {
    r0 = self;
    return r0;
}

-(void)_stopTarget {
    return;
}

-(void *)_allowableType {
    r0 = [NSObject class];
    return r0;
}

-(bool)stopTargetWhenComplete {
    r0 = *(int8_t *)(self + 0x20);
    return r0;
}

-(void)setStopTargetWhenComplete:(bool)arg2 {
    *(int8_t *)(self + 0x20) = arg2;
    return;
}

@end