@implementation GADInterstitial

-(void *)initWithAdUnitID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.interstitial", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [GADAdSource alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->_adSource invalidateAndCancel];
    [[&var_20 super] dealloc];
    return;
}

-(void *)adNetworkClassName {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setAdNetworkClassName:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)correlator {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setCorrelator:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)loadRequest:(void *)arg2 {
    [self loadRequest:arg2 completionHandler:0x0];
    return;
}

-(bool)shouldOverrideInProgressRequest {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_requestInProgress != 0x0) {
            var_20 = r20;
            stack[-24] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_10 = r29;
            stack[-8] = r30;
            r19 = *(int32_t *)(int64_t *)&r0->_lastRequestedCorrelationID;
            r0 = r0->_correlator;
            r0 = [r0 correlationID];
            if (r19 != r0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)loadRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xc0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ((sub_100818a24() & 0x1) != 0x0) {
            if (r19 == 0x0) {
                    r0 = [GADRequest request];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 release];
                    r19 = r22;
            }
            r22 = [[NSArray arrayWithObjects:r29 - 0x40 count:0x1] retain];
            [r19 setAdTypes:r22];
            [r22 release];
            r22 = [[GADTargeting alloc] initWithRequest:r19 adUnitID:r21->_adUnitID];
            r21 = [r21 retain];
            var_80 = r22;
            r22 = [r22 retain];
            var_78 = r20;
            r20 = [r20 retain];
            [r21 updateTargeting:r22 completionHandler:&var_A8];
            [var_78 release];
            [var_80 release];
            [r21 release];
            [r20 release];
            r0 = r22;
    }
    else {
            var_50 = [r21 retain];
            var_48 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [var_48 release];
            [var_50 release];
            r0 = r20;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    [arg3 retain];
    sub_1008c2bc8(r21);
    var_38 = r21;
    [r21 retain];
    var_30 = [self retain];
    var_28 = r19;
    [r19 retain];
    sub_100860a80();
    [var_28 release];
    [var_30 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)loadWithTargeting:(void *)arg2 completionHandler:(void *)arg3 {
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
    r29 = &saved_fp;
    r24 = arg2;
    r23 = self;
    r25 = [r24 retain];
    [arg3 retain];
    objc_initWeak(r29 - 0x68, r23);
    r20 = &var_98 + 0x28;
    objc_copyWeak(r20, r29 - 0x68);
    r21 = [r21 retain];
    var_78 = r21;
    r0 = objc_retainBlock(&var_98);
    r22 = r0;
    if (*(int8_t *)(int64_t *)&r23->_hasBeenUsed == 0x0) goto loc_1008c9c3c;

loc_1008c9bc0:
    r0 = sub_100809600(0x6, 0x0);
    r29 = r29;
    r23 = [r0 retain];
    var_A8 = [r22 retain];
    var_A0 = r23;
    [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_C8);
    [var_A0 release];
    [var_A8 release];
    [r23 release];
    goto loc_1008c9da4;

loc_1008c9da4:
    [r22 release];
    [var_78 release];
    objc_destroyWeak(r20);
    objc_destroyWeak(r29 - 0x68);
    [r21 release];
    [r25 release];
    return;

loc_1008c9c3c:
    if ([r23 shouldOverrideInProgressRequest] == 0x0) goto loc_1008c9cac;

loc_1008c9c50:
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
    [*(r23 + r19) invalidateAndCancel];
    r0 = [GADAdSource alloc];
    r0 = [r0 init];
    var_108 = r25;
    r8 = *(r23 + r19);
    *(r23 + r19) = r0;
    [r8 release];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
    *(int8_t *)(r23 + r19) = 0x0;
    goto loc_1008c9cc0;

loc_1008c9cc0:
    [*(r23 + sign_extend_64(*(int32_t *)ivar_offset(_adSource))) retain];
    objc_copyWeak(&var_100 + 0x30, r29 - 0x68);
    [r26 retain];
    var_D8 = [r22 retain];
    r0 = objc_retainBlock(&var_100);
    *(int8_t *)(r23 + (r19 << r29 - 0x68)) = 0x1;
    [r23 setAdNetworkClassName:0x0];
    objc_storeStrong((int64_t *)&r23->_refreshTargeting, r24);
    [*(r23 + r28) loadAdsWithTargeting:var_108 completionHandler:r27];
    [r27 release];
    [var_D8 release];
    [r26 release];
    objc_destroyWeak(&var_100 + 0x30);
    [r26 release];
    r25 = var_108;
    goto loc_1008c9da4;

loc_1008c9cac:
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
    if (*(int8_t *)(r23 + r19) != 0x0) goto loc_1008c9da4;

loc_1008c9cbc:
    var_108 = r25;
    goto loc_1008c9cc0;
}

-(bool)refreshAllowedWithRefreshAd:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    if (r0 != 0x0 && *(int8_t *)(int64_t *)&r19->_hasBeenUsed == 0x0) {
            if (r19->_interstitialAd == r0) {
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)refreshAfterDelay {
    r31 = r31 - 0x90;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b3e0];
    [r0 release];
    if (d8 >= 0x0) {
            r20 = r19->_interstitialAd;
            r0 = objc_initWeak(r29 - 0x38, r20);
            r29 = r29;
            [r0 retain];
            [r20 release];
            if (r20 != 0x0) {
                    objc_initWeak(&stack[-80], r19);
                    r20 = &var_78 + 0x28;
                    asm { fcvtzs     x1, d0 };
                    dispatch_time(0x0, r1);
                    objc_copyWeak(r20, &stack[-80]);
                    objc_copyWeak(r21, r29 - 0x38);
                    var_58 = [r19 retain];
                    dispatch_after(r22, *__dispatch_main_q, &var_78);
                    [var_58 release];
                    objc_destroyWeak(r21);
                    objc_destroyWeak(r20);
                    objc_destroyWeak(&stack[-80]);
            }
            objc_destroyWeak(r29 - 0x38);
    }
    return;
}

-(void)adLoadCompletedWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 delegate] retain];
    if (r19 != 0x0) {
            if ([r21 respondsToSelector:@selector(interstitial:didFailToReceiveAdWithError:), r3] != 0x0) {
                    [r21 interstitial:r20 didFailToReceiveAdWithError:r19];
            }
    }
    else {
            if ([r21 respondsToSelector:@selector(interstitialDidReceiveAd:)] != 0x0) {
                    [r21 interstitialDidReceiveAd:r20];
            }
            sub_1008833e8(*0x100e9c018, r20->_interstitialAd, 0x0);
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)presentFromRootViewController:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)adPresentationDidFail {
    var_8 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_28);
    [var_8 release];
    return;
}

