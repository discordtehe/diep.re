@implementation GADInAppStoreMonitor

-(void *)initWithAd:(void *)arg2 webAdView:(void *)arg3 messageSource:(void *)arg4 clickProtection:(void *)arg5 {
    r31 = r31 - 0x150;
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
    r25 = arg5;
    r26 = arg3;
    r19 = [arg2 retain];
    r20 = [r26 retain];
    r21 = [arg4 retain];
    r23 = [r25 retain];
    r22 = [[r29 - 0x70 super] init];
    if (r22 != 0x0) {
            var_138 = r23;
            var_130 = r19;
            objc_storeWeak((int64_t *)&r22->_ad, r19);
            objc_storeStrong((int64_t *)&r22->_webAdView, r26);
            objc_storeStrong((int64_t *)&r22->_clickProtection, r25);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r19);
            *(r22 + r19) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r24);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedStoreProductViewController));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r22);
            [[NSOperationQueue mainQueue] retain];
            var_120 = &var_A0 + 0x20;
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c270 object:r21 queue:r28 usingBlock:&var_A0];
            [r28 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 mainQueue];
            r25 = &var_C8 + 0x20;
            [r0 retain];
            objc_copyWeak(r25, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c2b8 object:r21 queue:r28 usingBlock:&var_C8];
            r20 = r20;
            [r28 release];
            if (r20 != 0x0) {
                    objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
                    [r23 addObserverForName:*0x100e9c690 object:r21 queue:0x0 usingBlock:&var_F0];
                    objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
                    [r23 addObserverForName:*0x100e9c698 object:r21 queue:0x0 usingBlock:&var_118];
                    objc_destroyWeak(&var_118 + 0x20);
                    objc_destroyWeak(&var_F0 + 0x20);
            }
            objc_destroyWeak(r25);
            objc_destroyWeak(var_120);
            objc_destroyWeak(r29 - 0x78);
            r23 = var_138;
            r19 = var_130;
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)handleOpenInAppStoreAction:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = r0;
    r22 = r20->_clickProtection;
    r23 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    r0 = [r19 objectForKeyedSubscript:*0x100e95350];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r22 = sub_10087e2e0(r22, r23, r24);
    [r24 release];
    [r23 release];
    if (r22 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e95340];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 objectForKeyedSubscript:*0x100e95360] retain];
            r24 = [[r22 objectForKeyedSubscript:*0x100e95368] retain];
            r25 = [[NSURL URLWithString:r24] retain];
            r0 = [r22 objectForKeyedSubscript:*0x100e95390];
            r0 = [r0 retain];
            r26 = [r0 boolValue];
            [r0 release];
            [r20 openInAppStoreWithProductID:r23 fallbackURL:r25 shouldWaitForFetch:r26];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)openInAppStoreWithProductID:(void *)arg2 fallbackURL:(void *)arg3 shouldWaitForFetch:(bool)arg4 {
    r31 = r31 - 0x130;
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
    r23 = arg4;
    r27 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = objc_loadWeakRetained((int64_t *)&r27->_ad);
    if (r21 != 0x0) {
            r0 = [r21 rootViewControllerProvider];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 topViewController];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            if (r22 != 0x0) {
                    r25 = [[@"iTunesApp:" stringByAppendingString:r19] retain];
                    r24 = [[NSURL URLWithString:r25] retain];
                    [r25 release];
                    r0 = [r24 retain];
                    var_100 = r0;
                    var_88 = r0;
                    r26 = [r21 retain];
                    var_80 = r26;
                    r0 = objc_retainBlock(&var_A8);
                    r25 = r0;
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_cachedStoreProductViewController));
                    r0 = *(r27 + r24);
                    r0 = [r0 objectForKeyedSubscript:r19];
                    r29 = r29;
                    r28 = [r0 retain];
                    if (r28 != 0x0) {
                            r23 = [[GADSKStoreProductViewControllerDelegate sharedInstance] retain];
                            [r28 setDelegate:r23];
                            [r23 release];
                            sub_1008220c0(*(r27 + r24), r19);
                            sub_1008b42f0(r28, r22, r26, r25);
                    }
                    else {
                            r28 = [[GADStoreKitProductViewController alloc] init];
                            r24 = [[GADSKStoreProductViewControllerDelegate sharedInstance] retain];
                            [r28 setDelegate:r24];
                            [r24 release];
                            r24 = [[NSNumber numberWithInteger:[r19 integerValue]] retain];
                            r0 = [NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x78 count:0x1];
                            r0 = [r0 retain];
                            [r24 release];
                            r28 = [r28 retain];
                            var_D8 = r28;
                            var_D0 = [r20 retain];
                            r26 = [r26 retain];
                            var_C8 = r26;
                            r24 = [r22 retain];
                            var_C0 = r24;
                            var_110 = r25;
                            r27 = [r25 retain];
                            var_B8 = r27;
                            var_108 = r0;
                            [r28 loadProductWithParameters:r0 completionBlock:&var_F8];
                            if ((r23 & 0x1) == 0x0) {
                                    sub_1008b42f0(r28, r24, r26, r27);
                            }
                            [var_B8 release];
                            [var_C0 release];
                            [var_C8 release];
                            [var_D0 release];
                            [var_D8 release];
                            [var_108 release];
                            r25 = var_110;
                    }
                    [r28 release];
                    [r25 release];
                    [var_80 release];
                    [var_88 release];
                    [var_100 release];
            }
            [r22 release];
    }
    var_68 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleFetchInAppStoreAction:(void *)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r21 = [[r19 objectForKeyedSubscript:*0x100e95360] retain];
    r0 = r20->_cachedStoreProductViewController;
    r0 = [r0 objectForKeyedSubscript:r21];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [[GADStoreKitProductViewController alloc] init];
            r23 = [[NSNumber numberWithInteger:[r21 integerValue]] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
            r24 = [r0 retain];
            [r23 release];
            var_60 = [r20 retain];
            var_58 = [r21 retain];
            r0 = [r22 retain];
            [r0 loadProductWithParameters:r24 completionBlock:&var_80];
            [r22 release];
            [var_58 release];
            [var_60 release];
            [r0 release];
            [r24 release];
    }
    var_38 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)handlePrepareAnimation:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = (int64_t *)&r20->_inlineRenderer;
    [*r22 dismiss];
    r21 = r20->_cachedStoreProductViewController;
    r23 = [[r19 productIdentifier] retain];
    r0 = [r21 objectForKeyedSubscript:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            r25 = 0x0;
    }
    else {
            r21 = [[GADStoreKitProductViewController alloc] init];
            r25 = 0x1;
    }
    r23 = [[GADStoreKitProductInlineRenderer alloc] initWithStoreKitProductViewController:r21];
    objc_storeStrong(r22, r23);
    objc_initWeak(r29 - 0x60, r20);
    if (r25 != 0x0) {
            r0 = [r19 productIdentifier];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [[NSNumber numberWithInteger:[r0 integerValue]] retain];
            r0 = [NSDictionary dictionaryWithObjects:r29 - 0x50 forKeys:r29 - 0x58 count:0x1];
            r29 = r29;
            [r0 retain];
            [r26 release];
            [r25 release];
            var_80 = [r23 retain];
            objc_copyWeak(&var_A0 + 0x38, r29 - 0x60);
            var_78 = [r19 retain];
            r0 = [r21 retain];
            [r0 loadProductWithParameters:r24 completionBlock:&var_A0];
            [r0 release];
            [var_78 release];
            objc_destroyWeak(&var_A0 + 0x38);
            [var_80 release];
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    [[r19 dismissalNotificationRequestIdentifier] retain];
    objc_copyWeak(&var_D0 + 0x28, r29 - 0x60);
    r20 = [r25 retain];
    [r22 renderInView:r26 dismissalCompletionBlock:&var_D0];
    [r20 release];
    objc_destroyWeak(&var_D0 + 0x28);
    [r20 release];
    objc_destroyWeak(r29 - 0x60);
    [r23 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)handlePerformAnimation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ((CGRectEqualToRect([r0 finalFrame], @selector(finalFrame)) & 0x1) == 0x0) {
            r20 = r20->_inlineRenderer;
            [r19 finalFrame];
            [r20 resizeToFrame:r2];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_inlineRenderer, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedStoreProductViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_clickProtection, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_webAdView, 0x0);
    return;
}

@end