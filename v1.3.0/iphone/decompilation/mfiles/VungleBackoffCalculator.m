@implementation VungleBackoffCalculator

-(void)increaseAttempts {
    [self setAttemptCount:[self attemptCount] + 0x1];
    return;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = 0x0;
    }
    return r0;
}

-(void)resetAttempts {
    [self setAttemptCount:0x0];
    return;
}

-(unsigned long long)backoffTime {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self backoffOverride] != 0x0) {
            r0 = [r19 backoffOverride];
    }
    else {
            r0 = [r19 attemptCount];
            asm { ucvtf      d0, x0 };
            r0 = exp2(r0);
            asm { fcvtzu     w0, d0 };
            r0 = arc4random_uniform(r0);
            asm { ucvtf      d0, w0 };
            asm { fmaxnm     d0, d0, d1 };
            asm { fminnm     d0, d0, d1 };
            asm { fcvtzu     x0, d0 };
    }
    return r0;
}

-(unsigned long long)attemptCount {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setAttemptCount:(unsigned long long)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(unsigned long long)backoffOverride {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setBackoffOverride:(unsigned long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

@end