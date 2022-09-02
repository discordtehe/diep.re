@implementation MCCGSizeValue

-(void *)initWithCGSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = d9;
            *(r0 + 0x10) = d8;
    }
    return r0;
}

+(void *)valueWithCGSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [MCCGSizeValue alloc];
    r0 = [r0 initWithCGSize:r2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getNSCGSizeWithWidth:(float)arg2 andHeight:(float)arg3 {
    r2 = arg2;
    r0 = @class(MCCGSizeValue);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    r0 = [r0 valueWithCGSize:r2];
    return r0;
}

-(struct CGSize)size {
    r0 = [self value];
    return r0;
}

+(void *)getNSCGSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [MCCGSizeValue valueWithCGSize:r2];
    return r0;
}

+(void *)getNSCGSize {
    r0 = [MCCGSizeValue valueWithCGSize:r2];
    return r0;
}

-(struct CGSize)value {
    r0 = self;
    return r0;
}

@end