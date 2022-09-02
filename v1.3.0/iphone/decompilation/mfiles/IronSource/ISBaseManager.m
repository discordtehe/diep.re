@implementation ISBaseManager

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
    r29 = &saved_fp;
    r22 = arg4;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            *(int8_t *)(int64_t *)&r20->_isDemandOnlyMode = r22;
            *(int8_t *)(int64_t *)&r20->_didInitSuccesfully = 0x0;
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 getReachabilityObject];
            r0 = [r0 retain];
            r20->_netStatus = [r0 currentReachabilityStatus];
            [r0 release];
            [r22 release];
            r0 = [NSMutableArray arrayWithArray:r19];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_smashList));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = dispatch_queue_create("com.ironSource.adaptersQueue", *__dispatch_queue_attr_concurrent);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adaptersQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSBlockOperation alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_statusReportOpeartion));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentPlacement));
            r0 = *(r20 + r8);
            *(r20 + r8) = 0x0;
            [r0 release];
            if (*qword_1011dac08 != -0x1) {
                    dispatch_once(0x1011dac08, 0x100e8bd00);
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)placementForName:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self placementsRepository];
    r0 = [r0 retain];
    r20 = [[r0 placementForName:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)cappingMessageForPlacement:(void *)arg2 cappingStatus:(long long)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r20 == 0x1) goto loc_1006d6524;

loc_1006d64ec:
    if (r20 == 0x3) goto loc_1006d654c;

loc_1006d64f4:
    if (r20 != 0x2) goto loc_1006d657c;

loc_1006d64fc:
    r0 = [NSString stringWithFormat:r2];
    goto loc_1006d6570;

loc_1006d6570:
    r20 = [r0 retain];
    goto loc_1006d6580;

loc_1006d6580:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1006d657c:
    r20 = 0x0;
    goto loc_1006d6580;

loc_1006d654c:
    r0 = [NSString stringWithFormat:r2];
    goto loc_1006d6570;

loc_1006d6524:
    r0 = [NSString stringWithFormat:r2];
    goto loc_1006d6570;
}

-(bool)isBackfillAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_backfill));
    r0 = *(r19 + r20);
    if (r0 != 0x0 && [r0 hasAvailableAds] != 0x0) {
            r0 = *(r19 + r20);
            r0 = [r0 isMediationAvailable];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isBackfill:(void *)arg2 {
    r2 = arg2;
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
    if (r2 != 0x0 && r20->_backfill != 0x0) {
            r0 = [r2 adapterConfig];
            r0 = [r0 retain];
            r19 = r0;
            r23 = [[r0 providerName] retain];
            r0 = [r20 backfill];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 adapterConfig];
            r0 = [r0 retain];
            r22 = [[r0 providerName] retain];
            r24 = [r23 isEqualToString:r2];
            [r22 release];
            [r0 release];
            [r20 release];
            [r23 release];
            [r19 release];
            r0 = r24;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)didLoadAdapterForBackfill {
    r31 = r31 - 0x50;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_backfill));
    r0 = *(r19 + r24);
    if (r0 != 0x0) {
            r0 = [r0 adapterConfig];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = [[*(r19 + r24) adapterConfig] retain];
                    r0 = [r19 loadAdapter:r22];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r22 release];
                    if (r20 != 0x0) {
                            [*(r19 + r24) setAdapter:r20];
                            r19 = 0x1;
                    }
                    else {
                            r0 = *(r19 + r24);
                            r0 = [r0 adapterConfig];
                            r0 = [r0 retain];
                            r23 = [[r0 reflectionName] retain];
                            r22 = [[NSString stringWithFormat:@"initialization adapter failed for %@ - please verify that required dependencies are in your build path."] retain];
                            [r23 release];
                            [r0 release];
                            r0 = [ISLoggerManager sharedInstance];
                            r0 = [r0 retain];
                            [r0 log:r22 level:0x0 tag:0x6];
                            [r0 release];
                            [*(r19 + r24) setMediationState:0x1];
                            [r22 release];
                            r19 = 0x0;
                    }
                    [r20 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)setBackFillSMASHWithProviderName:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0 || [r19 length] == 0x0) goto loc_1006d6a08;

