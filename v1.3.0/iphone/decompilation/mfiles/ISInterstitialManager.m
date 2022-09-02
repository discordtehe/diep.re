@implementation ISInterstitialManager

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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self getInterstitialSMASHesFromConfigArray:r19];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r0 = [[&var_40 super] initWithProvidersPool:r23 settings:r20 isDemandOnlyMode:arg4];
    r21 = r0;
    [r23 release];
    if (r21 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_isLoadInterstitialInProgress = 0x0;
            *(int8_t *)(int64_t *)&r21->_isLoadInterstitialCalled = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_demandOnlyHelper));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r21->_shouldSendAdReadyEvent = 0x0;
            [r21 setIsSettings:r20];
            r0 = [r20 placements];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r24 = [ISPlacementsRepository alloc];
                    r23 = [[r20 placements] retain];
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
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)hasInterstitial:(void *)arg2 {
    r0 = self->_demandOnlyHelper;
    r0 = [r0 hasInterstitial:arg2];
    return r0;
}

-(bool)hasInterstitial {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
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
    if (r21 != 0x0) {
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 getReachabilityObject];
            r0 = [r0 retain];
            r22 = [r0 currentReachabilityStatus];
            [r0 release];
            [r20 release];
            if (r22 != 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->_isLoadInterstitialCalled != 0x0) {
                            r0 = [r19 smashesCountInState:0x3];
                            if (r0 > 0x0) {
                                    if (CPU_FLAGS & G) {
                                            r0 = 0x1;
                                    }
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isLoadInterstitialCalled != 0x0) {
                    r0 = [r19 smashesCountInState:0x3];
                    if (r0 > 0x0) {
                            if (CPU_FLAGS & G) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void)loadInterstitial:(void *)arg2 {
    [self->_demandOnlyHelper loadInterstitial:arg2];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[self placementForName:r20] retain];
    [r20 release];
    [self->_demandOnlyHelper showInterstitialWithViewController:r22 placement:r23 instanceId:r19];
    [r19 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)initISWithUserId:(void *)arg2 {
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
    if ([self isDemandOnlyMode] != 0x0) {
            r0 = [ISInterstitialDemandOnlyHelper alloc];
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
                                            [[NSString stringWithFormat:@"Interstitial Manager : %@ has been removed from waterfall- demand only mode"] retain];
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
            [var_1F8 release];
    }
    else {
            r20 = [ISDailyCappingManager alloc];
            r0 = [r19 smashList];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [r0 copy];
            r0 = [r20 initWithAdUnit:@"interstitial" smashes:r23];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_dailyCappingManager));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            [r23 release];
            [r22 release];
            [*(r19 + r25) setDelegate:r19];
            var_1D8 = q0;
            var_1F0 = r19;
            r0 = [r19 smashList];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_200 = r0;
            var_220 = r1;
            r22 = objc_msgSend(r0, r1);
            if (r22 != 0x0) {
                    r8 = 0x1;
                    var_1F8 = *var_1D8;
                    r26 = var_1F0;
                    do {
                            r28 = 0x0;
                            r19 = r8;
                            do {
                                    r20 = r19 + r28;
                                    if (*var_1D8 != var_1F8) {
                                            objc_enumerationMutation(var_200);
                                    }
                                    r21 = *(var_1E0 + r28 * 0x8);
                                    [r21 setProviderPriority:r20];
                                    if ([*(r26 + r25) shouldSendCapReleasedEvent:r21] != 0x0) {
                                            r0 = [NSDictionary dictionaryWithObjects:&var_160 forKeys:&var_168 count:0x1];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            [r26 sendProviderEvent:r21 eventId:0xfa data:r20];
                                            [r20 release];
                                    }
                                    if ([*(r26 + r25) isCapped:r2] != 0x0) {
                                            [r21 setMediationState:r2];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = objc_msgSend(var_200, var_220);
                            r8 = r19 + r28;
                    } while (r22 != 0x0);
            }
            [var_200 release];
            r22 = var_1F0;
            [r22 maxAdaptersToLoad];
            r21 = [[NSString stringWithFormat:@"Interstitial Manager : will always try to hold %d elements "] retain];
            [r22 log:r21];
            [r21 release];
            if ([r22 maxAdaptersToLoad] != 0x0) {
                    r19 = 0x0;
                    do {
                            [r22 loadNextSMASH];
                            r19 = r19 + 0x1;
                    } while ([r22 maxAdaptersToLoad] > r19);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)supersonicISInitSuccessWithSMASH:(void *)arg2 {
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
    [r20 setDidInitSuccesfully:0x1];
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r23 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"%@:ISInitSuccess"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x1 tag:0x3];
    [r0 release];
    if (*(int8_t *)(int64_t *)&r20->_isLoadInterstitialCalled != 0x0) {
            [r20 loadInterstitialFromSMASH:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)loadInterstitial {
    r0 = self;
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
    r29 = &saved_fp;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isLoadInterstitialInProgress));
    if (*(int8_t *)(r0 + r21) == 0x0) goto loc_1006d8e48;

loc_1006d8e3c:
    r19 = @selector(sharedInstance);
    goto loc_1006d8e8c;

loc_1006d8e8c:
    var_58 = **___stack_chk_guard;
    r0 = objc_msgSend(@class(ISLoggerManager), r19);
    r0 = [r0 retain];
    r19 = r0;
    [r0 log:@"loadInterstitial already in progress" level:0x1 tag:0x0];
    if (**___stack_chk_guard == var_58) {
            [r19 release];
    }
    else {
            __stack_chk_fail();
    }
    return;

loc_1006d8e48:
    var_120 = r0;
    r19 = @selector(sharedInstance);
    r0 = objc_msgSend(@class(ISDelegateThrottler), r19);
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 hasPendingInvocation];
    [r0 release];
    if (r22 == 0x0) goto loc_1006d8f00;
    goto loc_1006d8e8c;

loc_1006d8f00:
    var_128 = r21;
    *(int8_t *)(var_120 + r21) = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isLoadInterstitialCalled));
    var_140 = r8;
    *(int8_t *)(var_120 + r8) = 0x1;
    [var_120 sendMediationEvent:0x16 data:0x0];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shouldSendAdReadyEvent));
    var_150 = r8;
    *(int8_t *)(var_120 + r8) = 0x1;
    var_108 = q0;
    r0 = [var_120 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) {
            r22 = *var_108;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_108 != r22) {
                                    objc_enumerationMutation(r23);
                            }
                            r28 = *(var_110 + r19 * 0x8);
                            if ([r28 mediationState] == 0x3 || [r28 mediationState] == 0x4 || [r28 mediationState] == 0x8) {
                                    [r28 setMediationState:r2];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r25);
                    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r25 != 0x0);
    }
    [r23 release];
    r20 = var_120;
    if ([r20 smashesCountInState:r2] == 0x0) goto loc_1006d919c;

