@implementation TJFLWeakProxy

+(void *)weakProxyForObject:(void *)arg2 {
    [arg2 retain];
    r0 = [TJFLWeakProxy alloc];
    [r0 setTarget:r2];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)forwardingTargetForSelector:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_target);
    r0 = [r0 autorelease];
    return r0;
}

-(void)forwardInvocation:(void *)arg2 {
    [arg2 setReturnValue:&var_8];
    return;
}

-(void *)methodSignatureForSelector:(void *)arg2 {
    r0 = [NSObject instanceMethodSignatureForSelector:@selector(init)];
    return r0;
}

-(void *)target {
    r0 = objc_loadWeakRetained((int64_t *)&self->_target);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_target, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_target);
    return;
}

@end