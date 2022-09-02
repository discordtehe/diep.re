@implementation VNGSendReportAdsOperation

-(void *)initWithLocalReportPaths:(void *)arg2 reportAdURL:(void *)arg3 {
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
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_F0 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_isExecuting = 0x0;
            *(int8_t *)(int64_t *)&r21->_isFinished = 0x0;
            r0 = @class(NSMutableArray);
            r0 = [r0 array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completions));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            var_138 = r23;
            r23 = [[r21 addOperationsWithPaths:r23 reportAdURL:r20] retain];
            r0 = @class(NSMutableArray);
            r0 = [r0 array];
            r0 = [r0 retain];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_internalErrors));
            r8 = *(r21 + r26);
            *(r21 + r26) = r0;
            [r8 release];
            var_120 = q0;
            r0 = [r23 retain];
            r22 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r24 = r0;
                    r27 = *var_120;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_120 != r27) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [*(r21 + r26) addObject:r2];
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [r22 release];
            [r22 release];
            r23 = var_138;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)appendFinishHandler:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r22 = [r2 retain];
            r20 = [[r0 completions] retain];
            objc_retainBlock(r2);
            [r22 release];
            [r20 addObject:r2];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)setIsExecuting:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (([self isExecuting] ^ r20) == 0x1) {
            [r19 willChangeValueForKey:@"isExecuting"];
            *(int8_t *)(int64_t *)&r19->_isExecuting = r20;
            [r19 didChangeValueForKey:@"isExecuting"];
    }
    return;
}

-(void)start {
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
    [self setIsExecuting:0x1];
    r22 = [[r19 internalErrors] retain];
    r21 = [[NSSet setWithArray:r22] retain];
    [r22 release];
    var_110 = q0;
    r0 = [r19 completions];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r25 = 0x0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r22);
                            }
                            r26 = objc_retainBlock(*(var_118 + r28 * 0x8));
                            [r25 release];
                            (*(r26 + 0x10))(r26, r19, r21);
                            r28 = r28 + 0x1;
                            r25 = r26;
                    } while (r28 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
                    r25 = r26;
            } while (r0 != 0x0);
            [r26 release];
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    [r19 setIsExecuting:0x0];
    [r19 setIsFinished:0x1];
    [r21 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)operationCompletionResponse:(void *)arg2 report:(void *)arg3 error:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = @selector(delegate);
            r23 = [objc_msgSend(r22, r23) retain];
            r0 = [r20 toDictionary];
            r29 = r29;
            r24 = [r0 retain];
            [r23 didSendReport:r24 error:r21];
            [r24 release];
            [r23 release];
    }
    if (r21 == 0x0) goto loc_10060dcb4;

loc_10060dc04:
    r0 = [r20 retain];
    r24 = r0;
    [r0 setReportStatus:0x4];
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 saveObject:r24 error:&var_60];
    [r24 release];
    [var_60 retain];
    [r0 release];
    r0 = [r22 internalErrors];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r24 release];
    r0 = r22;
    goto loc_10060dea8;

loc_10060dea8:
    [r0 release];
    goto loc_10060deac;

loc_10060deac:
    var_48 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_10060dcb4:
    if ([r19 statusCode] < 0xc8 || [r19 statusCode] > 0x12b) goto loc_10060dd70;

loc_10060dce4:
    r0 = [VNGPersistenceManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    [r0 removeObject:r20 error:&var_68];
    r23 = [var_68 retain];
    [r0 release];
    if (r23 == 0x0) goto loc_10060deac;

loc_10060dd34:
    r0 = [r22 internalErrors];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r22 release];
    r0 = r23;
    goto loc_10060dea8;

loc_10060dd70:
    r0 = [r20 retain];
    r24 = r0;
    [r0 setReportStatus:0x4];
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 saveObject:r24 error:&var_70];
    [r24 release];
    [var_70 retain];
    [r0 release];
    r24 = objc_alloc();
    r25 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    [r24 initWithDomain:@"com.vungle.reportAdOperation" code:0xffffffffffffabc1 userInfo:r25];
    [r25 release];
    r0 = [r22 internalErrors];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r23 release];
    [r22 release];
    r0 = r24;
    goto loc_10060dea8;
}

-(void)isFinished:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if (([self isFinished] ^ r20) == 0x1) {
            [r19 willChangeValueForKey:@"isFinished"];
            *(int8_t *)(int64_t *)&r19->_isFinished = r20;
            [r19 didChangeValueForKey:@"isFinished"];
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isFinished {
    r0 = *(int8_t *)(int64_t *)&self->_isFinished;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setIsFinished:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isFinished = arg2;
    return;
}

-(bool)isExecuting {
    r0 = *(int8_t *)(int64_t *)&self->_isExecuting;
    return r0;
}

-(void *)internalErrors {
    r0 = self->_internalErrors;
    return r0;
}

-(void)setInternalErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalErrors, arg2);
    return;
}

-(void)setCompletions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_completions, arg2);
    return;
}

