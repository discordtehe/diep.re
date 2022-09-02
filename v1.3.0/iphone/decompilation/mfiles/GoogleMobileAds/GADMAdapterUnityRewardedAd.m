@implementation GADMAdapterUnityRewardedAd

-(void *)initWithAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r21 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r22->_adConfiguration, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)requestRewardedAd {
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
    r20 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    r0 = *(r20 + r26);
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:@"gameId"] retain];
    [r0 release];
    [r22 release];
    r0 = *(r20 + r26);
    r0 = [r0 credentials];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:@"zoneId"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    [r22 release];
    [r21 release];
    objc_initWeak(&stack[-88], r20);
    if (r19 == 0x0 || *(r20 + r23) == 0x0) goto loc_100758aa4;

loc_1007589f8:
    if (([UnityAds isSupported] & 0x1) == 0x0) goto loc_100758af0;

loc_100758a10:
    r0 = @class(GADMAdapterUnitySingleton);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 configureRewardedAdWithGameID:r19];
    [r0 release];
    *(int8_t *)(int64_t *)&r20->_isLoading = 0x1;
    r20 = [[GADMAdapterUnitySingleton sharedInstance] retain];
    r0 = objc_loadWeakRetained(&stack[-88]);
    [r20 requestRewardedAdWithDelegate:r0];
    [r0 release];
    r0 = r20;
    goto loc_100758ba4;

loc_100758ba4:
    [r0 release];
    objc_destroyWeak(&stack[-88]);
    [r19 release];
    return;

loc_100758af0:
    r21 = [NSString alloc];
    r22 = [NSStringFromClass([UnityAds class]) retain];
    r21 = [r21 initWithFormat:@"%@ is not supported for this device."];
    [r22 release];
    r22 = [sub_100758728() retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r0 = *(r20 + r23);
    [[(*(r0 + 0x10))(r0, 0x0, r22) retain] release];
    r0 = *(r20 + r23);
    *(r20 + r23) = 0x0;
    [r0 release];
    r0 = r22;
    goto loc_100758b9c;

loc_100758b9c:
    [r0 release];
    r0 = r21;
    goto loc_100758ba4;

loc_100758aa4:
    r21 = [sub_100758728() retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r0 = *(r20 + r22);
    [[(*(r0 + 0x10))(r0, 0x0, r21) retain] release];
    r0 = *(r20 + r22);
    *(r20 + r22) = 0x0;
    goto loc_100758b9c;
}

-(void)presentFromViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_isLoading != 0x0) {
            r21 = [sub_100758728() retain];
            r0 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
            [r0 didFailToPresentWithError:r21];
            [r0 release];
    }
    else {
            r0 = [GADMAdapterUnitySingleton sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            [r0 presentRewardedAdForViewController:r19 delegate:r20];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)getPlacementID {
    r0 = self->_placementID;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_isLoading));
    if (*(int8_t *)(r20 + r22) == 0x0) goto loc_100758d58;

loc_100758d08:
    r21 = [sub_100758728() retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r0 = *(r20 + r23);
    [[(*(r0 + 0x10))(r0, 0x0, r21) retain] release];
    r0 = *(r20 + r23);
    *(r20 + r23) = 0x0;
    [r0 release];
    *(int8_t *)(r20 + r22) = 0x0;
    goto loc_100758da0;

loc_100758da0:
    [r21 release];
    goto loc_100758da8;

loc_100758da8:
    [r19 release];
    return;

loc_100758d58:
    if (r21 != 0x8) goto loc_100758da8;

loc_100758d60:
    r21 = [sub_100758728() retain];
    r0 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
    [r0 didFailToPresentWithError:r21];
    [r0 release];
    goto loc_100758da0;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    if (arg3 == 0x2) {
            [r19 didEndVideo];
            r20 = [GADAdReward alloc];
            r21 = [[NSDecimalNumber one] retain];
            r20 = [r20 initWithRewardType:@"" rewardAmount:r21];
            [r21 release];
            [r19 didRewardUserWithReward:r20];
            [r20 release];
    }
    [r19 willDismissFullScreenView];
    [r19 didDismissFullScreenView];
    [r19 release];
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 willPresentFullScreenView];
    [r0 didStartVideo];
    [r0 release];
    return;
}

-(void)unityAdsDidClick:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    [r0 reportClick];
    [r0 release];
    return;
}

-(void)unityAdsReady:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isLoading));
    if (*(int8_t *)(r19 + r21) != 0x0) {
            r0 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler)));
            objc_storeWeak((int64_t *)&r19->_adEventDelegate, [(*(r0 + 0x10))(r0, r19, 0x0) retain]);
            [r20 release];
            r0 = *(r19 + r22);
            *(r19 + r22) = 0x0;
            [r0 release];
            *(int8_t *)(r19 + r21) = 0x0;
    }
    return;
}

-(void)unityAdsPlacementStateChanged:(void *)arg2 oldState:(long long)arg3 newState:(long long)arg4 {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    return;
}

@end