@implementation GADIntermissionStateMonitor

-(void *)init {
    r31 = r31 - 0xd0;
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
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_deactivationQueue));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setMaxConcurrentOperationCount:0x1];
            objc_initWeak(&stack[-120], r19);
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            [r22 addObserverForName:*0x100e9bfe8 object:0x0 queue:0x0 usingBlock:&var_90];
            r0 = @class(NSOperationQueue);
            r0 = [r0 mainQueue];
            [r0 retain];
            objc_copyWeak(&var_B8 + 0x20, &stack[-120]);
            [r22 addObserverForName:r25 object:0x0 queue:r24 usingBlock:&var_B8];
            [r24 release];
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(&stack[-120]);
    }
    r0 = r19;
    return r0;
}

-(void)intermissionDidBegin {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&self->_idleTimerWasOriginallyDisabled = [r0 isIdleTimerDisabled];
    [r0 setIdleTimerDisabled:0x1];
    *(int8_t *)(int64_t *)&self->_statusBarWasOriginallyHidden = [r0 isStatusBarHidden];
    [r0 release];
    return;
}

-(void)intermissionWillEnd {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r0 setIdleTimerDisabled:*(int8_t *)(int64_t *)&self->_idleTimerWasOriginallyDisabled];
    [r0 setStatusBarHidden:*(int8_t *)(int64_t *)&self->_statusBarWasOriginallyHidden];
    [r0 release];
    return;
}

-(void)setDeactivationQueueSuspended:(bool)arg2 {
    [self->_deactivationQueue setSuspended:arg2];
    return;
}

-(void)applicationWillEnterForeground {
    r31 = r31 - 0x1c0;
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
    r21 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_applicationBackgroundedDueToAdAction));
    if (*(int8_t *)(r21 + r8) != 0x0) {
            *(int8_t *)(r21 + r8) = 0x0;
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r19 = [r0 boolForKey:*0x100e9b478];
            [r0 release];
            if (r19 != 0x0) {
                    r0 = objc_loadWeakRetained((int64_t *)&r21->_presenterSource);
                    var_198 = r0;
                    r0 = [r0 activePresenters];
                    r0 = [r0 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_190 = r0;
                    var_1A0 = r1;
                    r24 = objc_msgSend(r0, r1);
                    if (r24 != 0x0) {
                            r23 = &var_160 + 0x28;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(var_190);
                                            }
                                            r27 = *(0x0 + r20 * 0x8);
                                            if ([r27 shouldDismissOnApplicationEnteringForeground] != 0x0) {
                                                    objc_initWeak(&stack[-320], r27);
                                                    objc_copyWeak(r23, &stack[-320]);
                                                    var_140 = [var_198 retain];
                                                    r0 = objc_retainBlock(&var_160);
                                                    r21 = r21->_deactivationQueue;
                                                    [r0 retain];
                                                    objc_msgSend(r21, r26);
                                                    [r27 release];
                                                    [r27 release];
                                                    [var_140 release];
                                                    objc_destroyWeak(r23);
                                                    objc_destroyWeak(&stack[-320]);
                                                    r21 = r28;
                                            }
                                            r20 = r20 + 0x1;
                                    } while (r20 < r24);
                                    r24 = objc_msgSend(var_190, var_1A0);
                            } while (r24 != 0x0);
                    }
                    [var_190 release];
                    [var_198 release];
            }
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r21->_presenterSource);
            var_198 = r0;
            r0 = [r0 activePresenters];
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_190 = r0;
            var_1A0 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r23 = &var_160 + 0x28;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_190);
                                    }
                                    r27 = *(0x0 + r20 * 0x8);
                                    if ([r27 shouldDismissOnApplicationEnteringForeground] != 0x0) {
                                            objc_initWeak(&stack[-320], r27);
                                            objc_copyWeak(r23, &stack[-320]);
                                            var_140 = [var_198 retain];
                                            r0 = objc_retainBlock(&var_160);
                                            r21 = r21->_deactivationQueue;
                                            [r0 retain];
                                            objc_msgSend(r21, r26);
                                            [r27 release];
                                            [r27 release];
                                            [var_140 release];
                                            objc_destroyWeak(r23);
                                            objc_destroyWeak(&stack[-320]);
                                            r21 = r28;
                                    }
                                    r20 = r20 + 0x1;
                            } while (r20 < r24);
                            r24 = objc_msgSend(var_190, var_1A0);
                    } while (r24 != 0x0);
            }
            [var_190 release];
            [var_198 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)presenterSource {
    r0 = objc_loadWeakRetained((int64_t *)&self->_presenterSource);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPresenterSource:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_presenterSource, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_presenterSource);
    objc_storeStrong((int64_t *)&self->_deactivationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end