@implementation VunglePlacementsCoordinator

-(void *)initWithRequestAdController:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [VunglePlacementsCoordinator serialQueueWithName:[[NSString stringWithFormat:@"%@.queue"] retain]];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            objc_storeStrong(r20 + 0x18, r23);
            [*(r20 + 0x18) setDelegate:r20];
            [*(int128_t *)(r20 + 0x18) setDelegateQueue:*(int128_t *)(r20 + 0x20)];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            [r20 retrieveArchivedPlacementsSleep];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)retrieveCachedPlacements {
    r21 = [[self readyPlacements] retain];
    r20 = [[NSSet setWithArray:r21] retain];
    [self setPlacements:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void)loadPlacement:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 internalPlacement:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1005fa704;

loc_1005fa6a8:
    r0 = [r19 referenceID];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [r20 placementIsSleeping:r21];
    [r21 release];
    if (r22 == 0x0) goto loc_1005fa760;

loc_1005fa6e8:
    r0 = [VunglePlacementsCoordinator unableToLoadPlacementError];
    goto loc_1005fa71c;

loc_1005fa71c:
    r21 = [r0 retain];
    [r20 asynchronouslyNotifyDelegatePlacementLoad:r19 error:r21];
    [r21 release];
    goto loc_1005fa744;

loc_1005fa744:
    [r19 release];
    return;

loc_1005fa760:
    r0 = [r19 state];
    if (r0 != 0x2) {
            if (r0 == 0x0) {
                    objc_initWeak(r29 - 0x28, r20);
                    [[r20 queue] retain];
                    objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
                    var_38 = [r19 retain];
                    dispatch_async(r21, &var_58);
                    [r21 release];
                    [var_38 release];
                    objc_destroyWeak(&var_58 + 0x28);
                    objc_destroyWeak(r29 - 0x28);
            }
    }
    else {
            [r20 asynchronouslyNotifyDelegatePlacementLoad:r19 error:0x0];
    }
    goto loc_1005fa744;

loc_1005fa704:
    r0 = [VunglePlacementsCoordinator unknownPlacementError];
    goto loc_1005fa71c;
}

-(void *)placementWithReferenceID:(void *)arg2 {
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
    r21 = objc_alloc();
    r0 = [self placements];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r21 initWithSet:r20 copyItems:0x1];
    [r20 release];
    var_110 = q0;
    r0 = [r21 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1005faba0;

loc_1005faaf8:
    r22 = r0;
    r28 = *var_110;
    goto loc_1005fab0c;

loc_1005fab0c:
    r21 = 0x0;
    goto loc_1005fab18;

loc_1005fab18:
    if (*var_110 != r28) {
            objc_enumerationMutation(r20);
    }
    r24 = @selector(isEqualToString:);
    r25 = *(var_118 + r21 * 0x8);
    r0 = [r25 referenceID];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    if ((r27 & 0x1) != 0x0) goto loc_1005fabb0;

loc_1005fab6c:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1005fab18;

loc_1005fab78:
    r0 = objc_msgSend(r20, var_128);
    r22 = r0;
    if (r0 != 0x0) goto loc_1005fab0c;

loc_1005faba0:
    [r20 release];
    r21 = 0x0;
    goto loc_1005fabc4;

loc_1005fabc4:
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005fabb0:
    r21 = [r25 retain];
    [r20 release];
    goto loc_1005fabc4;
}

