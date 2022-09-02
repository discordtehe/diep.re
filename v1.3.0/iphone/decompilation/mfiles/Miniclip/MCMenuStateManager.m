@implementation MCMenuStateManager

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [MCCommandQueue new];
            *(r19 + 0x20) = [[NSMutableDictionary dictionaryWithCapacity:0x64] retain];
            *(r19 + 0x10) = [[NSMutableArray arrayWithCapacity:0x14] retain];
            *(r19 + 0x18) = [[NSMutableArray arrayWithCapacity:0x14] retain];
            *(int8_t *)(r19 + 0x30) = 0x0;
            [*(r19 + 0x8) run];
    }
    r0 = r19;
    return r0;
}

-(void *)fetchMenuState:(unsigned long long)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            r19 = *(r0 + 0x20);
            [NSNumber numberWithUnsignedInteger:r2];
            r0 = [r19 objectForKey:r2];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self cleanStackEntries];
    [r19 cleanUnusedInstances];
    [r19 setDelegate:0x0];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)cleanStackEntry:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r2;
            r21 = r0;
            r0 = [r2 instance];
            r20 = r0;
            if ([r0 isReusable] != 0x0) {
                    r0 = [r19 menuState];
                    r0 = [r0 availableInstances];
                    r1 = @selector(addObject:);
            }
            else {
                    [r20 destroy];
                    r0 = *(r21 + 0x28);
                    r1 = @selector(destroyMenuState:);
            }
            objc_msgSend(r0, r1);
            [r19 setInstance:0x0];
            [r19 setMenuState:0x0];
    }
    return;
}

-(void *)createStackEntryFromMenuState:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto loc_1005e1d64;

loc_1005e1c40:
    r19 = r2;
    r23 = r0;
    r0 = [r2 availableInstances];
    r20 = r0;
    r0 = [r0 firstObject];
    r21 = r0;
    if (r0 != 0x0) goto loc_1005e1d28;

loc_1005e1c70:
    r22 = [r19 theId];
    r0 = *(r23 + 0x28);
    r0 = [r0 createMenuState:r22];
    if (r0 == 0x0) goto loc_1005e1d64;

loc_1005e1c9c:
    r21 = r0;
    r23 = [r19 parameters];
    [r21 setupWithStateId:r22 parameters:[NSDictionary dictionaryWithDictionary:r23]];
    [r21 hide];
    [r21 disableInput];
    [r23 removeAllObjects];
    [r20 addObject:r2];
    goto loc_1005e1d28;

loc_1005e1d28:
    r19 = [MenuStateStackEntry createMenuStateStackEntry:r19 instance:r21];
    [r20 removeObjectAtIndex:0x0];
    r0 = r19;
    return r0;

loc_1005e1d64:
    r0 = 0x0;
    return r0;
}

-(void *)fetchMenuStateInstance:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_1005e1bd8;

loc_1005e1aa4:
    r19 = r2;
    var_130 = r0;
    r0 = *(r0 + 0x10);
    r0 = [r0 reverseObjectEnumerator];
    r0 = [r0 allObjects];
    r21 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1005e1ba8;

loc_1005e1af8:
    r23 = r0;
    r28 = *var_110;
    r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
    goto loc_1005e1b10;

loc_1005e1b10:
    r20 = 0x0;
    r22 = r8;
    r25 = *(r8 + 0x80);
    goto loc_1005e1b24;

loc_1005e1b24:
    if (*var_110 != r28) {
            objc_enumerationMutation(r21);
    }
    r27 = *(var_118 + r20 * 0x8);
    if ([[r27 menuState] theId] != r19 || objc_msgSend(r27, r25) == 0x0) goto loc_1005e1b70;

loc_1005e1be0:
    r0 = r27;
    r1 = r25;
    goto loc_1005e1be8;

loc_1005e1be8:
    r0 = objc_msgSend(r0, r1);
    goto loc_1005e1bec;

