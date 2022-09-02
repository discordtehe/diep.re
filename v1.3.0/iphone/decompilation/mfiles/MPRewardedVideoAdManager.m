@implementation MPRewardedVideoAdManager

-(void *)initWithAdUnitID:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r21 + 0x18);
            *(r21 + 0x18) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = [r0 initWithDelegate:r21];
            r8 = *(r21 + 0x40);
            *(r21 + 0x40) = r0;
            [r8 release];
            objc_storeWeak(r21 + 0x10, r20);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [*(self + 0x40) cancel];
    [[&var_20 super] dealloc];
    return;
}

-(void *)availableRewards {
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = [[r0 availableRewards] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)customEventClass {
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = [[r0 customEventClass] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)selectedReward {
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = [[r0 selectedReward] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)hasAdAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self ready] != 0x0 && ([r19 playedAd] & 0x1) == 0x0) {
            r0 = [r19 adapter];
            r0 = [r0 retain];
            r20 = [r0 hasAdAvailable];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)handleAdPlayedForCustomEventNetwork {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self ready] != 0x0) {
            r0 = [r19 adapter];
            r0 = [r0 retain];
            [r0 handleAdPlayedForCustomEventNetwork];
            [r0 release];
    }
    return;
}

-(void)loadRewardedVideoAdWithCustomerId:(void *)arg2 targeting:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [[MPLogEvent adLoadAttempt] retain];
    r0 = [r21 adUnitID];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [MPLogging logEvent:r24 source:r25 fromClass:[r21 class]];
    [r25 release];
    [r24 release];
    if ([r21 ready] != 0x0 && ([r21 playedAd] & 0x1) == 0x0) {
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r22 = r0;
            [r0 rewardedVideoDidLoadForAdManager:r21];
    }
    else {
            [r21 setCustomerId:r19];
            [r21 setTargeting:r20];
            r22 = [[r21 adUnitID] retain];
            r23 = [[MPAdServerURLBuilder URLWithAdUnitID:r22 targeting:r20] retain];
            [r21 loadAdWithURL:r23];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadAdWithURL:(void *)arg2 {
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
    [r20 setPlayedAd:0x0];
    if ([r20 loading] != 0x0) {
            r21 = [[NSError adAlreadyLoading] retain];
            r23 = [[MPLogEvent error:r21 message:0x0] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
    }
    else {
            [r20 setLoading:0x1];
            r0 = [r20 communicator];
            r0 = [r0 retain];
            r21 = r0;
            [r0 loadURL:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)communicatorDidFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    [self setReady:0x0];
    [self setLoading:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadForAdManager:self error:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)presentRewardedVideoAdFromViewController:(void *)arg2 withReward:(void *)arg3 customData:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = [[MPLogEvent adShowAttempt] retain];
    r0 = [r22 adUnitID];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [MPLogging logEvent:r24 source:r25 fromClass:[r22 class]];
    [r25 release];
    [r24 release];
    if (([r22 ready] & 0x1) == 0x0) goto loc_10049d8dc;

loc_10049d87c:
    if ([r22 playedAd] == 0x0) goto loc_10049da24;

loc_10049d890:
    r23 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffa88 userInfo:0x0] retain];
    r0 = [r22 delegate];
    goto loc_10049d9ac;

loc_10049d9ac:
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForAdManager:r22 error:r23];
    [r0 release];
    r0 = r23;
    goto loc_10049d9d4;

loc_10049d9d4:
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_10049da24:
    r0 = [r22 availableRewards];
    r29 = r29;
    r24 = [r0 retain];
    if (r20 == 0x0) goto loc_10049da9c;

loc_10049da48:
    r23 = [r24 containsObject:r2];
    [r24 release];
    if ((r23 & 0x1) == 0x0) goto loc_10049db70;

loc_10049da6c:
    r0 = [r22 configuration];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 setSelectedReward:r20];
    goto loc_10049db30;

loc_10049db30:
    [r23 release];
    r0 = [r22 adapter];
    r0 = [r0 retain];
    [r0 presentRewardedVideoFromViewController:r19 customData:r21];
    r0 = r0;
    goto loc_10049d9d4;

loc_10049db70:
    r23 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffff9c0 userInfo:0x0] retain];
    r0 = [r22 delegate];
    goto loc_10049d9ac;

