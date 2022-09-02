@implementation GADOpenGLMonitor

-(void *)initWithPresenter:(void *)arg2 webAdView:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r23 = [r0 boolForKey:*0x100e9b520];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [[&var_70 super] init];
            r21 = r0;
            if (r21 != 0x0) {
                    objc_storeWeak((int64_t *)&r21->_webAdView, r20);
                    objc_storeWeak((int64_t *)&r21->_presenter, r19);
                    r0 = [GADObserverCollection alloc];
                    r0 = objc_msgSend(r0, r22);
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
                    r8 = *(r21 + r26);
                    *(r21 + r26) = r0;
                    [r8 release];
                    objc_initWeak(&stack[-136], r21);
                    objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
                    [r24 addObserverForName:r25 object:0x0 queue:0x0 usingBlock:&var_A0];
                    objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
                    [r25 addObserverForName:r26 object:0x0 queue:0x0 usingBlock:&var_C8];
                    objc_destroyWeak(&var_C8 + 0x20);
                    objc_destroyWeak(&var_A0 + 0x20);
                    objc_destroyWeak(&stack[-136]);
            }
            r21 = [r21 retain];
            r22 = r21;
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void)applicationDidBecomeActive {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_loadWeakRetained((int64_t *)&self->_webAdView);
    r19 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 webViewControllerWebContentProcessDidTerminate:0x0];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_presenter);
    objc_destroyWeak((int64_t *)&self->_webAdView);
    return;
}

-(void)applicationWillResignActive {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_presenter);
    r0 = objc_loadWeakRetained((int64_t *)&self->_webAdView);
    r20 = r0;
    r0 = [r0 webViewController];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 webView];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r19 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r0 = [r21 layer];
            r29 = r29;
            r22 = [r0 retain];
            r23 = sub_100805d54();
            [r22 release];
            if (r23 != 0x0) {
                    r0 = [GADApplication sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 updateBackgroundTimeIntervalSinceBoot];
                    [r0 release];
                    if ([r19 presented] != 0x0 && [r19 shouldDismissOnApplicationEnteringForeground] != 0x0) {
                            r0 = [r21 superview];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == r20) {
                                    [[r21 snapshotViewAfterScreenUpdates:0x0] retain];
                                    [r20 addSubview:r2];
                                    [r22 release];
                            }
                            [r20 dropWebViewController];
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end