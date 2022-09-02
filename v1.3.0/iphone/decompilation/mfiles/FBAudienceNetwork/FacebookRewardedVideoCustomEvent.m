@implementation FacebookRewardedVideoCustomEvent

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
    [self requestRewardedVideoWithCustomEventInfo:arg2 adMarkup:0x0];
    return;
}

-(void)initializeSdkWithParameters:(void *)arg2 {
    return;
}

-(bool)hasAdAvailable {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self fbRewardedVideoAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 fbRewardedVideoAd];
            r0 = [r0 retain];
            r20 = [r0 isAdValid];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self cancelExpirationTimer];
    r0 = [self fbRewardedVideoAd];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = [arg3 retain];
    r0 = [r19 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = @selector(objectForKey:);
            r23 = objc_alloc();
            r22 = [objc_msgSend(r19, r22) retain];
            r23 = [r23 initWithPlacementID:r22];
            [r21 setFbRewardedVideoAd:r23];
            [r23 release];
            [r22 release];
            r0 = [r21 fbRewardedVideoAd];
            r0 = [r0 retain];
            [r0 setDelegate:r21];
            [r0 release];
            r0 = [FacebookAdapterConfiguration mediationString];
            r29 = r29;
            r24 = [r0 retain];
            [FBAdSettings setMediationService:r24];
            [r24 release];
            if (r20 != 0x0) {
                    r26 = [[NSString stringWithFormat:r2] retain];
                    r27 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r21 class]];
                    [r27 release];
                    [r26 release];
                    r0 = [r21 fbRewardedVideoAd];
                    r0 = [r0 retain];
                    [r0 loadAdWithBidPayload:r20];
                    [r0 release];
                    r24 = @class(MPLogEvent);
                    r22 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[r24 adLoadAttemptForAdapter:r22 dspCreativeId:0x0 dspName:0x0] retain];
                    r0 = [r21 fbPlacementId];
            }
            else {
                    r26 = [[NSString stringWithFormat:r2] retain];
                    r27 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r21 class]];
                    [r27 release];
                    [r26 release];
                    r0 = [r21 fbRewardedVideoAd];
                    r0 = [r0 retain];
                    [r0 loadAd];
                    [r0 release];
                    r24 = @class(MPLogEvent);
                    r22 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[r24 adLoadAttemptForAdapter:r22 dspCreativeId:0x0 dspName:0x0] retain];
                    r0 = [r21 fbPlacementId];
            }
            r27 = [r0 retain];
            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
            [r27 release];
    }
    else {
            r22 = [[r21 createErrorWith:@"Invalid Facebook placement ID" andReason:r3 andSuggestion:@""] retain];
            r26 = [NSStringFromClass([r21 class]) retain];
            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
            [r24 release];
            [r26 release];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r24 = r0;
            [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r21 error:r22];
    }
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)cancelExpirationTimer {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0->_expirationTimer != 0x0) {
            r19 = r0;
            r0 = [r0 expirationTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setExpirationTimer:0x0];
    }
    return;
}