loc_1006d9084:
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if ([r0 count] == 0x0) goto loc_1006d9194;

loc_1006d90ac:
    r21 = 0x0;
    r25 = 0x0;
    r19 = @selector(smashList);
    goto loc_1006d90e0;

loc_1006d90e0:
    r28 = [r20 maxAdaptersToLoad];
    [r27 release];
    if (r25 >= r28) goto loc_1006d924c;

loc_1006d9100:
    r0 = objc_msgSend(r20, r19);
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectAtIndex:r21];
    r29 = r29;
    r27 = [r0 retain];
    [r28 release];
    if ([r27 mediationState] == 0x2) {
            [r20 loadInterstitialFromSMASH:r2];
            r25 = r25 + 0x1;
    }
    r26 = @selector(count);
    [r27 release];
    r21 = r21 + 0x1;
    r0 = objc_msgSend(r20, r19);
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (objc_msgSend(r0, r26) > r21) goto loc_1006d90e0;

loc_1006d9194:
    r0 = r27;
    goto loc_1006d9248;

loc_1006d9248:
    [r0 release];
    goto loc_1006d924c;

loc_1006d924c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1006d919c:
    if ([r20 smashesCountInState:r2] > 0x0) goto loc_1006d924c;

loc_1006d91b4:
    [r20 sendMediationEvent:r2 data:r3];
    *(int8_t *)(r20 + var_150) = 0x0;
    r0 = [ISError createError:0x1fd withMessage:@"No ads to show"];
    r0 = [r0 retain];
    r19 = r20;
    r20 = r0;
    r0 = [ISDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToLoadWithError:r20];
    [r0 release];
    *(int8_t *)(r19 + var_128) = 0x0;
    *(int8_t *)(r19 + var_140) = 0x0;
    r0 = r20;
    goto loc_1006d9248;
}

