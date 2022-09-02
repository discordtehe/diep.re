@implementation FBAdWeakProxy

-(void *)forwardingTargetForSelector:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r0 = [r0 autorelease];
    return r0;
}

-(void)forwardInvocation:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = objc_loadWeakRetained((int64_t *)&self->_object);
    [r20 invokeWithTarget:r19];
    [r20 release];
    [r19 release];
    return;
}

-(void *)methodSignatureForSelector:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 methodSignatureForSelector:r20];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            snprintf(r31 - 0x10, 0x2, "%s%s", r3, r4);
            r0 = [NSMethodSignature signatureWithObjCTypes:r20];
            r29 = r29;
            r20 = [r0 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)respondsToSelector:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r19 = [r0 respondsToSelector:r2];
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)conformsToProtocol:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r21 = [r0 conformsToProtocol:r20];
    [r20 release];
    [r0 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_object);
    return;
}

-(bool)isKindOfClass:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_object);
    r19 = [r0 isKindOfClass:r2];
    [r0 release];
    r0 = r19;
    return r0;
}

+(void *)proxyForObject:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0 && object_getClass(r19) != [FBAdWeakProxy class]) {
            r0 = [FBAdWeakProxy new];
            r20 = r0;
            if (r0 != 0x0) {
                    objc_storeWeak((int64_t *)&r20->_object, r19);
            }
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)unwrapProxy:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0 && object_getClass(r19) == [FBAdWeakProxy class]) {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_object);
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

@end