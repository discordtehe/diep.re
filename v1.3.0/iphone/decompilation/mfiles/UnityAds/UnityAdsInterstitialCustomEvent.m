@implementation UnityAdsInterstitialCustomEvent

-(void)dealloc {
    r0 = [UnityRouter sharedRouter];
    r0 = [r0 retain];
    [r0 clearDelegate:self];
    [r0 release];
    [[&var_20 super] dealloc];
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

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    if ([r20 hasAdAvailable] != 0x0) {
            r24 = [NSStringFromClass([r20 class]) retain];
            r22 = [[MPLogEvent adShowAttemptForAdapter:r24] retain];
            r26 = [[r20 placementId] retain];
            [MPLogging logEvent:r22 source:r26 fromClass:[r20 class]];
            [r26 release];
            [r22 release];
            [r24 release];
            r21 = [[UnityRouter sharedRouter] retain];
            r22 = [[r20 placementId] retain];
            [r21 presentVideoAdFromViewController:r19 customerId:0x0 placementId:r22 settings:0x0 delegate:r20];
    }
    else {
            r21 = [[r20 createErrorWith:@"Unity Ads failed to load failed to show Unity Interstitial" andReason:@"There is no available video ad." andSuggestion:@""] retain];
            r25 = [NSStringFromClass([r20 class]) retain];
            r23 = [[MPLogEvent adShowFailedForAdapter:r25 error:r21] retain];
            r26 = [[r20 placementId] retain];
            [MPLogging logEvent:r23 source:r26 fromClass:[r20 class]];
            [r26 release];
            [r23 release];
            [r25 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r22 = r0;
            [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r21];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasAdAvailable] & 0x1) == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEventDidExpire:r19];
            [r0 release];
    }
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

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 {
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
    [r21 setLoadRequested:0x1];
    r20 = [[r19 objectForKey:@"gameId"] retain];
    r22 = [[r19 objectForKey:@"placementId"] retain];
    [r21 setPlacementId:r22];
    [r22 release];
    r0 = [r21 placementId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r20 == 0x0) {
                    r23 = [[r21 createErrorWith:@"Unity Ads adapter failed to requestInterstitial" andReason:@"Configured with an invalid placement id" andSuggestion:@""] retain];
                    r27 = [NSStringFromClass([r21 class]) retain];
                    r25 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r23] retain];
                    r22 = [[r21 placementId] retain];
                    [MPLogging logEvent:r25 source:r22 fromClass:[r21 class]];
                    [r22 release];
                    [r25 release];
                    [r27 release];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 interstitialCustomEvent:r21 didFailToLoadAdWithError:r23];
            }
            else {
                    r0 = [r21 placementId];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            [UnityAdsAdapterConfiguration updateInitializationParameters:r19];
                            r23 = [[UnityRouter sharedRouter] retain];
                            r24 = [[r21 placementId] retain];
                            [r23 requestVideoAdWithGameId:r20 placementId:r24 delegate:r21];
                            [r24 release];
                            [r23 release];
                            r23 = [NSStringFromClass([r21 class]) retain];
                            r24 = [[MPLogEvent adLoadAttemptForAdapter:r23 dspCreativeId:0x0 dspName:0x0] retain];
                            r22 = [[r21 placementId] retain];
                            [MPLogging logEvent:r24 source:r22 fromClass:[r21 class]];
                            [r22 release];
                    }
                    else {
                            r23 = [[r21 createErrorWith:@"Unity Ads adapter failed to requestInterstitial" andReason:@"Configured with an invalid placement id" andSuggestion:@""] retain];
                            r27 = [NSStringFromClass([r21 class]) retain];
                            r25 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r23] retain];
                            r22 = [[r21 placementId] retain];
                            [MPLogging logEvent:r25 source:r22 fromClass:[r21 class]];
                            [r22 release];
                            [r25 release];
                            [r27 release];
                            r0 = [r21 delegate];
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 interstitialCustomEvent:r21 didFailToLoadAdWithError:r23];
                    }
            }
    }
    else {
            r0 = [r19 objectForKey:@"zoneId"];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setPlacementId:r23];
            [r23 release];
            if (r20 != 0x0) {
                    r0 = [r21 placementId];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            [UnityAdsAdapterConfiguration updateInitializationParameters:r19];
                            r23 = [[UnityRouter sharedRouter] retain];
                            r24 = [[r21 placementId] retain];
                            [r23 requestVideoAdWithGameId:r20 placementId:r24 delegate:r21];
                            [r24 release];
                            [r23 release];
                            r23 = [NSStringFromClass([r21 class]) retain];
                            r24 = [[MPLogEvent adLoadAttemptForAdapter:r23 dspCreativeId:0x0 dspName:0x0] retain];
                            r22 = [[r21 placementId] retain];
                            [MPLogging logEvent:r24 source:r22 fromClass:[r21 class]];
                            [r22 release];
                    }
                    else {
                            r23 = [[r21 createErrorWith:@"Unity Ads adapter failed to requestInterstitial" andReason:@"Configured with an invalid placement id" andSuggestion:@""] retain];
                            r27 = [NSStringFromClass([r21 class]) retain];
                            r25 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r23] retain];
                            r22 = [[r21 placementId] retain];
                            [MPLogging logEvent:r25 source:r22 fromClass:[r21 class]];
                            [r22 release];
                            [r25 release];
                            [r27 release];
                            r0 = [r21 delegate];
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 interstitialCustomEvent:r21 didFailToLoadAdWithError:r23];
                    }
            }
            else {
                    r23 = [[r21 createErrorWith:@"Unity Ads adapter failed to requestInterstitial" andReason:@"Configured with an invalid placement id" andSuggestion:@""] retain];
                    r27 = [NSStringFromClass([r21 class]) retain];
                    r25 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r23] retain];
                    r22 = [[r21 placementId] retain];
                    [MPLogging logEvent:r25 source:r22 fromClass:[r21 class]];
                    [r22 release];
                    [r25 release];
                    [r27 release];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 interstitialCustomEvent:r21 didFailToLoadAdWithError:r23];
            }
    }
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsReady:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    if ([r20 loadRequested] != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r20 didLoadAd:r19];
            [r0 release];
            r24 = [NSStringFromClass([r20 class]) retain];
            r22 = [[MPLogEvent adLoadSuccessForAdapter:r24] retain];
            r25 = [[r20 placementId] retain];
            [MPLogging logEvent:r22 source:r25 fromClass:[r20 class]];
            [r25 release];
            [r22 release];
            [r24 release];
            [r20 setLoadRequested:0x0];
    }
    [r19 release];
    return;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
    r19 = [[self createErrorWith:@"Unity Ads failed to load an ad" andReason:arg3 andSuggestion:@""] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEvent:self didFailToLoadAdWithError:r19];
    [r0 release];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r19] retain];
    r25 = [[self placementId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    [r19 release];
    return;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillDisappear:self];
    [r0 release];
    r22 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r22 adWillDisappearForAdapter:r25] retain];
    r27 = [[self placementId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidDisappear:self];
    [r0 release];
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adDidDisappearForAdapter:r25] retain];
    r22 = [[self placementId] retain];
    [MPLogging logEvent:r24 source:r22 fromClass:[self class]];
    [r22 release];
    [r24 release];
    [r25 release];
    return;
}

-(void)unityAdsDidStart:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillAppear:self];
    [r0 release];
    r22 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r22 adWillAppearForAdapter:r25] retain];
    r27 = [[self placementId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowSuccessForAdapter:r26] retain];
    r27 = [[self placementId] retain];
    [MPLogging logEvent:r25 source:r27 fromClass:[self class]];
    [r27 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidAppear:self];
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

-(void)unityAdsDidClick:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidReceiveTapEvent:self];
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
    [r0 interstitialCustomEvent:self didFailToLoadAdWithError:r21];
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

-(void)setLoadRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loadRequested = arg2;
    return;
}

-(bool)loadRequested {
    r0 = *(int8_t *)(int64_t *)&self->_loadRequested & 0x1;
    return r0;
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