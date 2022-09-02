@implementation MCColor3BValue

+(void *)valueWithColor3B:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = [MCColor3BValue alloc];
    r0 = [r0 initWithColor3B:r2 & 0xffffffff];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithColor3B:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(r0 + 0x8) = r19;
    }
    return r0;
}

-(struct _ccColorThreeB)color {
    r0 = [self value];
    r0 = r0 & 0xffffffff;
    return r0;
}

+(void *)getNSColor3B:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = [self valueWithColor3B:r2 & 0xffffffff];
    return r0;
}

+(void *)getNSColor3B {
    r0 = [self valueWithColor3B:0x0];
    return r0;
}

-(struct _ccColorThreeB)value {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

@end