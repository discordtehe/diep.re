@implementation GADMRewardedAdNetworkConnector

-(void *)initWithAdNetworkConfiguration:(void *)arg2 adapterClassName:(void *)arg3 renderer:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeWeak((int64_t *)&r22->_renderer, r21);
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_adapterClassName));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            r0 = *(r22 + r24);
            r0 = NSClassFromString(r0);
            r24 = r0;
            if ([r0 instancesRespondToSelector:@selector(loadRewardedAdForAdConfiguration:completionHandler:), r3] != 0x0) {
                    r23 = @selector(init);
                    r0 = [r24 alloc];
                    r0 = objc_msgSend(r0, r23, @selector(loadRewardedAdForAdConfiguration:completionHandler:), r3);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedAdAdapter));
                    r8 = *(r22 + r9);
                    *(r22 + r9) = r0;
                    [r8 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setRewardBasedVideoAd:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)requestRewardBasedVideoAd {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r22 = [[r0 targeting] retain];
    r21 = [[r22 networkExtrasForAdapterClass:[*(self + sign_extend_64(*(int32_t *)ivar_offset(_rewardedAdAdapter))) class]] retain];
    [r22 release];
    r22 = [GADMediationCredentials alloc];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    r25 = [[*(self + r26) objectForKeyedSubscript:*0x100e95a08] retain];
    r22 = [r22 initWithAdFormat:0x2 credentials:r25];
    [r25 release];
    r24 = [GADMediationRewardedAdConfiguration alloc];
    r25 = *(self + r26);
    r26 = [[r0 targeting] retain];
    [r24 initWithAdConfiguration:r25 targeting:r26 credentials:r22 extras:r21];
    [r26 release];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_88 + 0x28, &stack[-104]);
    var_68 = [self retain];
    [r25 loadRewardedAdForAdConfiguration:r23 completionHandler:&var_88];
    [var_68 release];
    objc_destroyWeak(&var_88 + 0x28);
    objc_destroyWeak(&stack[-104]);
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)adapterName {
    r0 = self->_adapterClassName;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)didFailToPresentWithError:(void *)arg2 {
    [[arg2 retain] retain];
    var_18 = [self retain];
    sub_100860a80();
    [var_18 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedAdDidLoad {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    [r0 receivedRewardBasedVideoAdFromConnector:self];
    [r0 release];
    return;
}

-(void)rewardedAdDidFailToLoadWithError:(void *)arg2 {
    r20 = [sub_1008098f8(0x2, @"Mediation error.") retain];
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    [r0 receivedRewardBasedVideoAdWithError:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)willPresentFullScreenView {
    [self->_intermission adapterWillPresent];
    return;
}

-(void)didDismissFullScreenView {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)reportClick {
    sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
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
    r31 = r31 - 0x80;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r20->_renderer);
    r22 = r0;
    r0 = [r0 rewardGrantedUserInfo];
    r0 = [r0 retain];
    r21 = [r0 mutableCopy];
    [r0 release];
    [r22 release];
    r0 = [r21 objectForKeyedSubscript:*0x100e98738];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 type];
    r0 = [r0 retain];
    r24 = [r0 length];
    [r0 release];
    if (r19 != 0x0 && r24 == 0x0) {
            sub_100822058(r21, *0x100e98738, r19);
    }
    var_50 = [r20 retain];
    [r21 retain];
    sub_100860a80();
    [r21 release];
    [var_50 release];
    [r20 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)reportImpression {
    return;
}

-(void)willDismissFullScreenView {
    return;
}

-(bool)canPresent {
    return 0x1;
}

-(void)presentFromViewController:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r0->_rewardedAdAdapter != 0x0) {
            [r0->_mediationRewardedAd presentFromViewController:r2];
    }
    return;
}

-(void)setRenderer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_renderer, arg2);
    return;
}

-(void *)adConfiguration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration)), 0x0);
    return r0;
}

-(void *)renderer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_destroyWeak((int64_t *)&self->_renderer);
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationRewardedAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_rewardedAd);
    objc_storeStrong((int64_t *)&self->_adapterClassName, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedAdAdapter, 0x0);
    return;
}

@end