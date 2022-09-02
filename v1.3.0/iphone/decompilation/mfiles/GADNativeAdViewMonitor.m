@implementation GADNativeAdViewMonitor

-(void *)initWithInternalNativeAd:(void *)arg2 handlesClicks:(bool)arg3 mediaContent:(void *)arg4 viewVisibilityMonitor:(void *)arg5 adConfiguration:(struct NSDictionary *)arg6 {
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
    r21 = arg5;
    r23 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r25 = [r21 retain];
    r26 = [arg6 retain];
    r22 = [[r29 - 0x70 super] init];
    if (r22 != 0x0) {
            objc_storeWeak((int64_t *)&r22->_internalNativeAd, r19);
            var_134 = r23;
            *(int8_t *)(int64_t *)&r22->_handlesClicks = r23;
            objc_storeWeak((int64_t *)&r22->_mediaContent, r20);
            r0 = [r19 publicAdClass];
            r0 = sub_1007de4f0(r0);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesAssetName));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_viewVisibilityMonitor, r21);
            r0 = [r26 objectForKeyedSubscript:*0x100e95940];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r26 objectForKeyedSubscript:*0x100e95968];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_debugDialogString));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r22);
            var_128 = (r29 - 0xa0) + 0x20;
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c528 object:r19 queue:0x0 usingBlock:r29 - 0xa0];
            var_130 = &var_C8 + 0x20;
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c530 object:r19 queue:0x0 usingBlock:&var_C8];
            var_120 = r20;
            r28 = var_134;
            var_150 = r26;
            stack[-344] = r25;
            [[NSOperationQueue mainQueue] retain];
            var_140 = &var_F0 + 0x20;
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r24 addObserverForName:*0x100e9c0d8 object:r19 queue:r25 usingBlock:&var_F0];
            [r25 release];
            if (var_120 != 0x0 && ((r28 ^ 0x1) & 0x1) == 0x0) {
                    r0 = [var_120 mediaView];
                    r29 = r29;
                    r25 = [r0 retain];
                    [GADWebAdView class];
                    if ([r25 isKindOfClass:r2] != 0x0) {
                            *(int8_t *)(int64_t *)&r22->_hasMediaContentObserver = 0x1;
                            [[NSOperationQueue mainQueue] retain];
                            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
                            [r20 addObserverForName:*0x100e9c658 object:r25 queue:r24 usingBlock:&var_118];
                            [r24 release];
                            objc_destroyWeak(&var_118 + 0x20);
                    }
                    [r25 release];
            }
            objc_destroyWeak(var_140);
            objc_destroyWeak(var_130);
            objc_destroyWeak(var_128);
            objc_destroyWeak(r29 - 0x78);
            r26 = var_150;
            r25 = stack[-344];
            r20 = var_120;
    }
    [r26 release];
    [r25 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)handleUntrackedView:(void *)arg2 {
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
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e99720];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r22 = (int64_t *)&r19->_trackedView;
    r21 = objc_loadWeakRetained(r22);
    if (r20 == r21) {
            objc_storeWeak(r22, 0x0);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_singleTap));
            r0 = *(r19 + r25);
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 removeGestureRecognizer:*(r19 + r25)];
            [r0 release];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_touchGestureRecognizer));
            r0 = *(r19 + r26);
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 removeGestureRecognizer:*(r19 + r26)];
            [r0 release];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_touchEventGestureRecognizer));
            r0 = *(r19 + r23);
            r0 = [r0 view];
            r0 = [r0 retain];
            [r0 removeGestureRecognizer:*(r19 + r23)];
            [r0 release];
            r0 = *(r19 + r25);
            *(r19 + r25) = 0x0;
            [r0 release];
            r0 = *(r19 + r26);
            *(r19 + r26) = 0x0;
            [r0 release];
            r0 = *(r19 + r23);
            *(r19 + r23) = 0x0;
            [r0 release];
            [r19->_debugGestureMonitor setView:0x0];
            [r19->_viewVisibilityMonitor setView:0x0];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)handleTrackedView:(void *)arg2 {
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
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    objc_storeWeak((int64_t *)&r19->_trackedView, [[r0 objectForKeyedSubscript:*0x100e99720] retain]);
    [r21 release];
    [r20 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_trackedView);
    r20 = r0;
    [r0 setUserInteractionEnabled:0x1];
    r0 = [UITapGestureRecognizer alloc];
    r0 = [r0 initWithTarget:r19 action:@selector(handleTap:)];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_singleTap));
    r8 = *(r19 + r24);
    *(r19 + r24) = r0;
    [r8 release];
    [*(r19 + r24) setDelegate:r19];
    r0 = [GADGestureRecognizer alloc];
    r0 = [r0 init];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_touchGestureRecognizer));
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    [*(r19 + r25) setDelegate:r19];
    r0 = [GADTouchGestureRecognizer alloc];
    r0 = [r0 init];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_touchEventGestureRecognizer));
    r8 = *(r19 + r23);
    *(r19 + r23) = r0;
    [r8 release];
    [*(r19 + r23) setDelegate:r19];
    [r20 addGestureRecognizer:*(r19 + r24)];
    [r20 addGestureRecognizer:*(r19 + r25)];
    [r20 addGestureRecognizer:*(r19 + r23)];
    r22 = objc_loadWeakRetained((int64_t *)&r19->_internalNativeAd);
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_debugGestureMonitor));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            [r0 setView:r2];
    }
    else {
            r0 = [GADDebugGestureMonitor alloc];
            r0 = [r0 initWithAd:r22 adView:r20 adUnitID:r19->_adUnitID debugDialogString:r19->_debugDialogString];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 addMonitor:*(r19 + r23)];
    }
    [r19->_viewVisibilityMonitor setView:r2];
    [r22 release];
    [r20 release];
    return;
}

