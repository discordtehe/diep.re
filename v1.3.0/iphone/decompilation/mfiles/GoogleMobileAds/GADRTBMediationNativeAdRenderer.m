@implementation GADRTBMediationNativeAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    sub_1008b6508(r20, @protocol(GADMediationAdapter), @selector(loadNativeAdForAdConfiguration:completionHandler:));
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

-(void)reportClick {
    sub_1008833e8(*0x100e9c568, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)reportImpression {
    sub_1008833e8(*0x100e9c560, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)willDismissFullScreenView {
    sub_1008833e8(*0x100e9c578, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)willPresentFullScreenView {
    sub_1008833e8(*0x100e9c570, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)didDismissFullScreenView {
    sub_1008833e8(*0x100e9c580, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)willBackgroundApplication {
    sub_1008833e8(*0x100e9c588, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)didPlayVideo {
    sub_1008833e8(*0x100e9c590, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)didPauseVideo {
    sub_1008833e8(*0x100e9c598, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void *)adEventDelegateForNativeAd:(void *)arg2 adapter:(void *)arg3 adConfiguration:(struct NSDictionary *)arg4 transaction:(void *)arg5 renderCompletionHandler:(void *)arg6 {
    r31 = r31 - 0xd0;
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
    r19 = arg6;
    var_80 = self;
    r28 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r26 = [arg5 retain];
    r25 = [r19 retain];
    r0 = [GADNativeAdFeatures alloc];
    var_78 = r21;
    r27 = [r0 initWithAdConfiguration:r21];
    var_70 = r22;
    r20 = [NSStringFromClass([r22 class]) retain];
    r0 = [GADAdMetadata alloc];
    var_88 = r20;
    r23 = [r0 initWithAdNetworkClassName:r20];
    r0 = [r26 serverRequest];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 context] retain];
    var_90 = r23;
    r0 = sub_1007e005c(r28, r23, r22, r27);
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r23 != 0x0) {
            var_B0 = r25;
            stack[-184] = r19;
            r25 = var_80;
            objc_storeWeak((int64_t *)&r25->_internalNativeAd, r23);
            objc_storeWeak((int64_t *)&r25->_mediatedAd, r28);
            var_98 = r26;
            r0 = [r26 serverRequest];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r19 = [[r0 rootViewController] retain];
            [r0 release];
            [r20 release];
            r0 = [r23 rootViewControllerProvider];
            r0 = [r0 retain];
            var_B8 = r19;
            [r0 updateViewController:r19];
            [r0 release];
            r21 = r25->_mediationConfiguration;
            r0 = [r23 rootViewControllerProvider];
            r29 = r29;
            r20 = [r0 retain];
            [r21 setViewControllerProvider:r20];
            [r20 release];
            r0 = [r28 respondsToSelector:r2];
            r19 = r28;
            if (r0 != 0x0) {
                    r26 = [r19 handlesUserImpressions];
            }
            else {
                    r26 = 0x0;
            }
            r0 = [r19 respondsToSelector:r2];
            var_A0 = r27;
            if (r0 != 0x0) {
                    r22 = [r19 handlesUserClicks];
            }
            else {
                    r22 = 0x0;
            }
            [r23 addMonitor:r25];
            [r23 addMonitor:var_70];
            [r23 addMonitor:r19];
            r25 = [[GADMediatedNativeAdMonitor alloc] initWithInternalNativeAd:r23 mediatedNativeAd:r19 adapterHandlesImpressions:r26 adapterHandlesClicks:r22];
            [r23 addMonitor:r25];
            sub_100849730(r23, *0x100e99648, var_78);
            r20 = [[GADViewVisibilityMonitor alloc] initWithView:0x0 messageSource:r23];
            [r23 addMonitor:r20];
            r21 = [[GADAdVisibilityMonitor alloc] initWithAd:r23 messageSource:r23];
            [r23 addMonitor:r21];
            r0 = [r23 assetForKey:*0x100e96758];
            r29 = r29;
            r28 = [r0 retain];
            r22 = [[GADNativeAdViewMonitor alloc] initWithInternalNativeAd:r23 handlesClicks:r22 ^ 0x1 mediaContent:r28 viewVisibilityMonitor:r20 adConfiguration:0x0];
            [r23 addMonitor:r22];
            if ((r26 & 0x1) == 0x0) {
                    r24 = [[GADOnePixelImpressionMonitor alloc] initWithAd:r23];
                    [r23 addMonitor:r24];
                    [r24 release];
            }
            r0 = [NSArray arrayWithObjects:&var_68 count:0x1];
            (*(var_B0 + 0x10))(stack[-184], [r0 retain], 0x0, 0x0);
            [var_B0 release];
            [r24 release];
            r24 = [var_80 retain];
            [r22 release];
            [r28 release];
            [r21 release];
            [r20 release];
            [r25 release];
            [var_B8 release];
            r20 = var_78;
            r21 = var_70;
            r27 = var_A0;
            r26 = var_98;
    }
    else {
            [sub_1008098f8(0x2, @"Mediated native ad does not conform to any expected protocol.") retain];
            r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
            (*(r25 + 0x10))(r19, 0x0, [r0 retain], 0x0);
            [r25 release];
            [r21 release];
            [r20 release];
            r24 = 0x0;
            r19 = r28;
            r20 = var_78;
            r21 = var_70;
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [var_90 release];
    [var_88 release];
    [r27 release];
    [r26 release];
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)didEndVideo {
    sub_1008833e8(*0x100e9c5a0, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)didFailToPresentWithError:(void *)arg2 {
    sub_1008833e8(*0x100e9c580, objc_loadWeakRetained((int64_t *)&self->_mediatedAd), 0x0);
    [r20 release];
    return;
}

-(void)didMuteVideo {
    return;
}

-(void)didUnmuteVideo {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediationConfiguration, 0x0);
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_destroyWeak((int64_t *)&self->_mediatedAd);
    objc_storeStrong((int64_t *)&self->_loadingAdapter, 0x0);
    return;
}

@end