-(void)supersonicISInitFailedWithError:(void *)arg2 SMASH:(void *)arg3 {
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
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 providerName] retain];
    [r19 code];
    r21 = [[NSString stringWithFormat:@"%@:ISInitFailWithError %d"] retain];
    [r24 release];
    [r23 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r21 level:0x3 tag:0x3];
    [r0 release];
    r26 = [r20 smashesCountInState:0x1];
    r0 = [r20 smashList];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r28 = [r0 count];
    [r0 release];
    if (r26 == r28) {
            if (*(int8_t *)(int64_t *)&r20->_isLoadInterstitialCalled != 0x0) {
                    [r20 sendMediationEvent:0xe3 data:0x0];
                    *(int8_t *)(int64_t *)&r20->_shouldSendAdReadyEvent = 0x0;
                    r0 = [ISDelegateThrottler sharedInstance];
                    r0 = [r0 retain];
                    [r0 interstitialDidFailToLoadWithError:r19];
                    [r0 release];
            }
            [r20 setDidInitSuccesfully:0x0];
    }
    else {
            if (([r20 loadNextSMASH] & 0x1) == 0x0 && *(int8_t *)(int64_t *)&r20->_isLoadInterstitialCalled != 0x0) {
                    r25 = @selector(count);
                    r26 = [r20 smashesCountInState:0x1];
                    r26 = [r20 smashesCountInState:0x4] + r26;
                    r26 = r26 + [r20 smashesCountInState:0x6];
                    r26 = r26 + [r20 smashesCountInState:0x9];
                    r26 = r26 + [r20 smashesCountInState:0x5];
                    r0 = [r20 smashList];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = objc_msgSend(r0, r25);
                    [r0 release];
                    if (r26 == r24) {
                            [r20 sendMediationEvent:0xe3 data:0x0];
                            *(int8_t *)(int64_t *)&r20->_shouldSendAdReadyEvent = 0x0;
                            r0 = [ISDelegateThrottler sharedInstance];
                            r0 = [r0 retain];
                            [r0 interstitialDidFailToLoadWithError:r19];
                            [r0 release];
                    }
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidLoadForSMASH:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adapterConfig];
    r0 = [r0 retain];
    r23 = [[r0 providerName] retain];
    r20 = [[NSString stringWithFormat:@"interstitialDidLoadForAdapter:%@"] retain];
    [r23 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x3];
    [r0 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [self sendProviderEvent:r19 eventId:0x1b data:r24];
    [r24 release];
    r0 = [self retain];
    r22 = r0;
    objc_sync_enter(r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shouldSendAdReadyEvent));
    if (*(int8_t *)(r22 + r8) != 0x0) {
            *(int8_t *)(r22 + r8) = 0x0;
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            [r22 sendMediationEvent:0x1b data:r23];
            [r23 release];
            r0 = [ISInterstitialDelegateWrapper sharedInstance];
            r0 = [r0 retain];
            [r0 interstitialDidLoad];
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r22);
    [r22 release];
    *(int8_t *)(int64_t *)&r22->_isLoadInterstitialInProgress = 0x0;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 forSMASH:(void *)arg3 {
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
    r20 = self;
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 providerName] retain];
    [r24 code];
    r25 = [[NSString stringWithFormat:@"%@: interstitial ad failed to load : %d"] retain];
    [r22 release];
    [r19 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r25 level:0x3 tag:0x3];
    [r0 release];
    [r20 sendProviderEvent:r23 eventId:0xe3 data:0x0];
    [r23 release];
    r19 = [@(0x3) retain];
    r21 = [@(0x8) retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x68 count:0x2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r26 = [r20 numberOfSMASHesInState:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    if ([r20 maxAdaptersToLoad] < sign_extend_64(r26)) goto loc_1006da70c;

loc_1006da504:
    var_15C = r26;
    var_148 = r25;
    stack[-336] = r24;
    var_120 = q0;
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1006da5d8;

loc_1006da55c:
    r24 = *var_120;
    r8 = &@selector(machineModel);
    goto loc_1006da568;

loc_1006da568:
    r25 = 0x0;
    r26 = r8;
    r19 = *(r8 + 0x758);
    goto loc_1006da574;

loc_1006da574:
    if (*var_120 != r24) {
            objc_enumerationMutation(r27);
    }
    r21 = *(var_128 + r25 * 0x8);
    if (objc_msgSend(r21, r19) == 0x2) goto loc_1006da6ec;

loc_1006da5a8:
    r25 = r25 + 0x1;
    if (r25 < r22) goto loc_1006da574;

loc_1006da5b4:
    r22 = [r27 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r8 = r26;
    if (r22 != 0x0) goto loc_1006da568;

loc_1006da5d8:
    [r27 release];
    r0 = [r20 loadNextSMASH];
    r25 = var_148;
    r24 = stack[-336];
    r21 = @selector(arrayWithObjects:count:);
    r27 = @selector(sharedInstance);
    r22 = var_15C;
    if ((r0 & 0x1) == 0x0) {
            r19 = [@(0x7) retain];
            r0 = objc_msgSend(@class(NSArray), r21);
            r29 = r29;
            r21 = [r0 retain];
            r22 = [r20 numberOfSMASHesInState:r2] + r22;
            [r21 release];
            [r19 release];
            if (r22 <= 0x0) {
                    [r20 didCompleteSmartLoaderIteration];
                    [r20 sendMediationEvent:0xe3 data:0x0];
                    *(int8_t *)(int64_t *)&r20->_shouldSendAdReadyEvent = 0x0;
                    r0 = objc_msgSend(@class(ISDelegateThrottler), r27);
                    r0 = [r0 retain];
                    [r0 interstitialDidFailToLoadWithError:r24];
                    [r0 release];
                    *(int8_t *)(int64_t *)&r20->_isLoadInterstitialInProgress = 0x0;
            }
    }
    goto loc_1006da70c;

loc_1006da70c:
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006da6ec:
    [r20 loadInterstitialFromSMASH:r21];
    [r27 release];
    r25 = var_148;
    r24 = stack[-336];
    goto loc_1006da70c;
}

-(void)interstitialDidCloseForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@: ISAdClosed"] retain];
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
    r23 = [@(0x1a) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidClose];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidOpenForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@: ISAdOpened"] retain];
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
    r23 = [@(0x19) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidOpen];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)showInterstitialWithViewController:(void *)arg2 placement:(void *)arg3 {
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
    r21 = self;
    r20 = [arg2 retain];
    r27 = [arg3 retain];
    r0 = [ISConfigurations getConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 trackReachability];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_1006d93a8;

loc_1006d932c:
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = r29;
    r0 = [r0 retain];
    [r21 setNetStatus:[r0 currentReachabilityStatus]];
    [r0 release];
    [r19 release];
    if ([r21 netStatus] == 0x0) goto loc_1006d9690;

loc_1006d93a8:
    r0 = [r21 placementsRepository];
    r0 = [r0 retain];
    r22 = [[r0 placementForName:r27] retain];
    [r21 setCurrentPlacement:r22];
    [r22 release];
    [r0 release];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r22 = [[r0 name] retain];
    r25 = [r21 interstitialPlacementStatus:r22];
    [r22 release];
    [r0 release];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r19 = r0;
    r26 = [[r0 name] retain];
    r0 = [r21 cappingMessageForPlacement:r26 cappingStatus:r25];
    r29 = r29;
    r22 = [r0 retain];
    [r26 release];
    [r19 release];
    if (r22 == 0x0) goto loc_1006d94e4;

loc_1006d94cc:
    [r21 handleCappingForPlacmentWithMessage:r22];
    goto loc_1006d9b24;

loc_1006d9b24:
    r0 = r22;
    goto loc_1006d9b28;

loc_1006d9b28:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r27 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006d94e4:
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r19 = r0;
    r25 = [[r0 name] retain];
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1];
    r29 = r29;
    r26 = [r0 retain];
    [r21 sendMediationEvent:0x17 data:r26];
    [r26 release];
    [r25 release];
    [r19 release];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_isLoadInterstitialCalled));
    if (*(int8_t *)(r21 + r19) == 0x0) goto loc_1006d96fc;

