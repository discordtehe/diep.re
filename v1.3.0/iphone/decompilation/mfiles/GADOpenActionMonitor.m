@implementation GADOpenActionMonitor

-(void *)initWithAd:(void *)arg2 messageSource:(void *)arg3 clickProtection:(void *)arg4 analyticsLoggingEnabled:(bool)arg5 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    r22 = arg5;
    r19 = arg4;
    r28 = [arg2 retain];
    r25 = [arg3 retain];
    r20 = [r19 retain];
    r23 = [[r29 - 0x70 super] init];
    if (r23 != 0x0) {
            objc_storeWeak((int64_t *)&r23->_ad, r28);
            *(int8_t *)(int64_t *)&r23->_analyticsLoggingEnabled = r22;
            objc_storeStrong((int64_t *)&r23->_clickProtection, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r21);
            *(r23 + r21) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r23);
            r0 = [NSMapTable weakToStrongObjectsMapTable];
            var_208 = r20;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_confirmationAlertURLs));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c278 object:r25 queue:r20 usingBlock:r29 - 0xa0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xc8) + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c280 object:r25 queue:r20 usingBlock:r29 - 0xc8];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xf0) + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c288 object:r25 queue:r20 usingBlock:r29 - 0xf0];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r19 addObserverForName:*0x100e9c290 object:r25 queue:r20 usingBlock:&var_118];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_140 + 0x20, r29 - 0x78);
            [r22 addObserverForName:*0x100e9c2a0 object:r25 queue:r20 usingBlock:&var_140];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
            [r24 addObserverForName:*0x100e9c2c8 object:r22 queue:r20 usingBlock:&var_168];
            var_220 = r28;
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_190 + 0x20, r29 - 0x78);
            [r25 addObserverForName:*0x100e9c238 object:r22 queue:r20 usingBlock:&var_190];
            [r20 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_1B8 + 0x20, r29 - 0x78);
            [r20 addObserverForName:*0x100e9c240 object:r22 queue:r28 usingBlock:&var_1B8];
            [r28 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_1E0 + 0x20, r29 - 0x78);
            [r20 addObserverForName:*0x100e9c250 object:r22 queue:r28 usingBlock:&var_1E0];
            [r28 release];
            objc_destroyWeak(&var_1E0 + 0x20);
            objc_destroyWeak(&var_1B8 + 0x20);
            objc_destroyWeak(&var_190 + 0x20);
            objc_destroyWeak(&var_168 + 0x20);
            objc_destroyWeak(&var_140 + 0x20);
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak((r29 - 0xf0) + 0x20);
            objc_destroyWeak((r29 - 0xc8) + 0x20);
            objc_destroyWeak((r29 - 0xa0) + 0x20);
            objc_destroyWeak(r29 - 0x78);
            r28 = var_220;
            r25 = r22;
            r20 = var_208;
    }
    [r20 release];
    [r25 release];
    [r28 release];
    r0 = r23;
    return r0;
}

-(void)handleClickAction:(void *)arg2 {
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
    r20 = [[GADEventContext rootContext] retain];
    r0 = [r19 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 conformsToProtocol:@protocol(GADEventContextSource)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 object];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 context];
            r29 = r29;
            r23 = [r0 retain];
            [r20 release];
            [r22 release];
            r20 = r23;
    }
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r24 = [[r22 objectForKeyedSubscript:*0x100e95368] retain];
    r23 = [[NSURL URLWithString:r24] retain];
    [r24 release];
    r0 = sub_1008b3874(r23, *(int8_t *)(int64_t *)&r21->_analyticsLoggingEnabled);
    r0 = [r0 retain];
    sub_10084cc54(r0, r20);
    [r21 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)confirmURLNavigation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r22 = [[r0 dictionaryForKey:*0x100e9b418] retain];
    [r0 release];
    r21 = [[r22 objectForKeyedSubscript:[r19 scheme]] retain];
    [r22 release];
    if (r21 != 0x0) {
            [r20 confirmClickToURL:r19 title:r21];
    }
    else {
            sub_10081f360(r19, objc_loadWeakRetained((int64_t *)&r20->_ad));
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)handleOpenApplicationWithURL:(void *)arg2 navigationURL:(void *)arg3 sourceURL:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 == 0x0) goto loc_1007f6224;