loc_1005e1bec:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005e1b70:
    r20 = r20 + 0x1;
    if (r20 < r23) goto loc_1005e1b24;

loc_1005e1b7c:
    r0 = objc_msgSend(r21, var_128);
    r23 = r0;
    r8 = r22;
    if (r0 != 0x0) goto loc_1005e1b10;

loc_1005e1ba8:
    r0 = [var_130 fetchMenuState:r19];
    if (r0 == 0x0) goto loc_1005e1bec;

loc_1005e1bc0:
    r0 = [r0 availableInstances];
    r1 = @selector(firstObject);
    goto loc_1005e1be8;

loc_1005e1bd8:
    r0 = 0x0;
    goto loc_1005e1bec;
}

-(void)cleanStackEntries {
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
    var_110 = q0;
    r20 = *(self + 0x10);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 cleanStackEntry:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addMenuStateWithId:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [MenuState createMenuState:r2];
            r20 = *(r0 + 0x20);
            [NSNumber numberWithUnsignedInteger:r2];
            [r20 setObject:r2 forKey:r3];
    }
    return;
}

-(void)cleanUnusedInstances {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    r19 = self;
    var_190 = q0;
    r0 = *(self + 0x20);
    var_218 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1F0 = r0;
    if (r0 != 0x0) {
            var_210 = *var_190;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_190 != var_210) {
                                    objc_enumerationMutation(var_218);
                            }
                            r21 = @selector(countByEnumeratingWithState:objects:count:);
                            var_1E8 = r20;
                            r2 = *(var_198 + r20 * 0x8);
                            r0 = *(r19 + 0x20);
                            r0 = [r0 objectForKey:r2];
                            r0 = [r0 availableInstances];
                            r26 = r0;
                            var_1D0 = q0;
                            r0 = objc_msgSend(r0, r21);
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    r25 = *var_1D0;
                                    do {
                                            r23 = 0x0;
                                            do {
                                                    if (*var_1D0 != r25) {
                                                            objc_enumerationMutation(r26);
                                                    }
                                                    [*(var_1D8 + r23 * 0x8) destroy];
                                                    objc_msgSend(*(r19 + 0x28), r20);
                                                    r23 = r23 + 0x1;
                                            } while (r23 < r27);
                                            r0 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r27 = r0;
                                    } while (r0 != 0x0);
                            }
                            [r26 removeAllObjects];
                            r20 = var_1E8 + 0x1;
                    } while (r20 < var_1F0);
                    r0 = [var_218 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    var_1F0 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)enteredFullscreenState {
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
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r21 = sub_1005d8470([*(r19 + 0x18) lastObject], 0x0);
    }
    else {
            r21 = 0x0;
    }
    r20 = @selector(count);
    r0 = *(r19 + 0x10);
    r0 = objc_msgSend(r0, r20);
    if (r0 >= r21) {
            r20 = r0;
            if (r21 == 0x0) {
                    asm { csneg      x8, x8, x21, eq };
            }
            r25 = r0 + 0xffffffffffffffff;
            if (r25 != 0x0) {
                    r24 = 0x1;
                    do {
                            r0 = *(r19 + 0x10);
                            r0 = [r0 objectAtDepth:r24];
                            if (r0 == 0x0) {
                                break;
                            }
                            r0 = [r0 instance];
                            if (r0 != 0x0) {
                                    [r0 hide];
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r25);
            }
            [*(r19 + 0x18) push:[NSNumber numberWithUnsignedInteger:r20]];
    }
    return;
}

