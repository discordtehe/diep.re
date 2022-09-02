@implementation AdColonyInterstitialCustomEvent

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 {
    r31 = r31 - 0x90;
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
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 count] != 0x0) {
                    r25 = [[r19 objectForKey:r2] retain];
                    [r21 setZoneId:r25];
                    [r25 release];
                    r0 = [r21 zoneId];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r0 = [r22 objectAtIndexedSubscript:0x0];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r21 setZoneId:r25];
                            [r25 release];
                    }
                    r23 = [[r19 objectForKey:r2] retain];
                    [AdColonyAdapterConfiguration updateInitializationParameters:r19];
                    [AdColonyController initializeAdColonyCustomEventWithAppId:r20 allZoneIds:r22 userId:r23 callback:&var_78];
            }
            else {
                    r23 = [[r21 createErrorWith:@"AdColony adapter failed to requestInterstitial" andReason:@"Invalid setup" andSuggestion:@"Use the allZoneIds parameter when configuring your network in the MoPub website."] retain];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    [r0 interstitialCustomEvent:r21 didFailToLoadAdWithError:r23];
                    [r0 release];
                    r27 = [NSStringFromClass([r21 class]) retain];
                    r25 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r23] retain];
                    r28 = [[r21 getAdNetworkId] retain];
                    [MPLogging logEvent:r25 source:r28 fromClass:[r21 class]];
                    [r28 release];
                    [r25 release];
                    [r27 release];
            }
            r0 = r23;
    }
    else {
            r22 = [[r21 createErrorWith:@"AdColony adapter failed to requestInterstitial" andReason:@"Invalid setup" andSuggestion:@"Use the appId parameter when configuring your network in the MoPub website."] retain];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r21 didFailToLoadAdWithError:r22];
            [r0 release];
            r26 = [NSStringFromClass([r21 class]) retain];
            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
            r27 = [[r21 getAdNetworkId] retain];
            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
            [r27 release];
            [r24 release];
            r0 = r26;
    }
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)getAdNetworkId {
    r0 = [self zoneId];
    return r0;
}

-(void *)ad {
    r0 = self->_ad;
    return r0;
}

-(void)setAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ad, arg2);
    return;
}

-(void)showInterstitialFromRootViewController:(void *)arg2 {
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
    r27 = [[r20 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [r20 ad];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 ad];
            r29 = r29;
            r0 = [r0 retain];
            r28 = var_58;
            r25 = [r0 showWithPresentingViewController:r28];
            [r0 release];
            if (r25 != 0x0) {
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 interstitialCustomEventWillAppear:r20];
                    [r0 release];
                    r26 = *(&@class(ADCTransitionalContainer) + 0xb40);
                    r25 = @class(MPLogEvent);
                    r24 = [NSStringFromClass([r20 class]) retain];
                    r25 = [[r25 adWillAppearForAdapter:r24] retain];
                    r23 = [[r20 getAdNetworkId] retain];
                    [r26 logEvent:r25 source:r23 fromClass:[r20 class]];
                    [r23 release];
            }
            else {
                    r24 = [[r20 createErrorWith:@"Failed to show AdColony video" andReason:@"Unknown Error" andSuggestion:@""] retain];
                    r25 = *(&@class(ADCTransitionalContainer) + 0xb40);
                    r26 = @class(MPLogEvent);
                    r27 = [NSStringFromClass([r20 class]) retain];
                    r26 = [[r26 adShowFailedForAdapter:r27 error:r24] retain];
                    r23 = [[r20 getAdNetworkId] retain];
                    [r25 logEvent:r26 source:r23 fromClass:[r20 class]];
                    [r23 release];
                    [r26 release];
                    [r27 release];
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r24];
            }
    }
    else {
            r24 = [[r20 createErrorWith:@"Failed to show AdColony video" andReason:@"ad is not available" andSuggestion:@""] retain];
            r25 = @class(MPLogging);
            r26 = @class(MPLogEvent);
            r27 = [NSStringFromClass([r20 class]) retain];
            r26 = [[r26 adShowFailedForAdapter:r27 error:r24] retain];
            r23 = [[r20 getAdNetworkId] retain];
            [r25 logEvent:r26 source:r23 fromClass:[r20 class]];
            [r23 release];
            [r26 release];
            [r27 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r25 = r0;
            [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r24];
            r28 = var_58;
    }
    [r25 release];
    [r24 release];
    [r28 release];
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

-(void *)zoneId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_zoneId)), 0x0);
    return r0;
}

-(void)setZoneId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_zoneId, 0x0);
    objc_storeStrong((int64_t *)&self->_ad, 0x0);
    return;
}

@end