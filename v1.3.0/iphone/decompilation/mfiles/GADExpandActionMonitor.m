@implementation GADExpandActionMonitor

-(void *)initWithAd:(void *)arg2 webAdView:(void *)arg3 messageSource:(void *)arg4 configuration:(void *)arg5 {
    r31 = r31 - 0xf0;
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
    r24 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [r24 retain];
    r0 = [[&var_70 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            var_D8 = r20;
            objc_storeWeak((int64_t *)&r22->_adView, r20);
            objc_storeWeak((int64_t *)&r22->_ad, r19);
            objc_storeWeak((int64_t *)&r22->_messageSource, r21);
            objc_storeStrong((int64_t *)&r22->_configuration, r24);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r25);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r20);
            *(r22 + r20) = r0;
            [r8 release];
            var_E0 = r23;
            r0 = [r23 presenter];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_expandableViewController));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-136], r22);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r27 addObserverForName:*0x100e9c2a8 object:r21 queue:r28 usingBlock:&var_A0];
            [r28 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r27 addObserverForName:*0x100e9c2b0 object:r21 queue:r28 usingBlock:&var_C8];
            [r28 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
            r20 = var_D8;
            r19 = r19;
            r23 = var_E0;
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)shouldAllowExpandAction {
    r0 = self;
    if (r0->_expandableViewController == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)expandDidEnd {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r0 = self->_configuration;
    r0 = [r0 swappableView];
    r0 = [r0 retain];
    [r0 restoreSwappedView];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_expandableObservers));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_expandableViewController));
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r20 = [r0 retain];
    r0 = *(self + r21);
    *(self + r21) = 0x0;
    [r0 release];
    sub_1008833e8(*0x100e9c140, objc_loadWeakRetained((int64_t *)&self->_messageSource), r20);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleOnePartExpandAction:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r21->_adView);
    r0 = r21->_configuration;
    r0 = [r0 swappableView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r20 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r22 swapViewForImage];
            r0 = objc_loadWeakRetained((int64_t *)&r21->_ad);
            r24 = [[r0 context] retain];
            r21 = [r21 createAndPresentExpandable:r20 context:r24 notification:r19];
            [r24 release];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    [r22 restoreSwappedView];
            }
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_expandableObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_expandableViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_destroyWeak((int64_t *)&self->_ad);
    return;
}

