@implementation CCActionTween

+(void *)actionWithDuration:(double)arg2 key:(void *)arg3 from:(float)arg4 to:(float)arg5 {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 initWithDuration:arg2 key:arg3 from:arg4 to:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 key:(void *)arg3 from:(float)arg4 to:(float)arg5 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_key = [r19 copy];
            *(int32_t *)(int64_t *)&r20->_to = s9;
            *(int32_t *)(int64_t *)&r20->_from = s8;
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->_key release];
    [[&var_20 super] dealloc];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    *(int32_t *)(int64_t *)&self->_delta = *(int32_t *)(int64_t *)&self->_to - *(int32_t *)(int64_t *)&self->_from;
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r19 = self;
    r20 = self->_target;
    r0 = @class(NSNumber);
    asm { fcvt       d1, s1 };
    asm { fcvt       d2, s2 };
    asm { fcvt       s0, d0 };
    [r20 setValue:[r0 numberWithFloat:r2] forKey:r19->_key];
    return;
}

-(void *)reverse {
    r0 = [self class];
    r0 = [r0 actionWithDuration:self->_key key:r3 from:r4 to:r5];
    return r0;
}

@end