-(void)leftFullscreenState {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r21 = @selector(count);
            r23 = sub_1005d83b0([*(r19 + 0x18) lastObject], 0x0);
            r0 = *(r19 + 0x10);
            r0 = objc_msgSend(r0, r21);
            if (r0 < zero_extend_64(r23)) {
                    r20 = r0;
                    [*(r19 + 0x18) pop];
                    r0 = *(r19 + 0x18);
                    if (r0 != 0x0) {
                            r0 = [r0 count];
                            if (r0 != 0x0) {
                                    r0 = *(r19 + 0x18);
                                    r0 = [r0 lastObject];
                                    r0 = sub_1005d8470(r0, 0x0);
                            }
                    }
                    if (r20 != 0x0 && r20 >= r0) {
                            if (r0 == 0x0) {
                                    asm { csneg      x8, x8, x0, eq };
                            }
                            r2 = 0x0;
                            r23 = 0xffffffffffffffff + r20;
                            r24 = 0x1;
                            do {
                                    r0 = *(r19 + 0x10);
                                    r0 = [r0 objectAtDepth:r2];
                                    if (r0 == 0x0) {
                                        break;
                                    }
                                    r0 = [r0 instance];
                                    if (r0 != 0x0) {
                                            [r0 show];
                                    }
                                    r2 = r24;
                                    COND = r23 >= zero_extend_64(r24);
                                    r24 = r24 + 0x1;
                            } while (COND);
                    }
            }
    }
    return;
}

-(void)purgeCachedData {
    [self purgeCachedData:0x1];
    return;
}

-(void)purgeCachedData:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (arg2 != 0x0) {
            [r0 cleanUnusedInstances];
    }
    else {
            r19 = *(r0 + 0x8);
            [MCBlockCommand commandWithBlock:&var_38];
            [r19 enqueueCommand:r2];
    }
    return;
}

-(void *)commandForSimplyPushingMenuState:(unsigned long long)arg2 replaceCurrentStateAllowed:(bool)arg3 enableInputOnlyAtTransitionEnd:(bool)arg4 {
    r23 = [MCMutableSequenceCommand object];
    [r23 addCommand:[MCBlockCommand commandWithBlock:&var_70]];
    r0 = r23;
    return r0;
}

-(void *)commandForPushingMenuState:(unsigned long long)arg2 withConditionBlock:(void *)arg3 replaceCurrentStateAllowed:(bool)arg4 {
    r23 = [MCMutableSequenceCommand object];
    [r23 addCommand:[MCBlockCommand commandWithBlock:&var_78]];
    r0 = r23;
    return r0;
}

-(void *)commandForPoppingMenuStateWithConditionBlock:(void *)arg2 {
    r21 = [MCMutableSequenceCommand object];
    [r21 addCommand:[MCBlockCommand commandWithBlock:&var_58]];
    r0 = r21;
    return r0;
}

-(void *)commandForPoppingAllMenuStatesWithConditionBlock:(void *)arg2 {
    r21 = [MCMutableSequenceCommand object];
    [r21 addCommand:[MCBlockCommand commandWithBlock:&var_58]];
    r0 = r21;
    return r0;
}

-(void *)commandForClearingMenuStatesWithConditionBlock:(void *)arg2 {
    r0 = [MCBlockCommand commandWithBlock:&var_30];
    return r0;
}

-(void *)commandForRefreshingWithConditionBlock:(void *)arg2 {
    r21 = [MCMutableSequenceCommand object];
    [r21 addCommand:[MCBlockCommand commandWithBlock:&var_58]];
    r0 = r21;
    return r0;
}

-(void *)commandForRefreshingAllStatesWithConditionBlock:(void *)arg2 {
    r21 = [MCMutableSequenceCommand object];
    [r21 addCommand:[MCBlockCommand commandWithBlock:&var_58]];
    r0 = r21;
    return r0;
}

