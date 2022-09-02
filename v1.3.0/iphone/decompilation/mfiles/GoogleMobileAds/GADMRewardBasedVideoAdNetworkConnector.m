@implementation GADMRewardBasedVideoAdNetworkConnector

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
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterClassName));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
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
    dispatch_async(*__dispatch_main_q, &var_40);
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)setUpAdapter {
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
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    if (*(r19 + r22) == 0x0) goto loc_1008c4164;

loc_1008c40bc:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    r0 = *(r19 + r24);
    if (r0 != 0x0) goto loc_1008c41e0;

loc_1008c40cc:
    r0 = [r19 adapterName];
    r0 = [r0 retain];
    r21 = NSClassFromString(r0);
    [r0 release];
    r0 = *(r19 + r22);
    r0 = [r0 objectForKeyedSubscript:@"credentials"];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1008c4178;

loc_1008c4120:
    if ([r21 instancesRespondToSelector:@selector(initWithRewardBasedVideoAdNetworkConnector:credentials:), r3] == 0x0) goto loc_1008c41d4;

loc_1008c4140:
    r0 = [r21 alloc];
    r0 = [r0 initWithRewardBasedVideoAdNetworkConnector:r19 credentials:r20];
    goto loc_1008c41c4;

loc_1008c41c4:
    r8 = *(r19 + r24);
    *(r19 + r24) = r0;
    [r8 release];
    goto loc_1008c41d4;

loc_1008c41d4:
    [r20 release];
    r0 = *(r19 + r24);
    goto loc_1008c41e0;

loc_1008c41e0:
    r8 = [r0 respondsToSelector:@selector(setUp)];
    r0 = *(r19 + r24);
    if (r8 == 0x0) goto loc_1008c4220;

loc_1008c4208:
    [r0 setUp];
    return;

loc_1008c4220:
    r8 = [r0 respondsToSelector:@selector(setUpWithUserID:)];
    r0 = *(r19 + r24);
    if (r8 == 0x0) goto loc_1008c425c;

loc_1008c4240:
    [r0 setUpWithUserID:0x0];
    return;

loc_1008c425c:
    *(r19 + r24) = 0x0;
    [r0 release];
    r0 = sub_100809600(0x8, 0x0);
    goto loc_1008c4274;

loc_1008c4274:
    r20 = [r0 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_renderer);
    [r0 failedToSetUpWithError:r20];
    [r0 release];
    [r20 release];
    return;

loc_1008c4178:
    r23 = [r21 instancesRespondToSelector:@selector(initWithRewardBasedVideoAdNetworkConnector:)];
    r0 = [r21 alloc];
    if (r23 != 0x0) {
            r1 = @selector(initWithRewardBasedVideoAdNetworkConnector:);
    }
    else {
            r1 = @selector(initWithGADMAdNetworkConnector:);
    }
    r0 = objc_msgSend(r0, r1);
    goto loc_1008c41c4;

loc_1008c4164:
    r0 = sub_100809600(0xb, 0x0);
    goto loc_1008c4274;
}

-(void)requestRewardBasedVideoAd {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    if (*(r0 + r8) != 0x0) {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterSetUp));
            r9 = r0 + r9;
            asm { ldarb      w9, [x9] };
            if ((r9 & 0x1) != 0x0) {
                    [*(r0 + r8) requestRewardBasedVideoAd];
            }
    }
    return;
}

-(void *)adapterName {
    r0 = self->_adapterClassName;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)stopBeingDelegate {
    [self->_adapter stopBeingDelegate];
    return;
}

-(void)adapterDidSetUpRewardBasedVideoAd:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self adapterName] retain];
    if (r19 != 0x0) {
            asm { stlrb      w9, [x8] };
            [r20 requestRewardBasedVideoAd];
    }
    else {
            sub_1007ce06c(0x0, @"No adapter has been set up.");
    }
    [r19 release];
    return;
}

