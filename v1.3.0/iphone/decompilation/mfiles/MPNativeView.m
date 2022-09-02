@implementation MPNativeView

-(void)willMoveToSuperview:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeViewWillMoveToSuperview:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end