loc_10049da9c:
    r25 = [r24 count];
    [r24 release];
    if (r25 != 0x1) goto loc_10049dbbc;

loc_10049dac0:
    r0 = [r22 availableRewards];
    r0 = [r0 retain];
    r23 = [[r0 objectAtIndexedSubscript:0x0] retain];
    [r0 release];
    r0 = [r22 configuration];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setSelectedReward:r23];
    [r0 release];
    goto loc_10049db30;

loc_10049dbbc:
    r23 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffff9bf userInfo:0x0] retain];
    r0 = [r22 delegate];
    goto loc_10049d9ac;

loc_10049d8dc:
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r23 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffa87 userInfo:r25] retain];
    [r25 release];
    [[r23 localizedDescription] retain];
    NSLog(@"%@", @selector(localizedDescription));
    [r24 release];
    r0 = [r22 delegate];
    goto loc_10049d9ac;
}

-(void)communicatorDidReceiveAdConfigurations:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 mutableCopy];
    [r19 setRemainingConfigurations:r20];
    [r20 release];
    r0 = [r19 remainingConfigurations];
    r0 = [r0 retain];
    r22 = [[r0 removeFirst] retain];
    [r19 setConfiguration:r22];
    [r22 release];
    [r0 release];
    r0 = [r19 remainingConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            [r20 release];
            r20 = [[r19 configuration] retain];
            [r19 fetchAdWithConfiguration:r20];
    }
    else {
            r0 = [r19 configuration];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r20 release];
            if (r0 != 0x0) {
                    r20 = [[r19 configuration] retain];
                    [r19 fetchAdWithConfiguration:r20];
            }
            else {
                    r24 = [[r19 adUnitID] retain];
                    r22 = [[NSString stringWithFormat:*0x100e7f420] retain];
                    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
                    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
                    [r21 release];
                    [r22 release];
                    [r24 release];
                    [r19 setLoading:0x0];
                    r20 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0] retain];
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 rewardedVideoDidFailToLoadForAdManager:r19 error:r20];
                    [r0 release];
            }
    }
    [r20 release];
    return;
}

-(unsigned long long)adTypeForAdServerCommunicator:(void *)arg2 {
    return 0x1;
}

-(void *)adUnitIDForAdServerCommunicator:(void *)arg2 {
    r0 = [self adUnitID];
    return r0;
}

-(void)fetchAdWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = [arg2 retain];
    r26 = r0;
    r27 = [[r0 networkType] retain];
    r28 = [[NSString stringWithFormat:@"Rewarded video ad is fetching ad network type: %@"] retain];
    r0 = [MPLogEvent eventWithMessage:r28 level:0x1e];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r21 = self;
    [MPLogging logEvent:r19 source:0x0 fromClass:[self class]];
    [r19 release];
    [r28 release];
    [r27 release];
    if ([r26 adUnitWarmingUp] == 0x0) goto loc_10049dfec;

loc_10049dec4:
    r19 = r21;
    [[r21 adUnitID] retain];
    r26 = r26;
    [[MPLogEvent eventWithMessage:[[NSString stringWithFormat:*0x100e7f428] retain] level:0x1e] retain];
    [r21 class];
    [MPLogging logEvent:r2 source:r3 fromClass:r4];
    [r23 release];
    [r24 release];
    [r28 release];
    [r21 setLoading:0x0];
    r21 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffc17 userInfo:0x0] retain];
    r0 = [r19 delegate];
    goto loc_10049e158;

loc_10049e158:
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(rewardedVideoDidFailToLoadForAdManager:error:);
    goto loc_10049e170;

loc_10049e170:
    objc_msgSend(r0, r1);
    goto loc_10049e174;

loc_10049e174:
    [r22 release];
    [r21 release];
    [r26 release];
    return;

loc_10049dfec:
    r28 = r21;
    r0 = [r26 networkType];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    if (r25 == 0x0) goto loc_10049e1a8;

loc_10049e040:
    r19 = r28;
    [[r28 adUnitID] retain];
    r26 = r26;
    [[NSString stringWithFormat:*0x100e7f420] retain];
    [[MPLogEvent eventWithMessage:r2 level:r3] retain];
    [r19 class];
    [MPLogging logEvent:r2 source:r3 fromClass:r4];
    [r23 release];
    [r24 release];
    [r28 release];
    [r19 setLoading:0x0];
    r21 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0] retain];
    r0 = [r19 delegate];
    goto loc_10049e158;

