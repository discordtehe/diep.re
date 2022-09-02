@implementation VNGMoatWeakTimerHandler

-(void *)initWithObject:(void *)arg2 selector:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setObject:r20];
            [r21 setSelector:r2];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)handleTimer:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r20 object] retain];
            [r20 selector];
            [r21 performSelector:r2];
            [r21 release];
    }
    else {
            if ([r19 isValid] != 0x0) {
                    [r19 invalidate];
            }
    }
    [r19 release];
    return;
}

-(void *)selector {
    r0 = self->_selector;
    return r0;
}

-(void *)object {
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_object, arg2);
    return;
}

-(void)setSelector:(void *)arg2 {
    self->_selector = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_object);
    return;
}

@end