-(void)handleCustomClickGesture:(void *)arg2 {
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    var_58 = r0;
    var_68 = [[r0 objectForKeyedSubscript:r2] retain];
    [[r0 objectForKeyedSubscript:r2] retain];
    r22 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r0 = [GADNativeAdViewTracker sharedInstance];
    r0 = [r0 retain];
    r25 = [[r0 adViewForNativeAd:r22] retain];
    [r0 release];
    r0 = [r22 assetViewTracker];
    r0 = [r0 retain];
    r19 = [[r0 assetViewsForAdView:r25] retain];
    var_78 = r19;
    r0 = [r0 adChoicesContentViewForAdView:r25];
    r0 = [r0 retain];
    var_80 = r0;
    r23 = [sub_100892074(r25, r19, r0, r22) retain];
    r19 = [sub_100893234() retain];
    r27 = [sub_10089300c(self->_touchEventGestureRecognizer) retain];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 initWithDictionary:r23];
    r21 = r0;
    [r0 addEntriesFromDictionary:r19];
    [r21 addEntriesFromDictionary:r27];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 init];
    sub_100822058(r0, *0x100e9ba20, r21);
    sub_100822058(r24, *0x100e9ba38, var_68);
    sub_100822058(r24, *0x100e9ba18, r20);
    sub_1008833e8(*0x100e9c098, r22, r24);
    [r24 release];
    [r21 release];
    [r27 release];
    [r19 release];
    [r23 release];
    [var_80 release];
    [var_78 release];
    [r26 release];
    [r25 release];
    [r22 release];
    [r20 release];
    [var_68 release];
    [var_58 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg2 view];
    [r21 release];
    r20 = [r20 retain];
    r19 = [arg3 view];
    [r23 release];
    r0 = [r19 retain];
    if (r20 == r0) {
            if (CPU_FLAGS & E) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adChoicesAssetName, 0x0);
    objc_destroyWeak((int64_t *)&self->_mediaContent);
    objc_storeStrong((int64_t *)&self->_debugDialogString, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_viewVisibilityMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_debugGestureMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_touchEventGestureRecognizer, 0x0);
    objc_storeStrong((int64_t *)&self->_touchGestureRecognizer, 0x0);
    objc_storeStrong((int64_t *)&self->_singleTap, 0x0);
    objc_destroyWeak((int64_t *)&self->_trackedView);
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleMediaViewClick:(void *)arg2 {
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
    r20 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r21 = objc_loadWeakRetained((int64_t *)&self->_mediaContent);
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_1007d04b0;

loc_1007d0048:
    r0 = [r21 mediaView];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1007d0130;

loc_1007d0068:
    r23 = [[r22 superview] retain];
    r0 = [GADNativeAdViewTracker sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 adViewForNativeAd:r20];
    r29 = r29;
    r24 = [r0 retain];
    [r25 release];
    if (r24 != 0x0) {
            r0 = [r20 assetViewTracker];
            r0 = [r0 retain];
            r25 = r0;
            r28 = [[r0 assetViewsForAdView:r24] retain];
            r0 = [r25 adChoicesContentViewForAdView:r24];
            r29 = r29;
            r27 = [r0 retain];
            [r25 release];
    }
    else {
            r27 = 0x0;
            r28 = 0x0;
    }
    var_90 = r27;
    if (r23 == 0x0) goto loc_1007d01b8;

loc_1007d016c:
    r0 = [r28 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007d01b8;

loc_1007d0198:
    var_C8 = r24;
    r0 = [r28 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    goto loc_1007d01fc;

loc_1007d01fc:
    var_98 = r0;
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r24 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r0 = [r24 objectForKeyedSubscript:@"touchX"];
    r0 = [r0 retain];
    r25 = r0;
    [r0 doubleValue];
    v8 = v0;
    var_C0 = r24;
    r0 = [r24 objectForKeyedSubscript:@"touchY"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 doubleValue];
    v9 = v0;
    [r0 release];
    [r25 release];
    r24 = var_C8;
    var_A8 = r23;
    var_A0 = r19;
    var_B8 = r22;
    if (r24 != 0x0) {
            r1 = @selector(convertPoint:fromView:);
            r0 = r24;
            v0 = v8;
            v1 = v9;
    }
    else {
            r1 = @selector(convertPoint:toView:);
            r0 = r22;
            v0 = v8;
            v1 = v9;
    }
    objc_msgSend(r0, r1);
    var_B0 = r28;
    r26 = [sub_100892074(r24, r28, var_90, r20) retain];
    r27 = [sub_100893234() retain];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 initWithDictionary:r26];
    r25 = r0;
    [r0 addEntriesFromDictionary:r27];
    r28 = [NSMutableDictionary alloc];
    r19 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    r28 = [r28 initWithDictionary:r19];
    [r19 release];
    r23 = var_A8;
    if (r23 != 0x0) {
            sub_100822058(r28, *0x100e9ba10, r23);
    }
    sub_1008833e8(*0x100e9c098, r20, r28);
    [r28 release];
    [r25 release];
    [r27 release];
    [r26 release];
    [var_C0 release];
    [var_98 release];
    r19 = var_A0;
    r22 = var_B8;
    r28 = var_B0;
    r27 = var_90;
    goto loc_1007d0488;

loc_1007d0488:
    [r27 release];
    [r28 release];
    [r24 release];
    goto loc_1007d04a0;

loc_1007d04a0:
    [r23 release];
    [r22 release];
    goto loc_1007d04b0;

loc_1007d04b0:
    var_68 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_1007d01b8:
    if ([r20 publicAdClass] != [GADNativeCustomTemplateAd class]) goto loc_1007d0488;

loc_1007d01e8:
    var_C8 = r24;
    r0 = [*0x100e9c8f0 retain];
    goto loc_1007d01fc;

loc_1007d0130:
    r0 = [r20 context];
    r0 = [r0 retain];
    r23 = r0;
    sub_1007ce06c(r0, @"Error handling video click on native ad object whose media view doesn't exist.");
    goto loc_1007d04a0;
}

-(void)handleTap:(void *)arg2 {
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff70 - 0x330;
    r19 = self;
    r24 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r19->_handlesClicks == 0x0) goto loc_1007cfe1c;

loc_1007cf4e8:
    r25 = [[GADNativeAdViewTracker sharedInstance] retain];
    r26 = objc_loadWeakRetained((int64_t *)&r19->_internalNativeAd);
    r0 = [r25 adViewForNativeAd:r26];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1007cfe04;

loc_1007cf540:
    r0 = [r26 assetViewTracker];
    r0 = [r0 retain];
    r21 = r0;
    var_300 = [[r0 assetViewsForAdView:r23] retain];
    r0 = [r21 nonclickableAssetNamesForAdView:r23];
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesAssetName));
    var_368 = r19;
    var_350 = r0;
    r19 = [r0 containsObject:*(r19 + r20)];
    [r24 locationOfTouch:0x0 inView:r23];
    v8 = v0;
    v9 = v1;
    var_360 = r21;
    r0 = [r21 adChoicesContentViewForAdView:r23];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 bounds];
    r0 = [r21 convertRect:r23 toView:r23];
    r0 = CGRectContainsPoint(r0, @selector(convertRect:toView:));
    var_318 = r23;
    var_358 = r21;
    if (r0 == 0x0 || ([r21 isHidden] & 0x1) != 0x0) goto loc_1007cf64c;