-(void)goToMenuStateWithId:(unsigned long long)arg2 {
    r19 = *(self + 0x8);
    [self commandForPushingMenuState:arg2 withConditionBlock:0x0 replaceCurrentStateAllowed:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)goToMenuStateWithId:(unsigned long long)arg2 withConditionBlock:(void *)arg3 {
    r19 = *(self + 0x8);
    [self commandForPushingMenuState:arg2 withConditionBlock:arg3 replaceCurrentStateAllowed:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)goToMenuStateWithId:(unsigned long long)arg2 withConditionBlock:(void *)arg3 replaceCurrentStateAllowed:(bool)arg4 {
    r19 = *(self + 0x8);
    [self commandForPushingMenuState:arg2 withConditionBlock:arg3 replaceCurrentStateAllowed:arg4];
    [r19 enqueueCommand:r2];
    return;
}

-(void)leaveMenuState {
    r19 = *(self + 0x8);
    [self commandForPoppingMenuStateWithConditionBlock:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)leaveMenuStateWithConditionBlock:(void *)arg2 {
    r19 = *(self + 0x8);
    [self commandForPoppingMenuStateWithConditionBlock:arg2];
    [r19 enqueueCommand:r2];
    return;
}

-(void)leaveAllMenuStates {
    r19 = *(self + 0x8);
    [self commandForPoppingAllMenuStatesWithConditionBlock:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)leaveAllMenuStatesWithConditionBlock:(void *)arg2 {
    r19 = *(self + 0x8);
    [self commandForPoppingAllMenuStatesWithConditionBlock:arg2];
    [r19 enqueueCommand:r2];
    return;
}

-(void)refresh {
    r19 = *(self + 0x8);
    [self commandForRefreshingWithConditionBlock:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)clearMenuStatesWithConditionBlock:(void *)arg2 {
    r19 = *(self + 0x8);
    [self commandForClearingMenuStatesWithConditionBlock:arg2];
    [r19 enqueueCommand:r2];
    return;
}

-(void)clearMenuStates {
    r19 = *(self + 0x8);
    [self commandForClearingMenuStatesWithConditionBlock:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)refreshWithConditionBlock:(void *)arg2 {
    r19 = *(self + 0x8);
    [self commandForRefreshingWithConditionBlock:arg2];
    [r19 enqueueCommand:r2];
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = *(self + 0x10);
    r0 = [r0 peekStack];
    if (r0 != 0x0) {
            [[r0 instance] processContextEvent:r20 withData:r19];
    }
    return;
}

-(void)refreshAllMenuStates {
    r19 = *(self + 0x8);
    [self commandForRefreshingAllStatesWithConditionBlock:0x0];
    [r19 enqueueCommand:r2];
    return;
}

-(void)refreshAllMenuStatesWithConditionBlock:(void *)arg2 {
    r19 = *(self + 0x8);
    [self commandForRefreshingAllStatesWithConditionBlock:arg2];
    [r19 enqueueCommand:r2];
    return;
}

-(void)clearEnqueuedCommands {
    [*(self + 0x8) cleanQueuedCommands];
    return;
}

-(bool)isMenuStateIdOnStack:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_1005e47d4;

loc_1005e4708:
    r19 = r2;
    var_110 = q0;
    r20 = *(r0 + 0x10);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005e47d8;

loc_1005e4740:
    r22 = r0;
    r25 = *var_110;
    goto loc_1005e4754;

loc_1005e4754:
    r28 = 0x0;
    goto loc_1005e4760;

loc_1005e4760:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    if ([[*(var_118 + r28 * 0x8) menuState] theId] == r19) goto loc_1005e47cc;

loc_1005e4798:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1005e4760;

loc_1005e47a4:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1005e4754;

loc_1005e47c8:
    r0 = 0x0;
    goto loc_1005e47d8;

loc_1005e47d8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005e47cc:
    r0 = 0x1;
    goto loc_1005e47d8;

loc_1005e47d4:
    r0 = 0x0;
    goto loc_1005e47d8;
}

-(bool)isMenuStateAvailableForId:(unsigned long long)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self menuStateForId:arg2];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)menuStateForId:(unsigned long long)arg2 {
    r0 = [self fetchMenuStateInstance:arg2];
    return r0;
}

-(unsigned long long)menuStateStackSize {
    r0 = *(self + 0x10);
    r0 = [r0 count];
    return r0;
}

-(void *)menuStateAtStackDepth:(unsigned long long)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x10);
    r0 = [r0 objectAtDepth:arg2];
    if (r0 != 0x0) {
            r0 = [r0 instance];
    }
    return r0;
}

-(unsigned long long)currentMenuStateId {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x10);
    r0 = [r0 peekStack];
    if (r0 != 0x0) {
            r0 = [r0 menuState];
            r0 = [r0 theId];
    }
    return r0;
}

