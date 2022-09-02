@implementation TJYMoatDecorator

-(void *)initWithNested:(void *)arg2 implementing:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setNested:r19];
            [r21 setDecoratedProtocol:r20];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)logRecursionWarningIfNotAlreadyLogged {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self detectedRecursion] & 0x1) == 0x0) {
            [r19 setDetectedRecursion:0x1];
            r0 = [r19 decoratedProtocol];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r20 = [[r19 nested] retain];
                    r21 = [[r19 decoratedProtocol] retain];
                    r0 = [TJYMoatCoreUtil findObjectReferencingObject:r20 wrappee:r19 aProtocol:r21];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
                    [r20 release];
                    if (r22 == 0x0) {
                            r22 = [[r19 nested] retain];
                    }
            }
            else {
                    r22 = [[r19 nested] retain];
            }
            [r22 release];
    }
    return;
}

-(bool)respondsToSelector:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = self;
    r0 = [[&var_40 super] respondsToSelector:r2];
    if ((r0 & 0x1) == 0x0) goto loc_10096c6d4;

loc_10096c6cc:
    r21 = 0x1;
    goto loc_10096c764;

loc_10096c764:
    r0 = r21 & 0x1;
    return r0;

loc_10096c6d4:
    if (([r19 recursionFlag_respondsToSelector] & 0x1) == 0x0) goto loc_10096c700;

loc_10096c6e8:
    [r19 logRecursionWarningIfNotAlreadyLogged];
    r21 = 0x0;
    goto loc_10096c764;

loc_10096c700:
    r22 = @selector(respondsToSelector:);
    [r19 setRecursionFlag_respondsToSelector:0x1];
    r0 = [r19 nested];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r22);
    [r0 release];
    [r19 setRecursionFlag_respondsToSelector:0x0];
    if (0x0 == 0x0) {
            r0 = r21 & 0x1;
    }
    else {
            r0 = objc_exception_rethrow();
    }
    return r0;
}

-(bool)detectedRecursion {
    r0 = *(int8_t *)(int64_t *)&self->_detectedRecursion & 0x1;
    return r0;
}

-(void)forwardInvocation:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 recursionFlag_forwardInvocation] & 0x1) != 0x0) {
            [r20 logRecursionWarningIfNotAlreadyLogged];
    }
    else {
            [r20 setRecursionFlag_forwardInvocation:0x1];
            r0 = [r20 nested];
            r29 = r29;
            r22 = [r0 retain];
            [r19 selector];
            r23 = [r22 respondsToSelector:r2];
            [r22 release];
            if (r23 != 0x0) {
                    r21 = [[r20 nested] retain];
                    [r19 invokeWithTarget:r21];
                    [r21 release];
            }
    }
    [r20 setRecursionFlag_forwardInvocation:0x0];
    if (0x0 == 0x0) {
            [r19 release];
    }
    else {
            objc_exception_rethrow();
    }
    return;
}

-(void)setDetectedRecursion:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_detectedRecursion = arg2;
    return;
}

-(void *)nested {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nested);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)decoratedProtocol {
    r0 = self->_decoratedProtocol;
    return r0;
}

-(void)setNested:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nested, arg2);
    return;
}

-(void)setDecoratedProtocol:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_decoratedProtocol));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(bool)recursionFlag_respondsToSelector {
    r0 = *(int8_t *)(int64_t *)&self->_recursionFlag_respondsToSelector & 0x1;
    return r0;
}

-(void)setRecursionFlag_respondsToSelector:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_recursionFlag_respondsToSelector = arg2;
    return;
}

-(bool)recursionFlag_forwardInvocation {
    r0 = *(int8_t *)(int64_t *)&self->_recursionFlag_forwardInvocation & 0x1;
    return r0;
}

-(void)setRecursionFlag_forwardInvocation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_recursionFlag_forwardInvocation = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_decoratedProtocol, 0x0);
    objc_destroyWeak((int64_t *)&self->_nested);
    return;
}

@end