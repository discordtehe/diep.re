@implementation GADOpenDeeplinkMonitor

-(void *)initWithAd:(void *)arg2 messageSource:(void *)arg3 clickProtection:(void *)arg4 {
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
    r23 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r23 retain];
    r0 = [[&var_70 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            var_D8 = r21;
            var_D0 = r19;
            objc_storeWeak((int64_t *)&r22->_ad, r19);
            objc_storeWeak((int64_t *)&r22->_messageSource, r20);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r21);
            *(r22 + r21) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_clickProtection, r23);
            objc_initWeak(&stack[-136], r22);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r26 addObserverForName:*0x100e9c298 object:r20 queue:r27 usingBlock:&var_A0];
            [r27 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r26 addObserverForName:*0x100e9c230 object:r20 queue:r27 usingBlock:&var_C8];
            [r27 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
            r21 = var_D8;
            r19 = var_D0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)handleOpenDeeplinkAction:(void *)arg2 {
    r31 = r31 - 0x110;
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
    r25 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r25->_ad);
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r23 = [[r21 objectForKeyedSubscript:*0x100e95368] retain];
    r22 = [[NSURL URLWithString:r23] retain];
    [r23 release];
    r23 = [[r22 absoluteString] retain];
    r0 = [r21 objectForKeyedSubscript:*0x100e953a0];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r22 != 0x0) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x24, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r0 = [r20 context];
            r0 = [r0 retain];
            sub_1007ce06c(r0, @"Cannot open deeplink. Invalid URL or event ID provided in parameters: %@");
            [r25 release];
    }
    else {
            var_E0 = r24;
            var_D8 = r23;
            var_C8 = r20;
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e95348];
            r0 = [r0 retain];
            r23 = r19;
            r19 = r0;
            [r20 release];
            r24 = r23;
            r0 = [r23 userInfo];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e95350];
            r29 = r29;
            r23 = [r0 retain];
            [r20 release];
            r27 = r25;
            var_D0 = r19;
            var_E8 = r23;
            if (sub_10087e2e0(r25->_clickProtection, r19, r23) != 0x0) {
                    r0 = [r22 retain];
                    r26 = r0;
                    if ((sub_10089a100(r0, @"about") & 0x1) != 0x0) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = sub_10089a100(r26, @"file") ^ 0x1;
                    }
                    r19 = r24;
                    r23 = var_D8;
                    [r26 release];
            }
            else {
                    r20 = 0x0;
                    r19 = r24;
                    r23 = var_D8;
            }
            r24 = var_E0;
            if ((sub_100818968(0xa, 0x0, 0x0) & 0x1) != 0x0) {
                    if ((r20 & 0x1) == 0x0) {
                            r20 = objc_loadWeakRetained((int64_t *)&r27->_messageSource);
                            r26 = [@(NO) retain];
                            r28 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain];
                            [r20 asyncEvaluateFunction:*0x100e95418 parameters:r28];
                            [r28 release];
                            [r26 release];
                            r0 = r20;
                    }
                    else {
                            r20 = [[GADURLOpener sharedInstance] retain];
                            r26 = [r22 retain];
                            r28 = [var_C8 retain];
                            var_90 = [r27 retain];
                            var_88 = [r23 retain];
                            var_80 = [r24 retain];
                            [r20 openDeepLinkURL:r26 forAd:r28 completionHandler:&var_C0];
                            [r20 release];
                            [var_80 release];
                            [var_88 release];
                            [var_90 release];
                            [r28 release];
                            r0 = r26;
                    }
            }
            else {
                    if (((r20 ^ 0x1) & 0x1) == 0x0 && (sub_10089a100(r22, @"http") & 0x1) == 0x0 && (sub_10089a100(r22, @"https") & 0x1) == 0x0) {
                            r20 = [[GADURLOpener sharedInstance] retain];
                            r26 = [r22 retain];
                            r28 = [var_C8 retain];
                            var_90 = [r27 retain];
                            var_88 = [r23 retain];
                            var_80 = [r24 retain];
                            [r20 openDeepLinkURL:r26 forAd:r28 completionHandler:&var_C0];
                            [r20 release];
                            [var_80 release];
                            [var_88 release];
                            [var_90 release];
                            [r28 release];
                            r0 = r26;
                    }
                    else {
                            r20 = objc_loadWeakRetained((int64_t *)&r27->_messageSource);
                            r26 = [@(NO) retain];
                            r28 = [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain];
                            [r20 asyncEvaluateFunction:*0x100e95418 parameters:r28];
                            [r28 release];
                            [r26 release];
                            r0 = r20;
                    }
            }
            [r0 release];
            [var_E8 release];
            [var_D0 release];
            r20 = var_C8;
    }
    var_58 = **___stack_chk_guard;
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_storeStrong((int64_t *)&self->_clickProtection, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleDeeplinkPlusAction:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    r19 = [arg2 retain];
    r20 = [[GADEventContext rootContext] retain];
    r0 = [r19 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 conformsToProtocol:@protocol(GADEventContextSource)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 object];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 context];
            r29 = r29;
            r22 = [r0 retain];
            [r20 release];
            [r21 release];
            r20 = r22;
    }
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    [r0 release];
    r0 = [GADSettings sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 boolForKey:*0x100e9b3b0];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r21 host];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isEqual:r2];
            [r0 release];
            if (r23 != 0x0) {
                    var_128 = r19;
                    r27 = [sub_100899990(r21, @"primaryUrl") retain];
                    r0 = [NSURL URLWithString:r27];
                    r29 = r29;
                    r19 = [r0 retain];
                    r24 = objc_loadWeakRetained((int64_t *)&r24->_ad);
                    if (r19 != 0x0) {
                            var_158 = r24;
                            r23 = [sub_1008999f8(r21, @"primaryTrackingUrl") retain];
                            r24 = @class(NSURL);
                            r0 = sub_100899990(r21, @"fallbackUrl");
                            r0 = [r0 retain];
                            var_130 = r27;
                            var_178 = [[r24 URLWithString:r0] retain];
                            [r0 release];
                            var_140 = [sub_1008999f8(r21, @"fallbackTrackingUrl") retain];
                            var_150 = r19;
                            var_138 = [r19 retain];
                            r19 = [r23 retain];
                            r23 = [[GADDevice sharedInstance] retain];
                            r24 = [[NSArray arrayWithObjects:r29 - 0x60 count:0x1] retain];
                            r28 = [[r23 canOpenURLStrings:r24] retain];
                            [r24 release];
                            [r23 release];
                            var_168 = r28;
                            r0 = [r28 objectForKeyedSubscript:var_130];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_170 = r0;
                            r0 = [r0 boolValue];
                            var_148 = r21;
                            var_160 = r19;
                            if ((r0 & 0x1) != 0x0) {
                                    r23 = r19;
                                    r19 = var_178;
                            }
                            else {
                                    r24 = [var_178 retain];
                                    [var_138 release];
                                    r23 = [var_140 retain];
                                    [r19 release];
                                    var_138 = r24;
                                    r19 = var_178;
                            }
                            r0 = [r23 retain];
                            r24 = r0;
                            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r23 != 0x0) {
                                    do {
                                            r21 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    r0 = [NSURL URLWithString:*(0x0 + r21 * 0x8)];
                                                    r29 = r29;
                                                    r26 = [r0 retain];
                                                    if (r26 != 0x0) {
                                                            sub_10084cc54(r26, r20);
                                                    }
                                                    [r26 release];
                                                    r21 = r21 + 0x1;
                                            } while (r21 < r23);
                                            r23 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    } while (r23 != 0x0);
                            }
                            [r24 release];
                            r22 = var_158;
                            r21 = var_138;
                            if (r21 != 0x0) {
                                    sub_10081f360(r21, r22);
                            }
                            [var_170 release];
                            [var_168 release];
                            [r24 release];
                            [r21 release];
                            [var_140 release];
                            [r19 release];
                            [var_160 release];
                            r19 = var_150;
                            r21 = var_148;
                            r27 = var_130;
                    }
                    else {
                            r0 = [r24 context];
                            r0 = [r0 retain];
                            sub_1007ce06c(r0, @"Deeplink+ URL received with invalid primary URL: %@");
                            [r23 release];
                            r22 = r24;
                    }
                    [r22 release];
                    [r19 release];
                    [r27 release];
                    r19 = var_128;
            }
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

@end