loc_1007cfc48:
    if ((r19 & 0x1) == 0x0) goto loc_1007cfe68;

loc_1007cfc4c:
    r20 = 0x0;
    r27 = 0x0;
    goto loc_1007cfdd4;

loc_1007cfdd4:
    r0 = var_358;
    goto loc_1007cfdd8;

loc_1007cfdd8:
    [r0 release];
    [r20 release];
    [r27 release];
    [var_350 release];
    [var_300 release];
    [var_360 release];
    goto loc_1007cfe04;

loc_1007cfe04:
    [r23 release];
    [r26 release];
    [r25 release];
    goto loc_1007cfe1c;

loc_1007cfe1c:
    var_88 = **___stack_chk_guard;
    [r24 release];
    if (**___stack_chk_guard != var_88) {
            __stack_chk_fail();
    }
    return;

loc_1007cfe68:
    r20 = [*(var_368 + r20) retain];
    r19 = [var_358 retain];
    [GADNativeAdAttributionView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r27 = r20;
            r19 = [r19 retain];
            [r24 locationInView:r19];
            r20 = [[r19 iconView] retain];
            r0 = [r19 textView];
            r29 = r29;
            r21 = [r0 retain];
            r22 = CGRectContainsPoint([r20 frame], @selector(frame));
            r0 = [r26 publicAdClass];
            if (r22 != 0x0) {
                    r0 = sub_1007de3b8(r0);
                    r29 = r29;
                    r22 = [r0 retain];
                    [r27 release];
                    r0 = r20;
            }
            else {
                    r0 = sub_1007de454(r0);
                    r29 = r29;
                    r22 = [r0 retain];
                    [r27 release];
                    r0 = r21;
            }
            r27 = [r0 retain];
            [r19 release];
            [r21 release];
            [r20 release];
            [r19 release];
            r20 = r22;
            r19 = r27;
    }
    if (r20 == 0x0 || r19 == 0x0) goto loc_1007cf654;