loc_1006d9590:
    if ([r21 smashesCountInState:0x3] == 0x0) goto loc_1006d9744;

loc_1006d95a8:
    var_170 = r19;
    var_158 = r27;
    var_150 = r20;
    var_138 = q0;
    r0 = [r21 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_160 = r1;
    r19 = objc_msgSend(r0, r1);
    if (r19 == 0x0) goto loc_1006d9680;

loc_1006d9604:
    r20 = *var_138;
    goto loc_1006d9610;

loc_1006d9610:
    r26 = 0x0;
    goto loc_1006d9618;

loc_1006d9618:
    if (*var_138 != r20) {
            objc_enumerationMutation(r25);
    }
    r28 = *(var_140 + r26 * 0x8);
    if (r28 == 0x0 || [r28 mediationState] != 0x3) goto loc_1006d9650;

loc_1006d97b4:
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r19 = [[r0 name] retain];
    r20 = [[NSString stringWithFormat:@"Showing interstitial with placement%@"] retain];
    [r19 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    var_160 = r20;
    [r0 log:r20 level:0x1 tag:0x0];
    [r0 release];
    [r28 preShow];
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    r26 = [[r0 name] retain];
    r20 = var_150;
    [r28 showInterstitialWithViewController:r20 placement:r26];
    [r26 release];
    [r0 release];
    *(int8_t *)(r21 + var_170) = 0x0;
    r19 = [[ISPlacementCappingManager sharedManager] retain];
    r0 = [r21 currentPlacement];
    r29 = r29;
    r26 = [r0 retain];
    [r19 incrementShowCounterIS:r26];
    [r26 release];
    [r19 release];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_dailyCappingManager));
    [*(r21 + r19) increaseShowCounter:r28];
    if (([*(r21 + r19) isCapped:r28] & 0x1) != 0x0) {
            [r28 setMediationState:0x9];
            r26 = @selector(dictionaryWithObjects:forKeys:count:);
            r0 = objc_msgSend(@class(NSDictionary), r26);
            r29 = r29;
            r19 = [r0 retain];
            [r21 sendProviderEvent:r28 eventId:0xfa data:r19];
            [r19 release];
    }
    else {
            r26 = @selector(dictionaryWithObjects:forKeys:count:);
    }
    r0 = [r21 currentPlacement];
    r0 = [r0 retain];
    [[r0 name] retain];
    [objc_msgSend(@class(NSDictionary), r26) retain];
    [r21 sendProviderEvent:r2 eventId:r3 data:r4];
    [r24 release];
    [r23 release];
    [r19 release];
    [r21 reportShowChanceEvents:r28];
    if (objc_msgSend(r28, r27) == 0x6 || [r28 mediationState] == 0x9) {
            [r21 loadNextSMASH];
    }
    if (([r21 didCompleteSmartLoaderIteration] & 0x1) == 0x0 && [r28 mediationState] == 0x5) {
            [r21 loadNextSMASH];
    }
    [var_160 release];
    [r25 release];
    goto loc_1006d9b20;