-(void)fetchAutoCacheablePlacementWithPlacementID:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self queue] retain];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r19;
    [r19 retain];
    dispatch_async(r21, &var_58);
    [r21 release];
    [var_38 release];
    [r19 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)cleanupCache {
    objc_initWeak(&saved_fp - 0x18, self);
    [[self queue] retain];
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    dispatch_async(r20, &var_40);
    [r20 release];
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void *)allAutocacheablePlacements {
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
    r19 = [NSMutableArray new];
    var_110 = q0;
    r0 = [self placements];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r28 * 0x8);
                            if ([r26 isCacheable] != 0x0 && [r26 state] == 0x0) {
                                    [r19 addObject:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)refreshPlacementState:(void *)arg2 completionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self retain];
    r22 = [[r0 queue] retain];
    [r0 retain];
    var_30 = r21;
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(r22, &var_58);
    [r22 release];
    [var_28 release];
    [var_30 release];
    [r0 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)loadedPlacements {
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
    var_140 = [NSMutableArray new];
    var_110 = q0;
    r0 = [self placements];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r21 = *(var_118 + r26 * 0x8);
                            if ([r21 state] == 0x2) {
                                    r0 = [r21 adUnit];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = [r0 viewed];
                                    [r0 release];
                                    if ((r28 & 0x1) == 0x0) {
                                            r0 = [r21 adUnit];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r28 = [r0 conformsToProtocol:@protocol()];
                                            [r0 release];
                                            if (r28 != 0x0) {
                                                    r0 = [r21 adUnit];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r19 = r0;
                                                    if ([r0 isValid] != 0x0) {
                                                            [var_140 addObject:r2];
                                                    }
                                            }
                                            else {
                                                    r19 = 0x0;
                                            }
                                            [r19 release];
                                    }
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = objc_msgSend(r20, var_148);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    r0 = [VunglePlacement sortPlacementsByAutoCacheableStatus:var_140];
    r0 = [r0 retain];
    r19 = [r0 copy];
    [r0 release];
    [var_140 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)resetPlacement:(void *)arg2 completionBlock:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self queue] retain];
    objc_copyWeak(&var_60 + 0x30, &saved_fp - 0x28);
    var_40 = r20;
    [r20 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(r22, &var_60);
    [r22 release];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r20 release];
    objc_destroyWeak(&var_60 + 0x30);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(bool)updateConfiguration:(void *)arg2 error:(void * *)arg3 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x38, self);
    [[self queue] retain];
    objc_copyWeak(&var_A0 + 0x38, &saved_fp - 0x38);
    [r21 retain];
    dispatch_sync(r23, &var_A0);
    [r23 release];
    [r21 release];
    [r19 release];
    objc_destroyWeak(&var_A0 + 0x38);
    _Block_object_dispose(&var_58, 0x8);
    objc_destroyWeak(&saved_fp - 0x38);
    r0 = r20;
    return r0;
}

-(void)updateSleepWithDate:(void *)arg2 forPlacement:(void *)arg3 {
    r21 = [arg2 retain];
    [self updateSleep:r21 forPlacement:arg3];
    [r21 release];
    return;
}

