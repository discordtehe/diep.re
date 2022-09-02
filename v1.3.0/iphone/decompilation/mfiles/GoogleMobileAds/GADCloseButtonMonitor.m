@implementation GADCloseButtonMonitor

-(void *)initWithCloseButton:(void *)arg2 closeButtonContainerView:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_closeButton, r24);
            [r21->_closeButton addTarget:r21 action:@selector(closeButtonPressed:) forControlEvents:0x40];
            objc_storeWeak((int64_t *)&r21->_closeButtonContainerView, r20);
            [r20 addSubview:r21->_closeButton];
            [r21 positionCloseButton];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r21);
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r24 addObserverForName:*0x100e9c6b0 object:r22 queue:0x0 usingBlock:&var_80];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)closeButtonPressed:(void *)arg2 {
    sub_1008833e8(*0x100e9c6a8, self->_closeButton, 0x0);
    return;
}

-(void)positionCloseButton {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_closeButtonContainerView);
    if (r19 != 0x0) {
            r20 = r20->_closeButton;
            sub_100889958(r20, r19, [r20 preferredPosition]);
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_closeButtonContainerView);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end