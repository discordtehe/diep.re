@implementation GADAdLoadMonitor

-(void *)initWithMessageSource:(void *)arg2 view:(void *)arg3 completionHandler:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_70 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r23 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r27);
            *(r22 + r27) = r0;
            [r8 release];
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r22->_monitoredView, r20);
            if (r20 == 0x0) {
                    *(int8_t *)(int64_t *)&r22->_viewRenderedCheckComplete = 0x1;
            }
            objc_initWeak(&stack[-136], r22);
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c2f0 object:r19 queue:0x0 usingBlock:&var_A0];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r25 addObserverForName:*0x100e9c248 object:r19 queue:r27 usingBlock:&var_C8];
            [r27 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)handleDelayLoadWithParameters:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008482a8;

loc_100848270:
    r21 = [sub_1008098f8(0x8, 0x0) retain];
    [r20 updateLoadStatusWithError:r21];
    [r21 release];
    goto loc_100848338;

loc_100848338:
    [r19 release];
    return;

loc_1008482a8:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1008482e4;

loc_1008482d0:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_unmatchedStartDelayCount));
    r9 = *(r20 + r8);
    r9 = r9 + 0x1;
    goto loc_100848320;

loc_100848320:
    *(r20 + r8) = r9;
    goto loc_100848324;

loc_100848324:
    [r20 updateLoadStatusWithError:0x0];
    goto loc_100848338;

loc_1008482e4:
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100848324;

loc_10084830c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_unmatchedStartDelayCount));
    r9 = *(r20 + r8);
    if (r9 == 0x0) goto loc_100848324;

loc_10084831c:
    r9 = r9 - 0x1;
    goto loc_100848320;
}

-(void)updateViewRenderedStatus {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_monitoredView);
    if (r19 != 0x0) {
            if (sub_1008c5f80(r19) != 0x0) {
                    [r20->_scheduler stop];
                    *(int8_t *)(int64_t *)&r20->_viewRenderedCheckComplete = 0x1;
                    [r20 updateLoadStatusWithError:0x0];
            }
    }
    else {
            [r20->_scheduler stop];
    }
    [r19 release];
    return;
}

-(void)assetsDidFinishLoadWithError:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_assetsDidFinishLoad));
    if (*(int8_t *)(r20 + r24) == 0x0) {
            if (r19 == 0x0 && r20->_completionHandler != 0x0) {
                    if (*(int8_t *)(int64_t *)&r20->_viewRenderedCheckComplete == 0x0) {
                            r0 = [GADSettings sharedInstance];
                            r0 = [r0 retain];
                            [r0 doubleForKey:*0x100e9b5e0];
                            [r0 release];
                            r0 = [GADScheduler alloc];
                            r0 = [r0 initWithInterval:*0x100e9b5e0];
                            r25 = sign_extend_64(*(int32_t *)ivar_offset(_scheduler));
                            r8 = *(r20 + r25);
                            *(r20 + r25) = r0;
                            [r8 release];
                            objc_initWeak(&stack[-104], r20);
                            [*__dispatch_main_q retain];
                            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
                            [r22 scheduleOnQueue:r23 block:&var_80];
                            [*__dispatch_main_q release];
                            [*(r20 + r25) start];
                            objc_destroyWeak(&var_80 + 0x20);
                            objc_destroyWeak(&stack[-104]);
                    }
            }
            *(int8_t *)(r20 + r24) = 0x1;
            [r20 updateLoadStatusWithError:r19];
    }
    [r19 release];
    return;
}

-(void)loadingAndRenderingCompletedWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20->_scheduler stop];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(r20 + r21);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r20 + r21);
            *(r20 + r21) = 0x0;
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)updateLoadStatusWithError:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [r20 loadingAndRenderingCompletedWithError:r19];
    }
    else {
            if (r20->_unmatchedStartDelayCount == 0x0) {
                    if (*(int8_t *)(int64_t *)&r20->_assetsDidFinishLoad != 0x0) {
                            if (*(int8_t *)(int64_t *)&r20->_viewRenderedCheckComplete != 0x0) {
                                    [r20 loadingAndRenderingCompletedWithError:r19];
                            }
                    }
            }
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_monitoredView);
    objc_storeStrong((int64_t *)&self->_scheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end