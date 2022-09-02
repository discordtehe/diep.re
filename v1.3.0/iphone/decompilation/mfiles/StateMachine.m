@implementation StateMachine

+(void *)stateMachine {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

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
            r20 = @selector(init);
            *(int8_t *)(r19 + 0x70) = 0x0;
            *(int8_t *)(r19 + 0x72) = 0x0;
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            *(r19 + 0x8) = r0;
            [r0 setEnableInputOnlyAtTransitionEnd:0x1];
            [*(r19 + 0x8) setDelegate:r19];
            r20 = 0x0;
            do {
                    [*(r19 + 0x8) addMenuStateWithId:r2];
                    r20 = r20 + 0x1;
            } while (r20 != 0x2e);
    }
    r0 = r19;
    return r0;
}

-(void)destroyMenuState:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            [r2 release];
    }
    return;
}

-(void)willEnterState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    [self removeFromPendingList:arg2];
    return;
}

-(void *)createMenuState:(unsigned long long)arg2 {
    r9 = arg2 - 0x1;
    if (r9 <= 0x2b) {
            r0 = (0x100091660 + *(int8_t *)(0x100b9fbbb + r9) * 0x4)();
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    *(self + 0x8) = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(void)onDisconnect:(bool)arg2 shouldReconnect:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    [self clearAutoStateQueue];
    r21 = [r19 isStateOnTop:0x8];
    r22 = [r19 isStateOnTop:0x23];
    r0 = [r19 isStateOnStack:0x4];
    if (arg2 == 0x0) goto loc_100091928;

loc_100091918:
    *(int8_t *)(r19 + 0x70) = 0x1;
    goto loc_100091950;

loc_100091950:
    [r19 goToApplicationState:r2];
    return;

.l2:
    return;

loc_100091928:
    if (((r21 | r20) & 0x1) != 0x0 || ((r22 ^ 0x1) & 0x1) != 0x0) goto .l2;

loc_100091938:
    if ((r0 & 0x1) == 0x0) {
            [r19 leaveCurrentApplicationState];
    }
    goto loc_100091950;
}

-(void)goToApplicationState:(unsigned int)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [self currentState];
    if (([r19 isAutoQueuedState:r2] & 0x1) == 0x0 && [r19 isAutoQueuedStatePending] == 0x0) {
            [r19 currentState];
            if ([r19 isAutoQueuedState:r2] != 0x0) {
                    if (([r19 isAutoQueuedState:r2] & 0x1) == 0x0) {
                            [r19 clearAutoStateQueue];
                    }
            }
            sub_100091aac(r19 + 0x10, &var_24);
            [r19 reloadStateWithNewConfiguration:var_24 andLeaveFromStack:0x0];
            [*(r19 + 0x8) goToMenuStateWithId:var_24];
    }
    else {
            if ([r19 isAutoQueuedState:r2] != 0x0) {
                    [r19 queueNextApplicationState:r20];
            }
            else {
                    [r19 currentState];
                    if ([r19 isAutoQueuedState:r2] != 0x0) {
                            if (([r19 isAutoQueuedState:r2] & 0x1) == 0x0) {
                                    [r19 clearAutoStateQueue];
                            }
                    }
                    sub_100091aac(r19 + 0x10, &var_24);
                    [r19 reloadStateWithNewConfiguration:var_24 andLeaveFromStack:0x0];
                    [*(r19 + 0x8) goToMenuStateWithId:var_24];
            }
    }
    return;
}

-(void)reloadStateWithNewConfiguration:(unsigned int)arg2 andLeaveFromStack:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r19 = arg2;
    r20 = self;
    if ([[ConfigurationDownloader sharedConfigurationDownloader] isNewConfigurationAvailable] != 0x0) {
            r21 = [r20 currentState];
            if (r19 == 0x1 || r21 == 0x1) {
                    if (r19 == 0x1) {
                            if (CPU_FLAGS & E) {
                                    r23 = 0x1;
                            }
                    }
                    sub_10001237c(0x1, 0x1, 0x1);
                    r23 = r23 & r22;
                    if ((r23 & 0x1) != 0x0 || r21 == 0x1) {
                            [r20 setParameterForState:0x1 param:@(YES) withKey:@"skipAnimation"];
                            [*(r20 + 0x8) goToMenuStateWithId:r2];
                            if (r23 != 0x0) {
                                    *(int8_t *)(r20 + 0x72) = 0x1;
                            }
                            else {
                                    if (r21 == 0x1) {
                                            [*(r20 + 0x8) goToMenuStateWithId:r2];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)queueNextApplicationState:(unsigned int)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isStateAlreadyQueued:r2] & 0x1) == 0x0) {
            sub_100091aac(r19 + 0x40, &var_14);
    }
    return;
}

