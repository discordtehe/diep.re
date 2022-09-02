@implementation MPMoPubRewardedPlayableCustomEvent

-(void)dealloc {
    [self->_timerView stopAndSignalCompletion:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)interstitial {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_interstitial));
    r0 = *(self + r23);
    if (r0 == 0x0) {
            r20 = objc_alloc();
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 configuration] retain];
            r0 = [r20 initWithAdConfiguration:r22];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 release];
            [r21 release];
            r0 = *(r19 + r23);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(double)countdownDuration {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    [r0 rewardedPlayableDuration];
    [r0 release];
    r0 = [r19 release];
    if (d8 > 0x0) {
            asm { fcsel      d0, d8, d0, hi };
    }
    return r0;
}

-(void)showCloseButton {
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 setCloseButtonStyle:0x0];
    [r0 release];
    r0 = [self timerView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setTimerView:0x0];
    return;
}

-(void)rewardUserWithConfiguration:(void *)arg2 timerHasElapsed:(bool)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 userRewarded] & 0x1) == 0x0) {
            if ((r21 & 0x1) != 0x0 || [r19 rewardedPlayableShouldRewardOnClick] != 0x0) {
                    r23 = [[NSString stringWithFormat:@"MoPub rewarded playable user rewarded."] retain];
                    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
                    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
                    [r22 release];
                    [r23 release];
                    r21 = [[r20 delegate] retain];
                    r22 = [[r19 selectedReward] retain];
                    [r21 rewardedVideoShouldRewardUserForCustomEvent:r20 reward:r22];
                    [r22 release];
                    [r21 release];
                    [r20 setUserRewarded:0x1];
            }
    }
    [r19 release];
    return;
}

-(bool)hasAdAvailable {
    r0 = [self adAvailable];
    return r0;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 configuration] retain];
    [r0 release];
    r22 = [NSStringFromClass([r20 customEventClass]) retain];
    r24 = [[r20 dspCreativeId] retain];
    r23 = [[MPLogEvent adLoadAttemptForAdapter:r22 dspCreativeId:r24 dspName:0x0] retain];
    r25 = [[self adUnitId] retain];
    [MPLogging logEvent:r23 source:r25 fromClass:[self class]];
    [r25 release];
    [r23 release];
    [r24 release];
    [r22 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 setCloseButtonStyle:0x1];
    [r0 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 startLoading];
    [r0 release];
    [r20 release];
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    return;
}

-(void)handleCustomEventInvalidated {
    return;
}

