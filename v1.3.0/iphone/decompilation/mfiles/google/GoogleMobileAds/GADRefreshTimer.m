@implementation GADRefreshTimer

-(void *)initWithRefreshInterval:(double)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x100;
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
    r20 = [[r29 - 0x70 super] init];
    if (r20 != 0x0) {
            r20->_refreshInterval = d8;
            r0 = sub_100860a2c("com.google.admob.n.refresh-timer", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b720];
            [r0 release];
            if (d9 > d8) {
                    *(int8_t *)(int64_t *)&r20->_isInvalid = 0x1;
            }
            if (r19 != 0x0) {
                    r21 = @selector(init);
                    r0 = [GADObserverCollection alloc];
                    r0 = objc_msgSend(r0, r21);
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
                    r8 = *(r20 + r26);
                    *(r20 + r26) = r0;
                    [r8 release];
                    objc_initWeak(&stack[-136], r20);
                    objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
                    [r22 addObserverForName:*0x100e9bff8 object:r19 queue:0x0 usingBlock:&var_A0];
                    objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
                    [r24 addObserverForName:*0x100e9c000 object:r19 queue:0x0 usingBlock:&var_C8];
                    objc_copyWeak(&var_F0 + 0x20, &stack[-136]);
                    [r25 addObserverForName:*0x100e9c470 object:r19 queue:0x0 usingBlock:&var_F0];
                    objc_destroyWeak(&var_F0 + 0x20);
                    objc_destroyWeak(&var_C8 + 0x20);
                    objc_destroyWeak(&var_A0 + 0x20);
                    objc_destroyWeak(&stack[-136]);
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setRefreshHandler:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)start {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)startInternal {
    r0 = self;
    r0->_remainingTimeInterval = r0->_refreshInterval;
    if (*(int8_t *)(int64_t *)&r0->_isPaused == 0x0) {
            [r0 resumeInternal];
    }
    return;
}

-(void)resume {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)resumeInternal {
    r1 = _cmd;
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_isPaused = 0x0;
    if (*(int8_t *)(int64_t *)&r19->_isStarted != 0x0) {
            sub_1008b9904();
            r19->_resumeTimestamp = d0;
            asm { fcvtzs     x1, d0 };
            dispatch_time(0x0, r1);
            objc_initWeak(r29 - 0x28, r19);
            objc_copyWeak(&var_58 + 0x20, r29 - 0x28);
            dispatch_after(r20, r19, &var_58);
            objc_destroyWeak(&var_58 + 0x20);
            objc_destroyWeak(r29 - 0x28);
    }
    return;
}

-(void)pause {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)pauseInternal {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isPaused));
    if (*(int8_t *)(r19 + r8) == 0x0) {
            *(int8_t *)(r19 + r8) = 0x1;
            if (*(int8_t *)(int64_t *)&r19->_isStarted != 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_expirationIdentifier));
                    *(r19 + r8) = *(r19 + r8) + 0x1;
                    sub_1008b9904();
                    d0 = d0 - r19->_resumeTimestamp;
                    if (d0 > 0x0) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_remainingTimeInterval));
                            *(r19 + r8) = *(r19 + r8) - d0;
                    }
            }
    }
    return;
}

-(void)expiredWithExpirationIdentifier:(long long)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r19->_expirationIdentifier == arg2) {
            [objc_retainBlock(r19->_refreshHandler) retain];
            dispatch_async(*__dispatch_main_q, &var_38);
            [r19 startInternal];
            [r0 release];
            [r20 release];
    }
    return;
}

-(void)forceRefresh {
    r19 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r19, &var_40);
    [var_20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end