loc_1007f61cc:
    if (sub_10087e2e0(r22->_clickProtection, r20, r21) == 0x0) goto loc_1007f626c;

loc_1007f61e8:
    r23 = [sub_1008b3874(r19, *(int8_t *)(int64_t *)&r22->_analyticsLoggingEnabled) retain];
    [r22 confirmURLNavigation:r23];
    r0 = r23;
    goto loc_1007f6268;

loc_1007f6268:
    [r0 release];
    goto loc_1007f626c;

loc_1007f626c:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1007f6224:
    r0 = objc_loadWeakRetained((int64_t *)&r22->_ad);
    r0 = [r0 context];
    r0 = [r0 retain];
    sub_1007ce06c(r0, @"Cannot open application with nil click URL.");
    [r23 release];
    r0 = r22;
    goto loc_1007f6268;
}

-(void)handleOpenApplicationAction:(void *)arg2 {
    r24 = [arg2 retain];
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r22 = [[r20 objectForKeyedSubscript:*0x100e95368] retain];
    r26 = [[NSURL URLWithString:r22] retain];
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r28 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    [r0 release];
    r21 = [arg2 userInfo];
    [r24 release];
    r0 = [r21 retain];
    r23 = [[r0 objectForKeyedSubscript:*0x100e95350] retain];
    [r0 release];
    [self handleOpenApplicationWithURL:r26 navigationURL:r28 sourceURL:r23];
    [r23 release];
    [r28 release];
    [r26 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)confirmClickToURL:(void *)arg2 title:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [[arg2 scheme] retain];
    r24 = [[arg2 absoluteString] retain];
    r25 = [[r24 substringFromIndex:[r21 length] + 0x1] retain];
    [r24 release];
    r24 = [[UIAlertView alloc] initWithTitle:@"" message:r25 delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:r23];
    [r23 release];
    [self->_confirmationAlertURLs setObject:arg2 forKey:r24];
    [r20 release];
    [r24 show];
    [r24 release];
    [r25 release];
    [r21 release];
    return;
}

-(void)openSafariViewControllerToURL:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = sub_1008718ac();
    r0 = objc_loadWeakRetained((int64_t *)&self->_ad);
    r20 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r21 = [[r0 topViewController] retain];
    [r0 release];
    if (r22 != 0x0 && r21 != 0x0) {
            r0 = [r22 alloc];
            r0 = [r0 initWithURL:r19];
            sub_1008b42f0(r0, r21, r20, 0x0);
            sub_1008004f8(r19, r20);
            [r22 release];
    }
    else {
            sub_10081f360(r19, r20);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleOpenSafariAction:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
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
    r21 = r20->_clickProtection;
    r23 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    r0 = [r19 objectForKeyedSubscript:*0x100e95350];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r21 = sub_10087e2e0(r21, r23, r24);
    [r24 release];
    [r23 release];
    if (r21 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e95340];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 objectForKeyedSubscript:*0x100e95368] retain];
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    [r20 openSafariViewControllerToURL:r23];
            }
            else {
                    r0 = objc_loadWeakRetained((int64_t *)&r20->_ad);
                    r0 = [r0 context];
                    r0 = [r0 retain];
                    sub_1007ce06c(r0, @"Cannot open safari with nil click URL.");
                    [r24 release];
                    [r20 release];
            }
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)handleOpenBrowserAction:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = r24->_clickProtection;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95350];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r22 = sub_10087e2e0(r22, r25, r27);
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    if (r22 == 0x0) goto loc_1007f6988;

loc_1007f669c:
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r21 = [[r20 objectForKeyedSubscript:*0x100e95368] retain];
    r0 = [NSURL URLWithString:r21];
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_loadWeakRetained((int64_t *)&r24->_ad);
    if (r22 == 0x0) goto loc_1007f6908;