-(void)goToApplicationState:(unsigned int)arg2 withConditionBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    [self currentState];
    if (([r19 isAutoQueuedState:r2] & 0x1) == 0x0 && [r19 isAutoQueuedStatePending] == 0x0) {
            [r19 reloadStateWithNewConfiguration:r21 andLeaveFromStack:0x0];
            [*(r19 + 0x8) goToMenuStateWithId:r21 withConditionBlock:r20];
    }
    else {
            if ([r19 isAutoQueuedState:r2] != 0x0) {
                    [r19 queueNextApplicationState:r21];
            }
            else {
                    [r19 reloadStateWithNewConfiguration:r21 andLeaveFromStack:0x0];
                    [*(r19 + 0x8) goToMenuStateWithId:r21 withConditionBlock:r20];
            }
    }
    sub_100091aac(r19 + 0x10, &var_24);
    return;
}

-(void)leaveCurrentApplicationState {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19 reloadStateWithNewConfiguration:[*(self + 0x8) menuStateIdAtStackDepth:0x1] andLeaveFromStack:0x1];
    if (*(int8_t *)(r19 + 0x72) == 0x0) {
            [*(r19 + 0x8) leaveMenuState];
            if (*(r19 + 0x68) != 0x0) {
                    r8 = *(r19 + 0x48);
                    r9 = *(r19 + 0x60);
                    [r19 goToApplicationState:*(int32_t *)(*(r8 + (r9 >> 0x7 & 0x1fffffffffffff8)) + (r9 & 0x3ff) * 0x4)];
                    *(int128_t *)(r19 + 0x60) = *(int128_t *)(r19 + 0x60);
                    sub_100092ff4(r19 + 0x40);
            }
    }
    *(int8_t *)(r19 + 0x72) = 0x0;
    return;
}

-(void)leaveApplicationStateFromTop:(unsigned int)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [r19 reloadStateWithNewConfiguration:[*(self + 0x8) menuStateIdAtStackDepth:0x1] andLeaveFromStack:0x1];
    if (*(int8_t *)(r19 + 0x72) == 0x0) {
            [*(r19 + 0x8) leaveMenuStateWithConditionBlock:&var_40];
            if (*(r19 + 0x68) != 0x0) {
                    r8 = *(r19 + 0x48);
                    r9 = *(r19 + 0x60);
                    [r19 goToApplicationState:*(int32_t *)(*(r8 + (r9 >> 0x7 & 0x1fffffffffffff8)) + (r9 & 0x3ff) * 0x4)];
                    *(int128_t *)(r19 + 0x60) = *(int128_t *)(r19 + 0x60);
                    sub_100092ff4(r19 + 0x40);
            }
    }
    *(int8_t *)(r19 + 0x72) = 0x0;
    return;
}

-(void)clearApplicationStates {
    [*(self + 0x8) clearMenuStates];
    return;
}

-(void)setParametersForState:(unsigned int)arg2 withDictionary:(void *)arg3 {
    [*(self + 0x8) setParametersWithDictionary:arg3 forMenuStateWithId:arg2];
    return;
}

-(void)setParameterForState:(unsigned int)arg2 param:(void *)arg3 withKey:(void *)arg4 {
    [*(self + 0x8) setParameter:arg3 withKey:arg4 forMenuStateWithId:arg2];
    return;
}

-(void)injectParameterForState:(unsigned int)arg2 param:(void *)arg3 withKey:(void *)arg4 {
    [*(self + 0x8) injectParameter:arg3 withKey:arg4 forMenuStateWithId:arg2];
    return;
}

-(void *)instanceOfState:(unsigned int)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 menuStateForId:arg2];
    return r0;
}

-(void *)instanceOfStateOnTop {
    r0 = *(self + 0x8);
    r0 = [r0 currentMenuState];
    return r0;
}

-(void)markToShowAd {
    [*(self + 0x8) setParameter:@(YES) withKey:@"showPopup" forMenuStateWithId:0x1];
    return;
}

-(void)insertParameterForState:(unsigned int)arg2 param:(void *)arg3 withKey:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    r8 = &@selector(injectParameterForState:param:withKey:);
    if ([self isStateOnTop:r2] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(setParameterForState:param:withKey:);
            }
            else {
                    r8 = &@selector(injectParameterForState:param:withKey:);
            }
    }
    objc_msgSend(r22, *r8);
    return;
}

-(bool)isStateOnTop:(unsigned int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(self + 0x8);
    r0 = [r0 currentMenuStateId];
    if (r0 == arg2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isStateOnStack:(unsigned int)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 isMenuStateIdOnStack:arg2];
    return r0;
}

-(unsigned int)currentState {
    r0 = *(self + 0x8);
    r0 = [r0 currentMenuStateId];
    return r0;
}

-(void *)currentStateInstance {
    r0 = *(self + 0x8);
    r0 = [r0 currentMenuState];
    return r0;
}

-(void)refreshStates {
    [*(self + 0x8) refreshAllMenuStates];
    return;
}

-(void)clearStates {
    [*(self + 0x8) clearMenuStates];
    return;
}

-(void)clearAutoStateQueue {
    sub_100092644(self + 0x40);
    return;
}

-(void)onBackButtonPressed {
    [*(self + 0x8) processContextEvent:@"event_backButton" withData:0x0];
    return;
}

