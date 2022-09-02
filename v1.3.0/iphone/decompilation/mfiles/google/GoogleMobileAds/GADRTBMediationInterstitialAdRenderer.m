@implementation GADRTBMediationInterstitialAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    sub_1008b6508(r20, @protocol(GADMediationAdapter), @selector(loadInterstitialForAdConfiguration:completionHandler:));
    var_48 = r22;
    [r22 retain];
    var_40 = r20;
    [r20 retain];
    var_38 = [self retain];
    var_30 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [var_30 release];
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r19 release];
    [r20 release];
    [r22 release];
    return;
}

-(bool)canPresent {
    return 0x1;
}

-(void)reportImpression {
    return;
}

-(void)presentFromViewController:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialAd);
    r19 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    [r0 updateViewController:r20];
    [r0 release];
    r23 = self->_mediatedConfiguration;
    r22 = [[r19 rootViewControllerProvider] retain];
    [r23 setViewControllerProvider:r22];
    [r22 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediatedAd);
    [r0 presentFromViewController:r20];
    [r20 release];
    [r0 release];
    sub_1008833e8(*0x100e9c078, r19, 0x0);
    [r19 release];
    return;
}

-(void)reportClick {
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&r0->_interstitialAd), 0x0);
            [r20 release];
    }
    return;
}

-(void)willPresentFullScreenView {
    [self->_intermission adapterWillPresent];
    return;
}

-(void *)adEventDelegateForAdapter:(void *)arg2 completedLoadWithAd:(void *)arg3 adConfiguration:(struct NSDictionary *)arg4 transaction:(void *)arg5 renderCompletionHandler:(void *)arg6 {
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
    r19 = self;
    var_58 = **___stack_chk_guard;
    r23 = [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    r26 = [arg5 retain];
    [arg6 retain];
    r28 = [GADEventContext alloc];
    r24 = [arg5 serverRequest];
    [r26 release];
    r0 = [r24 retain];
    r20 = [[r0 context] retain];
    r24 = [r28 initWithParent:r20 component:*0x100e97468];
    [r20 release];
    [r0 release];
    r20 = [GADAdMetadata alloc];
    r28 = [NSStringFromClass([r23 class]) retain];
    r26 = [r20 initWithAdNetworkClassName:r28];
    [r28 release];
    objc_storeWeak((int64_t *)&r19->_interstitialAd, [[GADInterstitialAd alloc] initWithContext:r24 adController:r19 metadata:r26]);
    objc_storeWeak((int64_t *)&r19->_mediatedAd, r22);
    r0 = [GADMediatedIntermission alloc];
    r0 = [r0 initWithMessageSource:r28];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    sub_100849730(r28, *0x100e99630, r25);
    [r25 release];
    [r28 addMonitor:r19];
    [r28 addMonitor:r23];
    [r23 release];
    [r28 addMonitor:r22];
    [r22 release];
    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
    (*(r21 + 0x10))(arg6, [r0 retain], 0x0, 0x0);
    [r21 release];
    [r20 release];
    [r28 release];
    [r26 release];
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)willDismissFullScreenView {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)willBackgroundApplication {
    [self reportClick];
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_interstitialAd), 0x0);
    [r19 release];
    return;
}

-(void)didDismissFullScreenView {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)didFailToPresentWithError:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_storeStrong((int64_t *)&self->_mediatedConfiguration, 0x0);
    objc_destroyWeak((int64_t *)&self->_mediatedAd);
    objc_destroyWeak((int64_t *)&self->_interstitialAd);
    objc_storeStrong((int64_t *)&self->_loadingAdapter, 0x0);
    return;
}

@end