-(bool)isReady {
    r0 = self;
    if (r0->_interstitialAd != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    objc_storeStrong((int64_t *)&r20->_interstitialAd, arg2);
    r0 = [r19 metadata];
    r0 = [r0 retain];
    r22 = [[r0 adNetworkClassName] retain];
    [r20 setAdNetworkClassName:r22];
    [r22 release];
    [r0 release];
    [r20 attachLifecycleEventObservers];
    if (r19 != 0x0) {
            [r20 refreshAfterDelay];
    }
    [r19 release];
    return;
}

-(void *)adSource {
    r0 = self->_adSource;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)adInvalidated {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b728];
    [r0 release];
    if (r21 != 0x0 && r19->_interstitialAd != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_hasBeenUsed == 0x0) {
                    [r19 setInterstitialAd:0x0];
                    r20 = [sub_100809600(0xb, 0x0) retain];
                    r21 = [sub_100809bcc() retain];
                    [r19 adLoadCompletedWithError:r21];
                    [r21 release];
                    [r20 release];
            }
    }
    return;
}

-(void)attachLifecycleEventObservers {
    r31 = r31 - 0x190;
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
    r22 = self;
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_adObservers));
    r8 = *(r22 + r19);
    *(r22 + r19) = r0;
    [r8 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAd));
    if (*(r22 + r23) != 0x0) {
            objc_initWeak(r29 - 0x68, r22);
            objc_copyWeak((r29 - 0x90) + 0x20, r29 - 0x68);
            [r20 addObserverForName:*0x100e9c148 object:r24 queue:0x0 usingBlock:r29 - 0x90];
            objc_copyWeak((r29 - 0xb8) + 0x20, r29 - 0x68);
            [r21 addObserverForName:*0x100e9c150 object:r25 queue:0x0 usingBlock:r29 - 0xb8];
            objc_copyWeak(&var_E0 + 0x20, r29 - 0x68);
            [r24 addObserverForName:*0x100e9c158 object:r26 queue:0x0 usingBlock:&var_E0];
            objc_copyWeak(&var_108 + 0x20, r29 - 0x68);
            [r25 addObserverForName:*0x100e9bfe8 object:r27 queue:0x0 usingBlock:&var_108];
            objc_copyWeak(&var_130 + 0x20, r29 - 0x68);
            [r26 addObserverForName:*0x100e9c010 object:r28 queue:0x0 usingBlock:&var_130];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_158 + 0x20, r29 - 0x68);
            [r26 addObserverForName:*0x100e9c020 object:r22 queue:r28 usingBlock:&var_158];
            [r28 release];
            objc_destroyWeak(&var_158 + 0x20);
            objc_destroyWeak(&var_130 + 0x20);
            objc_destroyWeak(&var_108 + 0x20);
            objc_destroyWeak(&var_E0 + 0x20);
            objc_destroyWeak((r29 - 0xb8) + 0x20);
            objc_destroyWeak((r29 - 0x90) + 0x20);
            objc_destroyWeak(r29 - 0x68);
    }
    return;
}

-(void *)init {
    r0 = [self initWithAdUnitID:@""];
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)adUnitID {
    r0 = self->_adUnitID;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)hasBeenUsed {
    r0 = *(int8_t *)(int64_t *)&self->_hasBeenUsed;
    return r0;
}

-(void *)inAppPurchaseDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_inAppPurchaseDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setInAppPurchaseDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_inAppPurchaseDelegate, arg2);
    return;
}

-(void *)appEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_appEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAppEventDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_appEventDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_appEventDelegate);
    objc_destroyWeak((int64_t *)&self->_inAppPurchaseDelegate);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshTargeting, 0x0);
    objc_storeStrong((int64_t *)&self->_retainCycle, 0x0);
    objc_storeStrong((int64_t *)&self->_correlator, 0x0);
    objc_storeStrong((int64_t *)&self->_adNetworkClassName, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_adObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_adSource, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    return;
}

@end