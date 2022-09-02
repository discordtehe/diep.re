@implementation MPRewardedVideo

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            r0 = [NSMutableArray new];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            r0 = [NSMapTable strongToWeakObjectsMapTable];
            r0 = [r0 retain];
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

+(void)setDelegate:(void *)arg2 forAdUnitId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r21 != 0x0) {
            [r21 retain];
            r0 = [r20 class];
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 delegateTable];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
            [r22 release];
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)removeDelegateForAdUnitId:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [r2 retain];
            r0 = [r0 class];
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r0 = [r0 delegateTable];
            r0 = [r0 retain];
            [r0 removeObjectForKey:r2];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    return;
}

+(void)loadRewardedVideoAdWithAdUnitID:(void *)arg2 withMediationSettings:(void *)arg3 {
    r20 = [arg2 retain];
    [MPRewardedVideo loadRewardedVideoAdWithAdUnitID:r20 keywords:0x0 userDataKeywords:0x0 location:0x0 mediationSettings:arg3];
    [r20 release];
    return;
}

+(void)removeDelegate:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 class];
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r21 = [[r0 delegateTable] retain];
            [r0 release];
            r0 = [NSMutableArray array];
            r29 = r29;
            r22 = [r0 retain];
            var_190 = q0;
            r0 = [r21 retain];
            r20 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1E8 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r28 = *var_190;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_190 != r28) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r24 = @selector(objectForKey:);
                                    r26 = *(var_198 + r21 * 0x8);
                                    r0 = objc_msgSend(r20, r24);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 == r19) {
                                            [r22 addObject:r2];
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r23);
                            r0 = objc_msgSend(r20, var_1E8);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r20 release];
            var_1D0 = q0;
            r0 = [r22 retain];
            r22 = r0;
            r0 = objc_msgSend(r0, var_1E8);
            if (r0 != 0x0) {
                    r23 = r0;
                    r21 = *var_1D0;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_1D0 != r21) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [r20 removeObjectForKey:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r23);
                            r0 = objc_msgSend(r22, var_1E8);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r22 release];
            [r22 release];
            [r20 release];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

+(void)loadRewardedVideoAdWithAdUnitID:(void *)arg2 keywords:(void *)arg3 userDataKeywords:(void *)arg4 location:(void *)arg5 mediationSettings:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    [self loadRewardedVideoAdWithAdUnitID:r24 keywords:r22 userDataKeywords:r21 location:r20 customerId:0x0 mediationSettings:arg6];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    return;
}

+(void)loadRewardedVideoAdWithAdUnitID:(void *)arg2 keywords:(void *)arg3 userDataKeywords:(void *)arg4 location:(void *)arg5 customerId:(void *)arg6 mediationSettings:(void *)arg7 {
    r25 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    [self loadRewardedVideoAdWithAdUnitID:r25 keywords:r23 userDataKeywords:r22 location:r21 customerId:r20 mediationSettings:arg7 localExtras:0x0];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    [r25 release];
    return;
}

+(bool)hasAdAvailableForAdUnitID:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 rewardedVideoAdManagers];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r20 = [r22 hasAdAvailable];
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)availableRewardsForAdUnitID:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 rewardedVideoAdManagers];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r20 = [[r22 availableRewards] retain];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)loadRewardedVideoAdWithAdUnitID:(void *)arg2 keywords:(void *)arg3 userDataKeywords:(void *)arg4 location:(void *)arg5 customerId:(void *)arg6 mediationSettings:(void *)arg7 localExtras:(void *)arg8 {
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
    r19 = [arg2 retain];
    var_58 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r25 = [arg8 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if ([r19 length] != 0x0) {
            r0 = [r26 rewardedVideoAdManagers];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r27 = [r0 retain];
            [r20 release];
            if (r27 == 0x0) {
                    r27 = [objc_alloc() initWithAdUnitID:r19 delegate:r26];
                    r0 = [r26 rewardedVideoAdManagers];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setObject:r27 forKeyedSubscript:r19];
                    [r0 release];
            }
            [r27 setMediationSettings:r24];
            sub_1004aed94(0x1);
            r0 = [MPAdTargeting targetingWithCreativeSafeSize:r24];
            r0 = [r0 retain];
            r28 = r0;
            [r0 setKeywords:var_58];
            [r28 setLocation:r22];
            [r28 setLocalExtras:r25];
            [r28 setUserDataKeywords:r21];
            r1 = @selector(loadRewardedVideoAdWithCustomerId:targeting:);
            r0 = r27;
    }
    else {
            r27 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffa24 userInfo:0x0] retain];
            r0 = [r26 delegateTable];
            r0 = [r0 retain];
            r28 = [[r0 objectForKey:r19] retain];
            [r0 release];
            r1 = @selector(rewardedVideoAdDidFailToLoadForAdUnitID:error:);
            r0 = r28;
    }
    objc_msgSend(r0, r1);
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    [r19 release];
    return;
}

