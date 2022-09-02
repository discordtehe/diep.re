@implementation VungleRewardedVideoCustomEvent

-(void)initializeSdkWithParameters:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [MPVungleRouter sharedRouter];
    r0 = [r0 retain];
    [r0 initializeSdkWithInfo:r21];
    [r21 release];
    [r0 release];
    return;
}

-(bool)hasAdAvailable {
    r20 = [[VungleSDK sharedSDK] retain];
    r19 = [[self placementId] retain];
    r21 = [r20 isAdCachedForPlacementID:r19];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
    r0 = [arg2 retain];
    r20 = r0;
    r21 = [[r0 objectForKey:*0x100e7e608] retain];
    [self setPlacementId:r21];
    [r21 release];
    [VungleAdapterConfiguration updateInitializationParameters:r20];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadAttemptForAdapter:r24 dspCreativeId:0x0 dspName:0x0] retain];
    r25 = [[self placementId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [MPVungleRouter sharedRouter];
    r0 = [r0 retain];
    [r0 requestRewardedVideoAdWithCustomEventInfo:r20 delegate:self];
    [r20 release];
    [r0 release];
    return;
}

-(void)handleCustomEventInvalidated {
    r20 = [[MPVungleRouter sharedRouter] retain];
    r19 = [[self placementId] retain];
    [r20 clearDelegateForPlacementId:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    return;
}

-(void)vungleAdDidLoad {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidLoadAdForCustomEvent:self];
    [r0 release];
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
    r20 = self;
    var_58 = [arg2 retain];
    r25 = [NSStringFromClass([r20 class]) retain];
    r26 = [[MPLogEvent adShowAttemptForAdapter:r25] retain];
    r27 = [[r20 placementId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r23 = [[MPVungleRouter sharedRouter] retain];
    r0 = [r20 placementId];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r27 = [r23 isAdAvailableForPlacementId:r26];
    [r26 release];
    [r23 release];
    if (r27 != 0x0) {
            r26 = [[r20 delegate] retain];
            r23 = [[r26 instanceMediationSettingsForClass:[VungleInstanceMediationSettings class]] retain];
            [r26 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r22 = [[r0 customerIdForRewardedVideoCustomEvent:r20] retain];
            [r0 release];
            r24 = [[MPVungleRouter sharedRouter] retain];
            r20 = [[r20 placementId] retain];
            r19 = var_58;
            [r24 presentRewardedVideoAdFromViewController:r19 customerId:r22 settings:r23 forPlacementId:r20];
            [r20 release];
            [r24 release];
    }
    else {
            r23 = [[NSError errorWithCode:0xfffffffffffffbb4 localizedDescription:@"Failed to show Vungle rewarded video: Vungle now claims that there is no available video ad."] retain];
            r26 = @class(MPLogEvent);
            r27 = [NSStringFromClass([r20 class]) retain];
            r26 = [[r26 adShowFailedForAdapter:r27 error:r23] retain];
            r21 = [[r20 placementId] retain];
            [MPLogging logEvent:r26 source:r21 fromClass:[r20 class]];
            [r21 release];
            [r26 release];
            [r27 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r22 = r0;
            [r0 rewardedVideoDidFailToPlayForCustomEvent:r20 error:r23];
            r19 = var_58;
    }
    [r22 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)vungleAdDidAppear {
    r23 = @class(MPLogging);
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adShowSuccessForAdapter:r24] retain];
    r26 = [[self placementId] retain];
    [r23 logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r23 = @class(MPLogging);
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adDidAppearForAdapter:r25] retain];
    r21 = [[self placementId] retain];
    [r23 logEvent:r24 source:r21 fromClass:[self class]];
    [r21 release];
    [r24 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)vungleAdWillDisappear {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adWillDisappearForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)vungleAdWillAppear {
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adWillAppearForAdapter:r24] retain];
    r26 = [[self placementId] retain];
    [MPLogging logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForCustomEvent:self];
    [r0 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowSuccessForAdapter:r26] retain];
    r27 = [[self placementId] retain];
    [r24 logEvent:r25 source:r27 fromClass:[self class]];
    [r27 release];
    [r25 release];
    [r26 release];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidAppearForAdapter:r26] retain];
    r21 = [[self placementId] retain];
    [MPLogging logEvent:r25 source:r21 fromClass:[self class]];
    [r21 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)vungleAdDidDisappear {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adDidDisappearForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)vungleAdWasTapped {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForCustomEvent:self];
    [r0 release];
    return;
}

-(void)vungleAdShouldRewardUser {
    r20 = [[self delegate] retain];
    r21 = objc_alloc();
    r22 = [[NSNumber numberWithInteger:*0x100be3f18] retain];
    r21 = [r21 initWithCurrencyAmount:r22];
    [r20 rewardedVideoShouldRewardUserForCustomEvent:self reward:r21];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)vungleAdDidFailToLoad:(void *)arg2 {
    r20 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    r25 = [[self placementId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:self error:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)vungleAdDidFailToPlay:(void *)arg2 {
    r20 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adShowFailedForAdapter:r24 error:r20] retain];
    r25 = [[self placementId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForCustomEvent:self error:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void *)getPlacementID {
    r0 = [self placementId];
    return r0;
}

-(void *)placementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementId)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementId, 0x0);
    return;
}

-(void)setPlacementId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end