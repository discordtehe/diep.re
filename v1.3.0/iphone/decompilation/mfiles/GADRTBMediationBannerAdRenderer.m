@implementation GADRTBMediationBannerAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_retainBlock(arg4);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    sub_1008b6508(r20, @protocol(GADMediationAdapter), @selector(loadBannerForAdConfiguration:completionHandler:));
    [r22 retain];
    var_38 = r20;
    [r20 retain];
    var_30 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_30 release];
    [var_38 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)reportImpression {
    return;
}

-(void)reportClick {
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&r0->_bannerAd), 0x0);
            [r20 release];
    }
    return;
}

-(void)willPresentFullScreenView {
    [self reportClick];
    [self->_intermission adapterWillPresent];
    return;
}

-(void)willDismissFullScreenView {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)didDismissFullScreenView {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)adapter:(void *)arg2 completedLoadWithMediatedAd:(void *)arg3 adConfiguration:(struct NSDictionary *)arg4 transaction:(void *)arg5 error:(void *)arg6 {
    r31 = r31 - 0xd0;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    if (r24 != 0x0) {
            r23 = r23->_renderCompletionHandler;
            r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
            (*(r23 + 0x10))(r23, 0x0, [r0 retain], 0x0);
            [r25 release];
            r0 = r24;
    }
    else {
            r0 = [r20 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    sub_1008c5a80();
                    r24 = [GADEventContext alloc];
                    r0 = [r22 serverRequest];
                    r0 = [r0 retain];
                    r27 = [[r0 context] retain];
                    r24 = [r24 initWithParent:r27 component:*0x100e97468];
                    [r27 release];
                    [r0 release];
                    r0 = [GADFluidContainerAdView alloc];
                    r25 = r24;
                    r26 = [r0 initWithFrame:r24 context:*0x100e97468];
                    r27 = [GADAdMetadata alloc];
                    r24 = [NSStringFromClass([r19 class]) retain];
                    r27 = [r27 initWithAdNetworkClassName:r24];
                    [r24 release];
                    r0 = [GADBannerAd alloc];
                    var_B0 = r25;
                    var_C0 = r26;
                    objc_storeWeak((int64_t *)&r23->_bannerAd, [r0 initWithContext:r25 adView:r26 metadata:r27 videoController:0x0]);
                    r0 = [GADMediatedIntermission alloc];
                    r0 = [r0 initWithMessageSource:r27];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
                    r8 = *(r23 + r9);
                    *(r23 + r9) = r0;
                    [r8 release];
                    r24 = [GADCroppingAdView alloc];
                    r28 = [[r20 view] retain];
                    r24 = [r24 initWithView:r28 size:r25 context:r27 messageSource:0x0];
                    var_B8 = r24;
                    [r28 release];
                    [r26 setView:r24];
                    r24 = [[r27 rootViewControllerProvider] retain];
                    r0 = [r22 serverRequest];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 targeting];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 rootViewController];
                    r0 = [r0 retain];
                    var_A0 = r22;
                    [r24 updateViewController:r0];
                    [r0 release];
                    [r19 release];
                    [r25 release];
                    [r24 release];
                    r19 = r23->_mediationConfiguration;
                    r22 = [[r27 rootViewControllerProvider] retain];
                    [r19 setViewControllerProvider:r22];
                    [r22 release];
                    sub_100849730(r27, *0x100e99628, r21);
                    sub_100849828(r27, 0x0, var_C0, r21);
                    [GADMediationSizeChangeMonitor addMonitorToAd:r27 containerView:var_C0 croppingView:var_B8 delegate:r20];
                    [r27 addMonitor:r23];
                    [r27 addMonitor:r26];
                    [r27 addMonitor:r20];
                    r19 = r23->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_80 count:0x1];
                    r22 = [r0 retain];
                    r8 = *(r19 + 0x10);
                    r0 = r19;
                    r19 = r26;
                    (r8)(r0, r22, 0x0, 0x0);
                    r0 = r22;
                    r22 = var_A0;
                    [r0 release];
                    [var_B8 release];
                    [r27 release];
                    [r27 release];
                    [var_C0 release];
                    r0 = var_B0;
            }
            else {
                    [sub_1008098f8(0x2, @"Invalid mediation view.") retain];
                    [r24 release];
                    r23 = r23->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_78 count:0x1];
                    (*(r23 + 0x10))(r23, 0x0, [r0 retain], 0x0);
                    [r24 release];
                    r0 = r25;
            }
    }
    var_68 = **___stack_chk_guard;
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)willBackgroundApplication {
    [self reportClick];
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_bannerAd), 0x0);
    [r19 release];
    return;
}

-(void)didFailToPresentWithError:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationConfiguration, 0x0);
    objc_destroyWeak((int64_t *)&self->_bannerAd);
    objc_storeStrong((int64_t *)&self->_loadingAdapter, 0x0);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    return;
}

@end