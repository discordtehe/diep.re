@implementation GADNativeClickConfirmingViewMonitor

-(void *)initWithInternalNativeAd:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_internalNativeAd, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAdObservers));
            r8 = *(r20 + r25);
            *(r20 + r25) = r0;
            [r8 release];
            objc_initWeak(&stack[-120], r20);
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            [r23 addObserverForName:*0x100e9c538 object:r19 queue:0x0 usingBlock:&var_90];
            objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
            [r24 addObserverForName:*0x100e9c540 object:r19 queue:0x0 usingBlock:&var_B8];
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(&stack[-120]);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void)handleUntrackedView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"click_confirming_view"] retain];
    [r0 release];
    r22 = (int64_t *)&r19->_trackedView;
    r21 = objc_loadWeakRetained(r22);
    if (r20 == r21) {
            objc_storeWeak(r22, 0x0);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_singleTapGestureRecognizer));
            [r20 removeGestureRecognizer:*(r19 + r22)];
            r0 = *(r19 + r22);
            *(r19 + r22) = 0x0;
            [r0 release];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)handleTap:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r19 = r0;
    [r0 confirmationClickTimeInterval];
    if (d0 > 0x0) {
            r21 = [[NSNumber numberWithDouble:r2] retain];
            r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    sub_1008833e8(*0x100e9c0b8, r19, r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
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
    r29 = &saved_fp;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_trackedView);
    r22 = [arg2 view];
    [r23 release];
    r0 = [r22 retain];
    [r0 release];
    if (r0 != r20) {
            r21 = 0x0;
    }
    else {
            r21 = @selector(view);
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            if (r0 == r20) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
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
    objc_storeWeak((int64_t *)&r19->_trackedView, [[r0 objectForKeyedSubscript:@"click_confirming_view"] retain]);
    [r21 release];
    [r20 release];
    r20 = objc_loadWeakRetained((int64_t *)&r19->_trackedView);
    r21 = objc_loadWeakRetained((int64_t *)&r19->_internalNativeAd);
    r0 = [GADNativeAdViewTracker sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 adViewForNativeAd:r21];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r21 assetViewTracker];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 assetViewsForAdView:r23];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKey:r2];
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            [r24 release];
            if (r0 == 0x0) {
                    [r20 setUserInteractionEnabled:0x1];
                    r0 = [UITapGestureRecognizer alloc];
                    r0 = [r0 initWithTarget:r19 action:@selector(handleTap:)];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_singleTapGestureRecognizer));
                    r8 = *(r19 + r24);
                    *(r19 + r24) = r0;
                    [r8 release];
                    [*(r19 + r24) setDelegate:r19];
                    [r20 addGestureRecognizer:*(r19 + r24)];
            }
    }
    else {
            [r20 setUserInteractionEnabled:0x1];
            r0 = [UITapGestureRecognizer alloc];
            r0 = [r0 initWithTarget:r19 action:@selector(handleTap:)];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_singleTapGestureRecognizer));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            [*(r19 + r24) setDelegate:r19];
            [r20 addGestureRecognizer:*(r19 + r24)];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_singleTapGestureRecognizer, 0x0);
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_destroyWeak((int64_t *)&self->_trackedView);
    objc_storeStrong((int64_t *)&self->_internalNativeAdObservers, 0x0);
    return;
}

@end