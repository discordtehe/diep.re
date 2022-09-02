@implementation GADRTBMediationRewardBasedVideoAdRenderer

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    sub_1008b6508(r20, @protocol(GADMediationAdapter), @selector(loadRewardedAdForAdConfiguration:completionHandler:));
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

-(void)presentFromViewController:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardedAd);
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
            sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&r0->_rewardedAd), 0x0);
            [r20 release];
    }
    return;
}

-(void)willPresentFullScreenView {
    [self->_intermission adapterWillPresent];
    return;
}

-(void)willDismissFullScreenView {
    [self->_intermission adapterWillDismiss];
    return;
}

-(void *)adEventDelegateForAdapter:(void *)arg2 mediatedAd:(void *)arg3 adConfiguration:(struct NSDictionary *)arg4 transaction:(void *)arg5 renderCompletionHandler:(void *)arg6 {
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
    r19 = self;
    var_58 = **___stack_chk_guard;
    r26 = [arg2 retain];
    var_88 = r26;
    var_98 = [arg3 retain];
    var_A0 = [arg4 retain];
    var_90 = [arg5 retain];
    var_70 = [arg6 retain];
    r24 = [GADEventContext alloc];
    r0 = [arg5 serverRequest];
    r0 = [r0 retain];
    r27 = [[r0 context] retain];
    r22 = [r24 initWithParent:r27 component:*0x100e97468];
    var_78 = r22;
    [r27 release];
    [r0 release];
    r24 = [GADAdMetadata alloc];
    r25 = [NSStringFromClass([r26 class]) retain];
    r24 = [r24 initWithAdNetworkClassName:r25];
    var_80 = r24;
    [r25 release];
    objc_storeWeak((int64_t *)&r19->_rewardedAd, [[GADInterstitialAd alloc] initWithContext:r22 adController:r19 metadata:r24]);
    objc_storeWeak((int64_t *)&r19->_mediatedAd, r23);
    r0 = [GADMediatedIntermission alloc];
    r0 = [r0 initWithMessageSource:r27];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    sub_100849730(r27, *0x100e99638, var_A0);
    [GADVideoPingMonitor addMonitorToAd:r27 adConfiguration:var_A0];
    r0 = [arg5 serverRequest];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 userIdentifier] retain];
    r21 = [arg5 serverRequest];
    [var_90 release];
    r0 = [r21 retain];
    r21 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r22 = r0;
    r28 = [[r0 customRewardString] retain];
    r23 = sub_100865f18(var_A0, r25, r28);
    [var_A0 release];
    r0 = [r23 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardGrantedUserInfo));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r28 release];
    [r22 release];
    [r21 release];
    [r25 release];
    [r24 release];
    [r26 release];
    [r27 addMonitor:r19];
    [r27 addMonitor:var_88];
    [var_88 release];
    [r27 addMonitor:var_98];
    [var_98 release];
    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
    (*(var_70 + 0x10))(arg6, [r0 retain], 0x0, 0x0);
    [var_70 release];
    [r20 release];
    [r27 release];
    [var_80 release];
    [var_78 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)didDismissFullScreenView {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)didStartVideo {
    sub_1008833e8(*0x100e9c668, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)didEndVideo {
    sub_1008833e8(*0x100e9c670, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)didRewardUserWithReward:(void *)arg2 {
    sub_1008833e8(*0x100e9c660, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), self->_rewardGrantedUserInfo);
    [r21 release];
    return;
}

-(void)didFailToPresentWithError:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardGrantedUserInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_mediatedConfiguration, 0x0);
    objc_destroyWeak((int64_t *)&self->_mediatedAd);
    objc_destroyWeak((int64_t *)&self->_rewardedAd);
    objc_storeStrong((int64_t *)&self->_loadingAdapter, 0x0);
    return;
}

@end