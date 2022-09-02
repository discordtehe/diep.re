@implementation MCCGPointValue

-(void *)initWithCGPoint:(struct CGPoint)arg2 {
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

+(void *)valueWithCGPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [MCCGPointValue alloc];
    r0 = [r0 initWithCGPoint:r2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getNSCGPointWithX:(float)arg2 andY:(float)arg3 {
    r2 = arg2;
    r0 = @class(MCCGPointValue);
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    r0 = [r0 valueWithCGPoint:r2];
    return r0;
}

-(struct CGPoint)point {
    r0 = [self value];
    return r0;
}

+(void *)getNSCGPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [MCCGPointValue valueWithCGPoint:r2];
    return r0;
}

+(void *)getNSCGPoint {
    r0 = [MCCGPointValue valueWithCGPoint:r2];
    return r0;
}

-(struct CGPoint)value {
    r0 = self;
    return r0;
}

@end