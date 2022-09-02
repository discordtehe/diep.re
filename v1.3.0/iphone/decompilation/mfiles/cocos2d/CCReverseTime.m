@implementation CCReverseTime

+(void *)actionWithAction:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 duration];
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_other));
            [*(r20 + r21) release];
            *(r20 + r21) = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_other copy] autorelease]];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_other startWithTarget:self->_target];
    return;
}

-(void)dealloc {
    [self->_other release];
    [[&var_20 super] dealloc];
    return;
}

-(void)stop {
    [self->_other stop];
    [[&var_20 super] stop];
    return;
}

-(void)update:(double)arg2 {
    [self->_other update:r2];
    return;
}

-(void *)reverse {
    r0 = self->_other;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

@end