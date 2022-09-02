@implementation GADFBInterstitialRenderer

-(void)interstitialAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r0 = self->_adLoadCompletionHandler;
    [[(*(r0 + 0x10))(r0, 0x0, arg3, arg3) retain] release];
    return;
}

-(void)renderInterstitialForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [r19 bidResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_isRTBRequest = 0x1;
    }
    r0 = [r19 credentials];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placement_id"];
    r29 = r29;
    r23 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r23 != 0x0) {
            r0 = [FBInterstitialAd alloc];
            r0 = [r0 initWithPlacementID:r23];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialAd));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            [*(r21 + r24) setDelegate:r21];
            r21 = *(r21 + r24);
            r22 = [[r19 bidResponse] retain];
            [r21 loadAdWithBidPayload:r22];
            r0 = r22;
    }
    else {
            r21 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
            [[(*(r20 + 0x10))(r20, 0x0, r21) retain] release];
            r0 = r21;
    }
    [r0 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialAdDidLoad:(void *)arg2 {
    r0 = self->_adLoadCompletionHandler;
    objc_storeWeak((int64_t *)&self->_adEventDelegate, [(*(r0 + 0x10))(r0, self, 0x0) retain]);
    [r20 release];
    return;
}

-(void)interstitialAdWillLogImpression:(void *)arg2 {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_isRTBRequest == 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r0->_adEventDelegate);
            [r0 reportImpression];
            [r0 release];
    }
    return;
}

-(void)interstitialAdWillClose:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    if (r19 != 0x0) {
            [r19 willDismissFullScreenView];
    }
    [r19 release];
    return;
}

-(void)interstitialAdDidClose:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    if (r19 != 0x0) {
            [r19 didDismissFullScreenView];
    }
    [r19 release];
    return;
}

-(void)interstitialAdDidClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
    if (r19 != 0x0) {
            if (*(int8_t *)(int64_t *)&r20->_isRTBRequest == 0x0) {
                    [r19 reportClick];
            }
            [r19 willBackgroundApplication];
    }
    [r19 release];
    return;
}

-(void)presentFromViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
    if (r21 != 0x0) {
            [r21 willPresentFullScreenView];
    }
    [r20->_interstitialAd showAdFromRootViewController:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    return;
}

@end