-(void)adapter:(void *)arg2 didFailToSetUpRewardBasedVideoAdWithError:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [[r21 adapterName] retain];
    if (r20 != 0x0) {
            var_28 = [r20 retain];
            sub_100860a80();
            r0 = objc_loadWeakRetained((int64_t *)&r21->_renderer);
            [r0 failedToSetUpWithError:r19];
            [r0 release];
            [var_28 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)adapterDidReceiveRewardBasedVideoAd:(void *)arg2 {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    [r0 receivedRewardBasedVideoAdFromConnector:self];
    [r0 release];
    return;
}

-(void)adapterDidOpenRewardBasedVideoAd:(void *)arg2 {
    [self->_intermission adapterWillPresent];
    return;
}

-(void)adapter:(void *)arg2 didFailToLoadRewardBasedVideoAdwithError:(void *)arg3 {
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
    if (r19 == 0x0) {
            r21 = [sub_1008098f8(0x2, @"Mediation error.") retain];
            [r19 release];
            r19 = r21;
    }
    r0 = objc_loadWeakRetained((int64_t *)&r20->_renderer);
    [r0 receivedRewardBasedVideoAdWithError:r19];
    [r0 release];
    [r19 release];
    return;
}

-(void)adapterDidStartPlayingRewardBasedVideoAd:(void *)arg2 {
    sub_1008833e8(*0x100e9c668, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)adapterDidCompletePlayingRewardBasedVideoAd:(void *)arg2 {
    sub_1008833e8(*0x100e9c670, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)adapterDidCloseRewardBasedVideoAd:(void *)arg2 {
    [self->_intermission adapterDidDismiss];
    return;
}

-(void)adapterWillLeaveApplication:(void *)arg2 {
    sub_1008833e8(*0x100e9bfe8, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)adapter:(void *)arg2 didRewardUserWithReward:(void *)arg3 {
    r21 = objc_loadWeakRetained((int64_t *)&self->_rewardedAd);
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    sub_1008833e8(*0x100e9c660, r21, [[r0 rewardGrantedUserInfo] retain]);
    [r22 release];
    [r19 release];
    [r21 release];
    return;
}

-(bool)canPresent {
    return 0x1;
}

-(void)adapterDidGetAdClick:(void *)arg2 {
    sub_1008833e8(*0x100e9c090, objc_loadWeakRetained((int64_t *)&self->_rewardedAd), 0x0);
    [r20 release];
    return;
}

-(void)presentFromViewController:(void *)arg2 {
    [arg2 retain];
    [self retain];
    dispatch_async(*__dispatch_main_q, &var_38);
    [r19->_adapter presentRewardBasedVideoAdWithRootViewController:r20];
    [r20 release];
    [r19 release];
    return;
}

-(void *)publisherId {
    r0 = [self credentials];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:@"pubid"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)credentials {
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95a08];
    return r0;
}

-(void *)childDirectedTreatment {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r20 = [[r0 targeting] retain];
    r21 = [sub_1007dab88() retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)networkExtras {
    r20 = [self->_adapter class];
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r19 = r0;
    r0 = [r0 targeting];
    r0 = [r0 retain];
    r20 = [[r0 networkExtrasForAdapterClass:r20] retain];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
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

-(long long)userGender {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r20 = [[r0 targeting] retain];
    [r0 release];
    r19 = [r20 gender];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)userBirthday {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r20 = [[r0 targeting] retain];
    [r0 release];
    r19 = [[r20 birthday] retain];
    [r20 release];
    r0 = [r19 autorelease];
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
            r0 = objc_loadWeakRetained((int64_t *)&r20->_renderer);
            r20 = r0;
            r21 = [[r0 targeting] retain];
            [r20 release];
            r0 = [r21 location];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r0 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)userLocation {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r20 = [[r0 targeting] retain];
    [r0 release];
    r19 = [[r20 location] retain];
    [r20 release];
    r0 = [r19 autorelease];
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
            r0 = [r19 userLocation];
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
            r0 = [r19 userLocation];
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
            r0 = [r19 userLocation];
            r0 = [r0 retain];
            [r0 accuracy];
            r0 = [r0 release];
    }
    return r0;
}

-(void *)userLocationDescription {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self userHasLocation] != 0x0) {
            r0 = [r19 userLocation];
            r0 = [r0 retain];
            r20 = [[r0 locationDescription] retain];
            [r0 release];
            r0 = [r20 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)userKeywords {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r20 = [[r0 targeting] retain];
    [r0 release];
    r19 = [[r20 keywords] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)testMode {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r19 = r0;
    r0 = [r0 shouldRenderTestAdLabel];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [r20 boolValue];
    }
    else {
            r0 = [r19 targeting];
            r0 = [r0 retain];
            r21 = [r0 testModeEnabled];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)renderer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_renderer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRenderer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_renderer, arg2);
    return;
}

-(void *)adConfiguration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration)), 0x0);
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
    objc_destroyWeak((int64_t *)&self->_rewardedAd);
    objc_storeStrong((int64_t *)&self->_adapterClassName, 0x0);
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    return;
}

@end