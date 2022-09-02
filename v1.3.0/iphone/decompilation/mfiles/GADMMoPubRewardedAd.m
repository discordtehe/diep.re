@implementation GADMMoPubRewardedAd

-(void)loadRewardedAdForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [r20 setAdConfig:r22];
    [r20 setCompletionHandler:r19];
    r21 = [[arg2 credentials] retain];
    [r22 release];
    r0 = [r21 settings];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:@"pubid"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitID));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    [r22 release];
    [r21 release];
    if ([*(r20 + r23) length] != 0x0) {
            r0 = [GADMAdapterMoPubSingleton sharedInstance];
            r0 = [r0 retain];
            [r0 initializeMoPubSDKWithAdUnitID:*(r20 + r23) completionHandler:&var_80];
            r0 = r0;
    }
    else {
            r20 = [[NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2] retain];
            r21 = [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x0 userInfo:r20] retain];
            [[(*(r19 + 0x10))(r19, 0x0, r21) retain] release];
            [r21 release];
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

-(void)rewardedVideoAdDidLoadForAdUnitID:(void *)arg2 {
    r20 = [[self completionHandler] retain];
    r21 = [(*(r20 + 0x10))() retain];
    [self setAdEventDelegate:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)requestRewarded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [[NSString stringWithFormat:@"Requesting Rewarded Ad from MoPub Ad Network."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    [r22 release];
    r21 = [[GADMAdapterMoPubSingleton sharedInstance] retain];
    r20 = r19->_adUnitID;
    r22 = objc_loadWeakRetained((int64_t *)&r19->_adConfig);
    r0 = [r21 requestRewardedAdForAdUnitID:r20 adConfig:r22 delegate:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r19 = [[r19 completionHandler] retain];
            [[(*(r19 + 0x10))() retain] release];
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)presentFromViewController:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [r20 adUnitID];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r22 = [MPRewardedVideo hasAdAvailableForAdUnitID:r23];
    [r23 release];
    if (r22 != 0x0) {
            r22 = @class(MPRewardedVideo);
            r23 = [[r20 adUnitID] retain];
            r22 = [[r22 availableRewardsForAdUnitID:r23] retain];
            [r23 release];
            r23 = [[r22 objectAtIndexedSubscript:0x0] retain];
            r24 = @class(MPRewardedVideo);
            r20 = [[r20 adUnitID] retain];
            [r24 presentRewardedVideoAdForAdUnitID:r20 fromViewController:r19 withReward:r23];
            [r20 release];
            [r23 release];
            r0 = r22;
    }
    else {
            if (*(int8_t *)(int64_t *)&r20->_adExpired != 0x0) {
                    r21 = @"Failed to show a MoPub rewarded ad. Ad has expired after 4 hours. Please make a new ad request.";
            }
            else {
                    r21 = @"Failed to show a MoPub rewarded ad. No ad available.";
            }
            [r21 retain];
            r22 = [[NSDictionary dictionaryWithObjects:&var_48 forKeys:&var_58 count:0x2] retain];
            r23 = [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x0 userInfo:r22] retain];
            r0 = [r20 adEventDelegate];
            r0 = [r0 retain];
            [r0 didFailToPresentWithError:r23];
            [r0 release];
            [r23 release];
            [r22 release];
            r0 = r21;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(void *)arg2 error:(void *)arg3 {
    r21 = [arg3 retain];
    r19 = [[self completionHandler] retain];
    r20 = [(*(r19 + 0x10))() retain];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillAppearForAdUnitID:(void *)arg2 {
    r0 = [self adEventDelegate];
    r0 = [r0 retain];
    [r0 willPresentFullScreenView];
    [r0 release];
    return;
}

-(void)rewardedVideoAdDidAppearForAdUnitID:(void *)arg2 {
    r0 = [self adEventDelegate];
    r0 = [r0 retain];
    [r0 reportImpression];
    [r0 didStartVideo];
    [r0 release];
    return;
}

-(void)rewardedVideoAdDidDisappearForAdUnitID:(void *)arg2 {
    r0 = [self adEventDelegate];
    r0 = [r0 retain];
    [r0 didDismissFullScreenView];
    [r0 release];
    return;
}

-(void)rewardedVideoAdWillDisappearForAdUnitID:(void *)arg2 {
    r0 = [self adEventDelegate];
    r0 = [r0 retain];
    [r0 willDismissFullScreenView];
    [r0 release];
    return;
}

-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(void *)arg2 {
    r0 = [self adEventDelegate];
    r0 = [r0 retain];
    [r0 reportClick];
    [r0 release];
    return;
}

-(void)rewardedVideoAdDidExpireForAdUnitID:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"MoPub rewarded ad has been expired. Please make a new ad request."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    *(int8_t *)(int64_t *)&self->_adExpired = 0x1;
    return;
}

-(void)rewardedVideoWillLeaveApplicationForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdShouldRewardForAdUnitID:(void *)arg2 reward:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg3 retain];
    r20 = [[self adEventDelegate] retain];
    r0 = [r19 amount];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            [r22 decimalValue];
    }
    r21 = [[NSDecimalNumber decimalNumberWithDecimal:&var_48] retain];
    [r22 release];
    r22 = [[r19 currencyType] retain];
    r23 = [[GADAdReward alloc] initWithRewardType:r22 rewardAmount:r21];
    [r20 didEndVideo];
    [r20 didRewardUserWithReward:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)adConfig {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adConfig);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdConfig:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adConfig, arg2);
    return;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdEventDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adEventDelegate, arg2);
    return;
}

-(void *)adUnitID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adUnitID)), 0x0);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)adExpired {
    r0 = *(int8_t *)(int64_t *)&self->_adExpired;
    return r0;
}

-(void)setAdExpired:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adExpired = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_adConfig);
    return;
}

@end