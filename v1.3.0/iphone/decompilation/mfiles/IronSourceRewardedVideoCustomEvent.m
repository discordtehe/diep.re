@implementation IronSourceRewardedVideoCustomEvent

-(void)initializeSdkWithParameters:(void *)arg2 {
    r21 = [arg2 retain];
    [self parseCredentials:r21];
    r20 = [[r21 objectForKey:@"applicationKey"] retain];
    [r21 release];
    [self initializeRewardedVideoIronSourceSDKWithApplicationKey:r20];
    [r20 release];
    return;
}

-(bool)hasAdAvailable {
    r20 = [[self instanceId] retain];
    r19 = [IronSource hasISDemandOnlyRewardedVideo:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)handleCustomEventInvalidated {
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    return;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
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
    r19 = [arg2 retain];
    [r20 parseCredentials:r19];
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isGDPRApplicable];
    [r0 release];
    if (r23 == 0x1) {
            r0 = [MoPub sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 canCollectPersonalInfo];
            [r0 release];
            [IronSource setConsent:r22];
    }
    r21 = [[r19 objectForKey:@"applicationKey"] retain];
    [r20 initializeRewardedVideoIronSourceSDKWithApplicationKey:r21];
    r26 = [NSStringFromClass([r20 class]) retain];
    r27 = [[MPLogEvent adLoadAttemptForAdapter:r26 dspCreativeId:0x0 dspName:0x0] retain];
    r0 = [r20 instanceId];
    r29 = r29;
    r28 = [r0 retain];
    [MPLogging logEvent:r27 source:r28 fromClass:[r20 class]];
    [r28 release];
    [r27 release];
    [r26 release];
    if (*(int8_t *)byte_1011d84c8 == 0x1) {
            r0 = [r20 delegate];
            r29 = r29;
            r23 = [r0 retain];
            if ([r20 hasAdAvailable] != 0x0) {
                    [r23 rewardedVideoDidLoadAdForCustomEvent:r20];
                    r26 = [NSStringFromClass([r20 class]) retain];
                    r28 = [[MPLogEvent adLoadSuccessForAdapter:r26] retain];
                    r25 = [[r20 instanceId] retain];
                    [MPLogging logEvent:r28 source:r25 fromClass:[r20 class]];
                    [r25 release];
                    [r28 release];
            }
            else {
                    r28 = [[NSString stringWithFormat:@"IronSource rewarded video ad was not available"] retain];
                    r27 = [[MPLogEvent eventWithMessage:r28 level:0x1e] retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
                    [r27 release];
                    [r28 release];
                    r26 = [[r20 createErrorWith:@"IronSource adapter failed to request rewarded video" andReason:@"no more fill" andSuggestion:@""] retain];
                    r0 = [r20 class];
                    r0 = NSStringFromClass(r0);
                    r0 = [r0 retain];
                    r27 = r23;
                    r28 = [[MPLogEvent adLoadFailedForAdapter:r0 error:r26] retain];
                    r25 = [[r20 instanceId] retain];
                    [MPLogging logEvent:r28 source:r25 fromClass:[r20 class]];
                    [r25 release];
                    [r28 release];
                    r23 = r27;
                    [r0 release];
                    [r27 rewardedVideoDidFailToLoadAdForCustomEvent:r20 error:r26];
            }
            [r26 release];
            [r23 release];
    }
    [r21 release];
    [r19 release];
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
    r0 = [r20 instanceId];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    [r25 release];
    if ([r20 hasAdAvailable] != 0x0) {
            r0 = [r20 placementName];
            r29 = r29;
            r22 = [r0 retain];
            r24 = [r20 isEmpty:r22];
            [r22 release];
            r19 = var_58;
            if (r24 != 0x0) {
                    r23 = [[r20 instanceId] retain];
                    [IronSource showISDemandOnlyRewardedVideo:r19 instanceId:r23];
            }
            else {
                    r23 = [[r20 placementName] retain];
                    r20 = [[r20 instanceId] retain];
                    [IronSource showISDemandOnlyRewardedVideo:r19 placement:r23 instanceId:r20];
                    [r20 release];
            }
    }
    else {
            r23 = [[r20 delegate] retain];
            r25 = @class(MPLogging);
            r26 = @class(MPLogEvent);
            r27 = [[NSString stringWithFormat:@"IronSource rewarded video ad was not available"] retain];
            r26 = [[r26 eventWithMessage:r27 level:0x1e] retain];
            [r25 logEvent:r26 source:0x0 fromClass:[r20 class]];
            [r26 release];
            [r27 release];
            r25 = [[r20 createErrorWith:@"IronSource adapter failed to request rewarded video" andReason:@"no more fill" andSuggestion:@""] retain];
            [r23 rewardedVideoDidFailToPlayForCustomEvent:r20 error:r25];
            r26 = @class(MPLogging);
            r27 = @class(MPLogEvent);
            r28 = [NSStringFromClass([r20 class]) retain];
            r27 = [[r27 adShowFailedForAdapter:r28 error:r25] retain];
            r21 = [[r20 instanceId] retain];
            [r26 logEvent:r27 source:r21 fromClass:[r20 class]];
            [r21 release];
            [r27 release];
            [r28 release];
            [r25 release];
            r19 = var_58;
    }
    [r23 release];
    [r19 release];
    return;
}

-(void)parseCredentials:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setPlacementName:r22];
            [r22 release];
    }
    r21 = @selector(objectForKey:);
    [r20 setInstanceId:@"0"];
    r0 = objc_msgSend(r19, r21);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1004f9dd8;

