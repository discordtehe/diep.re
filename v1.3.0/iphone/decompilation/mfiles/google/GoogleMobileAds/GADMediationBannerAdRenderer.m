@implementation GADMediationBannerAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    [arg3 retain];
    r0 = objc_retainBlock(arg4);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_transaction));
    r24 = *(self + r8);
    *(self + r8) = r22;
    [r22 retain];
    [r24 release];
    objc_storeStrong((int64_t *)&self->_adConfiguration, arg3);
    sub_1008b6508(r23, @protocol(GADMAdNetworkAdapter), @selector(getBannerWithSize:));
    var_48 = [self retain];
    [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [r23 release];
    [var_48 release];
    [r20 release];
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
            sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&r0->_bannerAd), 0x0);
            [r20 release];
    }
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
    r0 = objc_loadWeakRetained((int64_t *)&r21->_bannerAd);
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

-(void)adapter:(void *)arg2 didFailAd:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg3 retain];
    if (r20 == 0x0) {
            r21 = [sub_1008098f8(0x2, @"Mediation error.") retain];
            [r20 release];
            r20 = r21;
    }
    [r19 adapterCompletedLoadWithAdView:0x0 error:r20];
    [r20 release];
    return;
}

-(void)adapterCompletedLoadWithAdView:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (r21 == 0x0) goto loc_1008bfc04;

loc_1008bfbb0:
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
    r22 = [r0 retain];
    (*(r20 + 0x10))(r20, 0x0, r22, 0x0);
    goto loc_1008bffa0;

loc_1008bffa0:
    [r22 release];
    r0 = r21;
    goto loc_1008bffac;

loc_1008bffac:
    var_68 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_1008bfc04:
    if (r19 == 0x0) goto loc_1008bfff4;

loc_1008bfc08:
    var_A0 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    sub_1008c5a80();
    r21 = [GADEventContext alloc];
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_transaction)));
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r23 = [[r0 context] retain];
    r21 = [r21 initWithParent:r23 component:*0x100e97468];
    [r23 release];
    [r0 release];
    r22 = [[GADFluidContainerAdView alloc] initWithFrame:r21 context:*0x100e97468];
    r23 = [GADAdMetadata alloc];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    var_B0 = r8;
    r24 = [NSStringFromClass([*(r20 + r8) class]) retain];
    r23 = [r23 initWithAdNetworkClassName:r24];
    var_A8 = r23;
    [r24 release];
    objc_storeWeak((int64_t *)&r20->_bannerAd, [[GADBannerAd alloc] initWithContext:r21 adView:r22 metadata:r23 videoController:0x0]);
    r0 = [GADMediatedIntermission alloc];
    r0 = [r0 initWithMessageSource:r24];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r26 = [[GADCroppingAdView alloc] initWithView:r19 size:r21 context:r24 messageSource:0x0];
    [r22 setView:r26];
    objc_storeWeak((int64_t *)&r20->_croppingView, r26);
    r27 = [[r24 rootViewControllerProvider] retain];
    r0 = *(r20 + r28);
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r23 = [[r0 rootViewController] retain];
    [r27 updateViewController:r23];
    [r23 release];
    [r0 release];
    [r25 release];
    [r27 release];
    [r24 addMonitor:r20];
    sub_100849730(r24, *0x100e99628, *(r20 + var_A0));
    sub_100849828(r24, 0x0, r22, *(r20 + var_A0));
    [GADMediationSizeChangeMonitor addMonitorToAd:r24 containerView:r22 croppingView:r26 delegate:*(r20 + var_B0)];
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_80 count:0x1];
    (*(r20 + 0x10))(r20, [r0 retain], 0x0, 0x0);
    [r23 release];
    [r26 release];
    [r24 release];
    [var_A8 release];
    goto loc_1008bffa0;

loc_1008bfff4:
    [sub_1008098f8(0x2, @"Invalid mediation view.") retain];
    [r21 release];
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_78 count:0x1];
    (*(r20 + 0x10))(r20, 0x0, [r0 retain], 0x0);
    [r21 release];
    r0 = r22;
    goto loc_1008bffac;
}

-(void)adapter:(void *)arg2 didReceiveAdView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    if (r19 != 0x0) {
            r21 = objc_loadWeakRetained((int64_t *)&r20->_croppingView);
            r22 = objc_loadWeakRetained((int64_t *)&r20->_bannerAd);
            if (r21 != 0x0) {
                    [r21 mediationBannerInnerRefreshWithView:r19];
                    sub_1008833e8(*0x100e9c678, r22, 0x0);
            }
            else {
                    [r20 adapterCompletedLoadWithAdView:r19 error:0x0];
            }
            [r22 release];
    }
    else {
            r21 = [sub_1008098f8(0x2, @"Invalid mediation view.") retain];
            [r20 adapterCompletedLoadWithAdView:0x0 error:r21];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)adapterWillLeaveApplication:(void *)arg2 {
    [self reportClick];
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_bannerAd), 0x0);
    [r19 release];
    return;
}

-(void)adapterWillPresentFullScreenModal:(void *)arg2 {
    [self reportClick];
    [self->_intermission adapterWillPresent];
    return;
}

-(void)adapterWillDismissFullScreenModal:(void *)arg2 {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)adapterDidGetAdClick:(void *)arg2 {
    [self reportClick];
    return;
}

-(void)adapterDidDismissFullScreenModal:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_destroyWeak((int64_t *)&self->_croppingView);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_bannerAd);
    return;
}

@end