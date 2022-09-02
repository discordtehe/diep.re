@implementation ADCMessageHandler

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setTarget:r19];
            [r20 setSelector:r21];
            r0 = r20->_target;
            r0 = [r0 methodSignatureForSelector:r20->_selector];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r21 = [[NSString stringWithCString:[r0 methodReturnType] encoding:0x4] retain];
            [r0 numberOfArguments];
            [r21 release];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)handlerWithTarget:(void *)arg2 selector:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [[ADCMessageHandler alloc] initWithTarget:r22 selector:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_target, arg2);
    return;
}

-(void *)target {
    r0 = self->_target;
    return r0;
}

-(void *)selector {
    r0 = self->_selector;
    return r0;
}

-(void)setSelector:(void *)arg2 {
    self->_selector = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_target, 0x0);
    return;
}

@end