loc_1007cfbbc:
    if (r20 != 0x0) {
            asm { ccmp       x19, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r27 = [r23 retain];
            [r19 release];
            r0 = [r26 publicAdClass];
            r0 = sub_1007de31c(r0);
            r29 = r29;
            r8 = r20;
            r20 = [r0 retain];
            [r8 release];
    }
    else {
            r27 = r19;
    }
    r0 = sub_1007ce5f8();
    r9 = var_368;
    r19 = r20;
    if (r0 == 0x0) goto loc_1007cfc98;

loc_1007cfc28:
    r21 = r19;
    if (*(int8_t *)(int64_t *)&r9->_hasMediaContentObserver == 0x0) goto loc_1007cfc58;

loc_1007cfc3c:
    r0 = var_358;
    r20 = r21;
    goto loc_1007cfdd8;

loc_1007cfc58:
    r0 = objc_loadWeakRetained((int64_t *)&r9->_mediaContent);
    r19 = r0;
    r0 = [r0 mediaView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    r19 = r21;
    if (r0 == 0x0) goto loc_1007cff68;

loc_1007cfc98:
    r0 = [var_350 containsObject:r2];
    r20 = r19;
    if ((r0 & 0x1) == 0x0) {
            r19 = [sub_100892074(r23, var_300, var_358, r26) retain];
            r0 = sub_100893234();
            r0 = [r0 retain];
            r20 = r0;
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 initWithDictionary:r19];
            [r0 addEntriesFromDictionary:r20];
            sub_1008833e8(*0x100e9c098, r26, [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain]);
            r0 = r23;
            r23 = var_318;
            [r0 release];
            [r21 release];
            r0 = r20;
            r20 = r28;
            [r0 release];
            [r19 release];
    }
    goto loc_1007cfdd4;

loc_1007cff68:
    r0 = var_358;
    r20 = r19;
    goto loc_1007cfdd8;

loc_1007cf654:
    var_390 = r19;
    var_388 = r20;
    var_380 = r26;
    var_378 = r25;
    var_370 = r24;
    var_320 = [[NSMutableArray alloc] init];
    r0 = [var_300 keyEnumerator];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-536];
    var_308 = r0;
    var_328 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_308);
                            }
                            r28 = *(0x0 + r21 * 0x8);
                            r0 = [var_300 objectForKey:r28];
                            r29 = r29;
                            r19 = [r0 retain];
                            if ((sub_100852c94() & 0x1) == 0x0) {
                                    [r28 frame];
                                    r0 = [r28 superview];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [var_318 convertRect:r24 fromView:r3];
                                    r0 = [r24 release];
                                    v0 = v0;
                                    v1 = v1;
                                    v2 = v2;
                                    v3 = v3;
                                    if (CGRectContainsPoint(r0, @selector(convertRect:fromView:)) != 0x0) {
                                            if (([r28 isHidden] & 0x1) == 0x0) {
                                                    sub_100822370(var_320, r28);
                                            }
                                    }
                            }
                            [r19 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r3 = &stack[-536];
                    r22 = objc_msgSend(var_308, var_328);
            } while (r22 != 0x0);
    }
    [var_308 release];
    r21 = [var_320 retain];
    var_348 = [var_318 retain];
    if ([r21 count] == 0x0) goto loc_1007cfb54;

