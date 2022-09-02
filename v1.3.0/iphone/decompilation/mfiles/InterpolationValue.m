@implementation InterpolationValue

-(void *)initWithValue:(float)arg2 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_20 = d0;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            q0 = var_20;
            asm { dup        v0.4s, v0.s[0] };
            *(int128_t *)(r0 + 0x8) = q0;
            *(r0 + 0x18) = 0x0;
    }
    return r0;
}

-(void)setTarget:(float)arg2 timeToReach:(float)arg3 {
    r0 = self;
    s2 = *(int32_t *)(r0 + 0x8);
    if (s2 == s0) {
            *(int32_t *)(r0 + 0x1c) = 0x0;
    }
    else {
            *(int32_t *)(r0 + 0x1c) = s1;
            *(int32_t *)(r0 + 0x18) = 0x0;
            *(int32_t *)(r0 + 0x14) = s0;
            *(int32_t *)(r0 + 0x10) = s0;
            *(int32_t *)(r0 + 0xc) = s2;
            if (s1 == 0x0) {
                    *(int32_t *)(r0 + 0x8) = s0;
            }
    }
    return;
}

-(void)setTargetWithPerdiction:(float)arg2 timeToReach:(float)arg3 perdictionModifier:(float)arg4 {
    r0 = self;
    s3 = *(int32_t *)(r0 + 0x8);
    if (s3 == s0) {
            *(int32_t *)(r0 + 0x1c) = 0x0;
    }
    else {
            *(int32_t *)(r0 + 0x1c) = s1;
            *(int32_t *)(r0 + 0x18) = 0x0;
            s4 = *(int32_t *)(r0 + 0x10);
            *(int128_t *)(r0 + 0x10) = s0;
            *(int128_t *)(r0 + 0x14) = (s0 - s4) * s2 + s0;
            *(int32_t *)(r0 + 0xc) = s3;
            if (s1 == 0x0) {
                    *(int32_t *)(r0 + 0x8) = s0;
            }
    }
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int128_t *)(r0 + 0x18) < *(int128_t *)(r0 + 0x1c)) {
            asm { fcvt       d2, s2 };
            asm { fcvt       s0, d0 };
            *(int32_t *)(r0 + 0x18) = s0;
            asm { fdiv       s0, s0, s1 };
            sub_10035d730();
            sub_10035d724();
            s1 = *(int32_t *)(r19 + 0x14);
            s2 = *(int32_t *)(r19 + 0xc);
            *(int32_t *)(r19 + 0x8) = s2 + s0 * (s1 - s2);
    }
    return;
}

-(float)value {
    r0 = self;
    return r0;
}

-(float)originalTargetValue {
    r0 = self;
    return r0;
}

-(float)targetValue {
    r0 = self;
    return r0;
}

@end