loc_10049e1a8:
    r20 = r28;
    r0 = [r28 communicator];
    r0 = [r0 retain];
    [r0 sendBeforeLoadUrlWithConfiguration:r26];
    [r0 release];
    r0 = [NSDate now];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r28 setAdapterLoadStartTimestamp:r26];
    [r0 release];
    r0 = objc_alloc();
    r0 = [r0 initWithDelegate:r28];
    r21 = r0;
    if (r0 == 0x0) goto loc_10049e2b8;

loc_10049e248:
    [r20 setAdapter:r21];
    r22 = [[r20 adapter] retain];
    r19 = [[r20 targeting] retain];
    [r22 getAdWithConfiguration:r26 targeting:r19];
    [r19 release];
    goto loc_10049e174;

loc_10049e2b8:
    r22 = [[NSError errorWithDomain:*0x100e7edc8 code:0xffffffffffffffff userInfo:0x0] retain];
    r1 = @selector(rewardedVideoDidFailToLoadForAdapter:error:);
    r0 = r20;
    goto loc_10049e170;
}

-(void)rewardedVideoDidExpireForAdapter:(void *)arg2 {
    [self setReady:0x0];
    [MPConstants adsExpirationInterval];
    r21 = [[MPLogEvent adExpiredWithTimeInterval:0x0] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidExpireForAdManager:self];
    [r0 release];
    return;
}

-(void *)instanceMediationSettingsForClass:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = arg2;
    var_110 = q0;
    r0 = [self mediationSettings];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10049e74c;

loc_10049e6d4:
    r22 = r0;
    r25 = *var_110;
    goto loc_10049e6e4;

loc_10049e6e4:
    r27 = 0x0;
    goto loc_10049e6ec;

loc_10049e6ec:
    if (*var_110 != r25) {
            objc_enumerationMutation(r19);
    }
    r23 = @selector(isKindOfClass:);
    r24 = *(var_118 + r27 * 0x8);
    if ((objc_msgSend(r24, r23) & 0x1) != 0x0) goto loc_10049e754;

loc_10049e720:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_10049e6ec;

loc_10049e72c:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_10049e6e4;

loc_10049e74c:
    r20 = 0x0;
    goto loc_10049e760;

loc_10049e760:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10049e754:
    r20 = [r24 retain];
    goto loc_10049e760;
}

-(void)rewardedVideoDidLoadForAdapter:(void *)arg2 {
    [self setRemainingConfigurations:0x0];
    [self setReady:0x1];
    [self setLoading:0x0];
    r0 = [NSDate now];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [self adapterLoadStartTimestamp];
    [r0 release];
    r20 = [[self communicator] retain];
    r21 = [[self configuration] retain];
    [r20 sendAfterLoadUrlWithConfiguration:r21 adapterLoadDuration:0x1 adapterLoadResult:r4];
    [r21 release];
    [r20 release];
    r21 = [[MPLogEvent adDidLoad] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidLoadForAdManager:self];
    [r0 release];
    return;
}

-(void)rewardedVideoDidFailToPlayForAdapter:(void *)arg2 error:(void *)arg3 {
    r20 = [arg3 retain];
    [self setReady:0x0];
    [self setPlayedAd:0x0];
    r22 = [[MPLogEvent adShowFailedWithError:r20] retain];
    r23 = [[self adUnitID] retain];
    [MPLogging logEvent:r22 source:r23 fromClass:[self class]];
    [r23 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForAdManager:self error:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)rewardedVideoDidAppearForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adDidAppear] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForAdManager:self];
    [r0 release];
    return;
}

-(void)rewardedVideoWillDisappearForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillDisappear] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForAdManager:self];
    [r0 release];
    return;
}

-(void)rewardedVideoWillAppearForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillAppear] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForAdManager:self];
    [r0 release];
    return;
}

