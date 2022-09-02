@implementation GADCustomEventInterstitialAdRenderer

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

-(void)customEventCompletedLoadWithInterstitial:(void *)arg2 error:(void *)arg3 {
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
    r21 = arg2;
    r19 = self;
    r20 = [arg3 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) != 0x0) goto loc_100800ebc;

loc_100800e60:
    if (r20 == 0x0) goto loc_100800f30;

loc_100800e64:
    r19 = r19->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
    (*(r19 + 0x10))(r19, 0x0, [r0 retain], 0x0);
    r0 = r21;
    goto loc_100800ef4;

loc_100800ef4:
    [r0 release];
    r0 = r20;
    goto loc_100800efc;

loc_100800efc:
    var_38 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100800f30:
    if (r21 == 0x0) goto loc_1008010ec;

loc_100800f34:
    r20 = [GADEventContext alloc];
    r0 = r19->_transaction;
    r0 = [r0 serverRequest];
    r0 = [r0 retain];
    r23 = [[r0 context] retain];
    r20 = [r20 initWithParent:r23 component:*0x100e97468];
    [r23 release];
    [r0 release];
    objc_storeWeak((int64_t *)&r19->_interstitialAd, [[GADInterstitialAd alloc] initWithContext:r20 adController:r19 metadata:[[GADAdMetadata alloc] initWithAdNetworkClassName:*0x100e8f670]]);
    r0 = [GADMediatedIntermission alloc];
    r0 = [r0 initWithMessageSource:r23];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    sub_100849730(r23, *0x100e99630, r19->_adConfiguration);
    r19 = r19->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
    (*(r19 + 0x10))(r19, [r0 retain], 0x0, 0x0);
    [r21 release];
    [r23 release];
    r0 = r22;
    goto loc_100800ef4;

loc_1008010ec:
    [sub_1008098f8(0x2, @"Invalid interstitial.") retain];
    [r20 release];
    r19 = r19->_renderCompletionHandler;
    r0 = [NSArray arrayWithObjects:&var_48 count:0x1];
    (*(r19 + 0x10))(r19, 0x0, [r0 retain], 0x0);
    [r20 release];
    r0 = r21;
    goto loc_100800efc;

loc_100800ebc:
    r19 = objc_loadWeakRetained((int64_t *)&r19->_interstitialAd);
    if (r20 != 0x0 && r19 != 0x0) {
            sub_1008833e8(*0x100e9c020, r19, 0x0);
    }
    r0 = r19;
    goto loc_100800ef4;
}

-(bool)canPresent {
    return 0x1;
}

-(void)presentFromViewController:(void *)arg2 {
    [self->_customEventInterstitial presentFromRootViewController:arg2];
    return;
}

-(void)customEventInterstitialDidReceiveAd:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (arg2 != 0x0) {
            [r19 customEventCompletedLoadWithInterstitial:r2 error:0x0];
    }
    else {
            r20 = [sub_1008098f8(0x2, @"Invalid interstitial.") retain];
            [r19 customEventCompletedLoadWithInterstitial:0x0 error:r20];
            [r20 release];
    }
    return;
}

-(void)customEventInterstitial:(void *)arg2 didFailAd:(void *)arg3 {
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
    [r19 customEventCompletedLoadWithInterstitial:0x0 error:r20];
    [r20 release];
    return;
}

-(void)customEventInterstitialWasClicked:(void *)arg2 {
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

-(void)customEventInterstitialWillPresent:(void *)arg2 {
    sub_1008833e8(*0x100e9c078, objc_loadWeakRetained((int64_t *)&self->_interstitialAd), 0x0);
    [self->_intermission adapterWillPresent];
    [r20 release];
    return;
}

-(void)customEventInterstitialWillDismiss:(void *)arg2 {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void)customEventInterstitialWillLeaveApplication:(void *)arg2 {
    [self customEventInterstitialWasClicked:arg2];
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_interstitialAd), 0x0);
    [r19 release];
    return;
}

-(void)customEventInterstitialDidDismiss:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)customEventInterstitial:(void *)arg2 didReceiveAd:(void *)arg3 {
    r0 = [arg2 retain];
    [NSStringFromClass([r0 class]) retain];
    sub_1007ce06c(0x0, @"Custom event %@ is using deprecated API %s");
    [r21 release];
    [self customEventInterstitialDidReceiveAd:r20];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_destroyWeak((int64_t *)&self->_interstitialAd);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_customEventInterstitial, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_transaction, 0x0);
    return;
}

@end