loc_1006d9b20:
    r27 = var_158;
    goto loc_1006d9b24;

loc_1006d9650:
    r26 = r26 + 0x1;
    if (r26 < r19) goto loc_1006d9618;

loc_1006d965c:
    r19 = objc_msgSend(r25, var_160);
    if (r19 != 0x0) goto loc_1006d9610;

loc_1006d9680:
    [r25 release];
    r20 = var_150;
    goto loc_1006d9b20;

loc_1006d9744:
    r19 = [[ISError createError:0x1fd withMessage:@"showInterstitial failed - No adapters ready to show"] retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    goto loc_1006d9788;

loc_1006d9788:
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r19];
    [r0 release];
    [r19 release];
    goto loc_1006d9b24;

loc_1006d96fc:
    r19 = [[ISError createError:0x1fd withMessage:@"you cannot invoke showIS without calling loadInterstitial first"] retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    goto loc_1006d9788;

loc_1006d9690:
    r19 = [[ISError createError:0x208 withMessage:@"Interstitail Show Fail - No internet connection"] retain];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r19];
    [r0 release];
    r0 = r19;
    goto loc_1006d9b28;
}

-(void)interstitialDidShowForSMASH:(void *)arg2 {
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r21 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:ISShowSuccess"] retain];
    [r21 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidShow];
    [r0 release];
    [r19 release];
    return;
}

-(void)interstitialDidBecomeVisibleForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:ISAdVisible"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r22 = [[self createBaseDataForEventFromSMASH:r23] retain];
    [r23 release];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r24 = [[r0 name] retain];
    [self addObject:r24 forKey:@"placement" toDictionary:r22];
    [r24 release];
    [r0 release];
    r20 = [ISEventData alloc];
    r23 = [@(0x1f) retain];
    r20 = [r20 initWithEventId:r23 andAdditionData:r22];
    [r23 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r20];
    [r0 release];
    [r20 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)didClickInterstitialForSMASH:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:ISAdClicked"] retain];
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
    r23 = [@(0x1c) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 didClickInterstitial];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 forSMASH:(void *)arg3 {
    r23 = [arg2 retain];
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 providerName] retain];
    [arg2 code];
    r19 = [[NSString stringWithFormat:@"%@:ISShowFailWithError %d"] retain];
    var_58 = r19;
    [r26 release];
    [r25 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x3 tag:0x3];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r23];
    [r0 release];
    r25 = [[NSMutableDictionary alloc] init];
    [self addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r25];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r19 = [[r0 name] retain];
    [self addObject:r19 forKey:@"placement" toDictionary:r25];
    [r19 release];
    [r0 release];
    r19 = @class(NSNumber);
    r22 = [arg2 code];
    [r23 release];
    r19 = [[r19 numberWithInteger:r22] retain];
    [self addObject:r19 forKey:@"errorCode" toDictionary:r25];
    [r19 release];
    r19 = [ISEventData alloc];
    r20 = [@(0x1d) retain];
    r19 = [r19 initWithEventId:r20 andAdditionData:r25];
    [r20 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r19];
    [r0 release];
    [r19 release];
    [r25 release];
    [var_58 release];
    return;
}

-(void)didReceiveRewardForInterstitialForSMASH:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:ISAdRewarded"] retain];
    [r24 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x3];
    [r0 release];
    r21 = [[self createBaseDataForEventFromSMASH:r22] retain];
    [r22 release];
    r22 = [ISEventData alloc];
    r24 = [@(0x122) retain];
    r22 = [r22 initWithEventId:r24 andAdditionData:r21];
    [r24 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    r20 = [[NSBlockOperation blockOperationWithBlock:&var_58] retain];
    r0 = [NSOperationQueue mainQueue];
    r0 = [r0 retain];
    [r0 addOperation:r20];
    [r0 release];
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)log:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"ISInterstitialManager: %@"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x0 tag:0x6];
    [r0 release];
    [r19 release];
    return;
}

-(void *)getInterstitialSMASHesFromConfigArray:(void *)arg2 {
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
                            [[ISInterstitialSMASH alloc] initWithAdapterConfig:r26];
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
    r29 = &saved_fp;
    r20 = self;
    r23 = [arg2 retain];
    [r20 reportShowChance:r23 status:0x1];
    if (([r20 isBackfill:r23] & 0x1) != 0x0) {
            r22 = 0xffffffffffffffff;
    }
    else {
            r0 = [r20 smashList];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 indexOfObject:r23];
            [r0 release];
    }
    r28 = @selector(smashList);
    r0 = objc_msgSend(r20, r28);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 count];
    var_58 = r23;
    if (r0 == 0x0) goto loc_1006dbc54;