-(void)loadPlacement:(void *)arg2 withDelaySeconds:(unsigned long long)arg3 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    dispatch_time(0x0, arg3 * 0x3b9aca00);
    [[self queue] retain];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r19;
    [r19 retain];
    dispatch_after(r20, r22, &var_58);
    [r22 release];
    [var_38 release];
    [r19 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void)adControllerDidFinishPlacementRequest:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0xe0;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [arg3 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1005fc934;

loc_1005fc7d4:
    [r19 setState:0x0];
    r0 = [VNGPersistenceManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    [r0 saveObject:r19 error:&var_68];
    r22 = [var_68 retain];
    [r0 release];
    if ([r19 isCacheable] == 0x0) goto loc_1005fc8c0;

loc_1005fc848:
    if ([r21 code] != 0xffffffffffff2b41) goto loc_1005fcc38;

loc_1005fc868:
    r23 = [[r19 referenceID] retain];
    [r20 sleepDiffFromNowForPlacement:r23];
    asm { fcvtzu     x24, d0 };
    [r23 release];
    [r20 loadPlacement:r19 withDelaySeconds:r24];
    goto loc_1005fc8f0;

loc_1005fc8f0:
    r23 = [r19 copy];
    r1 = @selector(asynchronouslyNotifyDelegatePlacementLoad:error:);
    r0 = r20;
    goto loc_1005fc918;

loc_1005fc918:
    objc_msgSend(r0, r1);
    [r23 release];
    goto loc_1005fc924;

loc_1005fc924:
    [r22 release];
    r0 = r21;
    goto loc_1005fcc08;

loc_1005fcc08:
    [r0 release];
    [r19 release];
    return;

loc_1005fcc38:
    r0 = [r20 backoffCalculator];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 backoffTime];
    [r0 release];
    if (r26 == 0x0) goto loc_1005fccb0;

loc_1005fcc78:
    r0 = [r20 backoffCalculator];
    r0 = [r0 retain];
    r23 = r0;
    [r0 backoffTime];
    r1 = @selector(loadPlacement:withDelaySeconds:);
    r0 = r20;
    goto loc_1005fc918;

loc_1005fccb0:
    [r20 loadPlacement:r19];
    goto loc_1005fc924;

loc_1005fc8c0:
    if (r21 == 0x0) {
            r23 = [[VunglePlacementsCoordinator unknownError] retain];
            [r21 release];
            r21 = r23;
    }
    goto loc_1005fc8f0;

loc_1005fc934:
    r0 = [r19 adUnit];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1005fc7d4;

loc_1005fc95c:
    r0 = [r20 backoffCalculator];
    r0 = [r0 retain];
    [r0 resetAttempts];
    [r0 release];
    r23 = [[r20 queue] retain];
    r0 = [r19 retain];
    var_70 = r0;
    dispatch_async(r23, &var_98);
    [r23 release];
    r24 = [[VungleLogger sharedLogger] retain];
    r25 = @class(VungleLogger);
    r0 = [r21 adUnit];
    r0 = [r0 retain];
    r27 = [[r0 appId] retain];
    r25 = [[r25 eventIDFromAppID:r27] retain];
    [r24 setEventID:r25];
    [r25 release];
    [r27 release];
    [r0 release];
    [r24 release];
    r0 = @class(VungleLogger);
    r0 = [r0 sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"Ad preparation beginning" level:0xf4240 context:@"SDK Ad Lifecycle"];
    [r0 release];
    objc_initWeak(&stack[-176], r20);
    r23 = [[r21 adUnit] retain];
    [[VungleAdPreparerFactory preparerWithAd:r23] retain];
    [r23 release];
    [[r21 adUnit] retain];
    [[r21 referenceID] retain];
    var_B0 = [r21 retain];
    objc_copyWeak(&var_D0 + 0x28, &stack[-176]);
    [r20 prepareAd:r22 placementID:r24 completion:&var_D0];
    [r24 release];
    [r22 release];
    objc_destroyWeak(&var_D0 + 0x28);
    [var_B0 release];
    [r20 release];
    objc_destroyWeak(&stack[-176]);
    r0 = var_70;
    goto loc_1005fcc08;
}

-(void *)getValidPlacmentIds {
    r0 = [self placements];
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)placementIsSleeping:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = @selector(placementsSleep);
    r22 = [arg2 retain];
    r0 = objc_msgSend(self, r21);
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:arg2] retain];
    [r22 release];
    [r0 release];
    r20 = [[NSDate date] retain];
    if ([r19 compare:r20] == 0x1) {
            r21 = @selector(placementsSleep);
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)sleepExpirationForPlacement:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self placementsSleep];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:arg2] retain];
    [r22 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(double)sleepDiffFromNowForPlacement:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self placementsSleep];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:arg2] retain];
    [r22 release];
    [r0 release];
    r20 = [[NSDate date] retain];
    [r19 timeIntervalSinceDate:r20];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void)updateSleep:(void *)arg2 forPlacement:(void *)arg3 {
    r22 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [self placementsSleep];
    r0 = [r0 retain];
    [r0 setObject:arg2 forKeyedSubscript:arg3];
    [r24 release];
    [r22 release];
    [r0 release];
    [self archivePlacementsSleep];
    return;
}

-(void)clearSleep {
    r0 = [self placementsSleep];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    [self archivePlacementsSleep];
    return;
}

-(void)archivePlacementsSleep {
    r0 = [self retain];
    objc_sync_enter(r0);
    r20 = [[VNGPersistenceManager sharedManager] retain];
    r21 = [[r19 placementsSleep] retain];
    [r20 saveObject:r21 channel:0x0 category:r4 key:@"placements_sleep" overwrite:0x1 error:&var_28];
    [r21 release];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)retrieveArchivedPlacementsSleep {
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
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    var_38 = 0x0;
    r23 = [[r0 loadObjectWithChannel:0x0 category:r3 key:@"placements_sleep" error:&var_38] retain];
    r20 = [var_38 retain];
    [r19 setPlacementsSleep:r23];
    [r23 release];
    [r0 release];
    r0 = [r19 placementsSleep];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [[NSMutableDictionary dictionary] retain];
            [r19 setPlacementsSleep:r22];
            [r22 release];
    }
    [r20 release];
    return;
}

