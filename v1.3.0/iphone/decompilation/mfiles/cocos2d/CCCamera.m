@implementation CCCamera

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 restore];
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    r20 = @class(NSString);
    [self class];
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       d2, s2 };
    r0 = [r20 stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)restore {
    *(self + 0x8) = 0x0;
    [CCCamera getZEye];
    *(int32_t *)(self + 0x10) = s0;
    *(self + 0x1c) = 0x0;
    *(self + 0x14) = 0x0;
    *(self + 0x24) = *0x100b9b6b8;
    loc_10035ada4();
    *(int8_t *)(self + 0x2c) = 0x0;
    return;
}

-(void)locate {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(self + 0x2c) != 0x0) {
            sub_10035d73c(&stack[-48]);
            sub_10035d73c(&stack[-64]);
            sub_10035d73c(&stack[-80]);
            sub_10035b920(r19 + 0x30, &stack[-48], &stack[-64], &stack[-80]);
            *(int8_t *)(r19 + 0x2c) = 0x0;
    }
    sub_100357694(r19 + 0x30);
    return;
}

+(float)getZEye {
    r0 = self;
    return r0;
}

-(void)setEyeX:(float)arg2 eyeY:(float)arg3 eyeZ:(float)arg4 {
    *(int32_t *)(self + 0x8) = s0;
    *(int32_t *)(self + 0xc) = s1;
    *(int32_t *)(self + 0x10) = s2;
    *(int8_t *)(self + 0x2c) = 0x1;
    return;
}

-(void)setCenterX:(float)arg2 centerY:(float)arg3 centerZ:(float)arg4 {
    *(int32_t *)(self + 0x14) = s0;
    *(int32_t *)(self + 0x18) = s1;
    *(int32_t *)(self + 0x1c) = s2;
    *(int8_t *)(self + 0x2c) = 0x1;
    return;
}

-(void)setUpX:(float)arg2 upY:(float)arg3 upZ:(float)arg4 {
    *(int32_t *)(self + 0x20) = s0;
    *(int32_t *)(self + 0x24) = s1;
    *(int32_t *)(self + 0x28) = s2;
    *(int8_t *)(self + 0x2c) = 0x1;
    return;
}

-(void)eyeX:(float *)arg2 eyeY:(float *)arg3 eyeZ:(float *)arg4 {
    *(int32_t *)arg2 = *(int32_t *)(self + 0x8);
    *(int32_t *)arg3 = *(int32_t *)(self + 0xc);
    *(int32_t *)arg4 = *(int32_t *)(self + 0x10);
    return;
}

-(void)centerX:(float *)arg2 centerY:(float *)arg3 centerZ:(float *)arg4 {
    *(int32_t *)arg2 = *(int32_t *)(self + 0x14);
    *(int32_t *)arg3 = *(int32_t *)(self + 0x18);
    *(int32_t *)arg4 = *(int32_t *)(self + 0x1c);
    return;
}

-(void)upX:(float *)arg2 upY:(float *)arg3 upZ:(float *)arg4 {
    *(int32_t *)arg2 = *(int32_t *)(self + 0x20);
    *(int32_t *)arg3 = *(int32_t *)(self + 0x24);
    *(int32_t *)arg4 = *(int32_t *)(self + 0x28);
    return;
}

-(bool)dirty {
    r0 = *(int8_t *)(self + 0x2c);
    return r0;
}

-(void)setDirty:(bool)arg2 {
    *(int8_t *)(self + 0x2c) = arg2;
    return;
}

@end