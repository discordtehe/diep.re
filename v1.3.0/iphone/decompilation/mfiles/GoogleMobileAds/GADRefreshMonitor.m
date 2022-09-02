@implementation GADRefreshMonitor

-(void *)initWithAd:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r27 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [self init];
    if (r21 != 0x0) {
            var_118 = r23;
            objc_storeWeak((int64_t *)&r21->_ad, r27);
            *(int8_t *)(int64_t *)&r21->_isEnabled = 0x1;
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r20);
            *(r21 + r20) = r0;
            [r8 release];
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r22);
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_observationQueue));
            r8 = *(r21 + r19);
            *(r21 + r19) = r0;
            [r8 release];
            [*(r21 + r19) setQualityOfService:0x11];
            [*(r21 + r19) setMaxConcurrentOperationCount:0x1];
            objc_initWeak(r29 - 0x68, r21);
            var_110 = (r29 - 0x90) + 0x20;
            objc_copyWeak((r29 - 0x90) + 0x20, r29 - 0x68);
            [r23 addObserverForName:*0x100e9c028 object:r27 queue:r26 usingBlock:r29 - 0x90];
            var_128 = r27;
            [[GADApplication sharedInstance] retain];
            var_120 = &var_B8 + 0x20;
            objc_copyWeak(&var_B8 + 0x20, r29 - 0x68);
            [r26 addObserverForName:*0x100e9c148 object:r27 queue:r22 usingBlock:&var_B8];
            [r27 release];
            r0 = [GADApplication sharedInstance];
            r25 = &var_E0 + 0x20;
            [r0 retain];
            objc_copyWeak(r25, r29 - 0x68);
            [r26 addObserverForName:*0x100e9c158 object:r27 queue:r28 usingBlock:&var_E0];
            r23 = var_118;
            [r27 release];
            if (r23 != 0x0) {
                    objc_copyWeak(&var_108 + 0x20, r29 - 0x68);
                    [r22 addObserverForName:*0x100e9c2d8 object:r23 queue:r28 usingBlock:&var_108];
                    objc_destroyWeak(&var_108 + 0x20);
            }
            objc_destroyWeak(r25);
            objc_destroyWeak(var_120);
            objc_destroyWeak(var_110);
            objc_destroyWeak(r29 - 0x68);
            r27 = var_128;
    }
    [r23 release];
    [r27 release];
    r0 = r21;
    return r0;
}

-(void)handleVisibilityNotification:(void *)arg2 {
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
    r20 = [[r0 objectForKeyedSubscript:@"visible"] retain];
    [r0 release];
    r0 = [r20 boolValue];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isVisible));
    if (r0 != *(int8_t *)(r19 + r8)) {
            *(int8_t *)(r19 + r8) = r0;
            [r19 updateRefreshActivity];
    }
    [r20 release];
    return;
}

-(void)handleIntermissionEvent:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isIntermissionOngoing));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 updateRefreshActivity];
    }
    return;
}

-(void)handleRefreshAction:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r21->_ad);
    if (r20 == 0x0) goto loc_10080dfb0;

loc_10080de94:
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95340];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"action"];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if (([r22 isEqual:r2] & 0x1) == 0x0) goto loc_10080df2c;

loc_10080df24:
    r8 = 0x0;
    goto loc_10080df48;

loc_10080df48:
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_isEnabled));
    if (r8 != *(int8_t *)(r21 + r9)) {
            *(int8_t *)(r21 + r9) = r8;
            [r21 updateRefreshActivity];
    }
    goto loc_10080dfa8;

loc_10080dfa8:
    [r22 release];
    goto loc_10080dfb0;

loc_10080dfb0:
    [r20 release];
    [r19 release];
    return;

loc_10080df2c:
    if (([r22 isEqual:r2] & 0x1) == 0x0) goto loc_10080df74;

loc_10080df44:
    r8 = 0x1;
    goto loc_10080df48;

loc_10080df74:
    r0 = [r20 context];
    r0 = [r0 retain];
    sub_1007ce06c(r0, @"Invalid refresh action. %@");
    [r21 release];
    goto loc_10080dfa8;
}

-(void)updateRefreshActivity {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_ad);
    if (*(int8_t *)(int64_t *)&r20->_isVisible != 0x0 && *(int8_t *)(int64_t *)&r20->_isEnabled != 0x0) {
            if (*(int8_t *)(int64_t *)&r20->_isIntermissionOngoing != 0x0) {
                    r8 = 0x100e9bff8;
            }
            else {
                    r8 = 0x100e9c000;
            }
    }
    else {
            r8 = 0x100e9bff8;
    }
    sub_1008833e8(*r8, r19, 0x0);
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_observationQueue, 0x0);
    return;
}

@end