@implementation ISRewardedVideoManager

-(void)dealloc {
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    [r0 removeDelegate:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithProvidersPool:(void *)arg2 settings:(void *)arg3 isDemandOnlyMode:(bool)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = [self getRewadedVideoSMASHesFromConfigArray:r19];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r0 = [[&var_40 super] initWithProvidersPool:r24 settings:r20 isDemandOnlyMode:arg4];
    r21 = r0;
    [r24 release];
    if (r21 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_demandOnlyHelper));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
            objc_storeStrong((int64_t *)&r21->_rvSettings, r22);
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            [r0 addDelegate:r21];
            [r0 release];
            r21->_loadIntervalSecs = [r20 loadRVInterval];
            r0 = [r20 placements];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r24 = [ISPlacementsRepository alloc];
                    r0 = [r20 placements];
                    r29 = r29;
                    r23 = [r0 retain];
                    r24 = [r24 initWithArray:r23];
                    [r21 setPlacementsRepository:r24];
                    [r24 release];
                    [r23 release];
            }
            else {
                    [r21 setPlacementsRepository:0x0];
            }
            [r22 release];
            r22 = [r20 maxNumOfAdaptersToLoadOnStart];
            r0 = [r19 count];
            if (r22 < r0) {
                    if (!CPU_FLAGS & B) {
                            r2 = r0;
                    }
                    else {
                            r2 = r22;
                    }
            }
            [r21 setMaxAdaptersToLoad:r2];
            [r21 setCanShowPremiumAdapter:0x1];
            r0 = [r21 placementsRepository];
            r0 = [r0 retain];
            r23 = [[r0 defaultPlacement] retain];
            [r21 setCurrentPlacement:r23];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[self placementForName:r20] retain];
    [r20 release];
    [self->_demandOnlyHelper showRewardedVideoWithViewController:r22 placement:r23 instanceId:r19];
    [r19 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 forSMASH:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r23 = self;
    r0 = [arg3 retain];
    r19 = r0;
    if (r24 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"false";
            }
            else {
                    r0 = @"true";
            }
    }
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r20 = @"NO";
            }
            else {
                    r20 = @"YES";
            }
    }
    r22 = [r0 retain];
    r21 = [[r23 createBaseDataForEventFromSMASH:r19] retain];
    var_A8 = r22;
    [r23 addObject:r22 forKey:@"status" toDictionary:r21];
    r22 = [ISEventData alloc];
    r25 = [@(0x7) retain];
    r22 = [r22 initWithEventId:r25 andAdditionData:r21];
    [r25 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r28 = [[r0 providerName] retain];
    r25 = [[NSString stringWithFormat:@"%@: rewardedVideoHasChangedAvailability: %@"] retain];
    [r28 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 log:r25 level:0x1 tag:0x3];
    [r0 release];
    if ([r23 isBackfill:r19] == 0x0 || [r23 areAllAdaptersInactive] == 0x0) goto loc_1006b046c;

loc_1006b03b0:
    r0 = [NSBlockOperation blockOperationWithBlock:&var_A0];
    r23 = [r0 retain];
    r0 = [NSOperationQueue mainQueue];
    r0 = [r0 retain];
    [r0 addOperation:r23];
    [r0 release];
    [r23 release];
    _Block_object_dispose(&var_70, 0x8);
    goto loc_1006b054c;

loc_1006b054c:
    [r25 release];
    [r22 release];
    [r21 release];
    [var_A8 release];
    [r19 release];
    return;

loc_1006b046c:
    if ([r23 smashesCountInState:0x3] < [r23 maxAdaptersToLoad]) {
            [r23 loadNextSMASH];
    }
    if ([r23 isPremium:r19] == 0x0 || ([r23 canShowPremiumAdapter] & 0x1) != 0x0) goto loc_1006b04d8;

loc_1006b04ec:
    [r23 disablePremiumForCurrentSession];
    goto loc_1006b04fc;

loc_1006b04fc:
    if ([r23 shouldUpdateAvailability:r24] == 0x0) goto loc_1006b054c;

loc_1006b0514:
    [r23 updateStateFirstAvailability];
    [r23 sendDelegateRVAdAvailabilityChanged:r24];
    r1 = @selector(sendEventRVAdAvailabilityChanged:);
    goto loc_1006b0544;

loc_1006b0544:
    objc_msgSend(r23, r1);
    goto loc_1006b054c;

loc_1006b04d8:
    if ((r24 & 0x1) != 0x0) goto loc_1006b04fc;

loc_1006b04dc:
    r1 = @selector(handleMediationAvailability:);
    goto loc_1006b0544;
}

-(void)rewardedVideoDidOpenForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:RVAdOpened"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r21 = [[self createBaseDataForEventFromSMASH:r23] retain];
    [r23 release];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r24 = [[r0 name] retain];
    [self addObject:r24 forKey:@"placement" toDictionary:r21];
    [r24 release];
    [r0 release];
    r22 = [ISEventData alloc];
    r23 = [@(0x5) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidOpen];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)initRVWithUserId:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x200;
    r19 = self;
    [self setDidInitSuccesfully:0x1];
    if ([r19 isDemandOnlyMode] != 0x0) {
            r0 = [ISRewardedVideoDemandOnlyHelper alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_demandOnlyHelper));
            r8 = *(r19 + r9);
            var_230 = r9;
            *(r19 + r9) = r0;
            [r8 release];
            var_198 = q0;
            r0 = [r19 smashList];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1F8 = r0;
            var_238 = r1;
            r22 = objc_msgSend(r0, r1);
            if (r22 != 0x0) {
                    var_1F0 = *var_198;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_198 != var_1F0) {
                                            objc_enumerationMutation(var_1F8);
                                    }
                                    r21 = *(var_1A0 + r28 * 0x8);
                                    r0 = [r21 adapterConfig];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 reflectionName];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 isEqualToString:@"SupersonicAds"];
                                    [r0 release];
                                    [r24 release];
                                    if (r23 != 0x0) {
                                            r20 = *(r19 + var_230);
                                            r23 = [[r21 adapterConfig] retain];
                                            r0 = [r19 loadAdapter:r23];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [r20 addSmash:r21 adapter:r24];
                                            [r24 release];
                                            r0 = r23;
                                    }
                                    else {
                                            r0 = [r21 adapterConfig];
                                            r0 = [r0 retain];
                                            r23 = [[r0 providerName] retain];
                                            [[NSString stringWithFormat:@"Rewarded Video Manager : %@ has been removed from waterfall- demand only mode"] retain];
                                            [r23 release];
                                            [r0 release];
                                            r0 = [ISLoggerManager sharedInstance];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 log:r2 level:r3 tag:r4];
                                            [r21 release];
                                            r0 = r20;
                                    }
                                    [r0 release];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = objc_msgSend(var_1F8, var_238);
                    } while (r22 != 0x0);
            }
            r0 = var_1F8;
    }
    else {
            r20 = [ISDailyCappingManager alloc];
            r0 = [r19 smashList];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [r0 copy];
            r0 = [r20 initWithAdUnit:@"rewarded_video" smashes:r22];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_dailyCappingManager));
            r8 = *(r19 + r26);
            *(r19 + r26) = r0;
            [r8 release];
            [r22 release];
            [r21 release];
            [*(r19 + r26) setDelegate:r19];
            var_1D8 = q0;
            var_1F0 = r19;
            r0 = [r19 smashList];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_208 = r0;
            var_228 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r8 = 0x1;
                    var_200 = *var_1D8;
                    var_1F8 = 0x0;
                    r20 = var_1F0;
                    do {
                            r27 = 0x0;
                            r19 = r8;
                            do {
                                    r21 = r19 + r27;
                                    if (*var_1D8 != var_200) {
                                            objc_enumerationMutation(var_208);
                                    }
                                    r22 = *(var_1E0 + r27 * 0x8);
                                    [r22 setProviderPriority:r21];
                                    if ([*(r20 + r26) shouldSendCapReleasedEvent:r22] != 0x0) {
                                            r0 = [NSDictionary dictionaryWithObjects:&var_160 forKeys:&var_168 count:0x1];
                                            r29 = r29;
                                            r21 = [r0 retain];
                                            [r20 sendProviderEvent:r22 eventId:0x96 data:r21];
                                            [r21 release];
                                    }
                                    if ([*(r20 + r26) isCapped:r2] != 0x0) {
                                            [r22 setMediationState:r2];
                                            var_1F8 = var_1F8 + 0x1;
                                    }
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r23 = objc_msgSend(var_208, var_228);
                            r8 = r19 + r27;
                    } while (r23 != 0x0);
            }
            else {
                    var_1F8 = 0x0;
            }
            [var_208 release];
            r23 = var_1F0;
            r0 = [r23 smashList];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 count];
            [r0 release];
            if (var_1F8 == r21) {
                    [r23 updateStateFirstAvailability];
                    [r23 sendDelegateRVAdAvailabilityChanged:0x0];
            }
            [r23 maxAdaptersToLoad];
            r21 = [[NSString stringWithFormat:@"Rewarded Video Manager : will always try to hold %tu elements "] retain];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r21 level:0x0 tag:0x6];
            [r0 release];
            if ([r23 maxAdaptersToLoad] != 0x0) {
                    r19 = 0x0;
                    do {
                            [r23 loadNextSMASH];
                            r19 = r19 + 0x1;
                    } while ([r23 maxAdaptersToLoad] > r19);
            }
            r0 = r21;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedVideoDidStartForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:RVAdStarted"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r21 = [[self createBaseDataForEventFromSMASH:r23] retain];
    [r23 release];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r24 = [[r0 name] retain];
    [self addObject:r24 forKey:@"placement" toDictionary:r21];
    [r24 release];
    [r0 release];
    r22 = [ISEventData alloc];
    r23 = [@(0x8) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidStart];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidEndForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:RVAdEnded"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r21 = [[self createBaseDataForEventFromSMASH:r23] retain];
    [r23 release];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r24 = [[r0 name] retain];
    [self addObject:r24 forKey:@"placement" toDictionary:r21];
    [r24 release];
    [r0 release];
    r22 = [ISEventData alloc];
    r23 = [@(0x9) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidEnd];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidCloseForSMASH:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@:RVAdClosed"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r22 = [[self createBaseDataForEventFromSMASH:r20] retain];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r25 = [[r0 name] retain];
    [self addObject:r25 forKey:@"placement" toDictionary:r22];
    [r25 release];
    [r0 release];
    r24 = [ISEventData alloc];
    r25 = [@(0x6) retain];
    r24 = [r24 initWithEventId:r25 andAdditionData:r22];
    [r25 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r24];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidClose];
    [r0 release];
    [self sendAvailabilityForStatistics];
    [self fetchVideoForInactiveSMASHesDiffrentFromSMASH:r20];
    [r20 release];
    [r24 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 forSMASH:(void *)arg3 {
    var_60 = [arg2 retain];
    var_58 = [arg3 retain];
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    var_68 = [[r0 providerName] retain];
    [r0 release];
    r24 = [[arg2 localizedDescription] retain];
    [arg2 code];
    r21 = [[NSString stringWithFormat:@"%@:RVAdFailedWithError:%@, code:%d"] retain];
    var_70 = r21;
    [r24 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    r25 = [[NSMutableDictionary alloc] init];
    [self addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r25];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r22 = [[r0 name] retain];
    [self addObject:r22 forKey:@"placement" toDictionary:r25];
    [r22 release];
    [r0 release];
    [self addObject:@"false" forKey:@"status" toDictionary:r25];
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithInteger:[arg2 code]] retain];
    [self addObject:r21 forKey:@"errorCode" toDictionary:r25];
    [r21 release];
    r20 = [ISEventData alloc];
    r21 = [@(0x11) retain];
    r20 = [r20 initWithEventId:r21 andAdditionData:r25];
    [r21 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r20];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToShowWithError:var_60];
    [var_60 release];
    [r0 release];
    [self fetchVideoForInactiveSMASHesDiffrentFromSMASH:var_58];
    [var_58 release];
    [r20 release];
    [r25 release];
    [var_70 release];
    [var_68 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r21 = self;
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 currentReachabilityStatus];
    [r0 release];
    [r19 release];
    if (r22 == 0x0) goto loc_1006af988;

loc_1006af81c:
    r0 = [r21 placementsRepository];
    r0 = [r0 retain];
    r20 = [[r0 placementForName:r24] retain];
    [r21 setCurrentPlacement:r20];
    [r20 release];
    [r0 release];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r20 = [[r0 name] retain];
    r22 = [r21 rewardedVideoPlacementStatus:r20];
    [r20 release];
    [r0 release];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 name] retain];
    r0 = [r21 cappingMessageForPlacement:r20 cappingStatus:r22];
    r29 = r29;
    r22 = [r0 retain];
    [r20 release];
    [r19 release];
    if (r22 == 0x0) goto loc_1006afa34;

loc_1006af940:
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 name] retain];
    [r21 handleCappingMessageForPlacement:r20 message:r22];
    goto loc_1006b006c;

loc_1006b006c:
    [r20 release];
    [r19 release];
    r0 = r22;
    goto loc_1006b0080;