loc_1006d6758:
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 == 0x0) goto loc_1006d6a08;

loc_1006d6794:
    var_120 = r19;
    var_108 = q0;
    var_130 = r20;
    r0 = [r20 smashList];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_138 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_1006d68bc;

loc_1006d67ec:
    r21 = *var_108;
    goto loc_1006d6800;

loc_1006d6800:
    r19 = 0x0;
    goto loc_1006d6810;

loc_1006d6810:
    if (*var_108 != r21) {
            objc_enumerationMutation(var_128);
    }
    r27 = @selector(isEqualToString:);
    r23 = *(var_110 + r19 * 0x8);
    r0 = [r23 adapterConfig];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 providerName];
    r29 = r29;
    r22 = [r0 retain];
    r20 = objc_msgSend(var_120, r27);
    [r22 release];
    [r28 release];
    if (r20 != 0x0) goto loc_1006d68d8;

loc_1006d6884:
    r19 = r19 + 0x1;
    if (r19 < r24) goto loc_1006d6810;

loc_1006d6890:
    r24 = objc_msgSend(var_128, var_138);
    if (r24 != 0x0) goto loc_1006d6800;

loc_1006d68bc:
    [var_128 release];
    r19 = var_120;
    r21 = var_130;
    goto loc_1006d69a8;

loc_1006d69a8:
    r0 = [r21 backfill];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = r21->_smashList;
            r21 = [[r21 backfill] retain];
            [r20 removeObject:r21];
            [r21 release];
    }
    goto loc_1006d6a08;

loc_1006d6a08:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006d68d8:
    r19 = var_120;
    r22 = [[NSString stringWithFormat:@"%@ is removed from pool and will be loaded as backfill if necessary."] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r22 level:0x0 tag:0x6];
    [r0 release];
    r21 = var_130;
    [r21 setBackfill:r23];
    r0 = [r21 backfill];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setProviderPriority:0xffffffffffffffff];
    [r0 release];
    [r22 release];
    [var_128 release];
    goto loc_1006d69a8;
}

-(bool)isPremium:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r0 = [r2 adapterConfig];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 providerName];
            r0 = [r0 retain];
            r19 = [r0 isEqualToString:r2];
            [r0 release];
            [r20 release];
            r0 = r19;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isPremiumAvailable {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self premium];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 premium];
            r0 = [r0 retain];
            r20 = [r0 isMediationAvailable];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)disablePremiumForCurrentSession {
    *(int8_t *)(int64_t *)&self->_canShowPremiumAdapter = 0x0;
    return;
}

-(void *)loadAdapter:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 getLoadedAdapter:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) {
            r21 = [[r21 loadAdapterFromReflection:r19] retain];
            [r20 release];
            r20 = r21;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getLoadedAdapter:(void *)arg2 {
    r31 = r31 - 0x150;
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
    var_120 = [arg2 retain];
    r0 = *0x1011dac00;
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = *0x1011dac00;
    r0 = [r0 retain];
    var_128 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_1006d72b0;

loc_1006d71d4:
    var_138 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r21;
    goto loc_1006d71ec;

loc_1006d71ec:
    r21 = 0x0;
    goto loc_1006d71fc;

loc_1006d71fc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_128);
    }
    r27 = *(0x0 + r21 * 0x8);
    r28 = [[r27 adapterName] retain];
    r0 = [var_120 name];
    r29 = r29;
    r22 = [r0 retain];
    r19 = [r28 caseInsensitiveCompare:r2];
    [r22 release];
    [r28 release];
    if (r19 == 0x0) goto loc_1006d72c0;

loc_1006d7274:
    r21 = r21 + 0x1;
    if (r21 < r23) goto loc_1006d71fc;

loc_1006d7280:
    r21 = var_130;
    r23 = objc_msgSend(var_128, var_138);
    if (r23 != 0x0) goto loc_1006d71ec;

loc_1006d72b0:
    [var_128 release];
    r22 = 0x0;
    goto loc_1006d72d8;

loc_1006d72d8:
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r21);
    [r21 release];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006d72c0:
    r22 = [r27 retain];
    [var_128 release];
    r21 = var_130;
    goto loc_1006d72d8;
}

