@implementation GADMainWindowView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            objc_initWeak(&stack[-72], r19);
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r21 addObserverForName:r22 object:0x0 queue:0x0 usingBlock:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    [self release];
    return 0x0;
}

-(void)didMoveToWindow {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self window];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 moveToMainWindow];
    }
    return;
}

-(void *)hitTest:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    return 0x0;
}

-(void)moveToMainWindow {
    r0 = sub_10089a8cc();
    r0 = [r0 retain];
    [r0 insertSubview:self atIndex:0x0];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end