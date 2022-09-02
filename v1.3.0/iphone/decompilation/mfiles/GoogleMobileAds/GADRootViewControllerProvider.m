@implementation GADRootViewControllerProvider

-(void)updateViewController:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_intermissionInProgress != 0x0) {
            r0 = (int64_t *)&r19->_nextViewController;
            r1 = r2;
    }
    else {
            objc_storeWeak((int64_t *)&r19->_rootViewController, r2);
            r0 = (int64_t *)&r19->_nextViewController;
            r1 = 0x0;
    }
    objc_storeWeak(r0, r1);
    return;
}

-(void *)topViewController {
    r19 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r20 = [sub_10089aaf8() retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)updateIntermissionInProgress:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_intermissionInProgress = arg2;
    return;
}

-(void)registerIntermissionMessageSource:(void *)arg2 {
    [arg2 retain];
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_intermissionObservers));
    r8 = *(self + r25);
    *(self + r25) = r0;
    [r8 release];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    [r23 addObserverForName:*0x100e9c148 object:r19 queue:0x0 usingBlock:&var_80];
    objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
    [r23 addObserverForName:*0x100e9c158 object:r19 queue:0x0 usingBlock:&var_A8];
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    [r19 release];
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_nextViewController);
    objc_storeStrong((int64_t *)&self->_intermissionObservers, 0x0);
    return;
}

@end