-(unsigned long long)menuStateIdAtStackDepth:(unsigned long long)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x10);
    r0 = [r0 objectAtDepth:arg2];
    if (r0 != 0x0) {
            r0 = [r0 menuState];
            r0 = [r0 theId];
    }
    return r0;
}

-(void *)currentMenuState {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = *(self + 0x10);
    r0 = [r0 peekStack];
    if (r0 != 0x0) {
            r0 = [r0 instance];
    }
    return r0;
}

-(void *)parameterWithKey:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r3;
            r19 = r2;
            r21 = r0;
            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = [r21 fetchMenuState:r20];
                    if (r0 != 0x0) {
                            r0 = [r0 parameters];
                            r0 = [r0 objectForKey:r2];
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
            r0 = 0x0;
    }
    return r0;
}

-(void *)currentMenuStateStack {
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
    r20 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 count];
            if (r0 != 0x0) {
                    r19 = @selector(count);
                    r19 = [NSMutableArray arrayWithCapacity:objc_msgSend(*(r20 + 0x10), r19)];
                    var_110 = q0;
                    r20 = *(r20 + 0x10);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r25 = *var_110;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_110 != r25) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            r0 = *(var_118 + r28 * 0x8);
                                            r0 = [r0 instance];
                                            if (r0 != 0x0) {
                                                    [r19 addObject:r2];
                                            }
                                            r28 = r28 + 0x1;
                                    } while (r28 < r22);
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
                    r0 = [NSArray arrayWithArray:r19];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)parametersForMenuStateWithId:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self fetchMenuState:arg2];
    if (r0 != 0x0) {
            r0 = [r0 parameters];
            if (r0 != 0x0) {
                    r19 = r0;
                    if ([r0 count] != 0x0) {
                            r0 = [NSDictionary dictionaryWithDictionary:r19];
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
            r0 = 0x0;
    }
    return r0;
}

-(void *)currentMenuStateIdStack {
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
    r20 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            r0 = [r0 count];
            if (r0 != 0x0) {
                    r19 = @selector(count);
                    r19 = [NSMutableArray arrayWithCapacity:objc_msgSend(*(r20 + 0x10), r19)];
                    var_110 = q0;
                    r0 = *(r20 + 0x10);
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_130 = r1;
                    var_128 = r0;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r22 = r0;
                            r28 = *var_110;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(var_128);
                                            }
                                            r26 = @selector(addObject:);
                                            [NSNumber numberWithUnsignedInteger:[[*(var_118 + r20 * 0x8) menuState] theId]];
                                            objc_msgSend(r19, r26);
                                            r20 = r20 + 0x1;
                                    } while (r20 < r22);
                                    r0 = objc_msgSend(var_128, var_130);
                                    r22 = r0;
                            } while (r0 != 0x0);
                    }
                    r0 = [NSArray arrayWithArray:r19];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)processMenuStateParameter:(void *)arg2 key:(void *)arg3 menuStateId:(unsigned long long)arg4 injection:(bool)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r19 = r5;
            r20 = r4;
            r23 = r3;
            r22 = r2;
            r21 = r0;
            r0 = [r3 isEqualToString:r2];
            if (r22 != 0x0 && (r0 & 0x1) == 0x0) {
                    r0 = [r21 processMenuStateParametersWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:r22] menuStateId:r20 injection:r19];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)setParameter:(void *)arg2 withKey:(void *)arg3 forMenuStateWithId:(unsigned long long)arg4 {
    r0 = [self processMenuStateParameter:arg2 key:arg3 menuStateId:arg4 injection:0x0];
    return r0;
}

