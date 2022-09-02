@implementation CCFadeTo

+(void *)actionWithDuration:(double)arg2 opacity:(unsigned char)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 opacity:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 opacity:(unsigned char)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithDuration:r2];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_toOpacity = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:*(int8_t *)(int64_t *)&self->_toOpacity opacity:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    *(int8_t *)(int64_t *)&self->_fromOpacity = [self->_target opacity];
    return;
}

-(void)update:(double)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    r8 = *(self + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_fromOpacity));
    asm { ucvtf      d1, w9 };
    asm { scvtf      d2, w9 };
    asm { fcvtzs     w2, d0 };
    [r8 setOpacity:r2];
    return;
}

@end