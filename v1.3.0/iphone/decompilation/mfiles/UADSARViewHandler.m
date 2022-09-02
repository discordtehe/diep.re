@implementation UADSARViewHandler

-(bool)create:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 arView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r21 = [UADSARView alloc];
            r22 = [[r19 view] retain];
            [r20 getRect:r22];
            r21 = [r21 initWithFrame:r22];
            [r20 setArView:r21];
            [r21 release];
            [r22 release];
    }
    [r19 release];
    return 0x1;
}

-(void *)getView {
    r0 = self->_arView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)destroy {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self arView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 arView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r20 release];
    }
    [r19 setArView:0x0];
    return 0x1;
}

-(void)viewDidLoad:(void *)arg2 {
    return;
}

-(void)viewDidAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillDisappear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewDidDisappear:(void *)arg2 animated:(bool)arg3 {
    [self destroy];
    return;
}

-(void *)arView {
    r0 = self->_arView;
    return r0;
}

-(void)setArView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_arView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_arView, 0x0);
    return;
}

@end