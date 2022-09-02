@implementation GADStatusBarMonitor

-(void *)initWithViewController:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_viewController, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r20);
            r0 = [NSOperationQueue mainQueue];
            [r0 retain];
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r21 addObserverForName:r24 object:0x0 queue:r23 usingBlock:&var_70];
            [r23 release];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_viewController);
    return;
}

-(void)updateStatusBar {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_loadWeakRetained((int64_t *)&self->_viewController);
    r19 = r0;
    r0 = [r0 presentingViewController];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_1008b2dec();
    }
    [r19 release];
    return;
}

@end