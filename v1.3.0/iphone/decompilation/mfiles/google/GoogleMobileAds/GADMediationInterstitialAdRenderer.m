@implementation GADMediationInterstitialAdRenderer

-(void *)viewControllerForPresentingModalView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialAd);
    r19 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r21 = [[r0 topViewController] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
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

-(void)adapterCompletedLoadWithError:(void *)arg2 {
    r31 = r31 - 0x60;
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
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    r20 = r20->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
                    r21 = [r0 retain];
                    (*(r20 + 0x10))(r20, 0x0, r21, 0x0);
            }
            else {
                    r21 = [GADEventContext alloc];
                    r0 = r20->_transaction;
                    r0 = [r0 serverRequest];
                    r0 = [r0 retain];
                    r24 = [[r0 context] retain];
                    r21 = [r21 initWithParent:r24 component:*0x100e97468];
                    [r24 release];
                    [r0 release];
                    r23 = [GADAdMetadata alloc];
                    r24 = [NSStringFromClass([r20->_adapter class]) retain];
                    r23 = [r23 initWithAdNetworkClassName:r24];
                    [r24 release];
                    objc_storeWeak((int64_t *)&r20->_interstitialAd, [[GADInterstitialAd alloc] initWithContext:r21 adController:r20 metadata:r23]);
                    r0 = [GADMediatedIntermission alloc];
                    r0 = [r0 initWithMessageSource:r24];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    sub_100849730(r24, *0x100e99630, r20->_adConfiguration);
                    r20 = r20->_renderCompletionHandler;
                    r0 = [NSArray arrayWithObjects:&var_48 count:0x1];
                    (*(r20 + 0x10))(r20, [r0 retain], 0x0, 0x0);
                    [r22 release];
                    [r24 release];
                    [r23 release];
            }
            r0 = r21;
    }
    else {
            r20 = objc_loadWeakRetained((int64_t *)&r20->_interstitialAd);
            if (r19 != 0x0 && r20 != 0x0) {
                    sub_1008833e8(*0x100e9c020, r20, 0x0);
            }
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

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [arg4 retain];
    r21 = r0;
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_transaction));
    r24 = *(self + r8);
    *(self + r8) = r22;
    [r22 retain];
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    r22 = *(self + r8);
    *(self + r8) = r23;
    r23 = [r23 retain];
    [r22 release];
    sub_1008b6508(r23, @protocol(GADMAdNetworkAdapter), @selector(getInterstitial));
    var_48 = [self retain];
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [r21 release];
    [var_48 release];
    [r20 release];
    [r23 release];
    [r19 release];
    return;
}

-(bool)canPresent {
    return 0x1;
}

-(void)presentFromViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialAd);
    r20 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    [r0 updateViewController:r21];
    [r0 release];
    [r20 release];
    [self->_adapter presentInterstitialFromRootViewController:r21];
    [r21 release];
    return;
}

-(void)adapterDidReceiveInterstitial:(void *)arg2 {
    [self adapterCompletedLoadWithError:0x0];
    return;
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
    [r19 adapterCompletedLoadWithError:r20];
    [r20 release];
    return;
}

-(void)adapterWillPresentInterstitial:(void *)arg2 {
    sub_1008833e8(*0x100e9c078, objc_loadWeakRetained((int64_t *)&self->_interstitialAd), 0x0);
    [self->_intermission adapterWillPresent];
    [r20 release];
    return;
}

-(void)adapterWillDismissInterstitial:(void *)arg2 {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)adapterDidDismissInterstitial:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)adapterWillLeaveApplication:(void *)arg2 {
    [self reportClick];
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_interstitialAd), 0x0);
    [r19 release];
    return;
}

-(void)adapterDidGetAdClick:(void *)arg2 {
    [self reportClick];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_interstitialAd);
    return;
}

@end