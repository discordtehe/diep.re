@implementation Callback

+(void *)getCallback {
    r0 = [Callback object];
    return r0;
}

+(void *)getCallback:(void *)arg2 target:(void *)arg3 parameter:(void *)arg4 {
    r0 = [self callbackWithSelector:arg2 target:arg3 parameter:arg4];
    return r0;
}

+(void *)callbackWithSelector:(void *)arg2 target:(void *)arg3 parameter:(void *)arg4 {
    r0 = [Callback object];
    [r0 setSelector:arg2];
    [r0 setTarget:arg3];
    [r0 setParameter:arg4];
    r0 = r0;
    return r0;
}

-(void)dealloc {
    [self setTarget:0x0];
    [self setParameter:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)execute {
    r0 = self;
    if (*(r0 + 0x8) != 0x0) {
            r8 = r0;
            r0 = *(r0 + 0x10);
            if (r0 != 0x0) {
                    if (*(r8 + 0x18) != 0x0) {
                            [r0 performSelector:r2 withObject:r3];
                    }
                    else {
                            [r0 performSelector:r2];
                    }
            }
    }
    return;
}

-(void)executeWithParameter:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r0 = [self parameter];
    if (r0 != 0x0) {
            [r0 retain];
            [r19 setParameter:r21];
            [r19 execute];
            [r19 setParameter:r0];
            [r0 release];
    }
    else {
            [r19 setParameter:r21];
            [r19 execute];
            [r19 setParameter:0x0];
    }
    return;
}

-(void *)selector {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setSelector:(void *)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void *)target {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)parameter {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setParameter:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end