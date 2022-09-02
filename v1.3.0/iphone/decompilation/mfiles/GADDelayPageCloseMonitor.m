@implementation GADDelayPageCloseMonitor

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
            r22 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_ad, r19);
            objc_initWeak(&stack[-88], r21);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r23 addObserverForName:*0x100e9c338 object:r20 queue:0x0 usingBlock:&var_70];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleDelayPageCloseTimeout:(long long)arg2 {
    r0 = self;
    if (r0->_timeoutIdentifier == arg2) {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_strongAd));
            r8 = *(r0 + r9);
            *(r0 + r9) = 0x0;
            [r8 release];
    }
    return;
}

-(void)handleDelayPageCloseNotification:(void *)arg2 {
    r31 = r31 - 0x90;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"stop"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if (r24 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_strongAd));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
            [r0 release];
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"start"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 boolValue];
            [r0 release];
            if (r22 != 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_strongAd));
                    if (*(r20 + r21) == 0x0) {
                            r0 = objc_loadWeakRetained((int64_t *)&r20->_ad);
                            r8 = *(r20 + r21);
                            *(r20 + r21) = r0;
                            [r8 release];
                            r0 = [GADSettings sharedInstance];
                            r0 = [r0 retain];
                            [r0 doubleForKey:r2];
                            [r21 release];
                            asm { fcvtzs     x1, d0 };
                            dispatch_time(0x0, r1);
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_timeoutIdentifier));
                            *(r20 + r8) = *(r20 + r8) + 0x1;
                            objc_initWeak(&stack[-88], r20);
                            objc_copyWeak(&var_78 + 0x20, &stack[-88]);
                            dispatch_after(r21, *__dispatch_main_q, &var_78);
                            objc_destroyWeak(&var_78 + 0x20);
                            objc_destroyWeak(&stack[-88]);
                    }
            }
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_strongAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end