loc_1006b0080:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r24 release];
    [r23 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006afa34:
    var_208 = r22;
    var_200 = r24;
    var_1F8 = r23;
    r23 = [NSMutableDictionary new];
    [r21 addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r23];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r22 = [[r0 name] retain];
    [r21 addObject:r22 forKey:@"placement" toDictionary:r23];
    [r22 release];
    [r0 release];
    r19 = [ISEventData alloc];
    r20 = [@(0x2) retain];
    var_210 = r23;
    r22 = [r19 initWithEventId:r20 andAdditionData:r23];
    [r20 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    var_218 = r22;
    [r0 logEvent:r22];
    [r0 release];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r23 = [[r0 name] retain];
    r20 = [[NSString stringWithFormat:@"showRV with placement name %@"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    var_220 = r20;
    [r0 log:r20 level:0x1 tag:0x0];
    [r0 release];
    var_1E8 = [[NSMutableArray array] retain];
    r28 = r21;
    r0 = [r21 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E0 = r0;
    var_1F0 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_1006afd94;

loc_1006afca4:
    r21 = 0x0;
    goto loc_1006afcd0;

loc_1006afcd0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_1E0);
    }
    r27 = *(0x0 + r21 * 0x8);
    if ([r28 isPremium:r27] == 0x0 || [r28 canShowPremiumAdapter] != 0x0) goto loc_1006afd14;

loc_1006afd68:
    r21 = r21 + 0x1;
    if (r21 < r24) goto loc_1006afcd0;

loc_1006afd74:
    r24 = objc_msgSend(var_1E0, var_1F0);
    if (r24 != 0x0) goto loc_1006afca4;

loc_1006afd94:
    [var_1E0 release];
    r25 = var_1E8;
    if ([r25 count] == 0x0) goto loc_1006afecc;

loc_1006afdb4:
    var_1C8 = q0;
    r0 = [r25 retain];
    r27 = r0;
    r19 = objc_msgSend(r0, var_1F0);
    if (r19 == 0x0) goto loc_1006afebc;

loc_1006afdf0:
    r21 = *var_1C8;
    goto loc_1006afe08;

loc_1006afe08:
    r26 = 0x0;
    goto loc_1006afe1c;

loc_1006afe1c:
    if (*var_1C8 != r21) {
            objc_enumerationMutation(r27);
    }
    r25 = *(var_1D0 + r26 * 0x8);
    if ([r25 isMediationAvailable] == 0x0 || [r25 hasAvailableAds] == 0x0) goto loc_1006afe5c;

loc_1006aff90:
    if (([r28 isPremium:r25] & 0x1) == 0x0) {
            [r28 disablePremiumForCurrentSession];
    }
    r23 = var_1F8;
    [r28 showActiveAdapter:r25 fromViewController:r23];
    [r27 release];
    goto loc_1006affdc;

loc_1006affdc:
    r22 = var_208;
    r24 = var_200;
    r20 = var_218;
    r19 = var_210;
    r21 = var_220;
    r25 = var_1E8;
    goto loc_1006b005c;

loc_1006b005c:
    [r25 release];
    [r21 release];
    goto loc_1006b006c;

loc_1006afe5c:
    [r25 setMediationState:r2];
    objc_msgSend(r28, r24);
    r26 = r26 + 0x1;
    if (r26 < r19) goto loc_1006afe1c;

loc_1006afe8c:
    r19 = objc_msgSend(r27, var_1F0);
    if (r19 != 0x0) goto loc_1006afe08;

loc_1006afebc:
    [r27 release];
    r23 = var_1F8;
    goto loc_1006affdc;

loc_1006afecc:
    if ([r28 isBackfillAvailable] != 0x0) {
            r20 = [[r28 backfill] retain];
            [r28 reportShowCheckAvailibility:r20];
            [r20 release];
            r0 = [r28 backfill];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 hasAvailableAds];
            [r0 release];
            r24 = var_200;
            r23 = var_1F8;
            if (r22 != 0x0) {
                    r19 = [[r28 backfill] retain];
                    [r28 showActiveAdapter:r19 fromViewController:r23];
                    [r19 release];
            }
            else {
                    [r28 loadNextSMASH];
            }
    }
    else {
            r19 = [[ISError createError:0x1fd withMessage:@"No ads to show"] retain];
            [r28 rewardedVideoDidFailToShowWithError:r19 forSMASH:0x0];
            [r19 release];
            r24 = var_200;
            r23 = var_1F8;
    }
    r19 = var_210;
    r22 = var_208;
    r21 = var_220;
    r20 = var_218;
    goto loc_1006b005c;

loc_1006afd14:
    if ([r27 mediationState] != 0x3) goto loc_1006afd44;

loc_1006afd28:
    r22 = @selector(addObject:);
    [r28 reportShowCheckAvailibility:r27];
    r0 = var_1E8;
    r1 = r22;
    goto loc_1006afd60;

loc_1006afd60:
    objc_msgSend(r0, r1);
    goto loc_1006afd68;

loc_1006afd44:
    if ([r27 mediationState] != 0x4) goto loc_1006afd68;

loc_1006afd58:
    r0 = r28;
    r1 = @selector(reportShowCheckAvailibility:);
    goto loc_1006afd60;

loc_1006af988:
    r19 = [[ISError createError:0x208 withMessage:@"Rewarded Video Show Fail - No internet connection"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r19 level:0x3 tag:0x4];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToShowWithError:r19];
    [r0 release];
    r0 = r19;
    goto loc_1006b0080;
}

-(void)didClickRewardedVideoForSMASH:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[ISLoggerManager sharedInstance] retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 providerName] retain];
    r24 = [[NSString stringWithFormat:@"didClickRewardedVideoForSMASH:%@"] retain];
    [r21 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r25 release];
    [r0 release];
    [r21 release];
    r21 = [[self createBaseDataForEventFromSMASH:r22] retain];
    [r22 release];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r24 = [[r0 name] retain];
    [self addObject:r24 forKey:@"placement" toDictionary:r21];
    [r24 release];
    [r0 release];
    r23 = [ISEventData alloc];
    r24 = [@(0x80) retain];
    r23 = [r23 initWithEventId:r24 andAdditionData:r21];
    [r24 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r23];
    [r0 release];
    r20 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r22 = [[r0 placementInfo] retain];
    [r20 didClickRewardedVideo:r22];
    [r22 release];
    [r0 release];
    [r20 release];
    [r23 release];
    [r21 release];
    return;
}

-(void)rewardedVideoDidBecomeVisibileForSMASH:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[ISLoggerManager sharedInstance] retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 providerName] retain];
    r24 = [[NSString stringWithFormat:@"rewardedVideoDidBecomeVisibileForSMASH:%@"] retain];
    [r21 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r25 release];
    [r0 release];
    [r21 release];
    r21 = [[self createBaseDataForEventFromSMASH:r22] retain];
    [r22 release];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r23 = [[r0 name] retain];
    [self addObject:r23 forKey:@"placement" toDictionary:r21];
    [r23 release];
    [r0 release];
    r20 = [ISEventData alloc];
    r22 = [@(0xb) retain];
    r20 = [r20 initWithEventId:r22 andAdditionData:r21];
    [r22 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r20];
    [r0 release];
    [r20 release];
    [r21 release];
    return;
}