-(bool)createAndPresentExpandable:(void *)arg2 context:(void *)arg3 notification:(void *)arg4 {
    r31 = r31 - 0x160;
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
    r25 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = objc_loadWeakRetained((int64_t *)&r25->_ad);
    r26 = objc_loadWeakRetained((int64_t *)&r25->_messageSource);
    if (r23 != 0x0) {
            var_100 = r26;
            var_F8 = r23;
            var_110 = r19;
            var_108 = r22;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            var_118 = r8;
            r24 = [[*(r25 + r8) clickProtection] retain];
            r0 = [r21 userInfo];
            r0 = [r0 retain];
            r28 = r0;
            r20 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
            r0 = [r21 userInfo];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e95350];
            r29 = r29;
            r23 = [r0 retain];
            r22 = sub_10087e2e0(r24, r20, r23);
            [r23 release];
            [r19 release];
            [r20 release];
            [r28 release];
            [r24 release];
            if ((r22 & 0x1) != 0x0) {
                    r23 = var_F8;
                    r0 = [r23 rootViewControllerProvider];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 topViewController];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r19 release];
                    if (r28 != 0x0) {
                            r0 = [r21 userInfo];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 objectForKeyedSubscript:*0x100e95340];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 release];
                            r0 = sub_10088cf14();
                            r27 = r0;
                            r0 = sub_10089acfc(r0);
                            var_120 = r20;
                            if ((r0 & 0x1) != 0x0) {
                                    var_128 = r28;
                                    r0 = [r20 objectForKeyedSubscript:*0x100e953a8];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r24 = [r0 boolValue];
                                    [r0 release];
                                    r0 = [GADFullScreenAdViewController alloc];
                                    r22 = var_108;
                                    r0 = [r0 initWithView:r22 context:var_110];
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_expandableViewController));
                                    r8 = *(r25 + r23);
                                    *(r25 + r23) = r0;
                                    [r8 release];
                                    if (([*(r25 + var_118) customCloseBlocked] & 0x1) != 0x0) {
                                            if (r24 != 0x0) {
                                                    sub_1008833e8(*0x100e9c468, var_100, 0x0);
                                            }
                                    }
                                    else {
                                            r0 = *(r25 + r23);
                                            r0 = [r0 closeButton];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 setUseCustomCloseImage:r24];
                                            [r0 release];
                                    }
                                    [*(r25 + r23) setSupportedInterfaceOrientations:r27];
                                    [*(r25 + r23) addMonitor:[[GADClosePresenterActionMonitor alloc] initWithPresenter:*(r25 + r23) messageSource:r22]];
                                    r20 = [GADCustomCloseActionMonitor alloc];
                                    r0 = *(r25 + r23);
                                    r0 = [r0 closeButton];
                                    r0 = [r0 retain];
                                    r20 = [r20 initWithCloseButton:r0 messageSource:r22 customCloseBlocked:[*(r25 + var_118) customCloseBlocked]];
                                    [r0 release];
                                    var_118 = r20;
                                    [*(r25 + r23) addMonitor:r20];
                                    objc_initWeak(&stack[-192], r25);
                                    sub_1008833e8(*0x100e9c130, var_100, [[NSDictionary dictionaryWithObjects:r29 - 0x80 forKeys:r29 - 0x88 count:0x1] retain]);
                                    r20 = r27;
                                    r26 = &var_F0 + 0x38;
                                    var_D0 = [var_100 retain];
                                    r28 = [r24 retain];
                                    var_C8 = r28;
                                    var_C0 = [r25 retain];
                                    objc_copyWeak(r26, &stack[-192]);
                                    sub_1008b3ef0(r19, var_128, var_F8, &var_F0);
                                    r22 = var_108;
                                    [r22 dispatchSDKEvent:@"expanding" parameters:0x0];
                                    sub_1008004f8(0x0, var_F8);
                                    r0 = [r22 webViewController];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 webView];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r24 release];
                                    if (r27 != 0x0) {
                                            r8 = *(r25 + r23);
                                            if (r8 != 0x0) {
                                                    sub_1008833e8(*0x100e9c680, var_F8, [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain]);
                                                    [r24 release];
                                            }
                                    }
                                    [r27 release];
                                    objc_destroyWeak(r26);
                                    [var_C0 release];
                                    [var_C8 release];
                                    [var_D0 release];
                                    [r28 release];
                                    objc_destroyWeak(&stack[-192]);
                                    [var_118 release];
                                    [r20 release];
                                    r24 = 0x1;
                                    r26 = var_100;
                                    r23 = var_F8;
                                    r28 = var_128;
                            }
                            else {
                                    [NSString alloc];
                                    sub_10089abd4();
                                    [r19 initWithFormat:@"Application does not support requested orientations. Supported orientation mask: %lu. Requested orientation mask: %lu"];
                                    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                                    r26 = var_100;
                                    sub_1008833e8(*0x100e9c460, r26, r22);
                                    [r22 release];
                                    [r19 release];
                                    r24 = 0x0;
                                    r22 = var_108;
                            }
                            [var_120 release];
                            r19 = var_110;
                    }
                    else {
                            r24 = 0x0;
                            r19 = var_110;
                            r22 = var_108;
                            r26 = var_100;
                    }
                    [r28 release];
            }
            else {
                    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    r26 = var_100;
                    sub_1008833e8(*0x100e9c460, r26, r20);
                    [r20 release];
                    r24 = 0x0;
                    r19 = var_110;
                    r22 = var_108;
                    r23 = var_F8;
            }
    }
    else {
            r24 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r23 release];
    [r21 release];
    [r19 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)handleTwoPartExpandAction:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r24 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r21 = [[r20 objectForKeyedSubscript:*0x100e95380] retain];
    r23 = [[r20 objectForKeyedSubscript:*0x100e95368] retain];
    r0 = [NSURL URLWithString:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    r23 = objc_loadWeakRetained((int64_t *)&r24->_ad);
    var_58 = r22;
    if ((r21 | r22) != 0x0) {
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r24->_adView);
                    var_68 = r20;
                    r20 = r0;
                    r25 = [[GADWebViewConfiguration alloc] init];
                    r0 = [GADSettings sharedInstance];
                    r0 = [r0 retain];
                    r28 = [[r0 stringForKey:*0x100e9b598] retain];
                    [r25 setMRAIDURLString:r28];
                    [r28 release];
                    [r0 release];
                    r0 = [r20 configuration];
                    r0 = [r0 retain];
                    r28 = [[r0 webViewClassKey] retain];
                    [r25 setWebViewClassKey:r28];
                    [r28 release];
                    [r0 release];
                    r27 = [GADEventContext alloc];
                    var_60 = r23;
                    r0 = [r23 context];
                    r29 = r29;
                    r28 = [r0 retain];
                    r0 = r27;
                    r27 = r25;
                    r23 = [r0 initWithParent:r28 component:*0x100e97498];
                    [r28 release];
                    r22 = r23;
                    r23 = r20;
                    r20 = var_68;
                    r28 = [[GADWebAdView alloc] initWithFrame:r27 configuration:r22 context:r4];
                    if ([r24 createAndPresentExpandable:r28 context:r22 notification:r19] != 0x0) {
                            var_C8 = r22;
                            stack[-208] = r27;
                            var_80 = r23;
                            var_B8 = r21;
                            var_B0 = r19;
                            r0 = [GADOrientationMonitor alloc];
                            r27 = sign_extend_64(*(int32_t *)ivar_offset(_expandableViewController));
                            r2 = [r0 initWithAdView:r28 viewController:*(r24 + r27)];
                            var_D0 = r2;
                            [*(r24 + r27) addMonitor:r2];
                            var_70 = [GADExpandActionMonitorConfiguration alloc];
                            var_90 = *(r24 + r27);
                            var_88 = r28;
                            r28 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
                            r21 = [[*(r24 + r28) referenceView] retain];
                            var_A0 = [*(r24 + r28) customCloseBlocked];
                            r22 = [[*(r24 + r28) clickProtection] retain];
                            var_70 = [var_70 initWithPresenter:var_90 referenceView:r21 customCloseBlocked:var_A0 clickProtection:r22 analyticsLoggingEnabled:[*(r24 + r28) analyticsLoggingEnabled]];
                            [r22 release];
                            [r21 release];
                            r21 = *(r24 + r27);
                            r0 = *(r24 + r28);
                            r0 = [r0 clickProtection];
                            r29 = r29;
                            r19 = [r0 retain];
                            r0 = *(r24 + r28);
                            r28 = var_88;
                            sub_100849a74(r21, var_60, r28, r28, r19, [r0 analyticsLoggingEnabled]);
                            [r19 release];
                            r2 = [[GADExpandActionMonitor alloc] initWithAd:var_60 webAdView:r28 messageSource:r28 configuration:var_70];
                            var_D8 = r2;
                            [*(r24 + r27) addMonitor:r2];
                            r8 = [[GADFullScreenPropertiesActionMonitor alloc] initWithFullScreenViewController:*(r24 + r27) messageSource:r28];
                            var_90 = r8;
                            [*(r24 + r27) addMonitor:r8];
                            r8 = [[GADStatusBarMonitor alloc] initWithViewController:*(r24 + r27)];
                            var_A0 = r8;
                            [*(r24 + r27) addMonitor:r8];
                            r8 = [[GADPresentationMonitor alloc] initWithAdView:r28 messageSource:*(r24 + r27)];
                            var_A8 = r8;
                            [*(r24 + r27) addMonitor:r8];
                            r25 = [[GADMRAIDActionMonitor alloc] initWithAd:var_60 visibilityMessageSource:var_60 webAdView:r28 configuration:var_70];
                            [*(r24 + r27) addMonitor:r25];
                            if (var_58 != 0x0) {
                                    [r28 loadURL:var_58 completionHandler:0x0];
                                    r21 = var_B8;
                                    r19 = var_B0;
                            }
                            else {
                                    r21 = [[r20 objectForKeyedSubscript:*0x100e95370] retain];
                                    r19 = [[NSURL URLWithString:r2] retain];
                                    [r21 release];
                                    r21 = var_B8;
                                    [r28 loadHTMLString:r21 baseURL:r19 completionHandler:0x0];
                                    [r19 release];
                                    r19 = var_B0;
                            }
                            r22 = var_C8;
                            r27 = stack[-208];
                            [r25 release];
                            [var_A8 release];
                            [var_A0 release];
                            [var_90 release];
                            [var_D8 release];
                            [var_70 release];
                            [var_D0 release];
                            r23 = var_80;
                    }
                    [r28 release];
                    [r22 release];
                    [r27 release];
                    [r23 release];
                    r23 = var_60;
            }
    }
    else {
            r0 = [r23 context];
            r0 = [r0 retain];
            sub_1007ce06c(r0, @"Cannot expand. URL and HTML are either empty or not provided in opener dictionary: %@");
            [r24 release];
    }
    [r23 release];
    [var_58 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end