-(void)appWillEnterBackground {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [VNGNetworkManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 countOfQueuedOperations];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            var_50 = r0;
            r0 = [r0 retain];
            *(&var_40 + 0x18) = [r0 beginBackgroundTaskWithExpirationHandler:&var_78];
            _Block_object_dispose(&var_40, 0x8);
            [var_50 release];
            [r20 release];
    }
    return;
}

-(void)asynchronouslyNotifyDelegatePlacementLoad:(void *)arg2 error:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self queue] retain];
    objc_copyWeak(&var_60 + 0x30, &saved_fp - 0x28);
    var_40 = r20;
    [r20 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_async(r22, &var_60);
    [r22 release];
    [var_38 release];
    [var_40 release];
    [r19 release];
    [r20 release];
    objc_destroyWeak(&var_60 + 0x30);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void *)internalPlacement:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [r20 placements];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 containsObject:r2];
    [r0 release];
    if (r23 != 0x0) {
            r20 = [[r20 placements] retain];
            var_38 = [r19 retain];
            r0 = [r20 objectsPassingTest:&var_58];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 allObjects];
            r0 = [r0 retain];
            r21 = [[r0 firstObject] retain];
            [r0 release];
            [r22 release];
            [r20 release];
            [var_38 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)updateConfigPlacements:(void *)arg2 withOldPlacements:(void *)arg3 {
    r31 = r31 - 0x1a0;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    var_188 = [NSMutableSet new];
    var_120 = q0;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r0;
    var_190 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r26 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r26) {
                                    objc_enumerationMutation(var_168);
                            }
                            r21 = *(var_128 + r27 * 0x8);
                            if ([r19 containsObject:r21] != 0x0) {
                                    r20 = @selector(addObject:);
                                    [r19 enumerateObjectsUsingBlock:&var_158];
                                    objc_msgSend(var_188, r20);
                            }
                            else {
                                    [r21 setAdUnit:0x0];
                                    [r21 setState:0x0];
                                    r0 = [VNGPersistenceManager sharedManager];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 removeObject:r21 error:&var_160];
                                    [r0 release];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = objc_msgSend(var_168, var_190);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [var_168 release];
    r20 = [var_188 copy];
    [var_188 release];
    [var_168 release];
    [r19 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)parsePlacementsWithConfiguration:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placements"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [objc_alloc() initWithCapacity:[r20 count]];
            r0 = [r0 retain];
            r22 = r0;
            var_70 = r0;
            [r20 enumerateObjectsUsingBlock:&var_90];
            r0 = *(&var_60 + 0x28);
            if (r0 != 0x0) {
                    if (r21 != 0x0) {
                            r0 = objc_retainAutorelease(r0);
                            r23 = 0x0;
                            *r21 = r0;
                    }
                    else {
                            r23 = 0x0;
                    }
            }
            else {
                    r23 = [r22 copy];
            }
            [var_70 release];
            _Block_object_dispose(&var_60, 0x8);
            [0x0 release];
            [r22 release];
    }
    else {
            if (r21 != 0x0) {
                    r0 = [VunglePlacementsCoordinator missingPlacementInfoError];
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r23 = 0x0;
                    *r21 = r0;
            }
            else {
                    r23 = 0x0;
            }
    }
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)readyPlacements {
    r0 = [self retain];
    objc_sync_enter(r0);
    r20 = [[r19 allStoredPlacements] retain];
    r21 = [[VunglePlacementsCoordinator filterReadyPlacementsWithPlacements:r20] retain];
    [[VunglePlacement sortPlacementsByAutoCacheableStatus:r21] retain];
    [r21 release];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)cleanupCachedPlacementCreatives {
    r0 = [self retain];
    objc_sync_enter(r0);
    r20 = [[r19 allStoredPlacements] retain];
    r0 = [VunglePlacementsCoordinator filterExpiredAndInvalidPlacementsWithPlacements:r20];
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:&var_48];
    [[NSSet setWithArray:r0] retain];
    [r0 release];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)allStoredPlacements {
    r19 = [[VNGPersistenceManager sharedManager] retain];
    r20 = [[r19 loadObjectsWithClass:[VunglePlacement class] error:0x0] retain];
    [r19 release];
    r19 = [r20 copy];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)filterReadyPlacementsWithPlacements:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSPredicate predicateWithBlock:0x100e88e68] retain];
    r19 = [[arg2 filteredArrayUsingPredicate:r20] retain];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)removeCreativesForAdUnit:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 cacheKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1005fee78;

