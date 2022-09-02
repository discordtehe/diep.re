@implementation GADRTBAdapterManager

+(void *)sharedInstance {
    if (*qword_1011dbf80 != -0x1) {
            dispatch_once(0x1011dbf80, 0x100e9eef8);
    }
    r0 = *0x1011dbf88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_registeredRTBClassNames));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mediationCredentials));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.adapter-manager", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-72], r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r21 addObserverForName:*0x100e9c400 object:0x0 queue:0x0 usingBlock:&var_60];
            [r19 updateRTBAdapters];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = r19;
    return r0;
}

-(void)updateRTBAdapters {
    r31 = r31 - 0x1b0;
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
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 boolForKey:*0x100e9b990];
    [r0 release];
    if (r22 != 0x0) {
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r23 = [[r0 arrayForKey:*0x100e9b808] retain];
            [r0 release];
            r24 = r19->_lockQueue;
            r20 = [r19 retain];
            var_F8 = r20;
            r0 = [r23 retain];
            var_198 = r0;
            var_F0 = r0;
            dispatch_async(r24, &var_118);
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r22 = [[r0 arrayForKey:*0x100e9b9a8] retain];
            [r0 release];
            r0 = [r22 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_190 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    do {
                            r22 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r24 = *__dispatch_main_q;
                                    r25 = *(0x0 + r22 * 0x8);
                                    var_168 = [r20 retain];
                                    var_160 = [r25 retain];
                                    dispatch_async(r24, &var_188);
                                    [var_160 release];
                                    [var_168 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r23 = objc_msgSend(r21, var_190);
                    } while (r23 != 0x0);
            }
            [r21 release];
            [r21 release];
            [var_F0 release];
            [var_F8 release];
            [var_198 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)registerMediationAdapterClassName:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = NSClassFromString(r0);
    r21 = r0;
    r1 = @selector(conformsToProtocol:);
    if ((objc_msgSend(r0, r1) & 0x1) != 0x0) {
            if ([r21 conformsToProtocol:r2] != 0x0) {
                    r21 = r20->_lockQueue;
                    var_30 = [r20 retain];
                    var_28 = [r19 retain];
                    dispatch_async(r21, &var_50);
                    [var_28 release];
                    [var_30 release];
            }
    }
    else {
            NSLog(@"<Google> Could not find adapter class or class does not conform to theGADMediationAdapter protocol. Ignoring initialization request. Class %@.", r1);
    }
    [r19 release];
    return;
}

-(void *)registeredAdapterNamesForAdUnitID:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 boolForKey:*0x100e9b990];
    [r0 release];
    if (r22 != 0x0) {
            r21 = r20->_lockQueue;
            var_68 = [r20 retain];
            var_60 = [r19 retain];
            dispatch_sync(r21, &var_88);
            r20 = [*(&var_50 + 0x28) retain];
            [var_60 release];
            [var_68 release];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediationCredentials, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_adUnitToAdapterNames, 0x0);
    objc_storeStrong((int64_t *)&self->_registeredRTBClassNames, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

-(void *)credentialsForAdapterClass:(void *)arg2 adUnitID:(void *)arg3 defaultFormat:(long long)arg4 {
    r31 = r31 - 0x1d0;
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
    var_1A8 = arg4;
    r21 = [arg3 retain];
    var_100 = &var_108;
    r22 = self->_lockQueue;
    var_128 = [self retain];
    r20 = [r21 retain];
    var_120 = r20;
    dispatch_sync(r22, &var_148);
    if (*(var_100 + 0x28) != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            var_1B8 = r20;
            r0 = *(var_100 + 0x28);
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_190 = r0;
            var_1B0 = r1;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    do {
                            r27 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_190);
                                    }
                                    r0 = *(0x0 + r27 * 0x8);
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    if ([r0 format] == *0x100bf3d88) {
                                            r24 = [GADMediationCredentials alloc];
                                            r0 = [r19 settings];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            r24 = [r24 initWithAdFormat:r2 credentials:r3];
                                            [r19 release];
                                            [r20 release];
                                            r19 = r24;
                                    }
                                    sub_100822370(r21, r19);
                                    [r19 release];
                                    r27 = r27 + 0x1;
                            } while (r27 < r25);
                            r25 = objc_msgSend(var_190, var_1B0);
                    } while (r25 != 0x0);
            }
            [var_190 release];
            r0 = [GADRTBMediationSignalsConfiguration alloc];
            r20 = var_1B8;
            r19 = [r0 initWithCredentials:r21];
            [r21 release];
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    [var_128 release];
    _Block_object_dispose(&var_108, 0x8);
    [0x0 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)updateAdUnitAdapterConfiguration:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x370;
    r25 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adUnitToAdapterNames));
    r8 = *(r25 + r9);
    var_3B0 = r9;
    *(r25 + r9) = r0;
    [r8 release];
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_370 = r0;
    var_338 = r1;
    r19 = objc_msgSend(r0, r1);
    if (r19 != 0x0) {
            r20 = *0x0;
            var_390 = r20;
            var_318 = r25;
            do {
                    r23 = 0x0;
                    var_378 = r19;
                    do {
                            if (*0x0 != r20) {
                                    objc_enumerationMutation(var_370);
                            }
                            r26 = *(0x0 + r23 * 0x8);
                            if (([r26 isKindOfClass:[NSDictionary class]] & 0x1) != 0x0) {
                                    var_368 = r23;
                                    var_2E0 = [[NSMutableSet alloc] init];
                                    r19 = [[r26 objectForKeyedSubscript:*0x100e9e548] retain];
                                    r20 = [sub_10081ba6c(r19, *0x100e9e570, [NSArray class]) retain];
                                    [r19 release];
                                    var_2E8 = r26;
                                    r0 = [r26 objectForKeyedSubscript:*0x100e9e568];
                                    r29 = r29;
                                    var_2D0 = [r0 retain];
                                    r0 = [r20 retain];
                                    var_360 = r0;
                                    r0 = objc_msgSend(r0, var_338);
                                    r20 = @selector(class);
                                    var_348 = r0;
                                    if (r0 != 0x0) {
                                            do {
                                                    r19 = 0x0;
                                                    do {
                                                            if (*0x0 != *0x0) {
                                                                    objc_enumerationMutation(var_360);
                                                            }
                                                            var_340 = r19;
                                                            r23 = *(0x0 + r19 * 0x8);
                                                            r0 = objc_msgSend(@class(NSArray), r20);
                                                            r0 = sub_10081ba6c(r23, *0x100e9e560, r0);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            var_2B0 = r0;
                                                            r26 = objc_msgSend(r0, var_338);
                                                            if (r26 != 0x0) {
                                                                    var_328 = r23;
                                                                    do {
                                                                            r24 = 0x0;
                                                                            do {
                                                                                    if (*0x0 != *0x0) {
                                                                                            objc_enumerationMutation(var_2B0);
                                                                                    }
                                                                                    r19 = *(0x0 + r24 * 0x8);
                                                                                    if (([r19 isKindOfClass:objc_msgSend(@class(NSString), r20)] & 0x1) != 0x0) {
                                                                                            if ([NSClassFromString(r19) conformsToProtocol:@protocol(GADRTBAdapter)] != 0x0) {
                                                                                                    sub_100822430(var_2E0, r19);
                                                                                                    r22 = [[var_2E8 objectForKeyedSubscript:*0x100e9e540] retain];
                                                                                                    r21 = sub_100807674();
                                                                                                    r0 = @class(NSDictionary);
                                                                                                    r0 = objc_msgSend(r0, r20);
                                                                                                    r0 = sub_10081ba6c(r23, *0x100e95a08, r0);
                                                                                                    r29 = r29;
                                                                                                    r0 = [r0 retain];
                                                                                                    r20 = r0;
                                                                                                    if ([r0 count] != 0x0 && [var_2D0 length] != 0x0) {
                                                                                                            var_300 = [[GADMediationCredentials alloc] initWithAdFormat:r2 credentials:r3];
                                                                                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_mediationCredentials));
                                                                                                            r0 = *(r25 + r21);
                                                                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                                                                            r29 = r29;
                                                                                                            r0 = [r0 retain];
                                                                                                            [r0 release];
                                                                                                            if (r0 == 0x0) {
                                                                                                                    r28 = *(r25 + r21);
                                                                                                                    r0 = [NSMutableDictionary alloc];
                                                                                                                    r0 = [r0 init];
                                                                                                                    sub_100822058(r28, r19, r0);
                                                                                                                    r0 = r25;
                                                                                                                    r25 = r27;
                                                                                                                    [r0 release];
                                                                                                            }
                                                                                                            r0 = *(r25 + r21);
                                                                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                                                                            r0 = [r0 retain];
                                                                                                            r25 = r0;
                                                                                                            r23 = var_2D0;
                                                                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                                                                            r29 = r29;
                                                                                                            r0 = [r0 retain];
                                                                                                            [r0 release];
                                                                                                            [r25 release];
                                                                                                            if (r0 == 0x0) {
                                                                                                                    r0 = *(var_318 + r21);
                                                                                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                                                                                    r29 = r29;
                                                                                                                    sub_100822058([r0 retain], r23, [[NSMutableArray alloc] init]);
                                                                                                                    [r28 release];
                                                                                                                    [r25 release];
                                                                                                            }
                                                                                                            r0 = *(var_318 + r21);
                                                                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                                                                            r0 = [r0 retain];
                                                                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                                                                            r29 = r29;
                                                                                                            r0 = [r0 retain];
                                                                                                            sub_100822370(r0, var_300);
                                                                                                            [r25 release];
                                                                                                            [r19 release];
                                                                                                            [var_300 release];
                                                                                                            r25 = var_318;
                                                                                                            r23 = var_328;
                                                                                                    }
                                                                                                    [r20 release];
                                                                                                    [r22 release];
                                                                                                    r20 = @selector(class);
                                                                                            }
                                                                                    }
                                                                                    else {
                                                                                            sub_1007ce06c(0x0, @"RTB adapter settings contains invalid object. Object: %@");
                                                                                    }
                                                                                    r24 = r24 + 0x1;
                                                                            } while (r24 < r26);
                                                                            r26 = objc_msgSend(var_2B0, var_338);
                                                                    } while (r26 != 0x0);
                                                            }
                                                            [var_2B0 release];
                                                            r19 = var_340 + 0x1;
                                                    } while (r19 < var_348);
                                                    r0 = objc_msgSend(var_360, var_338);
                                                    var_348 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [var_360 release];
                                    r23 = var_2D0;
                                    r0 = [r23 length];
                                    r19 = var_378;
                                    r20 = var_2E0;
                                    if (r0 != 0x0) {
                                            sub_100822058(*(r25 + var_3B0), r23, r20);
                                    }
                                    [r25->_registeredRTBClassNames unionSet:r2];
                                    [r23 release];
                                    [var_360 release];
                                    [r20 release];
                                    r20 = var_390;
                                    r23 = var_368;
                            }
                            else {
                                    sub_1007ce06c(0x0, @"Ad unit ID settings contains invalid object. Object: %@");
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r19);
                    r19 = objc_msgSend(var_370, var_338);
            } while (r19 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_370 release];
    [var_370 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end