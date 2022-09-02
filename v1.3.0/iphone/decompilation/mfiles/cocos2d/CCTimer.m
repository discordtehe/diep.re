@implementation CCTimer

-(void)setupTimerWithInterval:(double)arg2 repeat:(unsigned int)arg3 delay:(double)arg4 {
    r2 = arg2;
    r0 = self;
    r8 = 0xbff0000000000000;
    *(r0 + 0x10) = r8;
    *(r0 + 0x8) = d0;
    *(r0 + 0x28) = d1;
    if (d1 > 0x0) {
            r8 = 0xbff0000000000000;
            if (CPU_FLAGS & G) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r0 + 0x19) = r8;
    *(int32_t *)(r0 + 0x20) = r2;
    if (r2 == -0x2) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(r0 + 0x18) = r8;
    return;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)trigger {
    return;
}

-(void)cancel {
    return;
}

-(double)interval {
    r0 = self;
    return r0;
}

-(void)update:(double)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    d1 = *(self + 0x10);
    if (d1 != 0xbff0000000000000) goto loc_10032c1b4;

loc_10032c1a8:
    *(r19 + 0x10) = 0x0;
    *(int32_t *)(r19 + 0x1c) = 0x0;
    return;

loc_10032c1b4:
    r9 = *(int8_t *)(r19 + 0x18);
    r8 = *(int8_t *)(r19 + 0x19);
    d0 = d1 + d0;
    if (r9 == 0x0) goto loc_10032c1f0;

loc_10032c1c4:
    *(r19 + 0x10) = d0;
    if (r8 != 0x0) goto loc_10032c1f8;

loc_10032c1cc:
    if (d0 >= *(r19 + 0x8)) {
            [r19 trigger];
            *(r19 + 0x10) = 0x0;
    }
    return;

loc_10032c1f8:
    if (d0 >= *(r19 + 0x28)) {
            [r19 trigger];
            *(r19 + 0x10) = *(r19 + 0x10) - *(r19 + 0x28);
            *(int32_t *)(r19 + 0x1c) = *(int32_t *)(r19 + 0x1c) + 0x1;
            *(int8_t *)(r19 + 0x19) = 0x0;
    }
    goto loc_10032c234;

loc_10032c234:
    if (*(int8_t *)(r19 + 0x18) == 0x0 && *(int128_t *)(r19 + 0x1c) >= *(int128_t *)(r19 + 0x20)) {
            [r19 cancel];
    }
    return;

loc_10032c1f0:
    *(r19 + 0x10) = d0;
    if (r8 != 0x0) {
            if (d0 >= *(r19 + 0x28)) {
                    [r19 trigger];
                    *(r19 + 0x10) = *(r19 + 0x10) - *(r19 + 0x28);
                    *(int32_t *)(r19 + 0x1c) = *(int32_t *)(r19 + 0x1c) + 0x1;
                    *(int8_t *)(r19 + 0x19) = 0x0;
            }
    }
    else {
            if (d0 >= *(r19 + 0x8)) {
                    [r19 trigger];
                    *(r19 + 0x10) = 0x0;
                    *(int32_t *)(r19 + 0x1c) = *(int32_t *)(r19 + 0x1c) + 0x1;
            }
    }
    goto loc_10032c234;
}

-(void)setInterval:(double)arg2 {
    *(self + 0x8) = d0;
    return;
}

@end