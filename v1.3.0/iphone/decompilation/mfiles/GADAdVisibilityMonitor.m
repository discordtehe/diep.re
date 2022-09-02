@implementation GADAdVisibilityMonitor

-(void *)initWithAd:(void *)arg2 messageSource:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_ad, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r21);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r23 addObserverForName:*0x100e9c030 object:r20 queue:0x0 usingBlock:&var_70];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end