-(void *)addOperationsWithPaths:(void *)arg2 reportAdURL:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x370;
    var_348 = self;
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r24 = [objc_alloc() initWithCapacity:[r21 count]];
    var_3A0 = [[NSMutableArray array] retain];
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 loadObjectsWithURLs:r21 error:&var_208];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r23 = [var_208 retain];
    [r20 release];
    var_3C0 = r22;
    var_3B8 = r21;
    var_3C8 = r24;
    if (r23 != 0x0) {
            if ([r23 code] == 0xffffffffffffec7a) {
                    r21 = [[r23 userInfo] retain];
                    r0 = [NSError errorWithDomain:@"com.vungle.reportAdOperation" code:0xffffffffffffabc0 userInfo:r21];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r23 release];
                    [r21 release];
                    r23 = r20;
            }
            var_360 = r23;
            [var_3A0 addObject:r2];
    }
    else {
            var_360 = 0x0;
    }
    var_240 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_350 = r0;
    var_3B0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r20 = r0;
            var_330 = &var_290 + 0x30;
            r8 = *_NSLocalizedDescriptionKey;
            r26 = *var_240;
            var_3A8 = *r8;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_240 != r26) {
                                    objc_enumerationMutation(var_350);
                            }
                            r25 = [*(var_248 + r22 * 0x8) retain];
                            r0 = [VungleSDK sharedSDK];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = [r0 isAdPlaying];
                            [r0 release];
                            if ([r25 reportStatus] != 0x2) {
                                    if ([r25 reportStatus] != 0x4) {
                                            asm { ccmp       w8, #0x0, #0x0, ne };
                                    }
                                    if (!CPU_FLAGS & E) {
                                            r0 = [r25 toDictionary];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r23 = [r0 mutableCopy];
                                            [r0 release];
                                            if (r23 != 0x0) {
                                                    objc_initWeak(&stack[-616], var_348);
                                                    [[VNGNetworkManager sharedManager] retain];
                                                    objc_copyWeak(var_330, &stack[-616]);
                                                    var_268 = [var_360 retain];
                                                    r0 = [r28 reportAdOperationWithInfo:r23 complete:&var_290];
                                                    r29 = r29;
                                                    r27 = [r0 retain];
                                                    [r28 release];
                                                    if (r27 != 0x0) {
                                                            [var_348 addDependency:r27];
                                                            r0 = [VNGNetworkManager sharedManager];
                                                            r0 = [r0 retain];
                                                            [r0 sendVungleOperation:r27];
                                                            [r0 release];
                                                            [r25 setReportStatus:0x3];
                                                            r0 = [VNGPersistenceManager sharedManager];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 saveObject:r25 error:&var_298];
                                                            [r0 release];
                                                    }
                                                    [r27 release];
                                                    [var_268 release];
                                                    objc_destroyWeak(var_330);
                                                    objc_destroyWeak(&stack[-616]);
                                            }
                                            else {
                                                    r27 = objc_alloc();
                                                    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xf8 forKeys:r29 - 0x100 count:0x1];
                                                    r29 = r29;
                                                    [r27 initWithDomain:@"com.vungle.reportAdOperation" code:0xffffffffffffabc0 userInfo:[r0 retain]];
                                                    [var_3A0 addObject:r2];
                                                    [r27 release];
                                                    [r28 release];
                                            }
                                            [r23 release];
                                    }
                            }
                            else {
                                    r0 = [r25 toDictionary];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = [r0 mutableCopy];
                                    [r0 release];
                                    if (r23 != 0x0) {
                                            objc_initWeak(&stack[-616], var_348);
                                            [[VNGNetworkManager sharedManager] retain];
                                            objc_copyWeak(var_330, &stack[-616]);
                                            var_268 = [var_360 retain];
                                            r0 = [r28 reportAdOperationWithInfo:r23 complete:&var_290];
                                            r29 = r29;
                                            r27 = [r0 retain];
                                            [r28 release];
                                            if (r27 != 0x0) {
                                                    [var_348 addDependency:r27];
                                                    r0 = [VNGNetworkManager sharedManager];
                                                    r0 = [r0 retain];
                                                    [r0 sendVungleOperation:r27];
                                                    [r0 release];
                                                    [r25 setReportStatus:0x3];
                                                    r0 = [VNGPersistenceManager sharedManager];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 saveObject:r25 error:&var_298];
                                                    [r0 release];
                                            }
                                            [r27 release];
                                            [var_268 release];
                                            objc_destroyWeak(var_330);
                                            objc_destroyWeak(&stack[-616]);
                                    }
                                    else {
                                            r27 = objc_alloc();
                                            r0 = [NSDictionary dictionaryWithObjects:r29 - 0xf8 forKeys:r29 - 0x100 count:0x1];
                                            r29 = r29;
                                            [r27 initWithDomain:@"com.vungle.reportAdOperation" code:0xffffffffffffabc0 userInfo:[r0 retain]];
                                            [var_3A0 addObject:r2];
                                            [r27 release];
                                            [r28 release];
                                    }
                                    [r23 release];
                            }
                            [r25 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r20);
                    r0 = objc_msgSend(var_350, var_3B0);
                    r20 = r0;
            } while (r0 != 0x0);
    }
    [var_350 release];
    var_2D0 = q0;
    r0 = [var_3C8 retain];
    r20 = r0;
    r0 = objc_msgSend(r0, var_3B0);
    if (r0 != 0x0) {
            r21 = r0;
            r22 = 0x0;
            r24 = *var_2D0;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_2D0 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            r19 = *(var_2D8 + r26 * 0x8);
                            if (r22 != 0x0) {
                                    [r19 addDependency:r2];
                            }
                            r19 = [r19 retain];
                            [r22 release];
                            r26 = r26 + 0x1;
                            r22 = r19;
                    } while (r26 < r21);
                    r0 = objc_msgSend(r20, var_3B0);
                    r21 = r0;
                    r22 = r19;
            } while (r0 != 0x0);
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    var_310 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r0 = objc_msgSend(r0, var_3B0);
    if (r0 != 0x0) {
            r21 = r0;
            r26 = *var_310;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_310 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = [VNGOperationQueue defaultQueue];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 addOperation:r2];
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r0 = objc_msgSend(r20, var_3B0);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    [var_350 release];
    [var_360 release];
    [r20 release];
    [var_3C0 release];
    [var_3B8 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [var_3A0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)completions {
    r0 = self->_completions;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completions, 0x0);
    objc_storeStrong((int64_t *)&self->_internalErrors, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end