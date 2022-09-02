@implementation CCSkewBy

-(void *)initWithDuration:(double)arg2 skewX:(float)arg3 skewY:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithDuration:arg2 skewX:arg3 skewY:arg4];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_skewX = s9;
            *(int32_t *)(int64_t *)&r0->_skewY = s8;
    }
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_skewX));
    r8 = *(int32_t *)(self + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_deltaX));
    *(int32_t *)(self + r9) = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_skewY));
    r8 = *(int32_t *)(self + r8);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_deltaY));
    *(int32_t *)(self + r10) = r8;
    *(int32_t *)(int64_t *)&self->_endSkewX = *(int32_t *)(int64_t *)&self->_startSkewX + *(int32_t *)(self + r9);
    *(int32_t *)(int64_t *)&self->_endSkewY = *(int32_t *)(int64_t *)&self->_startSkewY + *(int32_t *)(self + r10);
    return;
}

-(void *)reverse {
    r0 = [self class];
    r0 = [r0 actionWithDuration:r2 skewX:r3 skewY:r4];
    return r0;
}

@end