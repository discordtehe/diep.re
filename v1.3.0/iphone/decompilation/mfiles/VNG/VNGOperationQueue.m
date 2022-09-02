@implementation VNGOperationQueue

+(void *)defaultQueue {
    if (*qword_1011da948 != -0x1) {
            dispatch_once(0x1011da948, 0x100e89ba8);
    }
    r0 = *0x1011da940;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setMaxConcurrentOperationCount:0x3];
    }
    r0 = r19;
    return r0;
}

-(void)addOperation:(void *)arg2 {
    r31 = r31 - 0x100;
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
    r21 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r21);
    r25 = [r0 respondsToSelector:@selector(operationQueue:shouldAdOperation:), r3];
    [r0 release];
    if (r25 != 0x0) {
            objc_initWeak(r29 - 0x58, r20);
            objc_initWeak(r29 - 0x60, r19);
            r24 = objc_loadWeakRetained(r21);
            [r25 retain];
            r25 = objc_loadWeakRetained(r29 - 0x60);
            r3 = r25;
            [r24 operationQueue:r20 shouldAdOperation:r3];
            [r25 release];
            [r20 release];
            [r24 release];
            objc_destroyWeak(r29 - 0x60);
            objc_destroyWeak(r29 - 0x58);
            if ((r23 & 0x1) != 0x0) {
                    [VungleOperation class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            [r19 willEnqueue];
                    }
                    r22 = @selector(respondsToSelector:);
                    r0 = objc_loadWeakRetained(r21);
                    r22 = objc_msgSend(r0, r22, @selector(operationQueue:willAddOperation:), r3);
                    [r0 release];
                    if (r22 != 0x0) {
                            objc_initWeak(r29 - 0x58, r20);
                            objc_initWeak(r29 - 0x60, r19);
                            r22 = objc_loadWeakRetained(r21);
                            [r26 retain];
                            objc_loadWeakRetained(r29 - 0x60);
                            [r22 operationQueue:r2 willAddOperation:r3];
                            [r26 release];
                            [r20 release];
                            [r22 release];
                            objc_destroyWeak(r29 - 0x60);
                            objc_destroyWeak(r29 - 0x58);
                    }
                    r24 = @selector(isKindOfClass:);
                    [VungleOperation class];
                    if (objc_msgSend(r19, r24) != 0x0) {
                            objc_initWeak(r29 - 0x58, r20);
                            objc_initWeak(r29 - 0x60, r19);
                            r0 = objc_loadWeakRetained(r21);
                            [r0 release];
                            if (r0 != 0x0) {
                                    objc_copyWeak(&var_98 + 0x28, r29 - 0x58);
                                    objc_copyWeak(&var_98 + 0x30, r29 - 0x60);
                                    r0 = objc_retainBlock(&var_98);
                                    [r19 appendFinishHandler:r0];
                                    [r0 release];
                                    objc_destroyWeak(&var_98 + 0x30);
                                    objc_destroyWeak(&var_98 + 0x28);
                            }
                    }
                    else {
                            objc_initWeak(r29 - 0x58, r20);
                            objc_initWeak(r29 - 0x60, r19);
                            r0 = [r19 completionBlock];
                            r29 = r29;
                            [r0 retain];
                            objc_copyWeak(&var_D8 + 0x30, r29 - 0x58);
                            objc_copyWeak(&var_D8 + 0x38, r29 - 0x60);
                            r0 = [r23 retain];
                            var_B0 = r0;
                            r0 = objc_retainBlock(&var_D8);
                            [r19 setCompletionBlock:r0];
                            [r0 release];
                            [var_B0 release];
                            objc_destroyWeak(&var_D8 + 0x38);
                            objc_destroyWeak(&var_D8 + 0x30);
                            [r23 release];
                    }
                    objc_destroyWeak(r29 - 0x60);
                    objc_destroyWeak(r29 - 0x58);
                    [[&var_E8 super] addOperation:r19];
            }
    }
    else {
            [VungleOperation class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    [r19 willEnqueue];
            }
            r22 = @selector(respondsToSelector:);
            r0 = objc_loadWeakRetained(r21);
            r22 = objc_msgSend(r0, r22, @selector(operationQueue:willAddOperation:), r3);
            [r0 release];
            if (r22 != 0x0) {
                    objc_initWeak(r29 - 0x58, r20);
                    objc_initWeak(r29 - 0x60, r19);
                    r22 = objc_loadWeakRetained(r21);
                    [r26 retain];
                    objc_loadWeakRetained(r29 - 0x60);
                    [r22 operationQueue:r2 willAddOperation:r3];
                    [r26 release];
                    [r20 release];
                    [r22 release];
                    objc_destroyWeak(r29 - 0x60);
                    objc_destroyWeak(r29 - 0x58);
            }
            r24 = @selector(isKindOfClass:);
            [VungleOperation class];
            if (objc_msgSend(r19, r24) != 0x0) {
                    objc_initWeak(r29 - 0x58, r20);
                    objc_initWeak(r29 - 0x60, r19);
                    r0 = objc_loadWeakRetained(r21);
                    [r0 release];
                    if (r0 != 0x0) {
                            objc_copyWeak(&var_98 + 0x28, r29 - 0x58);
                            objc_copyWeak(&var_98 + 0x30, r29 - 0x60);
                            r0 = objc_retainBlock(&var_98);
                            [r19 appendFinishHandler:r0];
                            [r0 release];
                            objc_destroyWeak(&var_98 + 0x30);
                            objc_destroyWeak(&var_98 + 0x28);
                    }
            }
            else {
                    objc_initWeak(r29 - 0x58, r20);
                    objc_initWeak(r29 - 0x60, r19);
                    r0 = [r19 completionBlock];
                    r29 = r29;
                    [r0 retain];
                    objc_copyWeak(&var_D8 + 0x30, r29 - 0x58);
                    objc_copyWeak(&var_D8 + 0x38, r29 - 0x60);
                    r0 = [r23 retain];
                    var_B0 = r0;
                    r0 = objc_retainBlock(&var_D8);
                    [r19 setCompletionBlock:r0];
                    [r0 release];
                    [var_B0 release];
                    objc_destroyWeak(&var_D8 + 0x38);
                    objc_destroyWeak(&var_D8 + 0x30);
                    [r23 release];
            }
            objc_destroyWeak(r29 - 0x60);
            objc_destroyWeak(r29 - 0x58);
            [[&var_E8 super] addOperation:r19];
    }
    [r19 release];
    return;
}

-(unsigned long long)countOfOperations {
    r0 = [self operations];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)addOperations:(void *)arg2 waitUntilFinished:(bool)arg3 {
    r31 = r31 - 0x1f0;
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
    r21 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    var_190 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_190;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_190 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            [r22 addOperation:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (r21 != 0x0) {
            r20 = @selector(countByEnumeratingWithState:objects:count:);
            var_1D0 = q0;
            r0 = [r19 retain];
            r21 = r0;
            r0 = objc_msgSend(r0, r20);
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_1D0;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_1D0 != r24) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_1D8 + r26 * 0x8) waitUntilFinished];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(unsigned long long)countOfActiveOperations {
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
    var_110 = q0;
    r0 = [self operations];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r21 = 0x0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r19);
                            }
                            r21 = r21 + [*(var_118 + r26 * 0x8) isExecuting];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    else {
            r21 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end