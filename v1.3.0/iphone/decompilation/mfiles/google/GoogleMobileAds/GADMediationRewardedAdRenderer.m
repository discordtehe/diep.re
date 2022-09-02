@implementation GADMediationRewardedAdRenderer

-(void *)viewControllerForPresentingModalView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardedAd);
    r19 = r0;
    r0 = [r0 rootViewControllerProvider];
    r0 = [r0 retain];
    r21 = [[r0 topViewController] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)renderWithServerTransaction:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    [arg3 retain];
    r0 = [arg4 retain];
    r0 = objc_retainBlock(r0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [r22 serverRequest];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_targeting));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r25 release];
    r0 = [r22 serverRequest];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 context];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r24 release];
    objc_storeStrong((int64_t *)&self->_adConfiguration, arg3);
    self->_adapterClass = sub_1008b6508(r19, @protocol(GADMediationAdapter), @selector(loadRewardedAdForAdConfiguration:completionHandler:));
    var_60 = r22;
    [r22 retain];
    var_58 = [self retain];
    [r21 retain];
    var_48 = r19;
    [r19 retain];
    sub_100860a80();
    [var_48 release];
    [r21 release];
    [var_58 release];
    [var_60 release];
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
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediationRewardedAd);
    [r0 presentFromViewController:r20];
    [r20 release];
    [r0 release];
    [r19 release];
    return;
}

-(void)rewardedAdDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (r20 == 0x0) {
            r0 = sub_1008098f8(0x2, @"Mediation error.");
            r29 = r29;
            r21 = [r0 retain];
            [r20 release];
            r20 = r21;
    }
    var_38 = **___stack_chk_guard;
    r21 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler)));
    r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
    (*(r21 + 0x10))(r21, 0x0, [r0 retain], 0x0);
    [r22 release];
    r0 = *(r19 + r23);
    *(r19 + r23) = 0x0;
    [r0 release];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
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

-(void)rewardedAdDidLoad:(void *)arg2 adapter:(void *)arg3 {
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
    var_48 = **___stack_chk_guard;
    [arg2 retain];
    [arg3 retain];
    r20 = [[GADEventContext alloc] initWithParent:self->_context component:*0x100e97468];
    r21 = [GADAdMetadata alloc];
    r22 = [NSStringFromClass(self->_adapterClass) retain];
    r21 = [r21 initWithAdNetworkClassName:r22];
    [r22 release];
    objc_storeWeak((int64_t *)&self->_rewardedAd, [[GADInterstitialAd alloc] initWithContext:r20 adController:self metadata:r21]);
    objc_storeWeak((int64_t *)&self->_mediationRewardedAd, r25);
    [r22 addMonitor:r25];
    [r25 release];
    [r22 addMonitor:r24];
    [r24 release];
    r0 = [GADMediatedIntermission alloc];
    r0 = [r0 initWithMessageSource:r22];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_intermission));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    [GADImpressionMonitor addMonitorToAd:r22 adConfiguration:*(self + r24)];
    [GADVideoPingMonitor addMonitorToAd:r22 adConfiguration:*(self + r24)];
    [GADAdLifecycleEventPingMonitor addMonitorToAd:r22 adConfiguration:*(self + r24)];
    [GADAdExposureMonitor addMonitorToAd:r22 adConfiguration:*(self + r24) useVisibilityNotification:0x0];
    r23 = *(self + r24);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_targeting));
    r24 = [[*(self + r25) userIdentifier] retain];
    r25 = [[*(self + r25) customRewardString] retain];
    r0 = sub_100865f18(r23, r24, r25);
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rewardGrantedUserInfo));
    r8 = *(self + r23);
    *(self + r23) = r0;
    [r8 release];
    [r25 release];
    [r24 release];
    r23 = [[*(self + r23) objectForKey:*0x100e98738] retain];
    [r22 setReward:r23];
    [r23 release];
    r23 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_renderCompletionHandler)));
    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
    (*(r23 + 0x10))(r23, [r0 retain], 0x0, 0x0);
    [r24 release];
    r0 = *(self + r25);
    *(self + r25) = 0x0;
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)willPresentFullScreenView {
    sub_1008833e8(*0x100e9c078, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [self->_intermission adapterWillPresent];
    [r20 release];
    return;
}

-(void)didDismissFullScreenView {
    [self->_intermission adapterDidDismiss];
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rewardGrantedUserInfo));
    r22 = [*(r20 + r21) mutableCopy];
    r0 = *(r20 + r21);
    r0 = [r0 objectForKeyedSubscript:*0x100e98738];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 type];
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    if (r25 == 0x0) {
            sub_100822058(r22, *0x100e98738, r19);
    }
    var_50 = [r20 retain];
    [r22 retain];
    sub_100860a80();
    [r22 release];
    [var_50 release];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)reportClick {
    sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)didStartVideo {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)didEndVideo {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)willDismissFullScreenView {
    return;
}

