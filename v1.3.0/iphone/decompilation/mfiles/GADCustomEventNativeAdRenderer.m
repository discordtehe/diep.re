@implementation GADCustomEventNativeAdRenderer

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
    [r24 retain];
    var_48 = r21;
    [r21 retain];
    var_40 = [self retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_70);
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r24 release];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)customEventNativeAd:(void *)arg2 didReceiveMediatedNativeAd:(void *)arg3 {
    r21 = [arg2 retain];
    [self processMediatedNativeAd:arg3 withCustomEventNativeAd:r21];
    [r21 release];
    return;
}

-(void)customEventNativeAd:(void *)arg2 didReceiveMediatedUnifiedNativeAd:(void *)arg3 {
    r21 = [arg2 retain];
    [self processMediatedNativeAd:arg3 withCustomEventNativeAd:r21];
    [r21 release];
    return;
}

-(void)customEventNativeAd:(void *)arg2 didFailToLoadWithError:(void *)arg3 {
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_customEventNative, 0x0);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_transaction, 0x0);
    return;
}

-(void)processMediatedNativeAd:(void *)arg2 withCustomEventNativeAd:(void *)arg3 {
    r31 = r31 - 0xb0;
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
                    r0 = [GADNativeAdFeatures alloc];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
                    var_88 = r8;
                    r24 = [r0 initWithAdConfiguration:*(r23 + r8)];
                    r28 = [[GADAdMetadata alloc] initWithAdNetworkClassName:*0x100e8f670];
                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_transaction));
                    r0 = *(r23 + r27);
                    r0 = [r0 serverRequest];
                    r0 = [r0 retain];
                    r22 = r0;
                    r26 = [[r0 context] retain];
                    var_80 = r28;
                    var_78 = r24;
                    r0 = sub_1007e005c(r19, r28, r26, r24);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r26 release];
                    [r22 release];
                    if (r24 != 0x0) {
                            r22 = [[r24 rootViewControllerProvider] retain];
                            r0 = *(r23 + r27);
                            r0 = [r0 serverRequest];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 targeting];
                            r0 = [r0 retain];
                            r27 = [[r0 rootViewController] retain];
                            [r22 updateViewController:r27];
                            [r27 release];
                            [r0 release];
                            [r21 release];
                            [r22 release];
                            [r24 addMonitor:r23];
                            r0 = [[GADMediatedNativeAdMonitor alloc] initWithInternalNativeAd:r24 mediatedNativeAd:r19 adapterHandlesImpressions:[r20 handlesUserImpressions] adapterHandlesClicks:[r20 handlesUserClicks]];
                            var_90 = r0;
                            [r24 addMonitor:r0];
                            sub_100849730(r24, *0x100e99648, *(r23 + var_88));
                            r28 = [[GADViewVisibilityMonitor alloc] initWithView:0x0 messageSource:r24];
                            [r24 addMonitor:r28];
                            r0 = [GADAdVisibilityMonitor alloc];
                            r0 = [r0 initWithAd:r24 messageSource:r24];
                            var_88 = r0;
                            [r24 addMonitor:r0];
                            r0 = [r24 assetForKey:*0x100e96758];
                            r29 = r29;
                            r26 = [r0 retain];
                            r21 = [[GADNativeAdViewMonitor alloc] initWithInternalNativeAd:r24 handlesClicks:[r20 handlesUserClicks] ^ 0x1 mediaContent:r26 viewVisibilityMonitor:r28 adConfiguration:0x0];
                            [r24 addMonitor:r21];
                            if (([r20 handlesUserImpressions] & 0x1) == 0x0) {
                                    r22 = [[GADOnePixelImpressionMonitor alloc] initWithAd:r24];
                                    [r24 addMonitor:r22];
                                    [r22 release];
                            }
                            r22 = r23->_renderCompletionHandler;
                            r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
                            (*(r22 + 0x10))(r22, [r0 retain], 0x0, 0x0);
                            [r23 release];
                            [r21 release];
                            [r26 release];
                            [var_88 release];
                            [r28 release];
                            r0 = var_90;
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
                    [r24 release];
                    [var_80 release];
                    r0 = var_78;
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