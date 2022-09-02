@implementation UnityAdsBannerCustomEvent

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    [UnityAdsBanner destroy];
    [[&var_20 super] dealloc];
    return;
}

-(void)unityAdsBannerDidUnload:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Unity Banner did unload for placement %@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r0 = [r2 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyedSubscript:@"gameId"] retain];
    r22 = [[r19 objectForKeyedSubscript:@"placementId"] retain];
    [r21 setPlacementId:r22];
    [r22 release];
    r0 = [r21 placementId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r20 == 0x0) {
                    r22 = [[r21 createErrorWith:@"Unity Ads adapter failed to request Ad" andReason:@"Custom event class data did not contain gameId/placementId" andSuggestion:@"Update your MoPub custom event class data to contain a valid Unity Ads gameId/placementId."] retain];
                    r26 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
                    r27 = [[r21 getAdNetworkId] retain];
                    [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
                    [r27 release];
                    [r24 release];
                    [r26 release];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 bannerCustomEvent:r21 didFailToLoadAdWithError:r22];
            }
            else {
                    r0 = [r21 placementId];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r23 = [[UnityRouter sharedRouter] retain];
                            r22 = [[r21 placementId] retain];
                            [r23 requestBannerAdWithGameId:r20 placementId:r22 delegate:r21];
                            [r22 release];
                            [r23 release];
                            r22 = [NSStringFromClass([r21 class]) retain];
                            r24 = [[MPLogEvent adLoadAttemptForAdapter:r22 dspCreativeId:0x0 dspName:0x0] retain];
                            r26 = [[r21 getAdNetworkId] retain];
                            [MPLogging logEvent:r24 source:r26 fromClass:[r21 class]];
                            [r26 release];
                    }
                    else {
                            r22 = [[r21 createErrorWith:@"Unity Ads adapter failed to request Ad" andReason:@"Custom event class data did not contain gameId/placementId" andSuggestion:@"Update your MoPub custom event class data to contain a valid Unity Ads gameId/placementId."] retain];
                            r26 = [NSStringFromClass([r21 class]) retain];
                            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
                            r27 = [[r21 getAdNetworkId] retain];
                            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
                            [r27 release];
                            [r24 release];
                            [r26 release];
                            r0 = [r21 delegate];
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 bannerCustomEvent:r21 didFailToLoadAdWithError:r22];
                    }
            }
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"zoneId"];
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
                            r23 = [[UnityRouter sharedRouter] retain];
                            r22 = [[r21 placementId] retain];
                            [r23 requestBannerAdWithGameId:r20 placementId:r22 delegate:r21];
                            [r22 release];
                            [r23 release];
                            r22 = [NSStringFromClass([r21 class]) retain];
                            r24 = [[MPLogEvent adLoadAttemptForAdapter:r22 dspCreativeId:0x0 dspName:0x0] retain];
                            r26 = [[r21 getAdNetworkId] retain];
                            [MPLogging logEvent:r24 source:r26 fromClass:[r21 class]];
                            [r26 release];
                    }
                    else {
                            r22 = [[r21 createErrorWith:@"Unity Ads adapter failed to request Ad" andReason:@"Custom event class data did not contain gameId/placementId" andSuggestion:@"Update your MoPub custom event class data to contain a valid Unity Ads gameId/placementId."] retain];
                            r26 = [NSStringFromClass([r21 class]) retain];
                            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
                            r27 = [[r21 getAdNetworkId] retain];
                            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
                            [r27 release];
                            [r24 release];
                            [r26 release];
                            r0 = [r21 delegate];
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 bannerCustomEvent:r21 didFailToLoadAdWithError:r22];
                    }
            }
            else {
                    r22 = [[r21 createErrorWith:@"Unity Ads adapter failed to request Ad" andReason:@"Custom event class data did not contain gameId/placementId" andSuggestion:@"Update your MoPub custom event class data to contain a valid Unity Ads gameId/placementId."] retain];
                    r26 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
                    r27 = [[r21 getAdNetworkId] retain];
                    [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
                    [r27 release];
                    [r24 release];
                    [r26 release];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 bannerCustomEvent:r21 didFailToLoadAdWithError:r22];
            }
    }
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)unityAdsBannerDidLoad:(void *)arg2 view:(void *)arg3 {
    r24 = @class(MPLogging);
    r22 = @class(MPLogEvent);
    var_58 = [arg3 retain];
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r22 adLoadSuccessForAdapter:r25] retain];
    r27 = [[self getAdNetworkId] retain];
    [r24 logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowAttemptForAdapter:r26] retain];
    r27 = [[self getAdNetworkId] retain];
    [r24 logEvent:r25 source:r27 fromClass:[self class]];
    [r27 release];
    [r25 release];
    [r26 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowSuccessForAdapter:r26] retain];
    r22 = [[self getAdNetworkId] retain];
    [r24 logEvent:r25 source:r22 fromClass:[self class]];
    [r22 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didLoadAd:var_58];
    [var_58 release];
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

-(void)unityAdsBannerDidShow:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Unity Banner did show for placement %@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)unityAdsBannerDidHide:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Unity Banner did hide for placement %@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)unityAdsBannerDidError:(void *)arg2 {
    r20 = [[self createErrorWith:@"Unity Ads failed to load an ad" andReason:r3 andSuggestion:@""] retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    r25 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didFailToLoadAdWithError:0x0];
    [r0 release];
    [r20 release];
    return;
}

-(void)unityAdsBannerDidClick:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void *)getAdNetworkId {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self placementId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [[r20 placementId] retain];
    }
    else {
            r20 = @"";
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)placementId {
    r0 = self->_placementId;
    return r0;
}

-(void)setPlacementId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementId, 0x0);
    return;
}

@end