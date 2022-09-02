@implementation CCActionInterval

-(void *)init {
    [self release];
    return 0x0;
}

+(void *)actionWithDuration:(double)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
            if (d8 == 0x0) {
                    asm { fcsel      d0, d0, d8, eq };
            }
            *(r0 + r8) = 0x3e80000000000000;
            r0->_elapsed = 0x0;
            *(int8_t *)(int64_t *)&r0->_firstTick = 0x1;
    }
    return r0;
}

-(bool)isDone {
    r0 = self;
    if (r0->_elapsed >= r0->_duration) {
            if (CPU_FLAGS & GE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2];
    return r0;
}

-(void)step:(double)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_firstTick));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            *(int8_t *)(r0 + r8) = 0x0;
            r0->_elapsed = 0x0;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_elapsed));
            *(r0 + r8) = *(r0 + r8) + d0;
    }
    d1 = r0->_duration;
    asm { fmaxnm     d1, d1, d2 };
    asm { fdiv       d1, d0, d1 };
    [r0 update:r2];
    return;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    self->_elapsed = 0x0;
    *(int8_t *)(int64_t *)&self->_firstTick = 0x1;
    return;
}

-(void *)reverse {
    return 0x0;
}

-(double)elapsed {
    r0 = self;
    return r0;
}

-(void)setAmplitudeRate:(double)arg2 {
    [NSException raise:@"IntervalAction (Amplitude)" format:@"Abstract class needs implementation"];
    return;
}

-(double)getAmplitudeRate {
    r0 = [NSException raise:@"IntervalAction (Amplitude)" format:@"Abstract class needs implementation"];
    return r0;
}

@end