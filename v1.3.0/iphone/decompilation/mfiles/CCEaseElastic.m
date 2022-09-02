@implementation CCEaseElastic

+(void *)actionWithAction:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 period:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)actionWithAction:(void *)arg2 period:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithAction:arg2 period:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAction:(void *)arg2 {
    r0 = [self initWithAction:arg2 period:r3];
    return r0;
}

-(void *)initWithAction:(void *)arg2 period:(float)arg3 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithAction:arg2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_period = s8;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[[self class] allocWithZone:arg2] initWithAction:[[self->_inner copy] autorelease] period:r3];
    return r0;
}

-(void *)reverse {
    return 0x0;
}

-(float)period {
    r0 = self;
    return r0;
}

-(void)setPeriod:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_period = s0;
    return;
}

@end