loc_1007f673c:
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 boolForKey:*0x100e9b690];
    [r0 release];
    if (sub_1008718b8() == 0x0 || r26 == 0x0 || sub_1008718ac() == 0x0) goto loc_1007f67b0;

loc_1007f6798:
    [r24 openSafariViewControllerToURL:r22];
    goto loc_1007f6968;

loc_1007f6968:
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_1007f6988;

loc_1007f6988:
    [r19 release];
    return;

loc_1007f67b0:
    r0 = sub_10088cf14();
    r26 = r0;
    if ((sub_10089acfc(r0) & 0x1) == 0x0) goto loc_1007f6930;

loc_1007f67c4:
    r0 = [r23 rootViewControllerProvider];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 topViewController];
    r29 = r29;
    r24 = [r0 retain];
    [r25 release];
    if (r24 != 0x0) {
            r0 = [GADBrowserViewController alloc];
            r0 = [r0 initWithAd:r23];
            r25 = r0;
            [r0 setSupportedInterfaceOrientations:r26];
            r0 = [r19 object];
            r29 = r29;
            r27 = [r0 retain];
            [GADWebAdView class];
            r28 = [r27 isKindOfClass:r2];
            [r27 release];
            if (r28 != 0x0) {
                    r0 = [r19 object];
                    r0 = [r0 retain];
                    var_58 = r0;
                    r0 = [r0 webViewController];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 mainDocumentURL];
                    r0 = [r0 retain];
                    r26 = [r0 copy];
                    [r0 release];
                    [r28 release];
                    [var_58 release];
            }
            else {
                    r26 = 0x0;
            }
            [r25 loadURL:r22 referringURL:r26];
            sub_1008b3ef0(r25, r24, r23, 0x0);
            sub_1008004f8(r22, r23);
            [r26 release];
            [r25 release];
    }
    else {
            sub_10081f360(r22, r23);
    }
    goto loc_1007f6960;

loc_1007f6960:
    [r24 release];
    goto loc_1007f6968;

loc_1007f6930:
    r24 = [[r23 context] retain];
    r1 = @"Cannot open browser. Application does not support provided orientations. %lu";
    goto loc_1007f6958;

loc_1007f6958:
    sub_1007ce06c(r24, r1);
    goto loc_1007f6960;

