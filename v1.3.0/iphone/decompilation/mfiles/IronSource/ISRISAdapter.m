@implementation ISRISAdapter

-(void *)initAdapter:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] initAdapter:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ISSupersonicAdsConfiguration configurations];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)version {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e8cd08);
    return r0;
}

-(void *)sdkVersion {
    r0 = [SupersonicAdsPublisher getSDKVersion];
    return r0;
}

-(void)initISWithUserId:(void *)arg2 adapterConfig:(void *)arg3 delegate:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    [self addInterstititalDelegate:arg4];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r23 = [[r0 appKey] retain];
    [r0 release];
    r22 = [[self dispatcher] retain];
    var_48 = r21;
    r20 = [r21 retain];
    r21 = [r23 retain];
    var_38 = r19;
    r19 = [r19 retain];
    [r22 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_70];
    [r22 release];
    [var_38 release];
    [r23 release];
    [var_48 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)loadInterstitialWithAdapterConfig:(void *)arg2 activeDelegate:(void *)arg3 {
    [self setInterstititalActiveDelegate:arg3];
    r0 = [self dispatcher];
    r0 = [r0 retain];
    [r0 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_38];
    [r0 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 adapterConfig:(void *)arg3 activeDelegate:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self setInterstititalActiveDelegate:arg4];
    r19 = [[self dispatcher] retain];
    var_30 = r20;
    r20 = [r20 retain];
    var_28 = r22;
    r22 = [r22 retain];
    [r19 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_58];
    [r19 release];
    [var_28 release];
    [var_30 release];
    [r22 release];
    [r20 release];
    return;
}

-(bool)hasInterstitialWithAdapterConfig:(void *)arg2 {
    r0 = [self interstitialReady];
    return r0;
}

-(void)setSDK5ParametersWithAdapterConfig:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    var_18 = r19;
    if (*qword_1011dabb8 == -0x1) {
            r0 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011dabb8, &var_40);
            r0 = var_18;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)ssaRewardedVideoNoMoreOffers {
    [self setInterstitialReady:0x0];
    [self notifyInterstitialInitSuccess];
    return;
}

-(void)ssaRewardedVideoDidUpdateAdUnits:(void *)arg2 {
    [self setInterstitialReady:0x1];
    [self notifyInterstitialInitSuccess];
    return;
}

-(void)ssaRewardedVideoDidFailInitWithError:(void *)arg2 {
    r21 = [arg2 retain];
    [self setInterstitialReady:0x0];
    [self notifyInterstitialInitFailedWithError:r21];
    [r21 release];
    return;
}

-(void)ssaRewardedVideoDidFailShowWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[arg2 localizedDescription] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:@"IronSource" code:0x1fd userInfo:r22] retain];
    [r22 release];
    [r21 release];
    r21 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidFailToShowWithError:r20 forDelegate:r21];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)ssaRewardedVideoWindowWillOpen {
    r21 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidOpenForDelegate:r21];
    [r21 release];
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidShowForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoWindowDidClose {
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidCloseForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoDidReceiveCredit:(void *)arg2 {
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidReceiveRewardForDelegate:r20];
    [r20 release];
    return;
}

-(void)ssaRewardedVideoAdClicked {
    r20 = [[self interstitialActiveDelegate] retain];
    [self notifyInterstitialDidClickForDelegate:r20];
    [r20 release];
    return;
}

-(void)setConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_consent = arg2;
    *(int8_t *)(int64_t *)&self->_didSetConsent = 0x1;
    [self applyConsent:r2];
    return;
}

-(void)ssaRewardedVideoAdDidReceiveNotificationOnEvent:(void *)arg2 extData:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r19 isEqualToString:r2] != 0x0) {
            r22 = [[r21 interstitialActiveDelegate] retain];
            [r21 notifyInterstitialDidBecomeVisibleForDelegate:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setMediationState:(long long)arg2 forAdUnit:(void *)arg3 {
    r23 = [[self adapterName] retain];
    r22 = [[NSString stringWithFormat:@"ISSupersonicAdsAdapter:setMediationState:adUnit:%@, providerName:%@, state:%ld"] retain];
    [r23 release];
    r0 = [self logger];
    r0 = [r0 retain];
    [r0 log:r22];
    [r0 release];
    r23 = [[SupersonicAdsPublisher sharedInstance] retain];
    r20 = [[self adapterName] retain];
    [r23 setMediationStateForProductType:@"rewardedvideo" withDemandSourceName:r20 withState:arg2];
    [r20 release];
    [r23 release];
    [r22 release];
    return;
}

-(void)applyConsent:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (r19->_instance != 0x0) {
            r0 = [r19 dispatcher];
            r0 = [r0 retain];
            [r0 dispatchAsyncWithQueue:*__dispatch_main_q withBlock:&var_50];
            [r0 release];
    }
    return;
}

-(void *)configs {
    r0 = self->_configs;
    return r0;
}

-(void)setConfigs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configs, arg2);
    return;
}

-(bool)didSetConsent {
    r0 = *(int8_t *)(int64_t *)&self->_didSetConsent;
    return r0;
}

-(bool)consent {
    r0 = *(int8_t *)(int64_t *)&self->_consent;
    return r0;
}

-(void)setDidSetConsent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didSetConsent = arg2;
    return;
}

-(void *)instance {
    r0 = self->_instance;
    return r0;
}

-(void)setInstance:(void *)arg2 {
    self->_instance = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configs, 0x0);
    return;
}

@end