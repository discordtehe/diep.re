@implementation CCBlink

+(void *)actionWithDuration:(double)arg2 blinks:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 blinks:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 blinks:(unsigned long long)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] initWithDuration:r2];
    if (r0 != 0x0) {
            r0->_times = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:self->_times blinks:r3];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:r2];
    *(int8_t *)(int64_t *)&self->_originalState = [arg2 visible];
    return;
}

-(void)stop {
    [self->_target setVisible:*(int8_t *)(int64_t *)&self->_originalState];
    [[&var_20 super] stop];
    return;
}

-(void)update:(double)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isDone];
    if ((r0 & 0x1) == 0x0) {
            r1 = @selector(isDone);
            asm { ucvtf      s0, x8 };
            asm { fdiv       s1, s1, s0 };
            asm { fcvt       d9, s1 };
            asm { fcvt       s0, d8 };
            fmodf(r0, r1);
            asm { fcvt       d0, s0 };
            r0 = r19->_target;
            if (d9 * 0x3fe0000000000000 < d0) {
            }
            [r0 setVisible:r2];
    }
    return;
}

-(void *)reverse {
    r0 = [self class];
    r0 = [r0 actionWithDuration:self->_times blinks:r3];
    return r0;
}

@end