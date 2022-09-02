@implementation AgarCell

-(struct CGPoint)position {
    [*(self + 0x8) value];
    asm { fcvt       d8, s0 };
    r0 = *(r19 + 0x10);
    r0 = objc_msgSend(r0, r20);
    asm { fcvt       d1, s0 };
    return r0;
}

-(float)radius {
    r0 = *(self + 0x18);
    r0 = [r0 value];
    return r0;
}

-(struct CGPoint)targetPosition {
    [*(self + 0x8) targetValue];
    asm { fcvt       d8, s0 };
    r0 = *(r19 + 0x10);
    r0 = objc_msgSend(r0, r20);
    asm { fcvt       d1, s0 };
    return r0;
}

-(float)targetRadius {
    r0 = *(self + 0x18);
    r0 = [r0 targetValue];
    return r0;
}

-(void *)initWithView:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int16_t *)(r0 + 0x28) = 0x101;
            *(r0 + 0x20) = r19;
    }
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)update:(double)arg2 {
    [*(self + 0x8) update:r2];
    objc_msgSend(*(self + 0x10), r20);
    objc_msgSend(*(self + 0x18), r20);
    return;
}

-(void *)view {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setIsAlive:(bool)arg2 {
    *(int8_t *)(self + 0x28) = arg2;
    return;
}

-(bool)isAlive {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

@end