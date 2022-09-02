@implementation CCEaseRateAction

+(void *)actionWithAction:(void *)arg2 rate:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 rate:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 rate:(float)arg3 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r0 = [[&var_30 super] initWithAction:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setRate:r2];
    }
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_inner copy] autorelease] rate:r3];
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)reverse {
    r20 = [self class];
    [self->_inner reverse];
    asm { fdiv       s0, s1, s0 };
    r0 = [r20 actionWithAction:r2 rate:r3];
    return r0;
}

-(float)rate {
    r0 = self;
    return r0;
}

-(void)setRate:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_rate = s0;
    return;
}

@end