loc_1007cf860:
    var_3A0 = r21;
    r0 = [r21 retain];
    var_320 = r0;
    r0 = objc_msgSend(r0, var_328);
    var_308 = r0;
    r23 = 0x0;
    if (r0 == 0x0) goto loc_1007cfb44;

loc_1007cf8a0:
    r23 = 0x0;
    r21 = var_348;
    goto loc_1007cf8b0;

loc_1007cf8b0:
    r26 = 0x0;
    goto loc_1007cf8cc;

loc_1007cf8cc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_320);
    }
    r19 = *(0x0 + r26 * 0x8);
    if (r23 == 0x0) goto loc_1007cf988;

loc_1007cf8f4:
    r27 = [r23 retain];
    r23 = [r19 retain];
    r20 = [r21 retain];
    if (r23 == 0x0) goto loc_1007cf998;

loc_1007cf91c:
    r25 = [r27 retain];
    if (r25 == r20) goto loc_1007cf9a0;

loc_1007cf940:
    if (([r23 isDescendantOfView:r25] & 0x1) != 0x0) goto loc_1007cf9a8;

loc_1007cf954:
    r0 = [r25 superview];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    if (r22 == 0x0) goto loc_1007cf9ac;

loc_1007cf978:
    r25 = r22;
    if (r22 != r20) goto loc_1007cf940;

