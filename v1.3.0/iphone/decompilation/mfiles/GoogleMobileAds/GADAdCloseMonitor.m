@implementation GADAdCloseMonitor

-(void *)initWithAd:(void *)arg2 webAdView:(void *)arg3 adConfiguration:(void *)arg4 closeButton:(void *)arg5 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1e0;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r28 = [arg4 retain];
    var_1E8 = [arg5 retain];
    r23 = [[r29 - 0x70 super] init];
    if (r23 != 0x0) {
            r21 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r20);
            *(r23 + r20) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r23->_ad, r19);
            r0 = [r28 objectForKeyedSubscript:@"ad_close_time_ms"];
            r29 = r29;
            r0 = [r0 retain];
            var_228 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r23->_adCloseTimeInterval = d0;
            objc_initWeak(r29 - 0x78, r23);
            r0 = [NSOperationQueue mainQueue];
            [r0 retain];
            var_200 = (r29 - 0xa0) + 0x20;
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c078 object:r22 queue:r26 usingBlock:r29 - 0xa0];
            [r26 release];
            var_208 = (r29 - 0xc8) + 0x20;
            objc_copyWeak((r29 - 0xc8) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c148 object:r22 queue:0x0 usingBlock:r29 - 0xc8];
            r27 = r19;
            var_210 = (r29 - 0xf0) + 0x20;
            objc_copyWeak((r29 - 0xf0) + 0x20, r29 - 0x78);
            var_1F8 = r22;
            [r21 addObserverForName:*0x100e9c158 object:r22 queue:0x0 usingBlock:r29 - 0xf0];
            var_218 = &var_118 + 0x20;
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r21 addObserverForName:r26 object:0x0 queue:0x0 usingBlock:&var_118];
            var_220 = &var_140 + 0x20;
            objc_copyWeak(&var_140 + 0x20, r29 - 0x78);
            [r21 addObserverForName:r26 object:0x0 queue:0x0 usingBlock:&var_140];
            if (var_1E8 != 0x0) {
                    objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
                    [r26 addObserverForName:*0x100e9c6a8 object:var_1E8 queue:0x0 usingBlock:&var_168];
                    objc_destroyWeak(&var_168 + 0x20);
                    r27 = r27;
            }
            var_238 = r28;
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_190 + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c318 object:r24 queue:r26 usingBlock:&var_190];
            [r26 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_1B8 + 0x20, r29 - 0x78);
            [r28 addObserverForName:*0x100e9c260 object:r24 queue:r26 usingBlock:&var_1B8];
            [r26 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_1E0 + 0x20, r29 - 0x78);
            [r28 addObserverForName:*0x100e9c470 object:var_1F8 queue:r26 usingBlock:&var_1E0];
            [r26 release];
            objc_destroyWeak(&var_1E0 + 0x20);
            objc_destroyWeak(&var_1B8 + 0x20);
            objc_destroyWeak(&var_190 + 0x20);
            objc_destroyWeak(var_220);
            objc_destroyWeak(var_218);
            objc_destroyWeak(var_210);
            objc_destroyWeak(var_208);
            objc_destroyWeak(var_200);
            objc_destroyWeak(r29 - 0x78);
            [var_228 release];
            r24 = r24;
            r28 = var_238;
            r19 = var_1F8;
    }
    [var_1E8 release];
    [r28 release];
    [r24 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)handleImpression {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adCloseTimeInterval));
    if (*(r19 + r20) >= 0x0) {
            objc_initWeak(r29 - 0x18, r19);
            r19 = &var_40 + 0x20;
            asm { fcvtzs     x1, d0 };
            dispatch_time(0x0, r1);
            objc_copyWeak(r19, r29 - 0x18);
            dispatch_after(r20, *__dispatch_main_q, &var_40);
            objc_destroyWeak(r19);
            objc_destroyWeak(r29 - 0x18);
    }
    return;
}

-(void)handleAdClose {
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            *(int8_t *)(int64_t *)&r0->_adCloseNotificationBuffered = 0x1;
            [r0 postBufferedAdCloseNotification];
    }
    return;
}

-(void)postBufferedAdCloseNotification {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r19->_ad);
    if (r20 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adCloseNotificationBuffered));
            if (*(int8_t *)(r19 + r21) != 0x0 && *(int8_t *)(int64_t *)&r19->_intermissionInProgress == 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->_appBackgrounded == 0x0) {
                            sub_1008833e8(*0x100e9c6b8, r20, 0x0);
                            *(int8_t *)(r19 + r21) = 0x0;
                    }
            }
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end