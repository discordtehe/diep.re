@implementation GADPresentationMonitor

-(void *)initWithAdView:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_70 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_adView, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            objc_initWeak(&stack[-136], r21);
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r24 addObserverForName:*0x100e9c108 object:r20 queue:0x0 usingBlock:&var_A0];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c110 object:r20 queue:0x0 usingBlock:&var_C8];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handlePresenterDidPresentNotification {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    [r0 dispatchSDKEvent:@"onshow" parameters:0x0];
    [r0 release];
    return;
}

-(void)handlePresenterWillDismissNotification {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    [r0 dispatchSDKEvent:@"onhide" parameters:0x0];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end