@implementation GADAdVerificationReporter

-(void *)initWithWebViewController:(void *)arg2 mediaType:(long long)arg3 friendlyObstructionView:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r23 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r25 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r25);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r25);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_monitoredViews));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            r21->_mediaType = r23;
            objc_storeStrong((int64_t *)&r21->_webViewController, r22);
            objc_storeWeak((int64_t *)&r21->_friendlyObstructionView, r20);
            r22 = [GADAdVerificationMonitoredView alloc];
            r23 = [[r21->_webViewController webView] retain];
            r22 = [r22 initWithMonitoredView:r23];
            [r23 release];
            sub_100822370(*(r21 + r25), r22);
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r23 addObserverForName:*0x100e9c120 object:0x0 queue:r25 usingBlock:&var_80];
            [r25 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)beginAdSession {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adSession));
    r8 = *(r19 + r22);
    if (r8 != 0x0) {
            sub_1007ce06c(0x0, @"Ad session already exists. Current ad session: %@");
    }
    r0 = [GADAdVerification sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adSessionForWebViewController:r19->_webViewController mediaType:r19->_mediaType];
    r0 = [r0 retain];
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    [r20 release];
    r21 = (int64_t *)&r19->_friendlyObstructionView;
    r20 = objc_loadWeakRetained(r21);
    if (r20 != 0x0) {
            [*(r19 + r22) addFriendlyObstruction:r20];
            objc_storeWeak(r21, 0x0);
    }
    [*(r19 + r22) start];
    [r20 release];
    return;
}

-(void)endAdSession {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adSession));
    [*(self + r20) finish];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:r2];
    [r20 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(self + r21);
    r0 = [r0 retain];
    var_38 = r0;
    *(self + r21) = 0x0;
    [r0 release];
    asm { fcvtzs     x1, d0 };
    dispatch_after(dispatch_time(0x0, r1), *__dispatch_main_q, &var_88);
    _Block_object_dispose(&var_60, 0x8);
    [var_38 release];
    return;
}

-(void)setMonitoredView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self->_adSession setMainAdView:r19];
    objc_storeWeak((int64_t *)&self->_currentMonitoredView, r19);
    r20 = [[self->_monitoredViews firstObject] retain];
    if (r20 == 0x0) {
            r20 = [[GADAdVerificationMonitoredView alloc] initWithMonitoredView:r19];
    }
    [r20 setMonitoredView:r19];
    [r20 release];
    [r19 release];
    return;
}

-(void)addExpandView:(void *)arg2 presenter:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
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
    if (r19 != 0x0 && r20 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r22->_currentMonitoredView);
            [r0 release];
            if (r0 != 0x0) {
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adSession));
                    [*(r22 + r24) setMainAdView:r19];
                    r21 = [[GADAdVerificationMonitoredView alloc] initWithMonitoredView:r19];
                    sub_100822370(r22->_monitoredViews, r21);
                    [GADFullScreenAdViewController class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r23 = [[r20 closeButton] retain];
                            if (r23 != 0x0) {
                                    [*(r22 + r24) addFriendlyObstruction:r23];
                            }
                            [r23 release];
                    }
                    objc_initWeak(&stack[-72], r22);
                    objc_initWeak(&stack[-80], r21);
                    objc_copyWeak(&var_70 + 0x20, &stack[-72]);
                    objc_copyWeak(&var_70 + 0x28, &stack[-80]);
                    [r21 addObserverForMonitoredViewDismissal:r20 dismissalBlock:&var_70];
                    objc_destroyWeak(&var_70 + 0x28);
                    objc_destroyWeak(&var_70 + 0x20);
                    objc_destroyWeak(&stack[-80]);
                    objc_destroyWeak(&stack[-72]);
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)cleanUpDeallocatedMonitoredViews {
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
    r19 = self;
    r0 = r19->_monitoredViews;
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_10088ad98;

loc_10088ad24:
    r28 = 0x0;
    goto loc_10088ad2c;

loc_10088ad2c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r24 = *(0x0 + r28 * 0x8);
    r0 = [r24 monitoredView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10088ada0;

loc_10088ad6c:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_10088ad2c;

loc_10088ad78:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_10088ad24;

loc_10088ad98:
    r0 = r20;
    goto loc_10088add0;

loc_10088add0:
    [r0 release];
    goto loc_10088add4;

loc_10088add4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10088ada0:
    r21 = [r24 retain];
    [r20 release];
    if (r21 == 0x0) goto loc_10088add4;

loc_10088adb8:
    [r19 stopTrackingAdVerificationView:r21];
    r0 = r21;
    goto loc_10088add0;
}

-(void)stopTrackingAdVerificationView:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_monitoredViews));
    if ([*(r20 + r23) count] != 0x0) {
            r22 = [*(r20 + r23) indexOfObject:r19];
            if (r22 != 0x7fffffffffffffff) {
                    [*(r20 + r23) count] - r22;
                    [*(r20 + r23) removeObjectsInRange:r22];
                    r0 = *(r20 + r23);
                    r0 = [r0 lastObject];
                    r0 = [r0 retain];
                    objc_storeWeak((int64_t *)&r20->_currentMonitoredView, [[r0 monitoredView] retain]);
                    [r20->_adSession setMainAdView:r22];
                    [r22 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewController, 0x0);
    objc_destroyWeak((int64_t *)&self->_currentMonitoredView);
    objc_destroyWeak((int64_t *)&self->_friendlyObstructionView);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_monitoredViews, 0x0);
    objc_storeStrong((int64_t *)&self->_adSession, 0x0);
    return;
}

@end