-(void *)loadAdapterFromReflection:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [[r0 reflectionName] retain];
    r0 = [NSString stringWithFormat:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    r0 = NSClassFromString(r20);
    if (r0 != 0x0) {
            r22 = @selector(stringWithFormat:);
            r21 = [r0 alloc];
            r23 = [[r19 name] retain];
            r21 = [r21 initAdapter:r23];
            [r23 release];
            r23 = @class(NSString);
            r24 = [[r19 providerName] retain];
            r25 = [[r21 version] retain];
            r26 = [[r21 sdkVersion] retain];
            r22 = [objc_msgSend(r23, r22) retain];
            [r26 release];
            [r25 release];
            [r24 release];
            r0 = [ISLoggerManager sharedInstance];
            r0 = [r0 retain];
            [r0 log:r22 level:0x0 tag:0x6];
            [r0 release];
            r0 = *0x1011dac00;
            r0 = [r0 retain];
            objc_sync_enter(r0);
            [*0x1011dac00 addObject:r2];
            objc_sync_exit(r23);
            [r23 release];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initiateNextSMASH {
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
    r29 = &saved_fp;
    r20 = self;
    r0 = r20->_smashList;
    r0 = [r0 retain];
    r21 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1006d6e0c;

loc_1006d6da8:
    r27 = 0x0;
    goto loc_1006d6db0;

loc_1006d6db0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r23 = *(0x0 + r27 * 0x8);
    if ([r23 mediationState] == 0x0) goto loc_1006d6e18;

loc_1006d6de0:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1006d6db0;

loc_1006d6dec:
    r22 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1006d6da8;

loc_1006d6e0c:
    [r21 release];
    goto loc_1006d6f98;

loc_1006d6f98:
    r20 = 0x0;
    goto loc_1006d7078;

loc_1006d7078:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006d6e18:
    r19 = [r23 retain];
    [r21 release];
    if (r19 == 0x0) goto loc_1006d6f98;

loc_1006d6e30:
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 providerName] retain];
    r21 = [[NSString stringWithFormat:@"Trying to load %@ "] retain];
    [r25 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 log:r2 level:r3 tag:r4];
    [r27 release];
    if ([r19 mediationState] == 0x0) goto loc_1006d6f28;

loc_1006d6f04:
    r0 = [r19 adapter];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_1006d6f88;

loc_1006d6f28:
    r26 = [[r19 adapterConfig] retain];
    r0 = [r20 loadAdapter:r26];
    r29 = r29;
    r20 = [r0 retain];
    [r26 release];
    if (r20 == 0x0) goto loc_1006d6fa0;

loc_1006d6f6c:
    [r19 setAdapter:r20];
    [r20 release];
    goto loc_1006d6f88;

loc_1006d6f88:
    r20 = [r19 retain];
    goto loc_1006d7068;

loc_1006d7068:
    [r21 release];
    [r19 release];
    goto loc_1006d7078;

loc_1006d6fa0:
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r27 = [[r0 reflectionName] retain];
    [[NSString stringWithFormat:@"initialization adapter failed for %@ - please verify that required dependencies are in your build path."] retain];
    [r21 release];
    [r27 release];
    [r0 release];
    r0 = @class(ISLoggerManager);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 log:r2 level:r3 tag:r4];
    [r21 release];
    [r19 setMediationState:0x1];
    [r20 release];
    r21 = r22;
    goto loc_1006d7068;
}

