@implementation GADOrientationMonitor

-(void *)initWithAdView:(void *)arg2 viewController:(void *)arg3 {
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
            objc_storeWeak((int64_t *)&r21->_viewController, r20);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            objc_initWeak(&stack[-136], r21);
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r24 addObserverForName:*0x100e9c128 object:r20 queue:0x0 usingBlock:&var_A0];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r24 addObserverForName:*0x100e9c2e0 object:r19 queue:r26 usingBlock:&var_C8];
            [r26 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_viewController);
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleForceOrientationAction:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r23 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r20 = [[r19 objectForKeyedSubscript:*0x100e953f0] retain];
    r21 = [[r19 objectForKeyedSubscript:*0x100e953e8] retain];
    r22 = [[r19 objectForKeyedSubscript:*0x100e953f8] retain];
    r24 = sub_10088cd4c();
    if (r24 != 0x0) {
            r23 = objc_loadWeakRetained((int64_t *)&r23->_viewController);
            if (r23 != 0x0) {
                    r25 = [r21 boolValue];
                    if ((sub_10088c71c([r23 adOrientations]) & 0x1) == 0x0 && (r25 & 0x1) == 0x0 && [r23 adOrientations] != 0x0) {
                            [r23 adOrientations];
                            sub_1007ce06c(0x0, @"Not overriding previous orientation %ld set on the view controller.");
                    }
                    else {
                            [r23 setAdOrientationsOverridesLockedOrientation:r25];
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    [r22 floatValue];
                                    asm { fcvt       d0, s0 };
                            }
                            [r23 setOrientationUpdateAnimationDuration:@selector(floatValue)];
                            [r23 setAdOrientations:r24];
                    }
            }
            [r23 release];
    }
    else {
            sub_1007ce06c(0x0, @"Orientation action ran with empty or unsupported orientation value %@.");
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleOrientationDidChangeNotification:(long long)arg2 {
    r2 = arg2;
    r1 = _cmd;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastOrientation));
    if (*(r19 + r8) != r2) {
            *(r19 + r8) = r2;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_orientationNotifiedToTheAdViewAtLeastOnce));
            if (*(int8_t *)(r19 + r22) == 0x0) {
                    if (CPU_FLAGS & E) {
                            r1 = 0x1;
                    }
            }
            r20 = [sub_10088ce6c(r2, r1) retain];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_adView);
            [r0 asyncEvaluateScript:r20];
            *(int8_t *)(r19 + r22) = 0x1;
            [r0 release];
            [r20 release];
    }
    return;
}

@end