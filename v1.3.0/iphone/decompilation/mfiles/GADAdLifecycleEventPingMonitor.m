@implementation GADAdLifecycleEventPingMonitor

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 {
    r19 = [arg2 retain];
    r26 = [arg3 retain];
    r21 = [[arg3 objectForKeyedSubscript:*0x100e959a0] retain];
    r22 = [[arg3 objectForKeyedSubscript:*0x100e959a8] retain];
    r23 = [[arg3 objectForKeyedSubscript:*0x100e959b8] retain];
    r24 = [arg3 objectForKeyedSubscript:*0x100e95948];
    [r26 release];
    r0 = [r24 retain];
    r25 = [r0 boolValue];
    [r0 release];
    r24 = [[GADAdLifecycleEventPingMonitor alloc] initWithAd:r19 adLoadURLStrings:r21 onePixelURLStrings:r22 clickURLStrings:r23 analyticsLoggingEnabled:r25];
    [arg2 addMonitor:r24];
    [r19 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    return;
}

-(void *)initWithAd:(void *)arg2 adLoadURLStrings:(void *)arg3 onePixelURLStrings:(void *)arg4 clickURLStrings:(void *)arg5 analyticsLoggingEnabled:(bool)arg6 {
    r31 = r31 - 0x170;
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
    r24 = arg6;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r27 = [arg4 retain];
    r28 = [arg5 retain];
    r22 = [[r29 - 0x70 super] init];
    if (r22 != 0x0) {
            r25 = @selector(init);
            r0 = @class(NSArray);
            r0 = [r0 alloc];
            r0 = [r0 initWithArray:r27 copyItems:0x1];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_onePixelURLStrings));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = @class(NSArray);
            r0 = [r0 alloc];
            r0 = [r0 initWithArray:r28 copyItems:0x1];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_clickURLStrings));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = @class(NSArray);
            r0 = [r0 alloc];
            r0 = [r0 initWithArray:r23 copyItems:0x1];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadURLStrings));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r22->_analyticsLoggingEnabled = r24;
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r25);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r22);
            r0 = [r19 context];
            var_150 = r28;
            var_148 = r27;
            [r0 retain];
            objc_copyWeak((r29 - 0xa8) + 0x28, r29 - 0x78);
            var_88 = [r20 retain];
            [r25 addObserverForName:*0x100e9c018 object:r19 queue:0x0 usingBlock:r29 - 0xa8];
            objc_copyWeak(&var_D8 + 0x28, r29 - 0x78);
            [r20 retain];
            [r27 addObserverForName:*0x100e9c078 object:r19 queue:0x0 usingBlock:&var_D8];
            objc_copyWeak(&var_108 + 0x28, r29 - 0x78);
            var_E8 = [r20 retain];
            [r21 addObserverForName:*0x100e9c090 object:r19 queue:0x0 usingBlock:&var_108];
            objc_copyWeak(&var_138 + 0x28, r29 - 0x78);
            r28 = [r28 retain];
            [r21 addObserverForName:*0x100e9c678 object:r19 queue:0x0 usingBlock:&var_138];
            [r28 release];
            objc_destroyWeak(&var_138 + 0x28);
            [var_E8 release];
            objc_destroyWeak(&var_108 + 0x28);
            [r20 release];
            objc_destroyWeak(&var_D8 + 0x28);
            [var_88 release];
            objc_destroyWeak((r29 - 0xa8) + 0x28);
            [r28 release];
            objc_destroyWeak(r29 - 0x78);
            r23 = r23;
            r28 = var_150;
            r27 = var_148;
    }
    [r28 release];
    [r27 release];
    [r23 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)pingURLStrings:(void *)arg2 analyticsEvent:(void *)arg3 context:(void *)arg4 {
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r19 count] != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediationBannerDidRefresh));
            r8 = r24 + r8;
            asm { ldarb      w8, [x8] };
            r22 = [sub_1007f96c8(r19, r8 & 0x1) retain];
            r23 = [sub_10089914c() retain];
            r0 = [GADAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = sub_1008ad0f4(r20, r23, *(int8_t *)(int64_t *)&r24->_analyticsLoggingEnabled);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 release];
                    r23 = r24;
            }
            if (r21 == 0x0) {
                    r0 = [GADEventContext rootContext];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r21 release];
                    r21 = r24;
            }
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 boolForKey:*0x100e9b448] != 0x0) {
                    r25 = [r20 isEqual:r2];
                    [r24 release];
                    if (r25 != 0x0) {
                            r23 = [r23 retain];
                            var_E0 = [r21 retain];
                            sub_100860a80();
                            [var_E0 release];
                            r0 = r23;
                    }
                    else {
                            r0 = [r23 retain];
                            r23 = r0;
                            r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r25 != 0x0) {
                                    do {
                                            r27 = 0x0;
                                            do {
                                                    if (*0x0 != *0x0) {
                                                            objc_enumerationMutation(r23);
                                                    }
                                                    sub_10084cc54(*(0x0 + r27 * 0x8), r21);
                                                    r27 = r27 + 0x1;
                                            } while (r27 < r25);
                                            r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    } while (r25 != 0x0);
                            }
                            r0 = r23;
                    }
            }
            else {
                    [r24 release];
                    r0 = [r23 retain];
                    r23 = r0;
                    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r25 != 0x0) {
                            do {
                                    r27 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            sub_10084cc54(*(0x0 + r27 * 0x8), r21);
                                            r27 = r27 + 0x1;
                                    } while (r27 < r25);
                                    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r25 != 0x0);
                    }
                    r0 = r23;
            }
            [r0 release];
            [r23 release];
            [r22 release];
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

-(void)handleAdLoadInContext:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            [r0 pingAdLoadURLsInContext:r2];
    }
    return;
}

-(void)handleOnePixelImpressionInContext:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            [r0 pingOnePixelURLsInContext:r2];
    }
    return;
}

-(void)pingAdLoadURLsInContext:(void *)arg2 {
    [self pingURLStrings:self->_adLoadURLStrings analyticsEvent:*0x100e9dd90 context:arg2];
    return;
}

-(void)handleMediationBannerRefreshInContext:(void *)arg2 {
    r2 = arg2;
    r19 = self;
    asm { stlrb      w9, [x8] };
    r21 = [r2 retain];
    [r19 pingAdLoadURLsInContext:r21];
    [r19 pingOnePixelURLsInContext:r21];
    [r21 release];
    return;
}

-(void)pingOnePixelURLsInContext:(void *)arg2 {
    [self pingURLStrings:self->_onePixelURLStrings analyticsEvent:*0x100e9dd90 context:arg2];
    return;
}

-(void)handleClickInContext:(void *)arg2 {
    [self pingURLStrings:self->_clickURLStrings analyticsEvent:*0x100e9dd98 context:arg2];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_clickURLStrings, 0x0);
    objc_storeStrong((int64_t *)&self->_onePixelURLStrings, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoadURLStrings, 0x0);
    return;
}

@end