-(void *)getRewadedVideoSMASHesFromConfigArray:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r20 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = @selector(addObject:);
                            r26 = *(0x0 + r21 * 0x8);
                            [[ISRewardedVideoSMASH alloc] initWithAdapterConfig:r26];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = objc_msgSend(r20, var_120);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r21 = [[NSArray arrayWithArray:r19] retain];
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)fetchVideoForInactiveSMASHesDiffrentFromSMASH:(void *)arg2 {
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
    var_130 = [arg2 retain];
    r0 = [self smashList];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_140 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            r19 = *0x0;
            do {
                    r20 = 0x0;
                    r22 = @selector(mediationState);
                    do {
                            if (*0x0 != r19) {
                                    objc_enumerationMutation(var_120);
                            }
                            r27 = *(0x0 + r20 * 0x8);
                            if (objc_msgSend(r27, r22) == 0x4) {
                                    r0 = [r27 adapterConfig];
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r21 = [[r0 providerName] retain];
                                    r0 = [var_130 adapterConfig];
                                    r0 = [r0 retain];
                                    r24 = r22;
                                    r22 = r19;
                                    r19 = r0;
                                    r0 = [r0 providerName];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    [r0 release];
                                    r0 = r19;
                                    r19 = r22;
                                    r22 = r24;
                                    [r0 release];
                                    [r21 release];
                                    [r28 release];
                                    if (r21 != r26) {
                                            [r27 fetchVideo];
                                    }
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r23 = objc_msgSend(var_120, var_140);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [var_130 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadNextSMASH {
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
    r20 = self;
    r21 = [@(0x3) retain];
    r22 = [@(0x7) retain];
    r24 = [[NSArray arrayWithObjects:&var_68 count:0x2] retain];
    [r22 release];
    [r21 release];
    [r20 numberOfSMASHesInState:r24];
    r25 = [@(0x0) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_70 count:0x1];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r24 release];
    [r25 release];
    r22 = [r20 numberOfSMASHesInState:r19];
    r0 = [r20 maxAdaptersToLoad];
    if (r22 < 0x1) goto loc_1006b26a8;

loc_1006b23c8:
    r8 = &@selector(bannerDidLoad:);
    asm { sxtw       x8, w21 };
    if (r0 < r8) goto loc_1006b26a8;

loc_1006b23d4:
    r23 = 0x0;
    r27 = 0xffffffffffffffff;
    goto loc_1006b23f4;

loc_1006b23f4:
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 count];
    [r0 release];
    r27 = r27 + 0x1;
    if (r26 < r27) goto loc_1006b25e0;

loc_1006b242c:
    r0 = [r20 initiateNextSMASH];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    r23 = r21;
    if (r21 == 0x0) goto loc_1006b23f4;

loc_1006b2454:
    r0 = [r21 adapterConfig];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 settings];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            [r21 setRvDelegate:r20];
            if ([r21 respondsToSelector:@selector(initRVWithUserId:)] != 0x0) {
                    r0 = [ISConfigurations getConfigurations];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 userId];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r21 initRVWithUserId:r25];
                    [r25 release];
                    [r24 release];
                    if ([r20 isPremium:r21] != 0x0) {
                            [r20 setPremium:r21];
                    }
            }
            r0 = [r21 adapterConfig];
            r0 = [r0 retain];
            r23 = [[r0 providerName] retain];
            r20 = [[NSString stringWithFormat:@"adding rv provider %@"] retain];
            [r23 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
    }
    else {
            r0 = [r21 adapterConfig];
            r0 = [r0 retain];
            r23 = [[r0 providerName] retain];
            r20 = [[NSString stringWithFormat:@"configuration node for %@ does not exist"] retain];
            [r23 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
    }
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x6];
    [r0 release];
    [r20 release];
    r0 = r21;
    goto loc_1006b26a4;

loc_1006b26a4:
    [r0 release];
    goto loc_1006b26a8;

loc_1006b26a8:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006b25e0:
    r0 = r23;
    goto loc_1006b26a4;
}

