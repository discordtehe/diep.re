@implementation FBAdTouchPassthroughView

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_passthroughView);
    return;
}

-(void *)passthroughView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_passthroughView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)hitTest:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [r2 retain];
    r0 = [[&var_50 super] hitTest:r19 withEvent:r3];
    r20 = [r0 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 respondsToSelector:@selector(passthroughViewDidTouch:)];
    if (r19 != 0x0 && r0 != 0x0) {
            [r22 passthroughViewDidTouch:r19];
    }
    if (r20 != r21) {
            r0 = [r20 retain];
    }
    else {
            r0 = [r21 passthroughView];
            r0 = [r0 retain];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPassthroughView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_passthroughView, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdTouchPassthroughView");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end