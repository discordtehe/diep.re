@implementation CCCallFuncND

+(void *)actionWithTarget:(void *)arg2 selector:(void *)arg3 data:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3 data:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithTarget:self->_targetCallback selector:self->_selector data:self->_data];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 data:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] initWithTarget:r2 selector:r3];
    r22 = r0;
    if (r0 != 0x0) {
            r22->_data = r21;
            r22->_callbackMethod = [r20 methodForSelector:r19];
    }
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)execute {
    r0 = self;
    if (r0->_selector != 0x0) {
            (r0->_callbackMethod)(*(r0 + sign_extend_64(*(int32_t *)ivar_offset(_targetCallback))));
    }
    return;
}

-(void)setCallbackMethod:(void * *)arg2 {
    self->_callbackMethod = arg2;
    return;
}

-(void * *)callbackMethod {
    r0 = self->_callbackMethod;
    return r0;
}

@end