-(void)reportImpression {
    return;
}

-(void *)credentials {
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a08];
    return r0;
}

-(void *)publisherId {
    r0 = [self credentials];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)testMode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[r20->_adConfiguration objectForKeyedSubscript:*0x100e95a30] retain];
    if (r19 != 0x0) {
            r1 = @selector(boolValue);
            r0 = r19;
    }
    else {
            r0 = r20->_targeting;
            r1 = @selector(testModeEnabled);
    }
    r20 = objc_msgSend(r0, r1);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)networkExtras {
    r0 = [self->_targeting networkExtrasForAdapterClass:self->_adapterClass];
    return r0;
}

-(void *)childDirectedTreatment {
    r0 = sub_1007dab88();
    return r0;
}

-(long long)userGender {
    r0 = self->_targeting;
    r0 = [r0 gender];
    return r0;
}

-(void *)userBirthday {
    r0 = self->_targeting;
    r0 = [r0 birthday];
    return r0;
}

-(bool)userHasLocation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e959f8];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 boolValue] != 0x0) {
            r0 = r20->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            r20 = [r0 precise];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(double)userLatitude {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self userHasLocation];
    if (r0 != 0x0) {
            r0 = r19->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 latitude];
            r0 = [r0 release];
    }
    return r0;
}

-(double)userLongitude {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self userHasLocation];
    if (r0 != 0x0) {
            r0 = r19->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 longitude];
            r0 = [r0 release];
    }
    return r0;
}

-(double)userLocationAccuracyInMeters {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [self userHasLocation];
    if (r0 != 0x0) {
            r0 = r19->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            [r0 accuracy];
            r0 = [r0 release];
    }
    return r0;
}

-(void *)userLocationDescription {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e959f8];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 boolValue] != 0x0) {
            r0 = r20->_targeting;
            r0 = [r0 location];
            r0 = [r0 retain];
            r20 = [[r0 locationDescription] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)userKeywords {
    r0 = self->_targeting;
    r0 = [r0 keywords];
    return r0;
}

-(float)adVolume {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    [r0 applicationVolume];
    r0 = [r0 release];
    if (s8 >= 0x0) {
            asm { fcvt       d0, s8 };
            asm { fmin       d0, d0, d1 };
            asm { fcvt       s0, d0 };
    }
    return r0;
}

-(bool)adMuted {
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 applicationMuted];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)underAgeOfConsent {
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 requestConfiguration];
    r0 = [r0 retain];
    r21 = [[r0 underAgeOfConsent] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)maxAdContentRating {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringForKey:*0x100e9b9f0];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r0 = [GADMobileAds sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 requestConfiguration];
            r0 = [r0 retain];
            r20 = [[r0 maxAdContentRating] retain];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_storeStrong((int64_t *)&self->_intermission, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_targeting, 0x0);
    objc_storeStrong((int64_t *)&self->_mediatedConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardGrantedUserInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_renderCompletionHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_mediationRewardedAd);
    objc_destroyWeak((int64_t *)&self->_rewardedAd);
    return;
}

@end