-(void)showActiveAdapter:(void *)arg2 fromViewController:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r19 = [arg2 retain];
    r25 = [arg3 retain];
    r20 = [[r21 createBaseDataForEventFromSMASH:r19] retain];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r26 = [[r0 name] retain];
    [r21 addObject:r26 forKey:@"placement" toDictionary:r20];
    [r26 release];
    [r0 release];
    r26 = [ISEventData alloc];
    r27 = [[NSNumber alloc] initWithInt:0x2];
    r28 = [r26 initWithEventId:r27 andAdditionData:r20];
    [r27 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r28];
    [r0 release];
    [r19 preShow];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 name];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [r19 showRewardedVideoWithViewController:r25 placement:r27];
    [r25 release];
    [r27 release];
    [r26 release];
    [r21 reportImpressionsAfterShow:r19];
    [r21 reportShowChanceEvents:r19];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_dailyCappingManager));
    [*(r21 + r24) increaseShowCounter:r19];
    if ([*(r21 + r24) isCapped:r19] != 0x0) {
            [r19 setMediationState:0x9];
            r25 = [@(0x6) retain];
            r27 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2] retain];
            [r21 sendProviderEvent:r19 eventId:0x7 data:r27];
            [r27 release];
            [r25 release];
            r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_88 count:0x1];
            r29 = r29;
            r25 = [r0 retain];
            r28 = r28;
            [r21 sendProviderEvent:r19 eventId:0x96 data:r25];
            [r25 release];
            [r21 loadNextSMASH];
            [r21 handleMediationAvailability:0x0];
    }
    if ([r19 mediationState] == 0x6) {
            r26 = [@(0x2) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_98 forKeys:&var_A8 count:0x2];
            r29 = r29;
            r27 = [r0 retain];
            [r21 sendProviderEvent:r19 eventId:0x7 data:r27];
            [r27 release];
            [r26 release];
            [r21 loadNextSMASH];
            [r21 handleMediationAvailability:0x0];
    }
    if (([r21 didCompleteSmartLoaderIteration] & 0x1) == 0x0 && [r19 mediationState] == 0x5) {
            [r21 loadNextSMASH];
    }
    var_58 = **___stack_chk_guard;
    r25 = [[ISPlacementCappingManager sharedManager] retain];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r23 = [[r0 name] retain];
    r21 = [[r21 placementForName:r23] retain];
    [r25 incrementShowCounterRV:r21];
    [r21 release];
    [r23 release];
    [r0 release];
    [r25 release];
    [r28 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)didReceiveRewardForSMASH:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    var_120 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [[r0 providerName] retain];
    r0 = [r25 currentPlacement];
    r0 = [r0 retain];
    r28 = [[r0 placementInfo] retain];
    r19 = [[NSString stringWithFormat:@"%@:didReceiveRewardForPlacement:%@"] retain];
    [r28 release];
    [r0 release];
    [r22 release];
    [r20 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    var_150 = r19;
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r28 = [[ISUtils timeInMilliSeconds] retain];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r22 = r0;
    r21 = [[r0 appKey] retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r26 = r0;
    r23 = [[r0 providerName] retain];
    var_158 = r28;
    r0 = [NSString stringWithFormat:@"%@%@%@"];
    r0 = [r0 retain];
    r27 = [[r0 SHA2String] retain];
    [r0 release];
    [r23 release];
    [r26 release];
    [r21 release];
    [r22 release];
    r26 = [[r25 createBaseDataForEventFromSMASH:var_120] retain];
    [var_120 release];
    r0 = [r25 currentPlacement];
    r0 = [r0 retain];
    r22 = [[r0 name] retain];
    [r25 addObject:r22 forKey:@"placement" toDictionary:r26];
    [r22 release];
    [r0 release];
    var_168 = r27;
    [r25 addObject:r27 forKey:@"transId" toDictionary:r26];
    r0 = [r25 currentPlacement];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 placementInfo];
    r0 = [r0 retain];
    r23 = [[r0 rewardName] retain];
    [r25 addObject:r23 forKey:@"rewardName" toDictionary:r26];
    [r23 release];
    [r0 release];
    [r21 release];
    r0 = [r25 currentPlacement];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 placementInfo];
    r0 = [r0 retain];
    r23 = [[r0 rewardAmount] retain];
    [r25 addObject:r23 forKey:@"rewardAmount" toDictionary:r26];
    [r23 release];
    [r0 release];
    [r21 release];
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 dynamicUserId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 length];
    [r0 release];
    [r22 release];
    if (r24 != 0x0) {
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 dynamicUserId];
            r29 = r29;
            r21 = [r0 retain];
            [r25 addObject:r21 forKey:@"dynamicUserId" toDictionary:r26];
            [r21 release];
            [r22 release];
    }
    r20 = r26;
    var_120 = r25;
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r19 = [[r0 rvServerParams] retain];
    [r0 release];
    var_108 = q0;
    var_128 = r19;
    r0 = [r19 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r25 = *var_108;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_108 != r25) {
                                    objc_enumerationMutation(r23);
                            }
                            r21 = @selector(objectForKey:);
                            [objc_msgSend(var_128, r21) retain];
                            r0 = [NSString stringWithFormat:r2];
                            r29 = r29;
                            [r0 retain];
                            [var_120 addObject:r2 forKey:r3 toDictionary:r4];
                            [r26 release];
                            [r19 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r24);
                    r24 = objc_msgSend(r23, var_138);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    r21 = [ISEventData alloc];
    r19 = [[NSNumber alloc] initWithInt:0xa];
    r22 = [r21 initWithEventId:r19 andAdditionData:r20 timeStamp:[var_158 longLongValue]];
    [r19 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r19 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r0 = [var_120 currentPlacement];
    r0 = [r0 retain];
    r23 = [[r0 placementInfo] retain];
    [r19 didReceiveRewardForPlacement:r23];
    [r23 release];
    [r0 release];
    [r19 release];
    [r22 release];
    [var_128 release];
    [r20 release];
    [var_168 release];
    [var_158 release];
    [var_150 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(bool)areAllAdaptersInactive {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [@(0x1) retain];
    r22 = [@(0x4) retain];
    r23 = [@(0x6) retain];
    r21 = [@(0x9) retain];
    r24 = [[NSArray arrayWithObjects:&var_58 count:0x4] retain];
    [r21 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = [r19 smashList];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] == sign_extend_64([r19 numberOfSMASHesInState:r24])) {
            if (CPU_FLAGS & E) {
                    r19 = 0x1;
            }
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r24 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)shouldUpdateAvailability:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self hasRewardedVideo] != arg2) {
            r0 = 0x1;
    }
    else {
            r0 = [r19 shouldSendFirstAvailability];
    }
    return r0;
}

-(void)handleMediationAvailability:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if ([self areAllAdaptersInactive] == 0x0) goto .l1;

loc_1006b3390:
    if ([r19 canLoadBackfill] == 0x0) goto loc_1006b33c0;

loc_1006b33a4:
    [r19 initiateBackfill];
    return;

.l1:
    return;

loc_1006b33c0:
    r0 = [r19 backfill];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006b3438;

loc_1006b33e4:
    [r19 updateStateFirstAvailability];
    [r19 sendDelegateRVAdAvailabilityChanged:[r19 isBackfillAvailable]];
    [r19 isBackfillAvailable];
    goto loc_1006b3480;

loc_1006b3480:
    [r19 sendEventRVAdAvailabilityChanged:r2];
    return;

loc_1006b3438:
    if ([r19 shouldUpdateAvailability:r20] == 0x0) goto .l1;

loc_1006b3450:
    [r19 updateStateFirstAvailability];
    [r19 sendDelegateRVAdAvailabilityChanged:r20];
    goto loc_1006b3480;
}

-(bool)didCompleteSmartLoaderIteration {
    r31 = r31 - 0x170;
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
    var_150 = [@(0x3) retain];
    r22 = [@(0x2) retain];
    r23 = [@(0x8) retain];
    r27 = [@(0x7) retain];
    r28 = [@(0x0) retain];
    r19 = [[NSArray arrayWithObjects:&saved_fp - 0x80 count:0x5] retain];
    var_154 = [self numberOfSMASHesInState:r19];
    [r19 release];
    [r28 release];
    [r27 release];
    [r23 release];
    r0 = r22;
    r22 = self;
    [r0 release];
    [var_150 release];
    r19 = [@(0x5) retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x88 count:0x1];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r22 numberOfSMASHesInState:r21];
    [r21 release];
    [r19 release];
    r0 = 0x0;
    if (var_154 == 0x0) {
            r0 = 0x0;
            if (r20 >= 0x1) {
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:@"SmartLoading : end of iteration" level:0x0 tag:0x6];
                    [r0 release];
                    var_138 = q0;
                    r0 = [r22 smashList];
                    r0 = [r0 retain];
                    r19 = r0;
                    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r21 != 0x0) {
                            r25 = *var_138;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_138 != r25) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r24 = *(var_140 + r28 * 0x8);
                                            if ([r24 mediationState] == 0x5) {
                                                    [r24 completeIteration];
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r21);
                                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r21 != 0x0);
                    }
                    [r19 release];
                    r0 = 0x1;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)updateStateFirstAvailability {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dab70 != -0x1) {
            dispatch_once(0x1011dab70, &var_28);
    }
    return;
}

-(void)sendDelegateRVAdAvailabilityChanged:(bool)arg2 {
    [self setHasRewardedVideo:r2];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoHasChangedAvailability:arg2];
    [r0 release];
    return;
}

-(bool)shouldSendOldUltraEvent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self shouldSendUltraImpresion] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            [r19 setShouldSendUltraImpresion:[r19 shouldSendUltraEvents]];
            r0 = [r19 shouldSendUltraImpresion];
    }
    return r0;
}

-(bool)hasAvailableAds:(void *)arg2 {
    r0 = self->_demandOnlyHelper;
    r0 = [r0 hasAvailableAds:arg2];
    return r0;
}

