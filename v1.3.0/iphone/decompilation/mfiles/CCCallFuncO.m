@implementation CCCallFuncO

+(void *)actionWithTarget:(void *)arg2 selector:(void *)arg3 object:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3 object:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 object:(void *)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r0 = [[&var_20 super] initWithTarget:arg2 selector:arg3];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setObject:r19];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->_object release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithTarget:self->_targetCallback selector:self->_selector object:self->_object];
    return r0;
}

-(void)execute {
    r0 = self;
    if (r0->_selector != 0x0) {
            [*(r0 + sign_extend_64(*(int32_t *)ivar_offset(_targetCallback))) performSelector:r2 withObject:r3];
    }
    return;
}

-(void *)object {
    r0 = self->_object;
    return r0;
}

-(void)setObject:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end