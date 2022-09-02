@implementation CCEasePolynomial

+(void *)actionWithAction:(void *)arg2 polynomialOrder:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 polynomialOrder:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)actionWithAction:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 polynomialOrder:(float)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithAction:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            asm { fcvtzs     x2, s8 };
            [r19 setPolynomialOrder:r2];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithAction:(void *)arg2 {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] initWithAction:arg2];
    if (r0 != 0x0) {
            r0->_polynomialOrder = 0x6;
            *(int8_t *)(int64_t *)&r0->_hasInflection = 0x0;
            r0->_intersetValue = 0x3ffc823e00000000;
    }
    return r0;
}

-(void)setPolynomialOrder:(unsigned long long)arg2 {
    r0 = self;
    r0->_polynomialOrder = arg2;
    *(int8_t *)(int64_t *)&r0->_hasInflection = arg2 & 0x1;
    asm { ucvtf      s0, x2 };
    asm { fdiv       s0, s1, s0 };
    exp2f(r0);
    asm { fcvt       d0, s0 };
    r19->_intersetValue = d0;
    return;
}

-(unsigned long long)polynomialOrder {
    r0 = self->_polynomialOrder;
    return r0;
}

@end