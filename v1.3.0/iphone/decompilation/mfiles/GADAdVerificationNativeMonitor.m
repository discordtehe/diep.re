@implementation GADAdVerificationNativeMonitor

-(void *)initWithAd:(void *)arg2 webViewController:(void *)arg3 mediaType:(long long)arg4 partnerName:(void *)arg5 {
    r31 = r31 - 0x1b0;
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
    r26 = arg4;
    r25 = arg3;
    r21 = [arg2 retain];
    r28 = [r25 retain];
    r23 = [arg5 retain];
    r22 = [[r29 - 0x70 super] init];
    if (r22 != 0x0) {
            r20 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r19);
            *(r22 + r19) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_webViewController, r25);
            var_178 = r28;
            var_170 = r21;
            if (r23 != 0x0) {
                    r0 = [GADAdVerification sharedInstance];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 partner];
                    r0 = [r0 retain];
                    r21 = r26;
                    r26 = r0;
                    r0 = [r0 versionString];
                    r0 = [r0 retain];
                    r28 = [r0 copy];
                    [r0 release];
                    r0 = r26;
                    r26 = r21;
                    [r0 release];
                    [r20 release];
                    r20 = NSClassFromString(@"GADOMIDPartner");
                    r21 = var_170;
                    r0 = [GADAdVerification sharedInstance];
                    r29 = r29;
                    r25 = [r0 retain];
                    r20 = [[r20 alloc] initWithName:r23 versionString:r28];
                    [r25 setPartner:r20];
                    [r20 release];
                    [r25 release];
                    r0 = r28;
                    r28 = var_178;
                    [r0 release];
            }
            var_198 = r23;
            r0 = [GADAdVerificationReporter alloc];
            r0 = [r0 initWithWebViewController:r28 mediaType:r26 friendlyObstructionView:0x0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adVerificationReporter));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r22);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c018 object:r21 queue:r20 usingBlock:r29 - 0xa0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xc8) + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c080 object:r21 queue:r20 usingBlock:r29 - 0xc8];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c528 object:r21 queue:r20 usingBlock:&var_F0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c550 object:r21 queue:r20 usingBlock:&var_118];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_140 + 0x20, r29 - 0x78);
            [r20 addObserverForName:*0x100e9c558 object:var_170 queue:r24 usingBlock:&var_140];
            [r24 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
            r21 = var_170;
            [r20 addObserverForName:*0x100e9c680 object:r21 queue:r24 usingBlock:&var_168];
            [r24 release];
            objc_destroyWeak(&var_168 + 0x20);
            objc_destroyWeak(&var_140 + 0x20);
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak((r29 - 0xc8) + 0x20);
            objc_destroyWeak((r29 - 0xa0) + 0x20);
            objc_destroyWeak(r29 - 0x78);
            r28 = var_178;
            r23 = var_198;
    }
    [r23 release];
    [r28 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(self + r20);
    r0 = [r0 retain];
    *(self + r20) = 0x0;
    [r0 release];
    sub_100860a80();
    _Block_object_dispose(&var_60, 0x8);
    [r0 release];
    [[self->_adVerificationReporter retain] retain];
    dispatch_async(*__dispatch_main_q, &var_B0);
    [r0 release];
    [r20 release];
    [[&var_C0 super] dealloc];
    return;
}

-(void)beginAdSession {
    r0 = self;
    if (r0->_webViewController != 0x0) {
            do {
                    asm { ldaxrb     w10, [x8] };
                    asm { stlxrb     w11, w9, [x8] };
            } while (r11 != 0x0);
            if ((r10 & 0x1) == 0x0) {
                    [r0->_adVerificationReporter beginAdSession];
            }
    }
    else {
            sub_1007ce06c(0x0, @"Web view controller must exist, before ad session begins.");
    }
    return;
}

-(void)adDidMakeImpression {
    [self beginAdSession];
    r20 = [sub_1008762a4(@"onSdkImpression", 0x0) retain];
    [self->_webViewController asyncEvaluateJavaScriptFromString:r20 completionBlock:0x0];
    [r20 release];
    return;
}

-(void)setMonitoredView:(void *)arg2 {
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
    r21 = [[r0 objectForKeyedSubscript:*0x100e99720] retain];
    if (r21 != 0x0) {
            [r20->_adVerificationReporter setMonitoredView:r21];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adVerificationReporter, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewController, 0x0);
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
            [r20 beginAdSession];
            [r20->_adVerificationReporter addExpandView:r21 presenter:r22];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

@end