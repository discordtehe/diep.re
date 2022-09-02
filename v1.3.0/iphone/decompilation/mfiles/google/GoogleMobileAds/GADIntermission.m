@implementation GADIntermission

+(void *)sharedInstance {
    if (*qword_1011dbd70 != -0x1) {
            dispatch_once(0x1011dbd70, 0x100e94468);
    }
    r0 = *0x1011dbd78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithAd:(void *)arg2 stateMonitor:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r22 = arg3;
    r19 = [arg2 retain];
    r28 = [r22 retain];
    r21 = [[r29 - 0x70 super] init];
    if (r21 != 0x0) {
            r23 = @selector(init);
            r0 = @class(NSHashTable);
            r0 = [r0 weakObjectsHashTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activePresenters));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSHashTable);
            r0 = [r0 weakObjectsHashTable];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_deactivatingParticipants));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r20);
            *(r21 + r20) = r0;
            [r8 release];
            if (r19 != 0x0) {
                    r24 = 0x0;
                    r23 = r19;
            }
            else {
                    r0 = [GADApplication sharedInstance];
                    r29 = r29;
                    r23 = [r0 retain];
                    r24 = 0x1;
            }
            objc_storeWeak((int64_t *)&r21->_contextSource, r23);
            if (r24 != 0x0) {
                    [r23 release];
            }
            objc_storeWeak((int64_t *)&r21->_ad, r19);
            objc_storeStrong((int64_t *)&r21->_stateMonitor, r22);
            objc_initWeak(r29 - 0x78, r21);
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c0f8 object:r19 queue:0x0 usingBlock:&var_A0];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r25 addObserverForName:*0x100e9c110 object:0x0 queue:0x0 usingBlock:&var_C8];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r26 addObserverForName:*0x100e9c118 object:0x0 queue:0x0 usingBlock:&var_F0];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r26 addObserverForName:*0x100e9c120 object:0x0 queue:r28 usingBlock:&var_118];
            [r28 release];
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(r29 - 0x78);
            r28 = r23;
    }
    [r28 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithAd:(void *)arg2 {
    r0 = [self initWithAd:arg2 stateMonitor:0x0];
    return r0;
}

-(void *)activePresenters {
    r0 = self->_activePresenters;
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void)presentingObjectDidDeallocate {
    [self cleanUpDeallocatedParticipants];
    return;
}

-(void)presenterWillPresentScreen:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 cleanUpDeallocatedParticipants];
    if (r19 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_activePresentersCount));
            if (*(r20 + r21) == 0x0 && r20->_deactivatingParticipantsCount == 0x0) {
                    [r20 didBegin];
            }
            sub_1008224f0(r20->_activePresenters, r19);
            *(r20 + r21) = *(r20 + r21) + 0x1;
    }
    else {
            sub_1007ce06c(0x0, @"Tried to register a nil presenter %@.");
    }
    [r19 release];
    return;
}

-(void)presenterWillRelinquishScreen:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 cleanUpDeallocatedParticipants];
    if (r19 != 0x0) {
            [r20->_stateMonitor setDeactivationQueueSuspended:0x1];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_activePresenters));
            if ([*(r20 + r21) containsObject:r2] != 0x0) {
                    sub_100822550(*(r20 + r21), r19);
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_activePresentersCount));
                    *(r20 + r21) = *(r20 + r21) - 0x1;
                    sub_1008224f0(r20->_deactivatingParticipants, r19);
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_deactivatingParticipantsCount));
                    *(r20 + r8) = *(r20 + r8) + 0x1;
                    if (*(r20 + r21) == 0x0) {
                            [r20 willEnd];
                    }
            }
    }
    else {
            sub_1007ce06c(0x0, @"Will relinquish called on nil presenter %@.");
    }
    [r19 release];
    return;
}