-(void)interstitialDidAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialDidLoadAd:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
    r24 = [[self adUnitId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    [self setAdAvailable:0x1];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidLoadAdForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialWillAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)presentRewardedVideoFromViewController:(void *)arg2 {
    r31 = r31 - 0x190;
    var_60 = d9;
    stack[-104] = d8;
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
    r25 = [arg2 retain];
    r23 = [NSStringFromClass([r21 class]) retain];
    r20 = [[MPLogEvent adShowAttemptForAdapter:r23] retain];
    r0 = [r21 adUnitId];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [MPLogging logEvent:r20 source:r24 fromClass:[r21 class]];
    [r24 release];
    [r20 release];
    [r23 release];
    objc_initWeak(r29 - 0x98, r21);
    r20 = &var_C8 + 0x28;
    objc_copyWeak(r20, r29 - 0x98);
    r0 = objc_retainBlock(&var_C8);
    r22 = r0;
    if (([r21 hasAdAvailable] & 0x1) != 0x0) {
            var_150 = r20;
            objc_alloc();
            [r21 countdownDuration];
            var_148 = r22;
            var_140 = r25;
            var_158 = &var_F0 + 0x20;
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x98);
            r19 = [r19 initWithDuration:&var_F0 timerCompletion:r3];
            [r21 setTimerView:r19];
            [r19 release];
            r0 = [r21 interstitial];
            r0 = [r0 retain];
            r20 = [[r0 view] retain];
            r0 = [r21 timerView];
            r29 = r29;
            [r0 retain];
            [r20 addSubview:r2];
            [r22 release];
            [r20 release];
            [r19 release];
            if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
                    r0 = [r21 timerView];
                    r0 = [r0 retain];
                    var_160 = r0;
                    var_138 = [[r0 topAnchor] retain];
                    r0 = [r21 interstitial];
                    r0 = [r0 retain];
                    var_168 = r0;
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    var_170 = r0;
                    r0 = [r0 safeAreaLayoutGuide];
                    r0 = [r0 retain];
                    var_178 = r0;
                    var_180 = [[r0 topAnchor] retain];
                    r20 = [[var_138 constraintEqualToAnchor:0x0] retain];
                    r0 = [r21 timerView];
                    r0 = [r0 retain];
                    r28 = r0;
                    r23 = [[r0 rightAnchor] retain];
                    r0 = [r21 interstitial];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 safeAreaLayoutGuide];
                    r0 = [r0 retain];
                    r22 = r0;
                    r25 = [[r0 rightAnchor] retain];
                    r27 = [[r23 constraintEqualToAnchor:r25] retain];
                    r0 = [NSArray arrayWithObjects:r29 - 0x80 count:0x2];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r27 release];
                    [r25 release];
            }
            else {
                    r0 = [r21 timerView];
                    r0 = [r0 retain];
                    var_160 = r0;
                    var_138 = [[r0 topAnchor] retain];
                    r0 = [r21 interstitial];
                    r0 = [r0 retain];
                    var_168 = r0;
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    var_170 = r0;
                    var_178 = [[r0 topAnchor] retain];
                    var_180 = [[var_138 constraintEqualToAnchor:0x0] retain];
                    r0 = [r21 timerView];
                    r0 = [r0 retain];
                    r20 = r0;
                    r28 = [[r0 rightAnchor] retain];
                    r0 = [r21 interstitial];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 view];
                    r0 = [r0 retain];
                    r24 = r0;
                    r19 = [[r0 rightAnchor] retain];
                    r22 = [[r28 constraintEqualToAnchor:r19] retain];
                    r0 = [NSArray arrayWithObjects:r29 - 0x90 count:0x2];
                    r29 = r29;
                    r26 = [r0 retain];
            }
            [r22 release];
            [r19 release];
            [r24 release];
            [r23 release];
            [r28 release];
            [r20 release];
            [var_180 release];
            [var_178 release];
            [var_170 release];
            [var_168 release];
            [var_138 release];
            [var_160 release];
            [NSLayoutConstraint activateConstraints:r26];
            r0 = [r21 timerView];
            r0 = [r0 retain];
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r0 release];
            r0 = [r21 timerView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 start];
            [r0 release];
            r19 = [[r21 interstitial] retain];
            var_100 = [var_148 retain];
            [r19 presentInterstitialFromViewController:var_140 complete:&var_120];
            [r19 release];
            [var_100 release];
            [r26 release];
            objc_destroyWeak(var_158);
            r22 = var_148;
            r25 = var_140;
            r20 = var_150;
    }
    else {
            r0 = [NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0];
            r29 = r29;
            (*(r22 + 0x10))(r22, [r0 retain]);
            [r19 release];
    }
    var_70 = **___stack_chk_guard;
    [r22 release];
    objc_destroyWeak(r20);
    objc_destroyWeak(r29 - 0x98);
    [r25 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialWillDisappear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialDidFailToLoadAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adResponseHTMLString];
    r0 = [r0 retain];
    r21 = [[NSString stringWithFormat:@"Failed to load creative:\n%@"] retain];
    [r0 release];
    [r23 release];
    [r22 release];
    r22 = [[NSError errorWithCode:0x21 localizedDescription:r21] retain];
    r26 = [NSStringFromClass([self class]) retain];
    r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
    r27 = [[self adUnitId] retain];
    [MPLogging logEvent:r24 source:r27 fromClass:[self class]];
    [r27 release];
    [r24 release];
    [r26 release];
    [self setAdAvailable:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:self error:0x0];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)interstitialDidDisappear:(void *)arg2 {
    [self setAdAvailable:0x0];
    r0 = [self timerView];
    r0 = [r0 retain];
    [r0 stopAndSignalCompletion:0x0];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForCustomEvent:self];
    [r0 release];
    [self setInterstitial:0x0];
    return;
}

-(void)interstitialDidReceiveTapEvent:(void *)arg2 {
    r20 = [[self configuration] retain];
    [self rewardUserWithConfiguration:r20 timerHasElapsed:0x0];
    [r20 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillLeaveApplicationForCustomEvent:self];
    [r0 release];
    return;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)configuration {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 configuration] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)adAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_adAvailable;
    return r0;
}

-(void)setAdAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adAvailable = arg2;
    return;
}

-(void)setInterstitial:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitial, arg2);
    return;
}

-(void *)timerView {
    r0 = self->_timerView;
    return r0;
}

-(void)setTimerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timerView, arg2);
    return;
}

-(bool)userRewarded {
    r0 = *(int8_t *)(int64_t *)&self->_userRewarded;
    return r0;
}

-(void)setUserRewarded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_userRewarded = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timerView, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitial, 0x0);
    return;
}

@end