-(void)sendEventRVAdAvailabilityChanged:(bool)arg2 {
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
    r21 = self;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = @"false";
            }
            else {
                    r22 = @"true";
            }
    }
    r20 = [r22 retain];
    r19 = [NSMutableDictionary new];
    [r21 addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r19];
    [r21 addObject:r22 forKey:@"status" toDictionary:r19];
    r21 = [ISEventData alloc];
    r22 = [@(0x7) retain];
    r21 = [r21 initWithEventId:r22 andAdditionData:r19];
    [r22 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r20 release];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)hasAvailableAds {
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
    r19 = self;
    r0 = [ISConfigurations getConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 trackReachability];
    [r0 release];
    if (r21 == 0x0) goto loc_1006b38ac;

loc_1006b3850:
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 currentReachabilityStatus];
    [r0 release];
    [r20 release];
    if (r22 == 0x0) goto loc_1006b3994;

loc_1006b38ac:
    var_108 = q0;
    r0 = [r19 smashList];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 == 0x0) goto loc_1006b398c;

loc_1006b3900:
    r25 = *var_108;
    goto loc_1006b3910;

loc_1006b3910:
    r28 = 0x0;
    goto loc_1006b391c;

loc_1006b391c:
    if (*var_108 != r25) {
            objc_enumerationMutation(r19);
    }
    r24 = *(var_110 + r28 * 0x8);
    if ([r24 mediationState] != 0x3 || ([r24 hasAvailableAds] & 0x1) == 0x0) goto loc_1006b3960;

loc_1006b399c:
    [r19 release];
    r0 = 0x1;
    goto loc_1006b39a8;

loc_1006b39a8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006b3960:
    r28 = r28 + 0x1;
    if (r28 < r21) goto loc_1006b391c;

loc_1006b396c:
    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) goto loc_1006b3910;

loc_1006b398c:
    [r19 release];
    goto loc_1006b3994;

loc_1006b3994:
    r0 = 0x0;
    goto loc_1006b39a8;
}

-(void)reportCheckAdAvailable:(void *)arg2 status:(void *)arg3 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [[self createBaseDataForEventFromSMASH:r22] retain];
    [r22 release];
    [self addObject:arg3 forKey:@"status" toDictionary:r19];
    [r23 release];
    r20 = [ISEventData alloc];
    r21 = [@(0x3) retain];
    r20 = [r20 initWithEventId:r21 andAdditionData:r19];
    [r21 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r20];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)reportShowCheckAvailibility:(void *)arg2 {
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
    r20 = self;
    r22 = [arg2 retain];
    r19 = [[r20 createBaseDataForEventFromSMASH:arg2] retain];
    r0 = [r20 currentPlacement];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 name];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r20 addObject:r24 forKey:@"placement" toDictionary:r19];
    [r24 release];
    [r23 release];
    r21 = [arg2 hasAvailableAds];
    [r22 release];
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"false";
            }
            else {
                    r2 = @"true";
            }
    }
    [r20 addObject:r2 forKey:@"status" toDictionary:r19];
    r21 = [ISEventData alloc];
    r20 = [[NSNumber alloc] initWithInt:0x13];
    r21 = [r21 initWithEventId:r20 andAdditionData:r19];
    [r20 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)reportImpressionWithUrl:(void *)arg2 value:(bool)arg3 name:(void *)arg4 withPlacementId:(void *)arg5 {
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
    r24 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if ([self shouldSendOldUltraEvent] != 0x0) {
            if (r19 != 0x0) {
                    r22 = [[NSString stringWithFormat:r2] retain];
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    [r0 log:r22 level:0x0 tag:0x3];
                    [r0 release];
                    r0 = [NSMutableString stringWithString:r19];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r24 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = @"false";
                            }
                            else {
                                    r0 = @"true";
                            }
                    }
                    r24 = [r0 retain];
                    [r23 appendFormat:@"&%@=%@"];
                    [r23 appendFormat:@"&%@=%@"];
                    [r23 appendFormat:@"&%@=%@"];
                    r25 = [[NSURL URLWithString:r23] retain];
                    r26 = [[NSURLRequest requestWithURL:r25] retain];
                    r0 = [NSURLSession sharedSession];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 dataTaskWithRequest:r26];
                    r0 = [r0 retain];
                    [r0 resume];
                    [r24 release];
                    [r0 release];
                    [r27 release];
                    [r26 release];
                    [r25 release];
            }
            else {
                    r22 = [[NSString stringWithFormat:r2] retain];
                    r0 = [ISLoggerManager sharedInstance];
                    r0 = [r0 retain];
                    r23 = r0;
                    [r0 log:r22 level:0x0 tag:0x3];
            }
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)reportShowChanceEvents:(void *)arg2 {
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
    r0 = [arg2 retain];
    var_58 = r0;
    [r20 reportShowChance:r0 status:0x1];
    r28 = @selector(smashList);
    r0 = objc_msgSend(r20, r28);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] == 0x0) goto loc_1006b4558;

loc_1006b447c:
    r22 = 0x0;
    goto loc_1006b44a0;

loc_1006b44a0:
    r19 = [var_58 providerPriority];
    [r21 release];
    if (r22 >= sign_extend_64(r19)) goto loc_1006b4560;

loc_1006b44c0:
    r0 = objc_msgSend(r20, r28);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:r22];
    r29 = r29;
    r21 = [r0 retain];
    [r19 release];
    if ([r21 mediationState] == 0x4) {
            [r20 reportShowChance:r2 status:r3];
    }
    r27 = @selector(count);
    [r21 release];
    r22 = r22 + 0x1;
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r27);
    r28 = @selector(smashList);
    if (r0 > r22) goto loc_1006b44a0;

loc_1006b4558:
    [r21 release];
    goto loc_1006b4560;

loc_1006b4560:
    [var_58 release];
    return;
}