-(void)rewardedVideoAdDidClick:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self fbPlacementId] retain];
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
    r19 = [arg2 retain];
    if (([r20 hasAdAvailable] & 0x1) != 0x0) {
            r24 = @class(MPLogging);
            r25 = [NSStringFromClass([r20 class]) retain];
            r26 = [[MPLogEvent adShowAttemptForAdapter:r25] retain];
            r27 = [[r20 fbPlacementId] retain];
            [r24 logEvent:r26 source:r27 fromClass:[r20 class]];
            [r27 release];
            [r26 release];
            [r25 release];
            r24 = @class(MPLogging);
            r25 = @class(MPLogEvent);
            r26 = [NSStringFromClass([r20 class]) retain];
            r25 = [[r25 adWillAppearForAdapter:r26] retain];
            r27 = [[r20 fbPlacementId] retain];
            [r24 logEvent:r25 source:r27 fromClass:[r20 class]];
            [r27 release];
            [r25 release];
            [r26 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoWillAppearForCustomEvent:r20];
            [r0 release];
            r0 = [r20 fbRewardedVideoAd];
            r0 = [r0 retain];
            [r0 showAdFromRootViewController:r19];
            [r0 release];
            r25 = @class(MPLogging);
            r26 = @class(MPLogEvent);
            r19 = r19;
            r27 = [NSStringFromClass([r20 class]) retain];
            r26 = [[r26 adDidAppearForAdapter:r27] retain];
            r22 = [[r20 fbPlacementId] retain];
            [r25 logEvent:r26 source:r22 fromClass:[r20 class]];
            [r22 release];
            [r26 release];
            [r27 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r21 = r0;
            [r0 rewardedVideoDidAppearForCustomEvent:r20];
    }
    else {
            r21 = [[r20 createErrorWith:@"Error in loading Facebook Rewarded Video" andReason:r3 andSuggestion:@""] retain];
            r25 = [NSStringFromClass([r20 class]) retain];
            r23 = [[MPLogEvent adShowFailedForAdapter:r25 error:r21] retain];
            r26 = [[r20 fbPlacementId] retain];
            [MPLogging logEvent:r23 source:r26 fromClass:[r20 class]];
            [r26 release];
            [r23 release];
            [r25 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidFailToPlayForCustomEvent:r20 error:r21];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidLoad:(void *)arg2 {
    [arg2 retain];
    [self cancelExpirationTimer];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidLoadAdForCustomEvent:self];
    [r0 release];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadSuccessForAdapter:r24] retain];
    r25 = [[self fbPlacementId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    objc_initWeak(&stack[-88], self);
    objc_alloc();
    objc_copyWeak(&var_78 + 0x28, &stack[-88]);
    r22 = [r22 initWithInterval:&var_78 block:r25];
    [self setExpirationTimer:r22];
    [r22 release];
    r0 = [self expirationTimer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    objc_destroyWeak(&var_78 + 0x28);
    objc_destroyWeak(&stack[-88]);
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidClose:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adDidDisappearForAdapter:r23] retain];
    r24 = [[self fbPlacementId] retain];
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

-(void *)createErrorWith:(void *)arg2 andReason:(void *)arg3 andSuggestion:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    var_58 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r21 = @class(NSBundle);
    r22 = [arg4 retain];
    r0 = [r21 mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 localizedStringForKey:r23 value:@"" table:0x0] retain];
    [r23 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r28 = [[r0 localizedStringForKey:r25 value:@"" table:0x0] retain];
    [r25 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r25 = [[r0 localizedStringForKey:r22 value:@"" table:0x0] retain];
    [r22 release];
    r22 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    [r25 release];
    [r0 release];
    [r28 release];
    [r23 release];
    [r21 release];
    [r20 release];
    r21 = [NSStringFromClass([self class]) retain];
    r19 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r22] retain];
    [r21 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)rewardedVideoAdWillClose:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adWillDisappearForAdapter:r23] retain];
    r24 = [[self fbPlacementId] retain];
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

-(void)rewardedVideoAd:(void *)arg2 didFailWithError:(void *)arg3 {
    r20 = [arg3 retain];
    [self cancelExpirationTimer];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:self error:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)rewardedVideoAdVideoComplete:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Facebook rewarded video ad has finished playing successfully"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
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

-(void)rewardedVideoAdWillLogImpression:(void *)arg2 {
    [self cancelExpirationTimer];
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adShowSuccessForAdapter:r23] retain];
    r24 = [[self fbPlacementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    *(int8_t *)(int64_t *)&self->_hasTrackedImpression = 0x1;
    return;
}

-(bool)hasTrackedImpression {
    r0 = *(int8_t *)(int64_t *)&self->_hasTrackedImpression;
    return r0;
}

-(void)setHasTrackedImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasTrackedImpression = arg2;
    return;
}

-(void *)fbRewardedVideoAd {
    r0 = self->_fbRewardedVideoAd;
    return r0;
}

-(void)setFbRewardedVideoAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fbRewardedVideoAd, arg2);
    return;
}

-(void *)expirationTimer {
    r0 = self->_expirationTimer;
    return r0;
}

-(void)setExpirationTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_expirationTimer, arg2);
    return;
}

-(void *)fbPlacementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fbPlacementId)), 0x0);
    return r0;
}

-(void)setFbPlacementId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fbPlacementId, 0x0);
    objc_storeStrong((int64_t *)&self->_expirationTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_fbRewardedVideoAd, 0x0);
    return;
}

@end