loc_1005fee2c:
    r0 = [VNGPersistenceManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 removeObject:r19 error:r21];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_1005fef04;

loc_1005fee70:
    r21 = 0x1;
    goto loc_1005fef70;

loc_1005fef70:
    var_38 = **___stack_chk_guard;
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005fef04:
    if (r21 == 0x0) goto loc_1005fef70;

loc_1005fef08:
    r0 = *r21;
    if (r0 == 0x0) goto loc_1005fef6c;

loc_1005fef10:
    r22 = [[r0 userInfo] retain];
    *r21 = [[[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a6 userInfo:r22] retain] autorelease];
    r0 = r22;
    goto loc_1005fef68;

loc_1005fef68:
    [r0 release];
    goto loc_1005fef6c;

loc_1005fef6c:
    r21 = 0x0;
    goto loc_1005fef70;

loc_1005fee78:
    if (r21 == 0x0) goto loc_1005fef70;

loc_1005fee7c:
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    *r21 = [[[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a5 userInfo:r23] retain] autorelease];
    r0 = r23;
    goto loc_1005fef68;
}

+(void *)filterExpiredAndInvalidPlacementsWithPlacements:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSPredicate predicateWithBlock:0x100e88e88] retain];
    r19 = [[arg2 filteredArrayUsingPredicate:r20] retain];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)serialQueueWithName:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) UTF8String];
    [r20 release];
    r0 = dispatch_queue_create(r19, 0x0);
    r0 = [r0 autorelease];
    return r0;
}