-(bool)isAutoQueuedState:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    r9 = *(int128_t *)0x1011d15a8;
    if (r9 == *(int128_t *)0x1011d15b0) goto loc_100092058;

loc_100092028:
    r9 = *(int128_t *)0x1011d15a8;
    if (*(int32_t *)r9 == r2) goto loc_100092058;

loc_100092034:
    r9 = *(int128_t *)0x1011d15a8;
    r9 = r9 + 0x4;
    goto loc_100092038;

loc_100092038:
    if (*(int128_t *)0x1011d15b0 == r9) goto loc_100092054;

loc_100092040:
    r10 = *(int32_t *)r9;
    r9 = r9 + 0x4;
    if (r10 != r2) goto loc_100092038;

loc_10009204c:
    r9 = r9 - 0x4;
    goto loc_100092058;

loc_100092058:
    if (r9 != *(int128_t *)0x1011d15b0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;

loc_100092054:
    r9 = *(int128_t *)0x1011d15b0;
    goto loc_100092058;
}

-(bool)isStateAlreadyQueued:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    r11 = *(r0 + 0x60);
    r9 = *(int128_t *)(r0 + 0x48);
    r10 = *(int128_t *)(r0 + 0x50);
    r12 = r9 + (r11 >> 0x7 & 0x1fffffffffffff8);
    if (r10 != r9) {
            r8 = *r12;
            r8 = r8 + (r11 & 0x3ff) * 0x4;
            r11 = *(r0 + 0x68) + r11;
            r13 = r9 + (r11 >> 0x7 & 0x1fffffffffffff8);
            r14 = *r13;
            r14 = r14 + (r11 & 0x3ff) * 0x4;
    }
    else {
            r8 = 0x0;
            r14 = 0x0;
            r11 = *(r0 + 0x68) + r11;
            r13 = r9 + (r11 >> 0x7 & 0x1fffffffffffff8);
    }
    while (r14 != r8) {
            if (*(int32_t *)r8 == r2) {
                break;
            }
            r8 = r8 + 0x4;
            if (r8 - *r12 != 0x1000) {
                continue;
            }
            r12 = r12 + 0x8;
            r8 = *r12;
    }
    if (r10 != r9) {
            r9 = *r13;
            r9 = r9 + (r11 & 0x3ff) * 0x4;
    }
    else {
            r9 = 0x0;
    }
    if (r9 != r8) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isAutoQueuedStatePending {
    r0 = self;
    if (*(r0 + 0x38) != 0x0) {
            r8 = *(r0 + 0x18);
            r9 = *(r0 + 0x30);
            r0 = [r0 isAutoQueuedState:*(int32_t *)(*(r8 + (r9 >> 0x7 & 0x1fffffffffffff8)) + (r9 & 0x3ff) * 0x4)];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)removeFromPendingList:(unsigned int)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r9 = *(self + 0x30);
    r8 = *(int128_t *)(self + 0x18);
    r10 = *(int128_t *)(self + 0x20);
    r0 = r8 + (r9 >> 0x7 & 0x1fffffffffffff8);
    if (r10 != r8) {
            r1 = *r0 + (r9 & 0x3ff) * 0x4;
    }
    else {
            r1 = 0x0;
    }
    r20 = r19 + 0x10;
    r9 = *(r19 + 0x38) + r9;
    r2 = r8 + (r9 >> 0x7 & 0x1fffffffffffff8);
    if (r10 != r8) {
            r3 = *r2 + (r9 & 0x3ff) * 0x4;
    }
    else {
            r3 = 0x0;
    }
    r0 = sub_1000924f4(r0, r1, r2, r3, &var_14);
    r2 = r0;
    r5 = r1;
    r8 = *(int128_t *)(r19 + 0x30);
    r8 = r8 + *(int128_t *)(r19 + 0x38);
    r10 = *(int128_t *)(r19 + 0x18);
    r3 = r10 + (r8 >> 0x7 & 0x1fffffffffffff8);
    sub_10009223c(r20, r2, r5, r3);
    return;
}

-(bool)receivedGameOver {
    r0 = *(int8_t *)(self + 0x71);
    return r0;
}

-(void)setReceivedGameOver:(bool)arg2 {
    *(int8_t *)(self + 0x71) = arg2;
    return;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)storedLeaderboard {
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    return r0;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((sign_extend_64(*(int8_t *)(self + 0x8f)) & 0xffffffff80000000) != 0x0) {
            operator delete(*(r19 + 0x78));
    }
    sub_1000925fc(r19 + 0x40);
    sub_1000925fc(r19 + 0x10);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(int128_t *)(r0 + 0x78) = 0x0;
    *(int128_t *)(r0 + 0x80) = 0x0;
    *(r0 + 0x88) = 0x0;
    *(int128_t *)(r0 + 0x10) = q0;
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(r0 + 0x30) = q0;
    *(int128_t *)(r0 + 0x40) = q0;
    *(int128_t *)(r0 + 0x50) = q0;
    *(int128_t *)(r0 + 0x60) = q0;
    return r0;
}

@end