-(void)reportShowChance:(void *)arg2 status:(bool)arg3 {
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
    r19 = [[self createBaseDataForEventFromSMASH:arg2] retain];
    r0 = [r20 currentPlacement];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 name];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r20 addObject:r23 forKey:@"placement" toDictionary:r19];
    [r23 release];
    [r22 release];
    if (arg3 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"false";
            }
            else {
                    r2 = @"true";
            }
    }
    [r20 addObject:r2 forKey:@"status" toDictionary:r19];
    r21 = [ISEventData alloc];
    r20 = [[NSNumber alloc] initWithInt:0x77];
    r21 = [r21 initWithEventId:r20 andAdditionData:r19];
    [r20 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)sendAvailabilityForStatistics {
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
    r19 = self;
    r20 = [@(0x3) retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x60 count:0x1];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r0 = [r19 numberOfSMASHesInState:r22];
    if (r0 > 0x0) {
            if (!CPU_FLAGS & G) {
                    r0 = @"false";
            }
            else {
                    r0 = @"true";
            }
    }
    r24 = [r0 retain];
    [r22 release];
    [r20 release];
    r23 = [NSMutableDictionary new];
    [r19 addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r23];
    var_128 = r24;
    [r19 addObject:r24 forKey:@"status" toDictionary:r23];
    r20 = [ISEventData alloc];
    r22 = [@(0x3) retain];
    var_138 = r23;
    r21 = [r20 initWithEventId:r22 andAdditionData:r23];
    [r22 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    var_140 = r21;
    [r0 logEvent:r21];
    [r0 release];
    var_110 = q0;
    r0 = [r19 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            r21 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(r23);
                            }
                            r24 = *(var_118 + r26 * 0x8);
                            if ([r24 mediationState] == 0x3) {
                                    [r19 reportCheckAdAvailable:r2 status:r3];
                            }
                            if ([r24 mediationState] == 0x4) {
                                    if ([r19 isPremium:r2] == 0x0 || [r19 canShowPremiumAdapter] != 0x0) {
                                            [r19 reportCheckAdAvailable:r2 status:r3];
                                    }
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r25);
                    r25 = objc_msgSend(r23, var_130);
            } while (r25 != 0x0);
    }
    [r23 release];
    r0 = [r19 backfill];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 adapter];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 isBackfillAvailable];
            if (r0 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = @"false";
                    }
                    else {
                            r0 = @"true";
                    }
            }
            r22 = [r0 retain];
            [var_128 release];
            r20 = [[r19 backfill] retain];
            [r19 reportCheckAdAvailable:r20 status:r22];
            [r20 release];
    }
    else {
            r22 = var_128;
    }
    var_58 = **___stack_chk_guard;
    [var_140 release];
    [var_138 release];
    [r22 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)initiateBackfill {
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
    if ([self didLoadAdapterForBackfill] != 0x0) {
            r0 = [r20 backfill];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(initRVWithUserId:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [r20 backfill];
                    r0 = [r0 retain];
                    [r0 setRvDelegate:r20];
                    [r0 release];
                    r20 = [[r20 backfill] retain];
                    r0 = [ISConfigurations getConfigurations];
                    r0 = [r0 retain];
                    r22 = [[r0 userId] retain];
                    [r20 initRVWithUserId:r22];
                    [r22 release];
                    [r0 release];
                    [r20 release];
            }
    }
    return;
}

-(bool)canLoadBackfill {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self backfill];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 backfill];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 mediationState] != 0x7) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)disablePremiumForCurrentSession {
    [[&var_20 super] disablePremiumForCurrentSession];
    r0 = [self premium];
    r0 = [r0 retain];
    [r0 setMediationState:0x6];
    [r0 release];
    [self loadNextSMASH];
    return;
}

-(void)reportImpressionsAfterShow:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r28 = [arg2 retain];
    if ([r20 shouldSendOldUltraEvent] == 0x0) goto loc_1006b4ba8;

loc_1006b4760:
    var_108 = q0;
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r0;
    var_178 = r1;
    r0 = objc_msgSend(r0, r1);
    var_128 = r0;
    if (r0 == 0x0) goto loc_1006b4a9c;

loc_1006b47b4:
    var_130 = *var_108;
    goto loc_1006b47e4;

loc_1006b47e4:
    r21 = 0x0;
    goto loc_1006b4828;

loc_1006b4828:
    if (*var_108 != var_130) {
            objc_enumerationMutation(var_168);
    }
    r24 = *(var_110 + r21 * 0x8);
    if ([r20 isPremium:r2] == 0x0 || [r20 canShowPremiumAdapter] != 0x0) goto loc_1006b4870;

loc_1006b4974:
    r21 = r21 + 0x1;
    if (r21 < var_128) goto loc_1006b4828;

loc_1006b4984:
    r0 = objc_msgSend(var_168, var_178);
    var_128 = r0;
    if (r0 != 0x0) goto loc_1006b47e4;

loc_1006b4a9c:
    [var_168 release];
    if ([r20 isBackfill:r28] != 0x0) {
            r0 = [r28 adapterConfig];
            r0 = [r0 retain];
            r19 = r0;
            r21 = [[r0 requestUrl] retain];
            r0 = [r28 adapterConfig];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 providerName] retain];
            r0 = [r20 currentPlacement];
            r0 = [r0 retain];
            r25 = [[r0 uid] retain];
            [r20 reportImpressionWithUrl:r21 value:0x1 name:r23 withPlacementId:r25];
            [r25 release];
            [r0 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    goto loc_1006b4ba8;

loc_1006b4ba8:
    var_58 = **___stack_chk_guard;
    [r28 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006b4870:
    r0 = r24;
    if (r24 == r28) goto loc_1006b49cc;

loc_1006b487c:
    if ([r0 mediationState] == 0x3 || [r24 mediationState] == 0x4) {
            r0 = [r24 adapterConfig];
            r0 = [r0 retain];
            [[r0 requestUrl] retain];
            r0 = [r24 adapterConfig];
            r0 = [r0 retain];
            [[r0 providerName] retain];
            r0 = [r20 currentPlacement];
            r0 = [r0 retain];
            r0 = [r0 uid];
            r29 = r29;
            [r0 retain];
            [r20 reportImpressionWithUrl:r2 value:r3 name:r4 withPlacementId:r5];
            [r27 release];
            [r23 release];
            [r19 release];
            [r24 release];
            [r26 release];
            [r25 release];
    }
    goto loc_1006b4974;

loc_1006b49cc:
    r0 = [r0 adapterConfig];
    r0 = [r0 retain];
    [[r0 requestUrl] retain];
    r0 = [r24 adapterConfig];
    r0 = [r0 retain];
    [[r0 providerName] retain];
    r0 = [r20 currentPlacement];
    r0 = [r0 retain];
    r0 = [r0 uid];
    r29 = r29;
    [r0 retain];
    [r20 reportImpressionWithUrl:r2 value:r3 name:r4 withPlacementId:r5];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    goto loc_1006b4a9c;
}

-(bool)isRewardedVideoCappedForPlacement:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self rewardedVideoPlacementStatus:arg2];
    if (r0 < 0x4) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(long long)rewardedVideoPlacementStatus:(void *)arg2 {
    r19 = [[self placementForName:arg2] retain];
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 isPlacementCappedRV:r19];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleCappingMessageForPlacement:(void *)arg2 message:(void *)arg3 {
    r25 = [arg2 retain];
    r19 = [[NSString stringWithFormat:@"Rewarded Video Show Fail - %@"] retain];
    r20 = [[ISError createError:0x20c withMessage:r19] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x6];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToShowWithError:r20];
    [r0 release];
    r23 = [NSMutableDictionary new];
    [self addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r23];
    r27 = [@(0x1) retain];
    [self addObject:r27 forKey:@"reason" toDictionary:r23];
    [r27 release];
    [self addObject:arg2 forKey:@"placement" toDictionary:r23];
    [r25 release];
    r24 = @class(NSNumber);
    r24 = [[r24 numberWithInteger:[r20 code]] retain];
    [self addObject:r24 forKey:@"errorCode" toDictionary:r23];
    [r24 release];
    r22 = [ISEventData alloc];
    r24 = [@(0x11) retain];
    r22 = [r22 initWithEventId:r24 andAdditionData:r23];
    [r24 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startLoadTimerForSelector:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0->_loadIntervalSecs > 0x0) {
            dispatch_async(*__dispatch_main_q, &var_40);
    }
    else {
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:@"load interval is not set, ignoring" level:0x0 tag:0x6];
            [r0 release];
    }
    return;
}

