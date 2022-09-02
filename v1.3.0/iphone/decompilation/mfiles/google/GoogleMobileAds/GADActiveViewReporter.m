@implementation GADActiveViewReporter

-(void)setAdViewNeedsActiveViewUpdates:(bool)arg2 {
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x20, &saved_fp - 0x28);
    dispatch_async(r20, &var_58);
    objc_destroyWeak(&var_58 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void *)initWithAdFormat:(void *)arg2 activeViewConfiguration:(void *)arg3 reportingAdView:(void *)arg4 adEventContextIdentifier:(void *)arg5 analyticsLoggingEnabled:(bool)arg6 {
    r31 = r31 - 0x60;
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
    r20 = arg6;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r24 = [arg5 retain];
    r0 = [[&var_50 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.active-view-reporter", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adFormat));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configuration));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r23->_reportingAdView, r22);
            r0 = [r24 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adEventContextID));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r23->_analyticsLoggingEnabled = r20;
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)setAdDidMakeImpression:(bool)arg2 {
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x20, &saved_fp - 0x28);
    dispatch_async(r20, &var_58);
    objc_destroyWeak(&var_58 + 0x20);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)setVisibilityInformation:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r20;
    [r20 retain];
    dispatch_async(r19, &var_58);
    [var_38 release];
    [r20 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)updateActiveViewStatusWithUnloaded:(bool)arg2 {
    var_20 = [self retain];
    sub_100860a80();
    [var_20 release];
    return;
}

-(void)updateActiveViewStatus:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [self retain];
    r0 = objc_retainBlock(&var_48);
    [r19 updateActiveViewStatus:r20 completionHandler:r0];
    [r20 release];
    [r0 release];
    [r19 release];
    return;
}

-(void)finishActiveViewStatusUpdate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r21 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_async(r21, &var_50);
            [r21 release];
            [var_28 release];
            [var_30 release];
    }
    [r19 release];
    return;
}

-(void)endActiveViewStatusForActiveViewContext:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    objc_initWeak(&saved_fp - 0x48, self);
    r0 = dispatch_semaphore_create(0x0);
    r20 = &var_B0 + 0x38;
    r21 = [r0 retain];
    var_90 = r21;
    objc_copyWeak(r20, &saved_fp - 0x48);
    r23 = [self retain];
    var_88 = r23;
    r0 = objc_retainBlock(&var_B0);
    r22 = r0;
    [r23 updateActiveViewStatus:r19 completionHandler:r22];
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 doubleForKey:r2];
    [r23 release];
    asm { fcvtzs     x1, d0 };
    if (dispatch_semaphore_wait(r21, dispatch_time(0x0, r1)) != 0x0) {
            r0 = sub_1008098f8(0x3, 0x0);
            r29 = r29;
            (*(r22 + 0x10))(r22, 0x0, [r0 retain]);
            [r23 release];
    }
    [r22 release];
    [var_88 release];
    objc_destroyWeak(r20);
    [var_90 release];
    [r21 release];
    _Block_object_dispose(&var_70, 0x8);
    objc_destroyWeak(r29 - 0x48);
    [r19 release];
    return;
}

-(void)updateActiveViewStatus:(void *)arg2 completionHandler:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_60 + 0x30, &saved_fp - 0x28);
    var_40 = r19;
    [r19 retain];
    var_38 = r21;
    [r21 retain];
    dispatch_async(r20, &var_60);
    [var_38 release];
    [var_40 release];
    [r21 release];
    [r19 release];
    objc_destroyWeak(&var_60 + 0x30);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)updateActiveViewStatusForAdView:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [sub_10084aae0(arg2, &saved_fp - 0x28) retain];
    r20 = [0x0 retain];
    if (r20 != 0x0) {
            sub_1007ce06c(0x0, @"Error converting to JSON. Error:%@");
    }
    else {
            r22 = [[NSString alloc] initWithFormat:@"AFMA_updateActiveView(%@)"];
            var_38 = [r21 retain];
            [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [r22 release];
            [var_38 release];
            [r21 release];
    }
    [r19 release];
    [r20 release];
    return;
}

-(void)asynchronouslyLoadActiveViewContext {
    objc_initWeak(&saved_fp - 0x18, self);
    [dispatch_get_global_queue(0x0, 0x0) retain];
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    dispatch_async(r20, &var_40);
    [r20 release];
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)loadActiveViewContext:(void *)arg2 {
    r31 = r31 - 0xe0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = dispatch_semaphore_create(0x0);
    r20 = [r0 retain];
    var_80 = r20;
    r19 = [r19 retain];
    var_78 = r19;
    r0 = objc_retainBlock(&var_A0);
    r23 = [[GADJSContextController sharedInstance] retain];
    r21 = [r0 retain];
    var_A8 = r21;
    [r23 asyncActiveViewContext:&var_C8];
    [r23 release];
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 doubleForKey:r2];
    [r22 release];
    asm { fcvtzs     x1, d0 };
    if (dispatch_semaphore_wait(r20, dispatch_time(0x0, r1)) != 0x0) {
            [sub_1008098f8(0x6, 0x0) retain];
            sub_1007ce06c(0x0, @"Timed out loading Active View context. Error: %@");
            [r22 release];
            (*(r21 + 0x10))(r21, 0x0);
            dispatch_semaphore_wait(r20, 0xffffffffffffffff);
    }
    [var_A8 release];
    [r21 release];
    [var_78 release];
    [var_80 release];
    [r20 release];
    _Block_object_dispose(&var_68, 0x8);
    [r19 release];
    return;
}

