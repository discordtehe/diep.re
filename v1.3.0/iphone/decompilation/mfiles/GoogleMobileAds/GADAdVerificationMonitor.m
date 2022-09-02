@implementation GADAdVerificationMonitor

-(void *)initWithAd:(void *)arg2 adView:(void *)arg3 friendlyObstructionView:(void *)arg4 mediaType:(long long)arg5 {
    r31 = r31 - 0x120;
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
    r23 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [arg4 retain];
    r22 = [[r29 - 0x70 super] init];
    if (r22 != 0x0) {
            r24 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r21);
            *(r22 + r21) = r0;
            [r8 release];
            r24 = [GADAdVerificationReporter alloc];
            r25 = [[r20 webViewController] retain];
            r0 = [r24 initWithWebViewController:r25 mediaType:r23 friendlyObstructionView:r26];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adVerificationReporter));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r25 release];
            objc_storeWeak((int64_t *)&r22->_adView, r20);
            objc_initWeak(r29 - 0x78, r22);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r24 addObserverForName:*0x100e9c018 object:r19 queue:r27 usingBlock:&var_A0];
            [r27 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c080 object:r19 queue:r28 usingBlock:&var_C8];
            [r28 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c680 object:r19 queue:r28 usingBlock:&var_F0];
            [r28 release];
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(r29 - 0x78);
            r26 = r26;
    }
    [r26 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [[self->_adVerificationReporter retain] retain];
    dispatch_async(*__dispatch_main_q, &var_38);
    [r0 release];
    [r20 release];
    [[&var_48 super] dealloc];
    return;
}

-(void)beginAdSession {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_adVerificationReporter));
            [*(r19 + r20) beginAdSession];
            r20 = *(r19 + r20);
            r0 = objc_loadWeakRetained((int64_t *)&r19->_adView);
            r19 = r0;
            r0 = [r0 webViewController];
            r0 = [r0 retain];
            r22 = [[r0 webView] retain];
            [r20 setMonitoredView:r22];
            [r22 release];
            [r0 release];
            [r19 release];
    }
    return;
}

-(void)adDidMakeImpression {
    [self beginAdSession];
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    [r0 dispatchSDKEvent:@"onSdkImpression" parameters:0x0];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adVerificationReporter, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)trackExpandView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 objectForKeyedSubscript:*0x100e9ac08] retain];
    r22 = [[r19 objectForKeyedSubscript:*0x100e9ac10] retain];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r20->_adVerificationReporter addExpandView:r21 presenter:r22];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

@end