loc_1004f9d78:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1004f9de0;

loc_1004f9da8:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r20 setInstanceId:r23];
    goto loc_1004f9dd8;

loc_1004f9dd8:
    [r23 release];
    goto loc_1004f9de0;

loc_1004f9de0:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r0 = [r0 retain];
            [r20 setIsTestEnabled:[r0 boolValue]];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)initializeRewardedVideoIronSourceSDKWithApplicationKey:(void *)arg2 {
    r31 = r31 - 0x80;
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
    if (([r20 isEmpty:r19] & 0x1) == 0x0) goto loc_1004f9ae4;

loc_1004f99dc:
    r23 = [[NSString stringWithFormat:@"IronSource Adapter failed to request RewardedVideo, 'applicationKey' parameter is missing. make sure that 'applicationKey' server parameter is added"] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    [r22 release];
    [r23 release];
    r21 = [[r20 createErrorWith:@"IronSource Adapter failed to request RewardedVideo" andReason:@"applicationKey parameter is missing" andSuggestion:@"make sure that 'applicationKey' server parameter is added"] retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r20 error:r21];
    [r0 release];
    goto loc_1004f9c50;

loc_1004f9c50:
    [r21 release];
    goto loc_1004f9c58;

loc_1004f9c58:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1004f9ae4:
    [IronSource setISDemandOnlyRewardedVideoDelegate:r20];
    if ((*(int8_t *)byte_1011d84c8 & 0x1) != 0x0) goto loc_1004f9c58;

loc_1004f9b08:
    r24 = [[NSString stringWithFormat:@"IronSource SDK initialization complete"] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
    [r23 release];
    [r24 release];
    r20 = @class(IronSource);
    r21 = [[NSString stringWithFormat:@"%@%@"] retain];
    [r20 setMediationType:r21];
    [r21 release];
    r20 = @class(IronSource);
    r0 = [NSArray arrayWithObjects:&var_58 count:0x2];
    r21 = [r0 retain];
    [r20 initISDemandOnly:r19 adUnits:r21];
    goto loc_1004f9c50;
}

-(void)logInfo:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isTestEnabled] != 0x0) {
            r23 = [[NSString stringWithFormat:r19] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
    }
    [r19 release];
    return;
}

-(void)logError:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isTestEnabled] != 0x0) {
            r23 = [[NSString stringWithFormat:r19] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
    }
    [r19 release];
    return;
}