loc_1006dbb90:
    r23 = 0x0;
    goto loc_1006dbbac;

loc_1006dbbac:
    [r19 release];
    if (r22 <= r23) goto loc_1006dbc5c;

loc_1006dbbbc:
    r0 = objc_msgSend(r20, r28);
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectAtIndex:r23];
    r29 = r29;
    r19 = [r0 retain];
    [r28 release];
    if ([r19 mediationState] == 0x4) {
            [r20 reportShowChance:r19 status:0x0];
    }
    r27 = @selector(count);
    [r19 release];
    r23 = r23 + 0x1;
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r27);
    r28 = @selector(smashList);
    if (r0 > r23) goto loc_1006dbbac;

loc_1006dbc54:
    [r19 release];
    goto loc_1006dbc5c;

loc_1006dbc5c:
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
    r20 = [[NSNumber alloc] initWithInt:0xdb];
    r21 = [r21 initWithEventId:r20 andAdditionData:r19];
    [r20 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)loadInterstitialFromSMASH:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self createBaseDataForEventFromSMASH:arg2] retain];
    r22 = [ISEventData alloc];
    r23 = [@(0x16) retain];
    r22 = [r22 initWithEventId:r23 andAdditionData:r21];
    [r23 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [arg2 loadInterstitial];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(long long)interstitialPlacementStatus:(void *)arg2 {
    r19 = [[self placementForName:arg2] retain];
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 isPlacementCappedIS:r19];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)loadNextSMASH {
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
    r20 = self;
    r19 = [@(0x3) retain];
    r21 = [@(0x2) retain];
    r23 = [@(0x7) retain];
    r24 = [@(0x8) retain];
    r0 = [NSArray arrayWithObjects:&var_68 count:0x4];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r20 numberOfSMASHesInState:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r19 = [r20 smashesCountInState:0x0];
    r0 = [r20 maxAdaptersToLoad];
    r23 = 0x0;
    if (r19 < 0x1) goto loc_1006dc260;

loc_1006dbf60:
    r23 = 0x0;
    r8 = &@selector(bannerDidLoad:);
    asm { sxtw       x8, w22 };
    if (r0 < r8) goto loc_1006dc260;

loc_1006dbf6c:
    r21 = 0x0;
    r26 = 0xffffffffffffffff;
    goto loc_1006dbf8c;

loc_1006dbf8c:
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    r26 = r26 + 0x1;
    if (r25 < r26) goto loc_1006dc194;

loc_1006dbfc4:
    r0 = [r20 initiateNextSMASH];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    r21 = r19;
    if (r19 == 0x0) goto loc_1006dbf8c;

loc_1006dbfec:
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 settings];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    [r22 release];
    if (r23 != 0x0) {
            [r19 setIsDelegate:r20];
            [r19 setRisDelegate:r20];
            if ([r19 respondsToSelector:@selector(initISWithUserId:)] != 0x0) {
                    r0 = [ISConfigurations getConfigurations];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 userId];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r19 initISWithUserId:r23];
                    [r23 release];
                    [r22 release];
            }
            r0 = [r19 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r20 = [[NSString stringWithFormat:@"adding interstitial provider %@"] retain];
            [r22 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x0 tag:0x6];
            [r0 release];
            [r20 release];
            r23 = 0x1;
    }
    else {
            r0 = [r19 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r20 = [[NSString stringWithFormat:@"configuration node for %@ does not exist"] retain];
            [r22 release];
            [r0 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r20 level:0x0 tag:0x6];
            [r0 release];
            [r20 release];
    }
    goto loc_1006dc258;

loc_1006dc258:
    [r19 release];
    goto loc_1006dc260;

loc_1006dc260:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006dc194:
    r23 = 0x0;
    r19 = r21;
    goto loc_1006dc258;
}