loc_1007f6908:
    r24 = [[r23 context] retain];
    r1 = @"Cannot open browser with nil click URL.";
    goto loc_1007f6958;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_confirmationAlertURLs));
    r20 = *(r19 + r25);
    [arg2 retain];
    r20 = [[r20 objectForKey:arg2] retain];
    sub_100822100(*(r19 + r25), arg2);
    [arg2 firstOtherButtonIndex];
    [r24 release];
    if (r20 != 0x0) {
            asm { ccmp       x22, x21, #0x0, ne };
    }
    if (!CPU_FLAGS & NE) {
            sub_10081f360(r20, objc_loadWeakRetained((int64_t *)&r19->_ad));
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)adView:(void *)arg2 runJavaScriptAlertPanelWithTitle:(void *)arg3 message:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xc0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_ad);
    r23 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 topViewController];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    r0 = self->_clickProtection;
    r0 = [r0 shouldAllowClickAction];
    if (r24 != 0x0) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            (*(r22 + 0x10))(r22);
    }
    else {
            if ((r0 & 0x1) != 0x0) {
                    r25 = [[UIAlertController alertControllerWithTitle:r20 message:r21 preferredStyle:0x1] retain];
                    var_88 = [r22 retain];
                    r0 = [UIAlertAction actionWithTitle:@"OK" style:0x0 handler:&var_A8];
                    [r25 addAction:[r0 retain]];
                    sub_1008b42f0(r25, r24, r23, 0x0);
                    [r26 release];
                    [var_88 release];
                    [r25 release];
                    _Block_object_dispose(&var_78, 0x8);
            }
            else {
                    (*(r22 + 0x10))(r22);
            }
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleSMSAction:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r23 = self;
    r24 = [arg2 retain];
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    [r0 release];
    r20 = [arg2 userInfo];
    [r24 release];
    r0 = [r20 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95350];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r21 = objc_loadWeakRetained((int64_t *)&r23->_ad);
    if (r19 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E && [MFMessageComposeViewController canSendText] != 0x0 && sub_10087e2e0(r23->_clickProtection, r19, r20) != 0x0) {
            r0 = [r21 rootViewControllerProvider];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 topViewController];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (r23 != 0x0) {
                    r24 = [[r19 absoluteString] retain];
                    var_60 = [sub_100899cd4(r19, 0x1) retain];
                    r28 = [[NSRegularExpression alloc] initWithPattern:@"sms:([^?]+)" options:0x1 error:0x0];
                    var_58 = r28;
                    [r24 length];
                    r25 = [[r28 firstMatchInString:r24 options:0x2 range:0x0] retain];
                    r28 = [[MFMessageComposeViewController alloc] init];
                    r26 = [[GADComposeViewControllerDelegate sharedInstance] retain];
                    [r28 setMessageComposeDelegate:r26];
                    [r26 release];
                    r0 = [r24 substringWithRange:[r25 rangeAtIndex:0x1]];
                    r0 = [r0 retain];
                    r27 = [[r0 componentsSeparatedByString:@","] retain];
                    [r28 setRecipients:r27];
                    [r27 release];
                    r27 = [[var_60 objectForKeyedSubscript:@"body"] retain];
                    [r28 setBody:r27];
                    [r27 release];
                    r22 = [[var_60 objectForKeyedSubscript:@"subject"] retain];
                    [r28 setSubject:r22];
                    [r22 release];
                    sub_1008b42f0(r28, r23, r21, 0x0);
                    sub_1008004f8(r19, r21);
                    [r26 release];
                    [r28 release];
                    [r25 release];
                    [var_58 release];
                    [var_60 release];
                    [r24 release];
            }
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleMailAction:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r24 = [arg2 retain];
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    [r0 release];
    r20 = [arg2 userInfo];
    [r24 release];
    r0 = [r20 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95350];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r21 = objc_loadWeakRetained((int64_t *)&r23->_ad);
    if (r19 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E && [MFMailComposeViewController canSendMail] != 0x0 && sub_10087e2e0(r23->_clickProtection, r19, r20) != 0x0) {
            r0 = [r21 rootViewControllerProvider];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 topViewController];
            r29 = r29;
            r23 = [r0 retain];
            [r24 release];
            if (r23 != 0x0) {
                    r24 = [[r19 absoluteString] retain];
                    r25 = [sub_100899cd4(r19, 0x1) retain];
                    r28 = [[NSRegularExpression alloc] initWithPattern:@"mailto:([^?]+)" options:0x1 error:0x0];
                    [r24 length];
                    var_78 = r24;
                    r0 = [r28 firstMatchInString:r24 options:0x2 range:0x0];
                    r0 = [r0 retain];
                    var_80 = r0;
                    var_88 = [[r24 substringWithRange:[r0 rangeAtIndex:0x1]] retain];
                    r26 = [[MFMailComposeViewController alloc] init];
                    r27 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
                    [r26 setToRecipients:r27];
                    [r27 release];
                    r0 = [r25 objectForKeyedSubscript:@"cc"];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 componentsSeparatedByString:@","];
                    r0 = [r0 retain];
                    var_68 = r23;
                    [r26 setCcRecipients:r0];
                    [r0 release];
                    [r27 release];
                    r0 = [r25 objectForKeyedSubscript:@"bcc"];
                    r0 = [r0 retain];
                    r24 = [[r0 componentsSeparatedByString:@","] retain];
                    [r26 setBccRecipients:r24];
                    [r24 release];
                    [r0 release];
                    r23 = [[r25 objectForKeyedSubscript:@"subject"] retain];
                    [r26 setSubject:r23];
                    r0 = r23;
                    r23 = var_68;
                    [r0 release];
                    r22 = [[r25 objectForKeyedSubscript:@"body"] retain];
                    [r26 setMessageBody:r22 isHTML:0x0];
                    [r22 release];
                    sub_1008b42f0(r26, r23, r21, 0x0);
                    sub_1008004f8(r19, r21);
                    [r26 release];
                    [var_88 release];
                    [var_80 release];
                    [r28 release];
                    [r25 release];
                    [var_78 release];
            }
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)adView:(void *)arg2 runJavaScriptConfirmPanelWithTitle:(void *)arg3 message:(void *)arg4 completionHandler:(void *)arg5 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_ad);
    r23 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 topViewController];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    r0 = self->_clickProtection;
    r0 = [r0 shouldAllowClickAction];
    if (r24 != 0x0) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            (*(r22 + 0x10))(r22, 0x0);
    }
    else {
            if ((r0 & 0x1) != 0x0) {
                    var_F0 = r19;
                    var_100 = r21;
                    r25 = [[UIAlertController alertControllerWithTitle:r20 message:r21 preferredStyle:0x1] retain];
                    r26 = @class(UIAlertAction);
                    r28 = [r22 retain];
                    r26 = [[r26 actionWithTitle:@"Cancel" style:0x0 handler:&var_B8] retain];
                    r19 = @class(UIAlertAction);
                    var_C8 = [r28 retain];
                    r0 = [r19 actionWithTitle:@"OK" style:0x0 handler:&var_E8];
                    r27 = [r0 retain];
                    [r25 addAction:r26];
                    [r25 addAction:r27];
                    sub_1008b42f0(r25, r24, r23, 0x0);
                    [r27 release];
                    [var_C8 release];
                    [r26 release];
                    [r28 release];
                    [r25 release];
                    _Block_object_dispose(&var_88, 0x8);
                    r20 = r20;
                    r19 = var_F0;
                    r21 = var_100;
            }
            else {
                    (*(r22 + 0x10))(r22, 0x0);
            }
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adView:(void *)arg2 runJavaScriptTextInputPanelWithTitle:(void *)arg3 defaultText:(void *)arg4 prompt:(void *)arg5 completionHandler:(void *)arg6 {
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
    r27 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_ad);
    r24 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 topViewController];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r19 release];
    r0 = self->_clickProtection;
    r0 = [r0 shouldAllowClickAction];
    if (r25 != 0x0) {
            asm { ccmp       x24, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            (*(r23 + 0x10))(r23, 0x0);
    }
    else {
            if ((r0 & 0x1) != 0x0) {
                    var_128 = r27;
                    var_120 = r21;
                    var_130 = r20;
                    r27 = [[UIAlertController alertControllerWithTitle:r20 message:r22 preferredStyle:0x1] retain];
                    r26 = @class(UIAlertAction);
                    r19 = [r23 retain];
                    r26 = [[r26 actionWithTitle:@"Cancel" style:0x1 handler:&var_B8] retain];
                    r20 = @class(UIAlertAction);
                    var_D0 = [r19 retain];
                    r27 = [r27 retain];
                    r28 = [[r20 actionWithTitle:@"OK" style:0x0 handler:&var_F0] retain];
                    var_F8 = [var_120 retain];
                    [r27 addTextFieldWithConfigurationHandler:&var_118];
                    [r27 addAction:r26];
                    [r27 addAction:r28];
                    sub_1008b42f0(r27, r25, r24, 0x0);
                    [var_F8 release];
                    [r28 release];
                    [r27 release];
                    [var_D0 release];
                    [r26 release];
                    [r19 release];
                    [r27 release];
                    _Block_object_dispose(r29 - 0x88, 0x8);
                    r20 = var_130;
                    r27 = var_128;
                    r21 = var_120;
            }
            else {
                    (*(r23 + 0x10))(r23, 0x0);
            }
    }
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r27 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_clickProtection, 0x0);
    objc_storeStrong((int64_t *)&self->_confirmationAlertURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    return;
}

@end