-(bool)isEmpty:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [NSNull class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    if ([r19 respondsToSelector:r2] != 0x0 && [r19 length] == 0x0) {
                            r20 = 0x1;
                    }
                    else {
                            if ([r19 respondsToSelector:r2] != 0x0 && [r19 length] == 0x0) {
                                    r20 = 0x1;
                            }
                            else {
                                    r20 = @selector(respondsToSelector:);
                                    if (objc_msgSend(r19, r20) != 0x0) {
                                            if ([r19 count] == 0x0) {
                                                    if (CPU_FLAGS & E) {
                                                            r20 = 0x1;
                                                    }
                                            }
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                    }
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    r0 = [arg2 retain];
    r20 = r0;
    r22 = [[r0 description] retain];
    r21 = [[NSString stringWithFormat:@"IronSource rewardedVideo did fail to show with error: %@"] retain];
    [self logError:r21];
    [r21 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForCustomEvent:self error:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)didReceiveRewardForPlacement:(void *)arg2 instanceId:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r21 = [[r19 rewardName] retain];
            r23 = [[r19 rewardAmount] retain];
            r24 = [[r22 delegate] retain];
            r25 = [objc_alloc() initWithCurrencyType:r21 amount:r23];
            [r22 setReward:r25];
            [r25 release];
            r25 = [[r22 reward] retain];
            [r24 rewardedVideoShouldRewardUserForCustomEvent:r22 reward:r25];
            [r25 release];
            r27 = [[NSString stringWithFormat:@"IronSource received reward for placement %@, for instance:%@"] retain];
            r26 = [[MPLogEvent eventWithMessage:r27 level:0x1e] retain];
            [MPLogging logEvent:r26 source:0x0 fromClass:[r22 class]];
            [r26 release];
            [r27 release];
            [r24 release];
    }
    else {
            r21 = [[NSString stringWithFormat:@"IronSource received reward for placement - without placement info"] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r22 class]];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
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

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 instanceId:(void *)arg3 {
    r3 = arg3;
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
    r24 = arg2;
    r19 = self;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r26 = @"NO";
            }
            else {
                    r26 = @"YES";
            }
    }
    r22 = [r3 retain];
    r25 = [[NSString stringWithFormat:@"RewardedVideo has changed availability - %@, for instance: %@ "] retain];
    r26 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
    [MPLogging logEvent:r26 source:0x0 fromClass:[r19 class]];
    [r26 release];
    [r25 release];
    r0 = [r19 instanceId];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:r2];
    [r22 release];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r22 = [r0 retain];
            if ((*(int8_t *)byte_1011d84c8 & 0x1) == 0x0) {
                    if (r24 != 0x0) {
                            [r22 rewardedVideoDidLoadAdForCustomEvent:r19];
                            r25 = @class(MPLogging);
                            r26 = @class(MPLogEvent);
                            r24 = [NSStringFromClass([r19 class]) retain];
                            r26 = [[r26 adLoadSuccessForAdapter:r24] retain];
                            r23 = [[r19 instanceId] retain];
                            [r25 logEvent:r26 source:r23 fromClass:[r19 class]];
                            [r23 release];
                            [r26 release];
                    }
                    else {
                            r24 = [[r19 createErrorWith:@"IronSource adapter failed to request rewarded video" andReason:@"no more fill" andSuggestion:@""] retain];
                            r25 = @class(MPLogging);
                            r26 = @class(MPLogEvent);
                            r27 = [NSStringFromClass([r19 class]) retain];
                            r26 = [[r26 adLoadFailedForAdapter:r27 error:r24] retain];
                            r23 = [[r19 instanceId] retain];
                            [r25 logEvent:r26 source:r23 fromClass:[r19 class]];
                            [r23 release];
                            [r26 release];
                            [r27 release];
                            [r22 rewardedVideoDidFailToLoadAdForCustomEvent:r19 error:r24];
                    }
                    [r24 release];
                    *(int8_t *)0x1011d84c8 = 0x1;
            }
            [r22 release];
    }
    return;
}

-(void)rewardedVideoDidOpen:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForCustomEvent:self];
    r22 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r22 adWillAppearForAdapter:r25] retain];
    r27 = [[self instanceId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowSuccessForAdapter:r26] retain];
    r27 = [[self instanceId] retain];
    [MPLogging logEvent:r25 source:r27 fromClass:[self class]];
    [r27 release];
    [r25 release];
    [r26 release];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidAppearForAdapter:r26] retain];
    r22 = [[self instanceId] retain];
    [MPLogging logEvent:r25 source:r22 fromClass:[self class]];
    [r22 release];
    [r25 release];
    [r26 release];
    [r0 release];
    return;
}

-(void)rewardedVideoDidStart:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"IronSource RewardedVideo did start for instance:%@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)rewardedVideoDidEnd:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"IronSource RewardedVideo did end for instance:%@"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)rewardedVideoDidClose:(void *)arg2 {
    r20 = @class(MPLogEvent);
    r23 = [[NSString stringWithFormat:@"IronSource RewardedVideo did close for instance:%@"] retain];
    r24 = [[r20 eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[self class]];
    [r24 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForCustomEvent:self];
    r24 = @class(MPLogging);
    r23 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r23 adWillDisappearForAdapter:r25] retain];
    r27 = [[self instanceId] retain];
    [r24 logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    [r0 rewardedVideoDidDisappearForCustomEvent:self];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidDisappearForAdapter:r26] retain];
    r23 = [[self instanceId] retain];
    [MPLogging logEvent:r25 source:r23 fromClass:[self class]];
    [r23 release];
    [r25 release];
    [r26 release];
    [self setReward:0x0];
    [r0 release];
    return;
}

-(void *)reward {
    r0 = self->_reward;
    return r0;
}

-(void)didClickRewardedVideo:(void *)arg2 instanceId:(void *)arg3 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForCustomEvent:self];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adTappedForAdapter:r24] retain];
    r25 = [[self instanceId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    [r0 release];
    return;
}

-(void)setReward:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reward, arg2);
    return;
}

-(void *)placementName {
    r0 = self->_placementName;
    return r0;
}

-(void)setPlacementName:(void *)arg2 {
    self->_placementName = arg2;
    return;
}

-(void *)instanceId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_instanceId)), 0x0);
    return r0;
}

-(void)setInstanceId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isTestEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isTestEnabled;
    return r0;
}

-(void)setIsTestEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isTestEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instanceId, 0x0);
    objc_storeStrong((int64_t *)&self->_reward, 0x0);
    return;
}

@end