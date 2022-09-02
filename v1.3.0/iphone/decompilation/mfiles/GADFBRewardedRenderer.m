@implementation GADFBRewardedRenderer

-(void)rewardedVideoAdDidLoad:(void *)arg2 {
    r0 = self->_adLoadCompletionHandler;
    objc_storeWeak((int64_t *)&self->_adEventDelegate, [(*(r0 + 0x10))(r0, self, 0x0) retain]);
    [r20 release];
    return;
}

-(void)rewardedVideoAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r0 = self->_adLoadCompletionHandler;
    [[(*(r0 + 0x10))(r0, 0x0, arg3, arg3) retain] release];
    return;
}

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = objc_retainBlock(arg3);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r8 = *(r21 + r24);
    *(r21 + r24) = r0;
    [r8 release];
    r0 = [r19 bidResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_isRTBRequest = 0x1;
    }
    r23 = [[r19 credentials] retain];
    r0 = [GADMediationAdapterFacebook getPlacementIDFromCredentials:r23];
    r29 = r29;
    r20 = [r0 retain];
    [r23 release];
    if (r20 == 0x0) goto loc_1005a290c;

loc_1005a27f0:
    r0 = [FBRewardedVideoAd alloc];
    r0 = [r0 initWithPlacementID:r20];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedAd));
    r8 = *(r21 + r26);
    *(r21 + r26) = r0;
    [r8 release];
    r0 = *(r21 + r26);
    if (r0 == 0x0) goto loc_1005a2944;

loc_1005a2834:
    [r0 setDelegate:r21];
    r25 = [[GADRequest sdkVersion] retain];
    r0 = [NSString stringWithFormat:@"GOOGLE_%@:%@"];
    r29 = r29;
    r24 = [r0 retain];
    [FBAdSettings setMediationService:r24];
    [r24 release];
    [r25 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isRTBRequest));
    r8 = *(int8_t *)(r21 + r8);
    r21 = *(r21 + r26);
    if (r8 == 0x0) goto loc_1005a2a08;

loc_1005a28dc:
    r22 = [[r19 bidResponse] retain];
    [r21 loadAdWithBidPayload:r22];
    goto loc_1005a29d8;

loc_1005a29d8:
    [r22 release];
    goto loc_1005a29e0;

loc_1005a29e0:
    [r20 release];
    [r19 release];
    return;

loc_1005a2a08:
    [r21 loadAd];
    goto loc_1005a29e0;

loc_1005a2944:
    r23 = [NSStringFromClass([FBRewardedVideoAd class]) retain];
    r22 = [[NSString stringWithFormat:@"%@ failed to initialize."] retain];
    [r23 release];
    r23 = [sub_1005a6b3c(r22) retain];
    r0 = *(r21 + r24);
    [[(*(r0 + 0x10))(r0, 0x0, r23) retain] release];
    r0 = r23;
    goto loc_1005a29d4;

loc_1005a29d4:
    [r0 release];
    goto loc_1005a29d8;

loc_1005a290c:
    r22 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
    r0 = *(r21 + r24);
    r0 = (*(r0 + 0x10))(r0, 0x0, r22);
    r0 = [r0 retain];
    goto loc_1005a29d4;
}

-(void)rewardedVideoAdDidClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
    if (r19 != 0x0 && *(int8_t *)(int64_t *)&r20->_isRTBRequest == 0x0) {
            [r19 reportClick];
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidClose:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    if (r19 != 0x0) {
            [r19 didDismissFullScreenView];
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillClose:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    if (r19 != 0x0) {
            [r19 willDismissFullScreenView];
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillLogImpression:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
    if (r19 != 0x0 && *(int8_t *)(int64_t *)&r20->_isRTBRequest == 0x0) {
            [r19 reportImpression];
    }
    [r19 release];
    return;
}

-(void)rewardedVideoAdVideoComplete:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    if (r19 != 0x0) {
            r20 = [GADAdReward alloc];
            r21 = [[NSDecimalNumber one] retain];
            r20 = [r20 initWithRewardType:@"" rewardAmount:r21];
            [r21 release];
            [r19 didEndVideo];
            [r19 didRewardUserWithReward:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)presentFromViewController:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&r21->_adEventDelegate);
    if (r20 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedAd));
            if ([*(r21 + r22) isAdValid] != 0x0) {
                    [*(r21 + r22) showAdFromRootViewController:r19];
                    [r20 willPresentFullScreenView];
                    [r20 didStartVideo];
            }
            else {
                    r22 = [NSStringFromClass([FBRewardedVideoAd class]) retain];
                    r21 = [[NSString stringWithFormat:@"%@ failed to present."] retain];
                    [r22 release];
                    r22 = [sub_1005a6b3c(r21) retain];
                    [r20 didFailToPresentWithError:r22];
                    [r22 release];
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    return;
}

@end