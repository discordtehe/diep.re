@implementation CCJitter

+(void *)actionWithDuration:(double)arg2 maxJitter:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 maxJitter:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 maxJitter:(float)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithDuration:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            s0 = -s8;
            if (s8 < 0x0) {
                    asm { fcsel      s0, s0, s8, mi };
            }
            *(int32_t *)(int64_t *)&r19->maxJitter = s0;
            sub_1002fbd80((int64_t *)&r19->_generator, std::__1::chrono::system_clock::now());
    }
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:arg2 maxJitter:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->_target position];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(startPosition));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0->_target;
    r22 = (int64_t *)&r0->startPosition;
    d8 = *r22;
    if (d0 < 0x3ff0000000000000) {
            sub_1002fbfec((int64_t *)&r0->_generator);
            asm { fcvt       d0, s0 };
            sub_1002fbfec(r21);
            asm { fcvt       d0, s0 };
    }
    [r19 setPosition:r2];
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(int32_t *)(int64_t *)&r0->_generator = 0x1;
    return r0;
}

@end