-(void)presenterDidRelinquishScreen:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 cleanUpDeallocatedParticipants];
    if (r19 != 0x0) {
            if ([r20->_activePresenters containsObject:r2] != 0x0) {
                    [r20 presenterWillRelinquishScreen:r19];
            }
            r21 = @selector(containsObject:);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_deactivatingParticipants));
            if (objc_msgSend(*(r20 + r22), r21) != 0x0) {
                    sub_100822550(*(r20 + r22), r19);
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_deactivatingParticipantsCount));
                    r9 = *(r20 + r8);
                    *(r20 + r8) = r9 - 0x1;
                    if ((r20->_activePresentersCount | r9 - 0x1) == 0x0) {
                            [r20 didEnd];
                    }
            }
            if ([*(r20 + r22) count] == 0x0) {
                    [r20->_stateMonitor setDeactivationQueueSuspended:0x0];
            }
    }
    else {
            sub_1007ce06c(0x0, @"Did relinquish called on nil presenter %@.");
    }
    [r19 release];
    return;
}

-(void)didBegin {
    r0 = objc_loadWeakRetained((int64_t *)&self->_ad);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_strongAd));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    sub_1008833e8(*0x100e9c148, objc_loadWeakRetained((int64_t *)&self->_contextSource), 0x0);
    [r21 release];
    [self->_stateMonitor intermissionDidBegin];
    return;
}

-(void)cleanUpDeallocatedParticipants {
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
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_activePresentersCount));
    var_1E0 = r8;
    var_1E8 = *(r19 + r8);
    r0 = r19->_activePresenters;
    r0 = [r0 allObjects];
    r0 = [r0 retain];
    var_1F8 = [r0 count];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_deactivatingParticipantsCount));
    var_1F0 = r8;
    var_218 = *(r19 + r8);
    r24 = (int64_t *)&r19->_deactivatingParticipants;
    r0 = *r24;
    r0 = [r0 allObjects];
    r0 = [r0 retain];
    var_220 = [r0 count];
    [r0 release];
    r0 = [NSHashTable weakObjectsHashTable];
    var_210 = r0;
    r20 = [r0 retain];
    var_200 = (int64_t *)&r19->_activePresenters;
    r0 = r19->_activePresenters;
    r0 = [r0 allObjects];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r26 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r26 != 0x0) {
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            sub_1008224f0(r20, *(0x0 + r23 * 0x8));
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r26 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r26 != 0x0);
    }
    r28 = @selector(countByEnumeratingWithState:objects:count:);
    [r21 release];
    r0 = [NSHashTable weakObjectsHashTable];
    r21 = r0;
    r25 = [r0 retain];
    r0 = *r24;
    r0 = [r0 allObjects];
    r0 = [r0 retain];
    r27 = r0;
    r26 = objc_msgSend(r0, r28);
    if (r26 != 0x0) {
            do {
                    r23 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r27);
                            }
                            sub_1008224f0(r25, *(0x0 + r23 * 0x8));
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r26 = [r27 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r26 != 0x0);
    }
    [r27 release];
    objc_storeStrong(var_200, var_210);
    objc_storeStrong(r24, r21);
    r0 = *var_200;
    r0 = [r0 count];
    r21 = var_1E0;
    *(r19 + r21) = r0;
    r0 = *r24;
    r0 = [r0 count];
    r22 = var_1F0;
    *(r19 + r22) = r0;
    r8 = var_1E8;
    r9 = var_1F8;
    if (r8 > r9 || var_218 >= var_220) {
            if (r8 >= r9 && *(r19 + r21) == 0x0) {
                    [r19 willEnd];
                    r0 = *(r19 + r22);
            }
            if (r0 == 0x0) {
                    [r19->_stateMonitor setDeactivationQueueSuspended:0x0];
                    if (*(r19 + r21) == 0x0) {
                            [r19 didEnd];
                    }
            }
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)willEnd {
    [self->_stateMonitor intermissionWillEnd];
    sub_1008833e8(*0x100e9c150, objc_loadWeakRetained((int64_t *)&self->_contextSource), 0x0);
    [r19 release];
    return;
}

-(void)didEnd {
    sub_1008833e8(*0x100e9c158, objc_loadWeakRetained((int64_t *)&self->_contextSource), 0x0);
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_strongAd));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_strongAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_destroyWeak((int64_t *)&self->_contextSource);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_stateMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_deactivatingParticipants, 0x0);
    objc_storeStrong((int64_t *)&self->_activePresenters, 0x0);
    return;
}

@end