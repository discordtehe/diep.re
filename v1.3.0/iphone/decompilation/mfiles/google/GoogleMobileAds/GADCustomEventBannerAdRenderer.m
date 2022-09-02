@implementation GADCustomEventBannerAdRenderer

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

-(void)customEventBanner:(void *)arg2 didReceiveAd:(void *)arg3 {
    [self customEventCompletedLoadWithAdView:arg3 error:0x0];
    return;
}

-(void)customEventCompletedLoadWithAdView:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    if (r21 == 0x0) goto loc_100804b64;

loc_100804b10:
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_70 count:0x1];
    r22 = [r0 retain];
    (*(r20 + 0x10))(r20, 0x0, r22, 0x0);
    goto loc_100804e7c;

loc_100804e7c:
    [r22 release];
    r0 = r21;
    goto loc_100804e88;

loc_100804e88:
    var_68 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100804b64:
    if (r19 == 0x0) goto loc_100804ed0;

loc_100804b68:
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
    objc_storeWeak((int64_t *)&r20->_bannerAd, [[GADBannerAd alloc] initWithContext:r21 adView:r22 metadata:[[GADAdMetadata alloc] initWithAdNetworkClassName:*0x100e8f670] videoController:0x0]);
    r0 = [GADMediatedIntermission alloc];
    r0 = [r0 initWithMessageSource:r24];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r22 setView:[[GADCroppingAdView alloc] initWithView:r19 size:r21 context:r24 messageSource:0x0]];
    r0 = *(r20 + r27);
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r25 = [[r0 rootViewController] retain];
    [r0 release];
    [r27 release];
    r0 = [r24 rootViewControllerProvider];
    r0 = [r0 retain];
    [r0 updateViewController:r25];
    [r0 release];
    [r24 addMonitor:r20];
    sub_100849730(r24, *0x100e99628, *(r20 + var_A0));
    sub_100849828(r24, 0x0, r22, *(r20 + var_A0));
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_80 count:0x1];
    (*(r20 + 0x10))(r20, [r0 retain], 0x0, 0x0);
    [r27 release];
    [r25 release];
    [r26 release];
    [r24 release];
    [r23 release];
    goto loc_100804e7c;

loc_100804ed0:
    [sub_1008098f8(0x2, @"Invalid mediation view.") retain];
    [r21 release];
    r20 = r20->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_78 count:0x1];
    (*(r20 + 0x10))(r20, 0x0, [r0 retain], 0x0);
    [r21 release];
    r0 = r22;
    goto loc_100804e88;
}

-(void)customEventBanner:(void *)arg2 didFailAd:(void *)arg3 {
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
    [r19 customEventCompletedLoadWithAdView:0x0 error:r20];
    [r20 release];
    return;
}

-(void)customEventBannerWasClicked:(void *)arg2 {
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

-(void)customEventBannerWillPresentModal:(void *)arg2 {
    [self customEventBannerWasClicked:arg2];
    [self->_intermission adapterWillPresent];
    return;
}

-(void)customEventBannerWillDismissModal:(void *)arg2 {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)customEventBannerDidDismissModal:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)customEventBannerWillLeaveApplication:(void *)arg2 {
    [self customEventBannerWasClicked:arg2];
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_bannerAd), 0x0);
    [r19 release];
    return;
}

-(void)customEventBanner:(void *)arg2 clickDidOccurInAd:(void *)arg3 {
    r0 = [arg2 retain];
    [NSStringFromClass([r0 class]) retain];
    sub_1007ce06c(0x0, @"Custom event %@ is using deprecated API %s");
    [r21 release];
    [self customEventBannerWasClicked:r20];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_destroyWeak((int64_t *)&self->_bannerAd);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_customEventBanner, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_transaction, 0x0);
    return;
}

@end