-(void)reachabilityChanged:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [ISConfigurations getConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 trackReachability];
    [r0 release];
    if (r22 == 0x0) goto loc_1006b5348;

loc_1006b521c:
    r21 = [r19 currentReachabilityStatus];
    if (r21 == [r20 netStatus]) goto loc_1006b5348;

loc_1006b524c:
    [r20 setNetStatus:r21];
    [r20 netStatus];
    r21 = [[NSString stringWithFormat:@"Connectivity state changed to %ld"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x6];
    [r0 release];
    if (objc_msgSend(r20, r22) == 0x1 || [r20 netStatus] == 0x2) goto loc_1006b5308;

loc_1006b5364:
    if ([r20 netStatus] != 0x0 || [r20 hasRewardedVideo] == 0x0) goto loc_1006b5340;

loc_1006b5388:
    r20 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    goto loc_1006b5330;

loc_1006b5330:
    [r20 rewardedVideoHasChangedAvailability:r2];
    [r20 release];
    goto loc_1006b5340;

loc_1006b5340:
    [r21 release];
    goto loc_1006b5348;

loc_1006b5348:
    [r19 release];
    return;

loc_1006b5308:
    r20 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    goto loc_1006b5330;
}

-(void)dailyCapReleased {
    r31 = r31 - 0x170;
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
    var_138 = self;
    r0 = [self smashList];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            var_144 = 0x0;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r24);
                            }
                            r21 = *(0x0 + r20 * 0x8);
                            if ([r21 mediationState] == 0x9) {
                                    r0 = [NSDictionary dictionaryWithObjects:&var_E0 forKeys:&var_E8 count:0x1];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    [var_138 sendProviderEvent:r21 eventId:0x96 data:r19];
                                    [r19 release];
                                    [r21 setMediationState:0x4];
                                    if ([r21 isMediationAvailable] != 0x0 && [r21 hasAvailableAds] != 0x0) {
                                            [r21 setMediationState:0x3];
                                            var_144 = 0x1;
                                    }
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r22 = objc_msgSend(r24, var_150);
            } while (r22 != 0x0);
            [r24 release];
            if ((var_144 & 0x1) != 0x0 && [var_138 shouldUpdateAvailability:0x1] != 0x0) {
                    [var_138 updateStateFirstAvailability];
                    [var_138 sendDelegateRVAdAvailabilityChanged:0x1];
                    [var_138 sendEventRVAdAvailabilityChanged:0x1];
            }
    }
    else {
            [r24 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendProviderEvent:(void *)arg2 eventId:(long long)arg3 data:(void *)arg4 {
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
    r21 = arg3;
    [arg2 retain];
    r19 = [arg4 retain];
    r20 = [NSMutableDictionary new];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    [[r0 version] retain];
    [self addObject:r2 forKey:r3 toDictionary:r4];
    [r28 release];
    [r27 release];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    [[r0 sdkVersion] retain];
    objc_msgSend(r22, r25);
    [r27 release];
    [r26 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    [[r0 subAdapterId] retain];
    objc_msgSend(r22, r25);
    [r28 release];
    [r27 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r0 = [r0 adSourceNameForEvent];
    [r0 retain];
    objc_msgSend(r22, r25);
    [r27 release];
    [r26 release];
    r26 = @class(NSNumber);
    [arg2 providerPriority];
    [r24 release];
    asm { sxtw       x2, w23 };
    r0 = [r26 numberWithInteger:r2];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r22, r25);
    [r24 release];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r2] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)shouldSendUltraEvents {
    r0 = *(int8_t *)(int64_t *)&self->_shouldSendUltraEvents;
    return r0;
}

-(void)setShouldSendUltraEvents:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldSendUltraEvents = arg2;
    return;
}

-(bool)shouldSendFirstAvailability {
    r0 = *(int8_t *)(int64_t *)&self->_shouldSendFirstAvailability;
    return r0;
}

-(void)onRewardedVideoLoadTick:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r22 = self;
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 currentReachabilityStatus];
    [r0 release];
    [r19 release];
    if (r21 != 0x0 && ([r22 hasRewardedVideo] & 0x1) == 0x0) {
            r21 = [NSMutableDictionary new];
            [r22 addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r21];
            r19 = [ISEventData alloc];
            r20 = [@(0x66) retain];
            var_158 = r21;
            r21 = [r19 initWithEventId:r20 andAdditionData:r21];
            [r20 release];
            r0 = [ISRewardedVideoEventsEngine sharedInstance];
            r0 = [r0 retain];
            var_160 = r21;
            [r0 logEvent:r21];
            [r0 release];
            var_108 = q0;
            r0 = [r22 smashList];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_120 = r0;
            var_150 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r20 = *var_108;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_108 != r20) {
                                            objc_enumerationMutation(var_120);
                                    }
                                    r25 = *(var_110 + r19 * 0x8);
                                    if ([r25 mediationState] == 0x4) {
                                            r21 = [[ISLoggerManager sharedInstance] retain];
                                            r0 = [r25 adapterConfig];
                                            r0 = [r0 retain];
                                            r27 = r0;
                                            r28 = [[r0 providerName] retain];
                                            r0 = [NSString stringWithFormat:@"fetch from timer: %@ : reload smash"];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r21 log:r22 level:0x0 tag:0x6];
                                            [r22 release];
                                            [r28 release];
                                            [r27 release];
                                            [r21 release];
                                            [r25 fetchVideo];
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r24 = objc_msgSend(var_120, var_150);
                    } while (r24 != 0x0);
            }
            [var_120 release];
            [var_160 release];
            [var_158 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setShouldSendFirstAvailability:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldSendFirstAvailability = arg2;
    return;
}

-(void *)rvSettings {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rvSettings)), 0x1);
    return r0;
}

-(void)setRvSettings:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)shouldSendUltraImpresion {
    r0 = *(int8_t *)(int64_t *)&self->_shouldSendUltraImpresion;
    return r0;
}

-(void)setShouldSendUltraImpresion:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldSendUltraImpresion = arg2;
    return;
}

-(bool)hasRewardedVideo {
    r0 = *(int8_t *)(int64_t *)&self->_hasRewardedVideo;
    return r0;
}

-(void)setHasRewardedVideo:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasRewardedVideo = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rvSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    objc_storeStrong((int64_t *)&self->_dailyCappingManager, 0x0);
    objc_storeStrong((int64_t *)&self->_demandOnlyHelper, 0x0);
    return;
}

@end