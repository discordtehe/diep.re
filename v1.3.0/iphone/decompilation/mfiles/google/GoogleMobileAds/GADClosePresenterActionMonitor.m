@implementation GADClosePresenterActionMonitor

-(void *)initWithPresenter:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x110;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r29 - 0x70 super] init];
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_presenter, r19);
            objc_initWeak(r29 - 0x78, r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c318 object:r20 queue:r26 usingBlock:&var_A0];
            [r26 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r26 addObserverForName:*0x100e9c260 object:r20 queue:r27 usingBlock:&var_C8];
            [r27 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r26 addObserverForName:*0x100e9c450 object:r20 queue:r27 usingBlock:&var_F0];
            [r27 release];
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(r29 - 0x78);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleCloseNotification {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_presenter);
    if (r19 != 0x0) {
            sub_1008b4218();
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_presenter);
    return;
}

@end