loc_1007cf9ac:
    [r20 release];
    [r23 release];
    [r27 release];
    if (r22 == r27) goto loc_1007cfac0;

loc_1007cf9cc:
    if (r22 == r23) goto loc_1007cfad4;

loc_1007cf9d4:
    r0 = [r22 subviews];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 reverseObjectEnumerator];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    r28 = objc_msgSend(r0, var_328);
    if (r28 == 0x0) goto loc_1007cfadc;

loc_1007cfa2c:
    var_330 = r19;
    goto loc_1007cfa38;

loc_1007cfa38:
    r20 = 0x0;
    goto loc_1007cfa44;

loc_1007cfa44:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r25);
    }
    r19 = *(0x0 + r20 * 0x8);
    if (([r27 isDescendantOfView:r2] & 0x1) != 0x0) goto loc_1007cfab8;

loc_1007cfa78:
    if ([r23 isDescendantOfView:r2] != 0x0) goto loc_1007cfae4;

loc_1007cfa8c:
    r20 = r20 + 0x1;
    if (r20 < r28) goto loc_1007cfa44;

loc_1007cfa98:
    r28 = objc_msgSend(r25, var_328);
    if (r28 != 0x0) goto loc_1007cfa38;

loc_1007cfab8:
    r23 = r27;
    goto loc_1007cfaf8;

loc_1007cfaf8:
    r21 = var_348;
    r19 = var_330;
    goto loc_1007cfb00;

loc_1007cfb00:
    [r25 release];
    r0 = r19;
    goto loc_1007cfb0c;

loc_1007cfb0c:
    [r0 release];
    goto loc_1007cfb10;

loc_1007cfb10:
    [r22 release];
    goto loc_1007cfb18;

loc_1007cfb18:
    r26 = r26 + 0x1;
    if (r26 < var_308) goto loc_1007cf8cc;

loc_1007cfb28:
    r0 = objc_msgSend(var_320, var_328);
    var_308 = r0;
    if (r0 != 0x0) goto loc_1007cf8b0;

loc_1007cfb44:
    [var_320 release];
    r21 = var_3A0;
    goto loc_1007cfb58;

loc_1007cfb58:
    [var_348 release];
    [r21 release];
    r19 = [[r23 autorelease] retain];
    [var_390 release];
    r0 = [var_300 objectForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    [var_388 release];
    [r21 release];
    r25 = var_378;
    r24 = var_370;
    r26 = var_380;
    r23 = var_318;
    goto loc_1007cfbbc;

loc_1007cfae4:
    r23 = [r23 retain];
    [r27 release];
    goto loc_1007cfaf8;

loc_1007cfadc:
    r23 = r27;
    goto loc_1007cfb00;

loc_1007cfad4:
    r23 = r27;
    goto loc_1007cfb10;

loc_1007cfac0:
    r23 = [r23 retain];
    r0 = r27;
    goto loc_1007cfb0c;

loc_1007cf9a8:
    r22 = r25;
    goto loc_1007cf9ac;

loc_1007cf9a0:
    r22 = r20;
    goto loc_1007cf9ac;

loc_1007cf998:
    r22 = 0x0;
    goto loc_1007cf9ac;

loc_1007cf988:
    r23 = [r19 retain];
    goto loc_1007cfb18;

loc_1007cfb54:
    r23 = 0x0;
    goto loc_1007cfb58;

loc_1007cf64c:
    r19 = 0x0;
    r20 = 0x0;
    goto loc_1007cf654;
}

@end