-(void)rewardedVideoDidReceiveImpressionEventForAdapter:(void *)arg2 {
    r20 = [[self delegate] retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r22 = [[r0 impressionData] retain];
    [r20 rewardedVideoAdManager:self didReceiveImpressionEventWithImpressionData:r22];
    [r22 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedVideoDidFailToLoadForAdapter:(void *)arg2 error:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x80;
    var_50 = d9;
    stack[-88] = d8;
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
    if (arg2 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r23 = 0x1;
            }
    }
    r21 = @selector(now);
    r22 = [r3 retain];
    r0 = objc_msgSend(@class(NSDate), r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r19 adapterLoadStartTimestamp];
    [r0 release];
    r20 = [r22 isAdRequestTimedOutError];
    [r22 release];
    r8 = r23 << 0x1;
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = r8;
            }
            else {
                    r21 = 0x3;
            }
    }
    r22 = [[r19 communicator] retain];
    r23 = [[r19 configuration] retain];
    [r22 sendAfterLoadUrlWithConfiguration:r23 adapterLoadDuration:r21 adapterLoadResult:r4];
    [r23 release];
    [r22 release];
    r0 = [r19 remainingConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    r0 = r19;
    if (r23 == 0x0) goto loc_10049eb5c;

loc_10049eadc:
    r0 = [r0 remainingConfigurations];
    r0 = [r0 retain];
    r22 = [[r0 removeFirst] retain];
    [r19 setConfiguration:r22];
    [r22 release];
    [r0 release];
    r20 = [[r19 configuration] retain];
    [r19 fetchAdWithConfiguration:r20];
    goto loc_10049ec0c;

loc_10049ec0c:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            [r20 release];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_10049eb5c:
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 nextURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r19 setReady:0x0];
    [r19 setLoading:0x0];
    if (r0 == 0x0) goto loc_10049ec48;

loc_10049ebc4:
    r0 = [r19 configuration];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 nextURL] retain];
    [r19 loadAdWithURL:r21];
    [r21 release];
    goto loc_10049ec0c;

loc_10049ec48:
    var_58 = **___stack_chk_guard;
    r23 = [[r19 adUnitID] retain];
    r24 = [[NSString stringWithFormat:*0x100e7f420] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
    r21 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:r25] retain];
    [r25 release];
    [r24 release];
    [r23 release];
    r23 = [[MPLogEvent adFailedToLoadWithError:r21] retain];
    r20 = [[r19 adUnitID] retain];
    [MPLogging logEvent:r23 source:r20 fromClass:[r19 class]];
    [r20 release];
    [r23 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadForAdManager:r19 error:r21];
    [r0 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedVideoDidDisappearForAdapter:(void *)arg2 {
    [self setReady:0x0];
    [self setPlayedAd:0x1];
    r21 = [[MPLogEvent adDidDisappear] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForAdManager:self];
    [r0 release];
    return;
}

-(void)rewardedVideoDidReceiveTapEventForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillPresentModal] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForAdManager:self];
    [r0 release];
    return;
}

-(void)rewardedVideoWillLeaveApplicationForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillLeaveApplication] retain];
    r22 = [[self adUnitID] retain];
    [MPLogging logEvent:r21 source:r22 fromClass:[self class]];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillLeaveApplicationForAdManager:self];
    [r0 release];
    return;
}

-(void *)rewardedVideoCustomerId {
    r0 = [self customerId];
    return r0;
}

-(void *)rewardedVideoAdUnitId {
    r0 = [self adUnitID];
    return r0;
}

-(void)rewardedVideoShouldRewardUserForAdapter:(void *)arg2 reward:(void *)arg3 {
    r20 = [arg3 retain];
    r22 = [[MPLogEvent adShouldRewardUserWithReward:r20] retain];
    r23 = [[self adUnitID] retain];
    [MPLogging logEvent:r22 source:r23 fromClass:[self class]];
    [r23 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoShouldRewardUserForAdManager:self reward:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adUnitID {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)mediationSettings {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)customerId {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setMediationSettings:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setCustomerId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)targeting {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)communicator {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setTargeting:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)adapter {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setAdapter:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)configuration {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setCommunicator:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void)setRemainingConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)remainingConfigurations {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setPlayedAd:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)loading {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(bool)playedAd {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setLoading:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)setReady:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(bool)ready {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(double)adapterLoadStartTimestamp {
    r0 = self;
    return r0;
}

-(void)setAdapterLoadStartTimestamp:(double)arg2 {
    *(self + 0x58) = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end