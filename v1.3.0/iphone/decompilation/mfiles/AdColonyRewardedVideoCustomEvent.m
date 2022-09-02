@implementation AdColonyRewardedVideoCustomEvent

-(void)initializeSdkWithParameters:(void *)arg2 {
    [self initializeSdkWithParameters:arg2 callback:&var_28];
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

-(void)initializeSdkWithParameters:(void *)arg2 callback:(void *)arg3 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1004d3084;

loc_1004d300c:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 count] == 0x0) goto loc_1004d319c;

loc_1004d303c:
    r24 = [[r19 objectForKey:r2] retain];
    [AdColonyController initializeAdColonyCustomEventWithAppId:r21 allZoneIds:r22 userId:r24 callback:r20];
    goto loc_1004d32c0;

loc_1004d32c0:
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1004d319c:
    r24 = [[r23 createErrorWith:@"AdColony adapter failed to load ad" andReason:@"Invalid setup" andSuggestion:@"Use the allZoneIds parameter when configuring your network in the MoPub website."] retain];
    r0 = [r23 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r23 error:r24];
    [r0 release];
    r28 = [NSStringFromClass([r23 class]) retain];
    r26 = [[MPLogEvent adLoadFailedForAdapter:r28 error:r24] retain];
    r25 = [[r23 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r25 fromClass:[r23 class]];
    [r25 release];
    [r26 release];
    r0 = r28;
    goto loc_1004d32bc;

loc_1004d32bc:
    [r0 release];
    goto loc_1004d32c0;

loc_1004d3084:
    r22 = [[r23 createErrorWith:@"AdColony adapter failed to load ad" andReason:@"Invalid setup" andSuggestion:@"Use the appId parameter when configuring your network in the MoPub website."] retain];
    r0 = [r23 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r23 error:r22];
    [r0 release];
    r24 = [NSStringFromClass([r23 class]) retain];
    r26 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r22] retain];
    r28 = [[r23 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r28 fromClass:[r23 class]];
    [r28 release];
    r0 = r26;
    goto loc_1004d32bc;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
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
    r0 = [r0 objectForKey:@"allZoneIds"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r23 = [[r19 objectForKey:@"zoneId"] retain];
            [r21 setZoneId:r23];
            [r23 release];
            r0 = [r21 zoneId];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [r20 objectAtIndexedSubscript:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 setZoneId:r23];
                    [r23 release];
            }
            [AdColonyAdapterConfiguration updateInitializationParameters:r19];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r23 = [[r0 customerIdForRewardedVideoCustomEvent:r21] retain];
            [r0 release];
            r0 = [NSMutableDictionary dictionaryWithDictionary:r19];
            r0 = [r0 retain];
            [r0 setObject:r23 forKeyedSubscript:@"userId"];
            [r21 initializeSdkWithParameters:r0 callback:&var_78];
            [r0 release];
            r0 = r23;
    }
    else {
            r22 = [[r21 createErrorWith:@"AdColony adapter failed to requestRewardedVideo" andReason:@"Invalid setup" andSuggestion:@"Use the allZoneIds parameter when configuring your network in the MoPub website."] retain];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r21 error:r22];
            [r0 release];
            r26 = [NSStringFromClass([r21 class]) retain];
            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
            r27 = [[r21 getAdNetworkId] retain];
            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
            [r27 release];
            [r24 release];
            [r26 release];
            r0 = r22;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)hasAdAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self ad];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)getAdNetworkId {
    r0 = [self zoneId];
    return r0;
}

-(void *)ad {
    r0 = self->_ad;
    return r0;
}

-(void)presentRewardedVideoFromViewController:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
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
    if (r0 == 0x0) goto loc_1004d4d38;

loc_1004d4c14:
    r0 = [r20 ad];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 showWithPresentingViewController:r19];
    [r0 release];
    if ((r25 & 0x1) != 0x0) goto loc_1004d4e4c;

loc_1004d4c50:
    r24 = [[NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:0x0] retain];
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
    goto loc_1004d4e20;

loc_1004d4e20:
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForCustomEvent:r20 error:r24];
    [r0 release];
    [r24 release];
    goto loc_1004d4e4c;

loc_1004d4e4c:
    [r19 release];
    return;

loc_1004d4d38:
    r24 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0] retain];
    r26 = @class(MPLogEvent);
    r27 = [NSStringFromClass([r20 class]) retain];
    r26 = [[r26 adShowFailedForAdapter:r27 error:r24] retain];
    r23 = [[r20 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r23 fromClass:[r20 class]];
    [r23 release];
    [r26 release];
    [r27 release];
    r0 = [r20 delegate];
    goto loc_1004d4e20;
}

-(void)setAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ad, arg2);
    return;
}

-(void *)zone {
    r0 = self->_zone;
    return r0;
}

-(void)setZone:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zone, arg2);
    return;
}

-(void *)zoneId {
    r0 = self->_zoneId;
    return r0;
}

-(void)setZoneId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zoneId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_zoneId, 0x0);
    objc_storeStrong((int64_t *)&self->_zone, 0x0);
    objc_storeStrong((int64_t *)&self->_ad, 0x0);
    return;
}

@end