@implementation GADContentSizeMonitor

-(void *)initWithWebAdView:(void *)arg2 ad:(void *)arg3 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_70 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            var_D0 = r20;
            objc_storeWeak((int64_t *)&r21->_ad, r20);
            objc_storeWeak((int64_t *)&r21->_webViewController, [[r19 webViewController] retain]);
            [r23 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r28);
            *(r21 + r28) = r0;
            [r8 release];
            r21->_lastObservedContentHeight = **_UIViewNoIntrinsicMetric;
            objc_initWeak(&stack[-136], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c200 object:r19 queue:r26 usingBlock:&var_A0];
            [r26 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c328 object:r19 queue:r26 usingBlock:&var_C8];
            [r26 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
            r20 = var_D0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)updateContentHeightWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    if (r20 == 0x0) {
            r21 = objc_retainBlock(0x100e90150);
            [r20 release];
            r20 = r21;
    }
    r21 = objc_loadWeakRetained((int64_t *)&r19->_webViewController);
    var_30 = r20;
    r20 = [r20 retain];
    var_28 = [r19 retain];
    [r21 asyncEvaluateJavaScriptFromString:@"AFMA_GetContentHeight()" completionBlock:&var_50];
    [var_28 release];
    [var_30 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)updateContentHeight:(double)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastObservedContentHeight));
    if (*(r0 + r8) != d8) {
            *(r0 + r8) = d8;
            r19 = objc_loadWeakRetained((int64_t *)&r0->_ad);
            if (r19 != 0x0) {
                    [[NSNumber numberWithDouble:r2] retain];
                    sub_1008833e8(*0x100e9c208, r19, [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain]);
                    [r22 release];
                    [r21 release];
            }
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webViewController);
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end