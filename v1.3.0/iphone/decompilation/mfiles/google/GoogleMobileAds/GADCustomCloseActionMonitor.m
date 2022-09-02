@implementation GADCustomCloseActionMonitor

-(void *)initWithCloseButton:(void *)arg2 messageSource:(void *)arg3 customCloseBlocked:(bool)arg4 {
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
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_closeButton, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r21->_customCloseBlocked = r22;
            objc_storeWeak((int64_t *)&r21->_messageSource, r20);
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c2e8 object:r20 queue:r24 usingBlock:&var_80];
            [r24 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleUpdateCustomCloseAction:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95340];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e953a8] retain];
    [r0 release];
    [r21 release];
    if (r20 != 0x0) {
            r21 = [r20 boolValue];
            if ((r21 & 0x1) != 0x0 && *(int8_t *)(int64_t *)&r19->_customCloseBlocked != 0x0) {
                    r19 = objc_loadWeakRetained((int64_t *)&r19->_messageSource);
                    sub_1008833e8(*0x100e9c468, r19, 0x0);
            }
            else {
                    r0 = objc_loadWeakRetained((int64_t *)&r19->_closeButton);
                    r19 = r0;
                    [r0 setUseCustomCloseImage:r21];
            }
            [r19 release];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_destroyWeak((int64_t *)&self->_closeButton);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end