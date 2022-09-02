@implementation GADViewVisibilityMonitor

-(void *)initWithView:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x1d0;
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
    r28 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[r29 - 0x70 super] init];
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r20);
            *(r21 + r20) = r0;
            [r8 release];
            var_1B8 = r19;
            objc_storeWeak((int64_t *)&r21->_messageSource, r19);
            r0 = sub_100860a2c("com.google.admob.n.visibility-monitor", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b888];
            [r0 release];
            objc_initWeak(r29 - 0x98, r21);
            r0 = @class(NSOperationQueue);
            r0 = [r0 mainQueue];
            [r0 retain];
            objc_copyWeak((r29 - 0xc0) + 0x20, r29 - 0x98);
            [r24 addObserverForName:r27 object:0x0 queue:r26 usingBlock:r29 - 0xc0];
            [r26 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 mainQueue];
            [r0 retain];
            objc_copyWeak(&var_E8 + 0x20, r29 - 0x98);
            [r24 addObserverForName:r27 object:0x0 queue:r26 usingBlock:&var_E8];
            [r26 release];
            objc_copyWeak(&var_110 + 0x20, r29 - 0x98);
            [r26 addObserverForName:*0x100e9c0e0 object:r28 queue:0x0 usingBlock:&var_110];
            objc_copyWeak(&var_138 + 0x20, r29 - 0x98);
            [r27 addObserverForName:*0x100e9c0e8 object:r23 queue:0x0 usingBlock:&var_138];
            objc_copyWeak(&var_160 + 0x20, r29 - 0x98);
            [r28 addObserverForName:*0x100e9c0f0 object:r23 queue:0x0 usingBlock:&var_160];
            r28 = r23;
            var_180 = [r21 retain];
            objc_copyWeak(&var_1A0 + 0x38, r29 - 0x98);
            var_178 = [r28 retain];
            sub_100860a80();
            [var_178 release];
            objc_destroyWeak(&var_1A0 + 0x38);
            [var_180 release];
            objc_destroyWeak(&var_160 + 0x20);
            objc_destroyWeak(&var_138 + 0x20);
            objc_destroyWeak(&var_110 + 0x20);
            objc_destroyWeak(&var_E8 + 0x20);
            objc_destroyWeak((r29 - 0xc0) + 0x20);
            objc_destroyWeak(r29 - 0x98);
            _Block_object_dispose(r29 - 0x90, 0x8);
            r19 = var_1B8;
    }
    [r19 release];
    [r28 release];
    r0 = r21;
    return r0;
}

-(void)registerOverlayViewObservers:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-120], self);
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_90 + 0x20, &stack[-120]);
    [r24 addObserverForName:*0x100e9c060 object:r19 queue:r25 usingBlock:&var_90];
    [r25 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
    [r21 addObserverForName:*0x100e9c068 object:r19 queue:r24 usingBlock:&var_B8];
    [r24 release];
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak(&var_90 + 0x20);
    objc_destroyWeak(&stack[-120]);
    [r19 release];
    return;
}

-(void)dealloc {
    [[self->_updateVisibilityStatusScheduler retain] retain];
    sub_100860a80();
    [r0 release];
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void)setView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_monitoredView, arg2);
    var_18 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_38);
    [var_18 release];
    return;
}

-(void)updateVisibilityStatus {
    r1 = _cmd;
    r31 = r31 - 0x190;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r21 = self;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r19 = objc_loadWeakRetained((int64_t *)&r21->_messageSource);
    if (r19 != 0x0) {
            r20 = objc_loadWeakRetained((int64_t *)&r21->_monitoredView);
            if (r20 != 0x0) {
                    r0 = sub_100889214();
                    r8 = *_CGRectZero;
                    d13 = *(int128_t *)r8;
                    d15 = *(int128_t *)(r8 + 0x8);
                    d12 = *(int128_t *)(r8 + 0x10);
                    d14 = *(int128_t *)(r8 + 0x18);
                    var_178 = d1;
                    var_170 = d0;
                    var_188 = d3;
                    var_180 = d2;
                    r22 = CGRectEqualToRect(r0, r1) ^ 0x1;
                    [r21->_updateVisibilityStatusScheduler start];
            }
            else {
                    r8 = *_CGRectZero;
                    d12 = *(int128_t *)(r8 + 0x10);
                    d14 = *(int128_t *)(r8 + 0x18);
                    d13 = *(int128_t *)r8;
                    d15 = *(int128_t *)(r8 + 0x8);
                    [r21->_updateVisibilityStatusScheduler stop];
                    r22 = 0x0;
                    var_178 = d15;
                    var_170 = d13;
                    var_188 = d14;
                    var_180 = d12;
            }
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_overlayShown));
            r8 = *(int8_t *)(r21 + r26);
            if (r8 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r22 = r22 & r8;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewVisible));
            r9 = *(int8_t *)(r21 + r8);
            *(int8_t *)(r21 + r8) = r22;
            if (r22 != r9) {
                    *(r29 + 0xffffffffffffff48) = @"visible";
                    r27 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r25 = [[*(r27 + 0xfc0) numberWithBool:r22] retain];
                    *(int128_t *)(r29 + 0xffffffffffffff50) = @"overlayShown";
                    *(int128_t *)(r29 + 0xffffffffffffff58) = r25;
                    *(r29 + 0xffffffffffffff60) = [[*(r27 + 0xfc0) numberWithBool:*(int8_t *)(r21 + r26)] retain];
                    r3 = r29 - 0xb8;
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    sub_1008833e8(*0x100e9c030, r19, [r0 retain]);
                    [r26 release];
                    [r24 release];
                    [r25 release];
            }
            [r20 bounds];
            r0 = [r20 window];
            r29 = r29;
            r23 = [r0 retain];
            v0 = v0;
            v1 = v1;
            v2 = v2;
            v3 = v3;
            [r20 convertRect:0x0 toView:r3];
            if (r23 != 0x0) {
                    [r23 bounds];
            }
            r0 = sub_1008897d8(r20);
            r29 = r29;
            r24 = [r0 retain];
            if (r23 != 0x0 && ([r23 isHidden] & 0x1) == 0x0) {
                    r0 = [r23 screen];
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r25 != 0x0) {
                            r0 = [UIApplication sharedApplication];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            if ([r0 applicationState] == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r27 = 0x1;
                                    }
                            }
                            [r26 release];
                            [r25 release];
                    }
                    else {
                            r27 = 0x0;
                    }
            }
            else {
                    r27 = 0x0;
            }
            r25 = r21->_lockQueue;
            [r24 retain];
            var_140 = [r21 retain];
            var_138 = [r19 retain];
            dispatch_async(r25, &var_168);
            [var_138 release];
            [var_140 release];
            [r24 release];
            [r22 release];
            [r23 release];
            [r20 release];
    }
    else {
            [r21->_updateVisibilityStatusScheduler stop];
    }
    [r19 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_previousViewabilityDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_destroyWeak((int64_t *)&self->_monitoredView);
    objc_storeStrong((int64_t *)&self->_updateVisibilityStatusScheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end