-(void)handleCappingForPlacmentWithMessage:(void *)arg2 {
    r19 = [[NSString stringWithFormat:@"Interstitial Show Fail - %@"] retain];
    r20 = [[ISError createError:0x20c withMessage:r19] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x0];
    [r0 release];
    r0 = [ISInterstitialDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 interstitialDidFailToShowWithError:r20];
    [r0 release];
    r23 = [[NSMutableDictionary dictionary] retain];
    [self addObject:*0x100e8cd00 forKey:@"provider" toDictionary:r23];
    r0 = [self currentPlacement];
    r0 = [r0 retain];
    r26 = [[r0 name] retain];
    [self addObject:r26 forKey:@"placement" toDictionary:r23];
    [r26 release];
    [r0 release];
    r25 = [@(0x1) retain];
    [self addObject:r25 forKey:@"reason" toDictionary:r23];
    [r25 release];
    r25 = @class(NSNumber);
    r25 = [[r25 numberWithInteger:[r20 code]] retain];
    [self addObject:r25 forKey:@"errorCode" toDictionary:r23];
    [r25 release];
    r22 = [ISEventData alloc];
    r24 = [@(0x1d) retain];
    r22 = [r22 initWithEventId:r24 andAdditionData:r23];
    [r24 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)isInterstitialCappedForPlacement:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self interstitialPlacementStatus:arg2];
    if (r0 < 0x4) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)didCompleteSmartLoaderIteration {
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
    r20 = [self smashesCountInState:0x5];
    r21 = [@(0x3) retain];
    r22 = [@(0x2) retain];
    r23 = [@(0x7) retain];
    r25 = [@(0x8) retain];
    r26 = [@(0x0) retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x80 count:0x5];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r24 = [r19 numberOfSMASHesInState:r27];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = 0x0;
    if (r20 >= 0x1) {
            r0 = 0x0;
            if (r24 == 0x0) {
                    var_130 = q0;
                    r0 = [r19 smashList];
                    r29 = r29;
                    r0 = [r0 retain];
                    r19 = r0;
                    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r21 != 0x0) {
                            r25 = *var_130;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_130 != r25) {
                                                    objc_enumerationMutation(r19);
                                            }
                                            r24 = *(var_138 + r28 * 0x8);
                                            if ([r24 mediationState] == 0x5) {
                                                    [r24 completeIteration];
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r21);
                                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            } while (r21 != 0x0);
                    }
                    [r19 release];
                    r19 = [[ISLoggerManager sharedInstance] retain];
                    r20 = [[NSString stringWithFormat:@"SmartLoading : end of iteration"] retain];
                    [r19 log:r20 level:0x0 tag:0x6];
                    [r20 release];
                    [r19 release];
                    r0 = 0x1;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)sendMediationEvent:(long long)arg2 data:(void *)arg3 {
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
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:*0x100e8cd00 forKeyedSubscript:@"provider"];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)rewardDelegate {
    r0 = self->_rewardDelegate;
    return r0;
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
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setRewardDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardDelegate, arg2);
    return;
}

-(void)dailyCapReleased {
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
    var_138 = self;
    r0 = [self smashList];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_148 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_130);
                            }
                            r21 = *(0x0 + r20 * 0x8);
                            if ([r21 mediationState] == 0x9) {
                                    r0 = [NSDictionary dictionaryWithObjects:&var_E0 forKeys:&var_E8 count:0x1];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [var_138 sendProviderEvent:r21 eventId:0xfa data:r28];
                                    [r28 release];
                                    if ([r21 isCappedPerSession] != 0x0) {
                                            r2 = 0x6;
                                    }
                                    else {
                                            if ([r21 isExhausted] != 0x0) {
                                                    r2 = 0x5;
                                            }
                                            else {
                                                    r2 = 0x2;
                                            }
                                    }
                                    [r21 setMediationState:r2];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r22 = objc_msgSend(var_130, var_148);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_130 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)isSettings {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_isSettings)), 0x1);
    return r0;
}

-(void)setIsSettings:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(int)loadFailedDelay {
    r0 = *(int32_t *)(int64_t *)&self->_loadFailedDelay;
    return r0;
}

-(void)setLoadFailedDelay:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_loadFailedDelay = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_isSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_dailyCappingManager, 0x0);
    objc_storeStrong((int64_t *)&self->_demandOnlyHelper, 0x0);
    return;
}

@end