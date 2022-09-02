@implementation CCCardinalSplineBy

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:r2];
    [arg2 position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPosition));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    return;
}

-(void)updatePosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_startPosition));
    d8 = d0 + *(int128_t *)(self + r8);
    d9 = d1 + *(int128_t *)(0x8 + self + r8);
    [self->_target setPosition:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousPosition));
    *(self + r8) = d8;
    *(0x8 + self + r8) = d9;
    return;
}

-(void *)reverse {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_points;
    r0 = [r0 copy];
    r23 = r0;
    [r0 getControlPointAtIndex:0x0];
    if ([r23 count] >= 0x2) {
            r24 = 0x1;
            do {
                    [r23 getControlPointAtIndex:r24];
                    d0 = d0 - d9;
                    d1 = d1 - d8;
                    [r23 replaceControlPoint:r2 atIndex:r3];
                    r24 = r24 + 0x1;
            } while (r24 < objc_msgSend(r23, r21));
    }
    r21 = @selector(count);
    r22 = [r23 reverse];
    [r23 release];
    [r22 getControlPointAtIndex:objc_msgSend(r22, r21) - 0x1];
    v8 = v0;
    v9 = v1;
    [r22 removeControlPointAtIndex:objc_msgSend(r22, r21) - 0x1];
    d8 = -d8;
    d9 = -d9;
    [r22 insertControlPoint:0x0 atIndex:r3];
    if (objc_msgSend(r22, r21) >= 0x2) {
            r24 = 0x1;
            do {
                    [r22 getControlPointAtIndex:r24];
                    d8 = d8 - d0;
                    d9 = d9 - d1;
                    [r22 replaceControlPoint:r2 atIndex:r3];
                    r24 = r24 + 0x1;
            } while (r24 < objc_msgSend(r22, r21));
    }
    r0 = [r19 class];
    r0 = [r0 actionWithDuration:r22 points:r3 tension:r4];
    return r0;
}

@end