@implementation CCScaleBy

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    s0 = *(int32_t *)(int64_t *)&self->_startScaleX;
    *(int32_t *)(int64_t *)&self->_deltaX = s0 * *(int32_t *)(int64_t *)&self->_endScaleX - s0;
    s0 = *(int32_t *)(int64_t *)&self->_startScaleY;
    *(int32_t *)(int64_t *)&self->_deltaY = s0 * *(int32_t *)(int64_t *)&self->_endScaleY - s0;
    return;
}

-(void *)reverse {
    r0 = [self class];
    asm { fdiv       s1, s2, s1 };
    asm { fdiv       s2, s2, s3 };
    r0 = [r0 actionWithDuration:r2 scaleX:r3 scaleY:r4];
    return r0;
}

@end