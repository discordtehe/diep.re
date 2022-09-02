@implementation UnityAdsRewardedVideoCustomEvent

-(void)dealloc {
    r0 = [UnityRouter sharedRouter];
    r0 = [r0 retain];
    [r0 clearDelegate:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)initializeSdkWithParameters:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [UnityRouter sharedRouter];
            r0 = [r0 retain];
            r21 = r0;
            [r0 initializeWithGameId:r19];
    }
    else {
            r21 = [[NSString stringWithFormat:@"Initialization parameters did not contain gameId."] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(bool)hasAdAvailable {
    r20 = [[UnityRouter sharedRouter] retain];
    r19 = [[self placementId] retain];
    r21 = [r20 isAdAvailableForPlacementId:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)handleCustomEventInvalidated {
    r0 = [UnityRouter sharedRouter];
    r0 = [r0 retain];
    [r0 clearDelegate:self];
    [r0 release];
    return;
}

-(void)unityAdsReady:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidLoadAdForCustomEvent:self];
    [r0 release];
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasAdAvailable] & 0x1) == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidExpireForCustomEvent:r19];
            [r0 release];
            r21 = [[MPLogEvent adExpiredWithTimeInterval:r19] retain];
            r22 = [[r19 placementId] retain];
            [MPLogging logEvent:r21 source:r22 fromClass:[r19 class]];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)presentRewardedVideoFromViewController:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r20 = self;
    r28 = [arg2 retain];
    if ([r20 hasAdAvailable] != 0x0) {
            r24 = [[r20 delegate] retain];
            var_58 = [[r24 instanceMediationSettingsForClass:[UnityAdsInstanceMediationSettings class]] retain];
            [r24 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r22 = [[r0 customerIdForRewardedVideoCustomEvent:r20] retain];
            [r0 release];
            r27 = [NSStringFromClass([r20 class]) retain];
            r0 = [MPLogEvent adShowAttemptForAdapter:r27];
            r0 = [r0 retain];
            r19 = [[r20 placementId] retain];
            [MPLogging logEvent:r0 source:r19 fromClass:[r20 class]];
            [r19 release];
            r28 = r28;
            r21 = var_58;
            [r0 release];
            [r27 release];
            r19 = [[UnityRouter sharedRouter] retain];
            r26 = [[r20 placementId] retain];
            [r19 presentVideoAdFromViewController:r28 customerId:r22 placementId:r26 settings:r21 delegate:r20];
            [r26 release];
            [r19 release];
            r26 = [NSStringFromClass([r20 class]) retain];
            r27 = [[MPLogEvent adShowSuccessForAdapter:r26] retain];
            r24 = [[r20 placementId] retain];
            [MPLogging logEvent:r27 source:r24 fromClass:[r20 class]];
            [r24 release];
    }
    else {
            r21 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0] retain];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidFailToPlayForCustomEvent:r20 error:r21];
            [r0 release];
            r22 = [NSStringFromClass([r20 class]) retain];
            r26 = [[MPLogEvent adLoadFailedForAdapter:r22 error:r21] retain];
            r27 = [[r20 placementId] retain];
            [MPLogging logEvent:r26 source:r27 fromClass:[r20 class]];
    }
    [r27 release];
    [r26 release];
    [r22 release];
    [r21 release];
    [r28 release];
    return;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r23 = @selector(objectForKey:);
            [UnityAdsAdapterConfiguration updateInitializationParameters:r19];
            r22 = [objc_msgSend(r19, r23) retain];
            [r21 setPlacementId:r22];
            [r22 release];
            r0 = [r21 placementId];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [r19 objectForKey:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 setPlacementId:r23];
                    [r23 release];
            }
            r0 = [r21 placementId];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = [[UnityRouter sharedRouter] retain];
                    r24 = [[r21 placementId] retain];
                    [r23 requestVideoAdWithGameId:r20 placementId:r24 delegate:r21];
                    [r24 release];
                    [r23 release];
                    r26 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[MPLogEvent adLoadAttemptForAdapter:r26 dspCreativeId:0x0 dspName:0x0] retain];
                    r22 = [[r21 placementId] retain];
                    [MPLogging logEvent:r24 source:r22 fromClass:[r21 class]];
                    [r22 release];
                    [r24 release];
                    r0 = r26;
            }
            else {
                    r25 = [[NSDictionary dictionaryWithObjects:&var_88 forKeys:&var_98 count:0x2] retain];
                    r23 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffb50 userInfo:r25] retain];
                    [r25 release];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r21 error:r23];
                    [r0 release];
                    r27 = [NSStringFromClass([r21 class]) retain];
                    r25 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r23] retain];
                    r22 = [[r21 placementId] retain];
                    [MPLogging logEvent:r25 source:r22 fromClass:[r21 class]];
                    [r22 release];
                    [r25 release];
                    [r27 release];
                    r0 = r23;
            }
    }
    else {
            r24 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2] retain];
            r22 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffb50 userInfo:r24] retain];
            [r24 release];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r21 error:r22];
            [r0 release];
            r26 = [NSStringFromClass([r21 class]) retain];
            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
            r27 = [[r21 placementId] retain];
            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
            [r27 release];
            [r24 release];
            [r26 release];
            r0 = r22;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r19 = self;
    if (r2 <= 0x9) {
            (0x100486968 + *(int8_t *)(0x100be3ed8 + r2) * 0x4)();
    }
    else {
            var_48 = **___stack_chk_guard;
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r20 = [[NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:r22] retain];
            [r22 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r19 error:r20];
            [r0 release];
            r24 = [NSStringFromClass([r19 class]) retain];
            r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
            r25 = [[r19 placementId] retain];
            [MPLogging logEvent:r22 source:r25 fromClass:[r19 class]];
            [r25 release];
            [r22 release];
            [r24 release];
            [r20 release];
            if (**___stack_chk_guard != var_48) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForCustomEvent:self];
    [r0 release];
    r22 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r22 adWillAppearForAdapter:r25] retain];
    r27 = [[self placementId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    [r0 release];
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adDidAppearForAdapter:r25] retain];
    r22 = [[self placementId] retain];
    [MPLogging logEvent:r24 source:r22 fromClass:[self class]];
    [r22 release];
    [r24 release];
    [r25 release];
    return;
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
    r19 = self;
    if (arg3 == 0x2) {
            r20 = objc_alloc();
            r22 = [[NSNumber numberWithInteger:*0x100be3f18] retain];
            r21 = [r20 initWithCurrencyType:*0x100e7e860 amount:r22];
            [r22 release];
            r20 = @selector(delegate);
            r0 = objc_msgSend(r19, r20);
            r29 = r29;
            r0 = [r0 retain];
            [r0 rewardedVideoShouldRewardUserForCustomEvent:r19 reward:r21];
            [r0 release];
            [r21 release];
    }
    else {
            r20 = @selector(delegate);
    }
    r0 = objc_msgSend(r19, r20);
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForCustomEvent:r19];
    [r0 release];
    r0 = objc_msgSend(r19, r20);
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForCustomEvent:r19];
    [r0 release];
    return;
}

-(void)unityAdsDidClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForCustomEvent:self];
    [r0 release];
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)unityAdsDidFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:self error:r21];
    [r0 release];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r21] retain];
    [r21 release];
    r21 = [[self placementId] retain];
    [MPLogging logEvent:r22 source:r21 fromClass:[self class]];
    [r21 release];
    [r22 release];
    [r24 release];
    return;
}

-(void *)placementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementId)), 0x0);
    return r0;
}

-(void)setPlacementId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementId, 0x0);
    return;
}

@end