-(int)numberOfSMASHesInState:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [self smashList];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r0 = objc_msgSend(r0, r1);
    r21 = 0x0;
    r23 = r0;
    if (r23 != 0x0) {
            r21 = 0x0;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r26 = @selector(containsObject:);
                            r25 = @selector(numberWithInt:);
                            [*(0x0 + r20 * 0x8) mediationState];
                            r0 = objc_msgSend(@class(NSNumber), r25);
                            r29 = r29;
                            r27 = [r0 retain];
                            r28 = objc_msgSend(r19, r26);
                            [r27 release];
                            r21 = r21 + r28;
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r23 = objc_msgSend(var_120, var_128);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)smashesCountInState:(long long)arg2 {
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
    r19 = arg2;
    r0 = [self smashList];
    r0 = [r0 retain];
    r20 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            if ([*(0x0 + r27 * 0x8) mediationState] == r19) {
                                    asm { cinc       x22, x22, eq };
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = 0x0;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)createBaseDataForEventFromSMASH:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r26 = [[r0 version] retain];
    [self addObject:r26 forKey:@"providerAdapterVersion" toDictionary:r20];
    [r26 release];
    [r0 release];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r25 = [[r0 sdkVersion] retain];
    [self addObject:r25 forKey:@"providerSDKVersion" toDictionary:r20];
    [r25 release];
    [r0 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r26 = [[r0 subAdapterId] retain];
    [self addObject:r26 forKey:@"spId" toDictionary:r20];
    [r26 release];
    [r0 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 adSourceNameForEvent] retain];
    [self addObject:r25 forKey:@"provider" toDictionary:r20];
    [r25 release];
    [r0 release];
    [arg2 providerPriority];
    [r22 release];
    r21 = [[NSNumber numberWithInt:r2] retain];
    [self addObject:r21 forKey:@"providerPriority" toDictionary:r20];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)placementsRepository {
    r0 = self->_placementsRepository;
    return r0;
}

-(void)addObject:(void *)arg2 forKey:(void *)arg3 toDictionary:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            [r21 setObject:r2 forKey:r3];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setConsent:(bool)arg2 {
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
    r19 = arg2;
    r0 = self->_smashList;
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(0x0 + r26 * 0x8) setConsent:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setPlacementsRepository:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementsRepository, arg2);
    return;
}

-(void *)currentPlacement {
    r0 = self->_currentPlacement;
    return r0;
}

-(void)setCurrentPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentPlacement, arg2);
    return;
}

-(void *)backfill {
    r0 = self->_backfill;
    return r0;
}

-(void)setBackfill:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backfill, arg2);
    return;
}

-(void *)premium {
    r0 = self->_premium;
    return r0;
}

-(void)setPremium:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_premium, arg2);
    return;
}

-(void *)premiumProviderName {
    r0 = self->_premiumProviderName;
    return r0;
}

-(void)setPremiumProviderName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_premiumProviderName, arg2);
    return;
}

-(bool)canShowPremiumAdapter {
    r0 = *(int8_t *)(int64_t *)&self->_canShowPremiumAdapter;
    return r0;
}

-(void)setCanShowPremiumAdapter:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canShowPremiumAdapter = arg2;
    return;
}

-(bool)didInitSuccesfully {
    r0 = *(int8_t *)(int64_t *)&self->_didInitSuccesfully;
    return r0;
}

-(void)setDidInitSuccesfully:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didInitSuccesfully = arg2;
    return;
}

-(unsigned long long)maxAdaptersToLoad {
    r0 = self->_maxAdaptersToLoad;
    return r0;
}

-(void)setMaxAdaptersToLoad:(unsigned long long)arg2 {
    self->_maxAdaptersToLoad = arg2;
    return;
}

-(bool)isDemandOnlyMode {
    r0 = *(int8_t *)(int64_t *)&self->_isDemandOnlyMode;
    return r0;
}

-(void *)smashList {
    r0 = self->_smashList;
    return r0;
}

-(long long)netStatus {
    r0 = self->_netStatus;
    return r0;
}

-(void)setNetStatus:(long long)arg2 {
    self->_netStatus = arg2;
    return;
}

-(void *)adaptersQueue {
    r0 = self->_adaptersQueue;
    return r0;
}

-(void)setAdaptersQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adaptersQueue, arg2);
    return;
}

-(void)setStatusReportOpeartion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_statusReportOpeartion, arg2);
    return;
}

-(void *)statusReportOpeartion {
    r0 = self->_statusReportOpeartion;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_statusReportOpeartion, 0x0);
    objc_storeStrong((int64_t *)&self->_adaptersQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_smashList, 0x0);
    objc_storeStrong((int64_t *)&self->_premiumProviderName, 0x0);
    objc_storeStrong((int64_t *)&self->_premium, 0x0);
    objc_storeStrong((int64_t *)&self->_backfill, 0x0);
    objc_storeStrong((int64_t *)&self->_currentPlacement, 0x0);
    objc_storeStrong((int64_t *)&self->_placementsRepository, 0x0);
    return;
}

@end