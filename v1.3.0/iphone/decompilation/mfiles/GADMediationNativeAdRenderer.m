@implementation GADMediationNativeAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    [arg2 retain];
    [arg3 retain];
    r0 = [arg4 retain];
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&self->_transaction, arg2);
    objc_storeStrong((int64_t *)&self->_adConfiguration, arg3);
    sub_1008b6508(r19, @protocol(GADMAdNetworkAdapter), @selector(getNativeAdWithAdTypes:options:));
    var_58 = [self retain];
    [r22 retain];
    var_48 = r20;
    [r20 retain];
    var_40 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_78);
    [var_40 release];
    [var_48 release];
    [r22 release];
    [var_58 release];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)adapter:(void *)arg2 didReceiveMediatedNativeAd:(void *)arg3 {
    r21 = [arg2 retain];
    [self didReceiveNativeAd:arg3 fromAdapter:r21];
    [r21 release];
    return;
}

-(void)adapter:(void *)arg2 didReceiveMediatedUnifiedNativeAd:(void *)arg3 {
    r21 = [arg2 retain];
    [self didReceiveNativeAd:arg3 fromAdapter:r21];
    [r21 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r21->_internalNativeAd);
    r22 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 rootViewController];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r19 == 0x0) {
            r0 = r21->_transaction;
            r0 = [r0 serverRequest];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 targeting];
            r0 = [r0 retain];
            r20 = [[r0 rootViewController] retain];
            [r19 release];
            [r0 release];
            [r21 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    return;
}

-(void)adapter:(void *)arg2 didFailAd:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    if (r19 == 0x0) {
            r0 = sub_1008098f8(0x2, @"Mediation error.");
            r29 = r29;
            r21 = [r0 retain];
            [r19 release];
            r19 = r21;
    }
    var_28 = **___stack_chk_guard;
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
    (*(r20 + 0x10))(r20, 0x0, [r0 retain], 0x0);
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)didReceiveNativeAd:(void *)arg2 fromAdapter:(void *)arg3 {
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
    r29 = &saved_fp;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    var_78 = r20;
                    r0 = [GADNativeAdFeatures alloc];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
                    r25 = [r0 initWithAdConfiguration:*(r23 + r20)];
                    r21 = [NSStringFromClass([r23->_adapter class]) retain];
                    r0 = [GADAdMetadata alloc];
                    var_88 = r21;
                    r27 = [r0 initWithAdNetworkClassName:r21];
                    r28 = sign_extend_64(*(int32_t *)ivar_offset(_transaction));
                    r0 = *(r23 + r28);
                    r0 = [r0 serverRequest];
                    r0 = [r0 retain];
                    r22 = r0;
                    r24 = [[r0 context] retain];
                    var_90 = r27;
                    var_80 = r25;
                    r0 = sub_1007e005c(r19, r27, r24, r25);
                    r29 = r29;
                    r25 = [r0 retain];
                    [r24 release];
                    [r22 release];
                    if (r25 != 0x0) {
                            objc_storeWeak((int64_t *)&r23->_internalNativeAd, r25);
                            var_A8 = r20;
                            r0 = *(r23 + r20);
                            r0 = [r0 objectForKeyedSubscript:@"options"];
                            r0 = [r0 retain];
                            r27 = [[r0 objectForKeyedSubscript:@"native"] retain];
                            [r0 release];
                            var_98 = r27;
                            r0 = [r27 objectForKeyedSubscript:@"preferred_ad_choices_position"];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_A0 = r0;
                            if (r0 != 0x0) {
                                    r2 = [r0 integerValue];
                            }
                            else {
                                    r2 = *0x100bf4490;
                            }
                            r27 = var_78;
                            [r25 setPreferredAdChoicesPosition:r2];
                            r0 = *(r23 + r28);
                            r0 = [r0 serverRequest];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 targeting];
                            r0 = [r0 retain];
                            r20 = [[r0 rootViewController] retain];
                            [r0 release];
                            [r21 release];
                            r0 = [r25 rootViewControllerProvider];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_B0 = r20;
                            [r0 updateViewController:r20];
                            [r0 release];
                            [r25 addMonitor:r23];
                            r0 = [r27 respondsToSelector:r2];
                            r20 = var_A8;
                            if (r0 != 0x0) {
                                    r28 = [r27 handlesUserImpressions];
                            }
                            else {
                                    r28 = 0x0;
                            }
                            if ([r27 respondsToSelector:r2] != 0x0) {
                                    r22 = [r27 handlesUserClicks];
                            }
                            else {
                                    r22 = 0x0;
                            }
                            r0 = [GADMediatedNativeAdMonitor alloc];
                            r0 = [r0 initWithInternalNativeAd:r25 mediatedNativeAd:r19 adapterHandlesImpressions:r28 adapterHandlesClicks:r22];
                            var_B8 = r0;
                            [r25 addMonitor:r0];
                            sub_100849730(r25, *0x100e99648, *(r23 + r20));
                            r0 = [GADViewVisibilityMonitor alloc];
                            r0 = [r0 initWithView:0x0 messageSource:r25];
                            r20 = r28;
                            r28 = r0;
                            [r25 addMonitor:r28];
                            r27 = [[GADAdVisibilityMonitor alloc] initWithAd:r25 messageSource:r25];
                            [r25 addMonitor:r27];
                            r0 = [r25 assetForKey:*0x100e96758];
                            r29 = r29;
                            r24 = [r0 retain];
                            r22 = [[GADNativeAdViewMonitor alloc] initWithInternalNativeAd:r25 handlesClicks:r22 ^ 0x1 mediaContent:r24 viewVisibilityMonitor:r28 adConfiguration:0x0];
                            [r25 addMonitor:r22];
                            if ((r20 & 0x1) == 0x0) {
                                    r26 = [[GADOnePixelImpressionMonitor alloc] initWithAd:r25];
                                    [r25 addMonitor:r26];
                                    [r26 release];
                            }
                            r21 = r23->_renderCompletionHandler;
                            r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
                            (*(r21 + 0x10))(r21, [r0 retain], 0x0, 0x0);
                            [r23 release];
                            [r22 release];
                            [r24 release];
                            [r27 release];
                            [r28 release];
                            [var_B8 release];
                            [var_B0 release];
                            [var_A0 release];
                            r0 = var_98;
                    }
                    else {
                            [sub_1008098f8(0x2, @"Mediated native ad does not conform to any expected protocol.") retain];
                            r22 = r23->_renderCompletionHandler;
                            r0 = [NSArray arrayWithObjects:&var_68 count:0x1];
                            (*(r22 + 0x10))(r22, 0x0, [r0 retain], 0x0);
                            [r23 release];
                            r0 = r21;
                    }
                    [r0 release];
                    r20 = var_78;
                    [r25 release];
                    [var_90 release];
                    [var_88 release];
                    r0 = var_80;
            }
            else {
                    [sub_1008098f8(0x2, @"Invalid mediated native ad.") retain];
                    r22 = r23->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
                    (*(r22 + 0x10))(r22, 0x0, [r0 retain], 0x0);
                    [r23 release];
                    r0 = r21;
            }
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end