+(void *)missingPlacementInfoError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a0 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)cleanupOrphanPlacementsWithActivePlacements:(void *)arg2 {
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
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    var_160 = r19;
    r21 = [[r19 allStoredPlacements] retain];
    r0 = [NSMutableSet setWithArray:r21];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 minusSet:r20];
    var_170 = r21;
    stack[-376] = r20;
    var_110 = q0;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r0 = objc_msgSend(r0, r1);
    r20 = r0;
    if (r0 != 0x0) {
            var_148 = r22;
            var_140 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != var_140) {
                                    objc_enumerationMutation(var_148);
                            }
                            r19 = *(var_118 + r28 * 0x8);
                            r0 = [VNGPersistenceManager sharedManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = [r0 removeObject:r19 error:&var_128];
                            r22 = [var_128 retain];
                            [r0 release];
                            if ((r24 & 0x1) != 0x0) {
                                    r0 = [r19 referenceID];
                                    r0 = [r0 retain];
                                    [[NSString stringWithFormat:@"Cache Cleanup - Orphaned Placements - removal of placement %@ successful"] retain];
                                    [r0 release];
                                    r0 = [VungleLogger sharedLogger];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 logMessage:r2 level:r3 context:r4];
                                    [r24 release];
                                    r0 = r19;
                            }
                            else {
                                    r19 = [[r19 referenceID] retain];
                                    r0 = [r22 localizedDescription];
                                    r0 = [r0 retain];
                                    [[NSString stringWithFormat:@"Cache Cleanup - Orphaned Placements - error removing placement %@ error: %@"] retain];
                                    [r0 release];
                                    [r19 release];
                                    r0 = [VungleLogger sharedLogger];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 logMessage:r2 level:r3 context:r4];
                                    [r19 release];
                                    r0 = r26;
                            }
                            [r0 release];
                            [r22 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r20);
                    r22 = var_148;
                    r0 = objc_msgSend(r22, var_158);
                    r20 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    r19 = [r22 copy];
    [r22 release];
    [var_170 release];
    objc_sync_exit(var_160);
    [var_160 release];
    [stack[-376] release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)invalidPlacementDescriptionError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a1 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)unknownPlacementError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a2 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)removeOrphanedCreatives {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    r0 = [self retain];
    objc_sync_enter(r0);
    var_210 = r19;
    r19 = [[r19 loadedPlacements] retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_1F8 = [r0 retain];
    var_190 = q0;
    r0 = [r19 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r1;
    r0 = objc_msgSend(r0, r1);
    r23 = r0;
    if (r0 == 0x0) goto loc_1005ff8d8;

loc_1005ff7b4:
    r21 = *var_190;
    goto loc_1005ff7bc;

loc_1005ff7bc:
    r26 = 0x0;
    goto loc_1005ff7dc;

loc_1005ff7dc:
    if (*var_190 != r21) {
            objc_enumerationMutation(r20);
    }
    r27 = *(var_198 + r26 * 0x8);
    r0 = [r27 adUnit];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (r0 == 0x0) goto loc_1005ff8a4;

loc_1005ff818:
    r0 = [r27 adUnit];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 cacheKey];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    [r28 release];
    if (r0 == 0x0) goto loc_1005ff8ac;

loc_1005ff85c:
    r0 = [r27 adUnit];
    r0 = [r0 retain];
    r0 = [r0 cacheKey];
    r29 = r29;
    [r0 retain];
    [var_1F8 addObject:r2];
    [r27 release];
    r0 = r19;
    goto loc_1005ff8a8;

loc_1005ff8a8:
    [r0 release];
    goto loc_1005ff8ac;

loc_1005ff8ac:
    r26 = r26 + 0x1;
    if (r26 < r23) goto loc_1005ff7dc;

loc_1005ff8b8:
    r0 = objc_msgSend(r20, var_208);
    r23 = r0;
    if (r0 != 0x0) goto loc_1005ff7bc;

loc_1005ff8d8:
    [r20 release];
    r24 = [[NSFileManager defaultManager] retain];
    r19 = [[VNGPersistenceManager URLForAdsDir] retain];
    r0 = [r24 contentsOfDirectoryAtURL:r19 includingPropertiesForKeys:**___NSArray0__ options:0x4 error:&var_1A8];
    var_200 = r20;
    r29 = r29;
    r22 = [r0 retain];
    var_218 = [var_1A8 retain];
    [r19 release];
    [r24 release];
    var_1E0 = q0;
    r0 = [r22 retain];
    r24 = r0;
    r0 = objc_msgSend(r0, var_208);
    r25 = r0;
    if (r0 != 0x0) {
            r21 = *var_1E0;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_1E0 != r21) {
                                    objc_enumerationMutation(r24);
                            }
                            r19 = *(var_1E8 + r20 * 0x8);
                            r0 = [r19 lastPathComponent];
                            r29 = r29;
                            r23 = [r0 retain];
                            r22 = [var_1F8 containsObject:r23];
                            [r23 release];
                            if ((r22 & 0x1) == 0x0) {
                                    r0 = [r19 lastPathComponent];
                                    r29 = r29;
                                    [r0 retain];
                                    [VNGPersistenceManager removeDirectoryWithAdKey:r2];
                                    [r19 release];
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r25);
                    r0 = objc_msgSend(r24, var_208);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r24 release];
    [r24 release];
    [var_218 release];
    [var_1F8 release];
    [var_200 release];
    objc_sync_exit(var_210);
    [var_210 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1005ff8a4:
    r0 = r28;
    goto loc_1005ff8a8;
}

+(void *)unableToResetPlacementError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a3 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)unableToLoadPlacementError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a4 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

+(void *)unknownError {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.coordinator.placements" code:0xffffffffffff51a7 userInfo:r20] retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)placements {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(void *)adController {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setPlacements:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)queue {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setAdController:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)backoffCalculator {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)placementsSleep {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setBackoffCalculator:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setPlacementsSleep:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end