-(void)convertScrollableContainerInfo:(void *)arg2 toParameters:(void *)arg3 {
    r31 = r31 - 0x130;
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
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg2 objectForKeyedSubscript:*0x100e96b10];
    [r21 release];
    r21 = [r20 retain];
    r20 = [[NSMutableArray alloc] init];
    r0 = [r21 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            sub_100814c6c();
                            r0 = sub_1008263e0();
                            r29 = r29;
                            sub_100822370(r20, [r0 retain]);
                            [r24 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    sub_100822058(r19, @"scrollableContainerBoxes", r20);
    [r19 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateMainThreadParameters {
    [[NSMutableDictionary alloc] init];
    sub_1008080d0();
    sub_100822058(r20, @"deviceVolume", [[r21 numberWithFloat:r2] retain]);
    [r21 release];
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 applicationFrame];
    sub_100822058(r20, @"screenDimension", [sub_1008263e0() retain]);
    [r22 release];
    [r21 release];
    r21 = @class(NSNumber);
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    sub_100822058(r20, @"screenOrientation", [[r21 numberWithInteger:[r0 statusBarOrientation]] retain]);
    [r21 release];
    [r22 release];
    r21 = self->_lockQueue;
    var_40 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_60);
    [r20 release];
    [var_40 release];
    [r19 release];
    return;
}

-(void)updateScrollStatusForAdView:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [sub_10084aae0(arg2, &saved_fp - 0x28) retain];
    r20 = [0x0 retain];
    if (r20 != 0x0) {
            sub_1007ce06c(0x0, @"Error converting to JSON. %@");
    }
    else {
            r22 = [[NSString alloc] initWithFormat:@"AFMA_updateActiveViewScroll(%@)"];
            var_38 = [r21 retain];
            [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [r22 release];
            [var_38 release];
            [r21 release];
    }
    [r19 release];
    [r20 release];
    return;
}

-(void *)activeViewStateWithUnloaded:(bool)arg2 userInfo:(void *)arg3 {
    r31 = r31 - 0xc0;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    [arg3 retain];
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [arg3 objectForKeyedSubscript:*0x100e96af0];
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    r0 = [arg3 objectForKeyedSubscript:*0x100e96af8];
    r0 = [r0 retain];
    [r0 boolValue];
    [r0 release];
    [[arg3 objectForKeyedSubscript:*0x100e96b00] retain];
    CGRectFromString();
    [r27 release];
    [[arg3 objectForKeyedSubscript:*0x100e96b08] retain];
    CGRectFromString();
    [r27 release];
    [[arg3 objectForKeyedSubscript:*0x100e96b18] retain];
    CGRectFromString();
    [r25 release];
    [r19 convertScrollableContainerInfo:r24 toParameters:r20];
    [r24 release];
    sub_100822058(r20, @"adBox", [sub_1008263e0() retain]);
    [r24 release];
    sub_100822058(r20, @"globalVisibleBox", [sub_1008263e0() retain]);
    [r24 release];
    r0 = sub_1008263e0();
    r29 = &var_10;
    r2 = [r0 retain];
    sub_100822058(r20, @"viewBox", r2);
    [r24 release];
    if (r23 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    sub_100822058(r20, @"isSubViewOfVisibleWindow", r2);
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    sub_100822058(r20, @"isVisible", r2);
    sub_100822058(r20, @"afmaVersion", *0x100e9f550);
    sub_100822058(r20, @"adFormat", r19->_adFormat);
    r22 = [r19->_configuration retain];
    if (r22 != 0x0) {
            sub_100822058(r20, @"activeViewJSON", r22);
    }
    r0 = [NSNumber numberWithLongLong:sub_1008b99f8()];
    r29 = r29;
    sub_100822058(r20, @"timestamp", [r0 retain]);
    [r23 release];
    sub_100822058(r20, @"hashCode", r19->_adEventContextID);
    if (r21 != 0x0) {
            sub_100822058(r20, @"doneReasonCode", @"u");
    }
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    sub_100822058(r20, @"appMuted", [[NSNumber numberWithBool:[r0 applicationMuted]] retain]);
    [r24 release];
    r24 = @class(NSNumber);
    [r21 applicationVolume];
    sub_100822058(r20, @"appVolume", [[r24 numberWithFloat:r2] retain]);
    [r24 release];
    sub_100822058(r20, @"isAnalyticsLoggingEnabled", [[NSNumber numberWithBool:*(int8_t *)(int64_t *)&r19->_analyticsLoggingEnabled] retain]);
    [r23 release];
    [r20 addEntriesFromDictionary:r19->_mainThreadParameters];
    [r21 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)updateActiveViewScrollStatus:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_lockQueue;
    [r0 retain];
    var_28 = [self retain];
    dispatch_async(r20, &var_50);
    [var_28 release];
    [r0 release];
    [r21 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mainThreadParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_visibilityInformation, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_adEventContextID, 0x0);
    objc_storeStrong((int64_t *)&self->_adFormat, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_reportingAdView);
    objc_storeStrong((int64_t *)&self->_activeViewContext, 0x0);
    return;
}

@end