-(bool)processMenuStateParametersWithDictionary:(void *)arg2 menuStateId:(unsigned long long)arg3 injection:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto loc_1005e518c;

loc_1005e5140:
    r22 = r4;
    r20 = r3;
    r19 = r2;
    r21 = r0;
    r0 = [r2 count];
    if (r0 == 0x0) goto .l1;

loc_1005e5164:
    if (r22 == 0x0) goto loc_1005e5194;

loc_1005e5168:
    r0 = [r21 fetchMenuStateInstance:r20];
    if (r0 == 0x0) goto .l1;

loc_1005e5180:
    r1 = @selector(injectParameters:);
    goto loc_1005e51c0;

loc_1005e51c0:
    objc_msgSend(r0, r1);
    r0 = 0x1;
    return r0;

.l1:
    return r0;

loc_1005e5194:
    r0 = [r21 fetchMenuState:r20];
    if (r0 == 0x0) goto .l1;

loc_1005e51ac:
    r0 = [r0 parameters];
    r1 = @selector(addEntriesFromDictionary:);
    goto loc_1005e51c0;

loc_1005e518c:
    r0 = 0x0;
    return r0;
}

-(bool)processMenuStateParameters:(void *)arg2 keys:(void *)arg3 menuStateId:(unsigned long long)arg4 injection:(bool)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (r3 != 0x0) {
            r20 = r5;
            r21 = r4;
            r22 = r3;
            r23 = r2;
            r24 = r0;
            r0 = [r3 count];
            if ([r23 count] != 0x0 && r23 != 0x0 && r0 != 0x0) {
                    r19 = @selector(count);
                    var_68 = r24;
                    stack[-112] = r21;
                    var_54 = r20;
                    r20 = objc_msgSend(r23, r19);
                    r0 = objc_msgSend(r22, r19);
                    if (r20 < r0) {
                            if (!CPU_FLAGS & B) {
                                    r24 = r0;
                            }
                            else {
                                    r24 = r20;
                            }
                    }
                    r25 = [NSMutableDictionary dictionaryWithCapacity:r2];
                    if (r24 != 0x0) {
                            r26 = 0x0;
                            do {
                                    r0 = [r22 objectAtIndex:r2];
                                    r0 = sub_1005d85d8(r0, 0x0);
                                    if (r0 != 0x0) {
                                            r21 = r0;
                                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                                    [r23 objectAtIndex:r2];
                                                    objc_msgSend(r25, r19);
                                            }
                                    }
                                    r26 = r26 + 0x1;
                            } while (r26 < r24);
                    }
                    r0 = [var_68 processMenuStateParametersWithDictionary:r25 menuStateId:stack[-112] injection:var_54];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)processMenuStateParametersWithObjectsAndKeys:(void *)arg2 menuStateId:(unsigned long long)arg3 injection:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r4;
            r24 = r3;
            r22 = r2;
            r21 = r0;
            if ([r2 count] != 0x0) {
                    r23 = [r22 count];
                    if ((r23 & 0x1) != 0x0) {
                            r23 = r23 - 0x1;
                            if (r23 != 0x0) {
                                    var_60 = r24;
                                    var_54 = r20;
                                    r24 = [NSMutableDictionary dictionaryWithCapacity:r2];
                                    if (r23 != 0x0) {
                                            r25 = 0x0;
                                            do {
                                                    r0 = [r22 objectAtIndex:r2];
                                                    r0 = sub_1005d85d8(r0, 0x0);
                                                    if (r0 != 0x0) {
                                                            r20 = r0;
                                                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                                                    [r22 objectAtIndex:r2];
                                                                    objc_msgSend(r24, r28);
                                                            }
                                                    }
                                                    r25 = r25 + 0x2;
                                            } while (r25 < r23);
                                    }
                                    r0 = [r21 processMenuStateParametersWithDictionary:r24 menuStateId:var_60 injection:var_54];
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            var_60 = r24;
                            var_54 = r20;
                            r24 = [NSMutableDictionary dictionaryWithCapacity:r2];
                            if (r23 != 0x0) {
                                    r25 = 0x0;
                                    do {
                                            r0 = [r22 objectAtIndex:r2];
                                            r0 = sub_1005d85d8(r0, 0x0);
                                            if (r0 != 0x0) {
                                                    r20 = r0;
                                                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                                            [r22 objectAtIndex:r2];
                                                            objc_msgSend(r24, r28);
                                                    }
                                            }
                                            r25 = r25 + 0x2;
                                    } while (r25 < r23);
                            }
                            r0 = [r21 processMenuStateParametersWithDictionary:r24 menuStateId:var_60 injection:var_54];
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)setParametersWithObjectsAndKeys:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r0 = [self processMenuStateParametersWithObjectsAndKeys:arg2 menuStateId:arg3 injection:0x0];
    return r0;
}