+(void *)selectedRewardForAdUnitID:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 rewardedVideoAdManagers];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r20 = [[r22 selectedReward] retain];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)presentRewardedVideoAdForAdUnitID:(void *)arg2 fromViewController:(void *)arg3 withReward:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    [MPRewardedVideo presentRewardedVideoAdForAdUnitID:r21 fromViewController:r20 withReward:arg4 customData:0x0];
    [r20 release];
    [r21 release];
    return;
}

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8438 != -0x1) {
            dispatch_once(0x1011d8438, &var_28);
    }
    r0 = *0x1011d8430;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)presentRewardedVideoAdForAdUnitID:(void *)arg2 fromViewController:(void *)arg3 withReward:(void *)arg4 customData:(void *)arg5 {
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
    r25 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    var_58 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [r25 class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 rewardedVideoAdManagers];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r27 release];
    if (r24 == 0x0) goto loc_1004e4138;

loc_1004e4024:
    if (r20 == 0x0) goto loc_1004e41d0;

loc_1004e4028:
    r0 = [r20 view];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 window];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 isKeyWindow];
    [r0 release];
    [r21 release];
    if ((r28 & 0x1) == 0x0) {
            r28 = [[NSString stringWithFormat:@"Attempting to present a rewarded video ad in non-key window. The ad may not render properly."] retain];
            r27 = [[MPLogEvent eventWithMessage:r28 level:0x1e] retain];
            [MPLogging logEvent:r27 source:0x0 fromClass:[r25 class]];
            [r27 release];
            [r28 release];
    }
    r21 = var_58;
    [r24 presentRewardedVideoAdFromViewController:r20 withReward:r21 customData:r22];
    goto loc_1004e4268;

loc_1004e4268:
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1004e41d0:
    r28 = [[NSString stringWithFormat:@"The rewarded video could not be shown: a nil view controller was passed to -presentRewardedVideoAdForAdUnitID:fromViewController:."] retain];
    r27 = [[MPLogEvent eventWithMessage:r28 level:0x1e] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r25 class]];
    [r27 release];
    r0 = r28;
    goto loc_1004e4260;

loc_1004e4260:
    [r0 release];
    r21 = var_58;
    goto loc_1004e4268;

loc_1004e4138:
    r21 = [[NSString stringWithFormat:@"The rewarded video could not be shown: no ads have been loaded for adUnitID: %@"] retain];
    r28 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
    [MPLogging logEvent:r28 source:0x0 fromClass:[r25 class]];
    [r28 release];
    r0 = r21;
    goto loc_1004e4260;
}

-(void)rewardedVideoDidLoadForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdDidLoadForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdDidLoadForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidFailToLoadForAdManager:(void *)arg2 error:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[self delegateTable] retain];
    r24 = [[r19 adUnitID] retain];
    r0 = [r23 objectForKey:r24];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r22 respondsToSelector:@selector(rewardedVideoAdDidFailToLoadForAdUnitID:error:), r3] != 0x0) {
            r21 = [[r19 adUnitID] retain];
            [r22 rewardedVideoAdDidFailToLoadForAdUnitID:r21 error:r20];
            [r21 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidExpireForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdDidExpireForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdDidExpireForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidFailToPlayForAdManager:(void *)arg2 error:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[self delegateTable] retain];
    r24 = [[r19 adUnitID] retain];
    r0 = [r23 objectForKey:r24];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r22 respondsToSelector:@selector(rewardedVideoAdDidFailToPlayForAdUnitID:error:), r3] != 0x0) {
            r21 = [[r19 adUnitID] retain];
            [r22 rewardedVideoAdDidFailToPlayForAdUnitID:r21 error:r20];
            [r21 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidAppearForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdDidAppearForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdDidAppearForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoWillAppearForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdWillAppearForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdWillAppearForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoWillDisappearForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdWillDisappearForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdWillDisappearForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidReceiveTapEventForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdDidReceiveTapEventForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdDidReceiveTapEventForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdManager:(void *)arg2 didReceiveImpressionEventWithImpressionData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [[r19 adUnitID] retain];
    r3 = r24;
    [MoPub sendImpressionNotificationFromAd:0x0 adUnitID:r3 impressionData:r20];
    [r24 release];
    r23 = [[self delegateTable] retain];
    r24 = [[r19 adUnitID] retain];
    r0 = [r23 objectForKey:r24];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r22 respondsToSelector:@selector(didTrackImpressionWithAdUnitID:impressionData:), r3] != 0x0) {
            r21 = [[r19 adUnitID] retain];
            [r22 didTrackImpressionWithAdUnitID:r21 impressionData:r20];
            [r21 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoWillLeaveApplicationForAdManager:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [[self delegateTable] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r22 release];
    if ([r21 respondsToSelector:@selector(rewardedVideoAdWillLeaveApplicationForAdUnitID:)] != 0x0) {
            r20 = [[r19 adUnitID] retain];
            [r21 rewardedVideoAdWillLeaveApplicationForAdUnitID:r20];
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidDisappearForAdManager:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r19 = [arg2 retain];
    r23 = self;
    r22 = [[self delegateTable] retain];
    r20 = [[r19 adUnitID] retain];
    r0 = [r22 objectForKey:r20];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r20 release];
    [r22 release];
    if ([r24 respondsToSelector:@selector(rewardedVideoAdDidDisappearForAdUnitID:)] != 0x0) {
            r0 = [r19 adUnitID];
            r29 = r29;
            r21 = [r0 retain];
            [r24 rewardedVideoAdDidDisappearForAdUnitID:r21];
            [r21 release];
    }
    var_148 = r24;
    r20 = r19;
    var_130 = [r19 customEventClass];
    var_110 = q0;
    r0 = [r23 rewardedVideoAdManagers];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r19 = r0;
    var_140 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r27 = r0;
            r25 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            r26 = *(var_118 + r22 * 0x8);
                            r0 = [r23 rewardedVideoAdManagers];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 objectForKeyedSubscript:r26];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r21 release];
                            if (r26 != r20 && [r26 customEventClass] == var_130) {
                                    [r26 handleAdPlayedForCustomEventNetwork];
                            }
                            [r26 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r27);
                    r0 = objc_msgSend(r19, var_140);
                    r27 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    [var_148 release];
    [r20 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedVideoShouldRewardUserForAdManager:(void *)arg2 reward:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[self delegateTable] retain];
    r24 = [[r19 adUnitID] retain];
    r0 = [r23 objectForKey:r24];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if ([r22 respondsToSelector:@selector(rewardedVideoAdShouldRewardForAdUnitID:reward:), r3] != 0x0) {
            r21 = [[r19 adUnitID] retain];
            [r22 rewardedVideoAdShouldRewardForAdUnitID:r21 reward:r20];
            [r21 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startRewardedVideoConnectionWithUrl:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [objc_alloc() initWithUrl:r21 delegate:self];
    [r21 release];
    r0 = [self rewardedVideoConnections];
    r0 = [r0 retain];
    [r0 addObject:r20];
    [r0 release];
    [r20 sendRewardedVideoCompletionRequest];
    [r20 release];
    return;
}

-(void *)rewardedVideoAdManagers {
    r0 = *(self + 0x8);
    return r0;
}

-(void)rewardedVideoConnectionCompleted:(void *)arg2 url:(void *)arg3 {
    r20 = [arg2 retain];
    r0 = [self rewardedVideoConnections];
    r0 = [r0 retain];
    [r0 removeObject:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)setRewardedVideoAdManagers:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)rewardedVideoConnections {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setRewardedVideoConnections:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)delegateTable {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setDelegateTable:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end