-(bool)setParameters:(void *)arg2 withKeys:(void *)arg3 forMenuStateWithId:(unsigned long long)arg4 {
    r0 = [self processMenuStateParameters:arg2 keys:arg3 menuStateId:arg4 injection:0x0];
    return r0;
}

-(bool)setParametersWithDictionary:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r0 = [self processMenuStateParametersWithDictionary:arg2 menuStateId:arg3 injection:0x0];
    return r0;
}

-(void)removeParameterWithKey:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r3;
            r21 = r2;
            r20 = r0;
            if (([r21 isEqualToString:r2] & 0x1) == 0x0) {
                    [r20 removeParametersWithKeys:[NSArray arrayWithObjects:r21] forMenuStateWithId:r19];
            }
    }
    return;
}

-(void)removeAllParametersForMenuStateWithId:(unsigned long long)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self fetchMenuState:arg2];
    if (r0 != 0x0) {
            [[r0 parameters] removeAllObjects];
    }
    return;
}

-(bool)injectParameter:(void *)arg2 withKey:(void *)arg3 forMenuStateWithId:(unsigned long long)arg4 {
    r0 = [self processMenuStateParameter:arg2 key:arg3 menuStateId:arg4 injection:0x1];
    return r0;
}

-(bool)injectParameters:(void *)arg2 withKeys:(void *)arg3 forMenuStateWithId:(unsigned long long)arg4 {
    r0 = [self processMenuStateParameters:arg2 keys:arg3 menuStateId:arg4 injection:0x1];
    return r0;
}

-(void)removeParametersWithKeys:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    if (r2 != 0x0) {
            r20 = r3;
            r19 = r2;
            r22 = r0;
            if ([r2 count] != 0x0) {
                    r0 = [r22 fetchMenuState:r20];
                    if (r0 != 0x0) {
                            r0 = [r0 parameters];
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    if ([r0 count] != 0x0) {
                                            var_110 = q0;
                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            if (r0 != 0x0) {
                                                    r22 = r0;
                                                    r24 = *var_110;
                                                    do {
                                                            r26 = 0x0;
                                                            do {
                                                                    if (*var_110 != r24) {
                                                                            objc_enumerationMutation(r19);
                                                                    }
                                                                    [r20 removeObjectForKey:r2];
                                                                    r26 = r26 + 0x1;
                                                            } while (r26 < r22);
                                                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r22 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                    }
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)injectParametersWithObjectsAndKeys:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r0 = [self processMenuStateParametersWithObjectsAndKeys:arg2 menuStateId:arg3 injection:0x1];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(bool)injectParametersWithDictionary:(void *)arg2 forMenuStateWithId:(unsigned long long)arg3 {
    r0 = [self processMenuStateParametersWithDictionary:arg2 menuStateId:arg3 injection:0x1];
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x28);
    return r0;
}

-(bool)enableInputOnlyAtTransitionEnd {
    r0 = *(int8_t *)(self + 0x30);
    return r0;
}

-(void)setEnableInputOnlyAtTransitionEnd:(bool)arg2 {
    *(int8_t *)(self + 0x30) = arg2;
    return;
}

@end