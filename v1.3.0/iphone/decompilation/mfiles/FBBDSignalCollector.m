@implementation FBBDSignalCollector

-(void)finalizeSignalsAndSendUsingCompletionBlock:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r20->_isSignalCollectorInitialized != 0x0 && r0 != 0x0 && *(int8_t *)(int64_t *)&r20->_isIntervalModeEnabled != 0x0) {
            if (dispatch_queue_get_label(*__dispatch_main_q) != dispatch_queue_get_label(0x0)) {
                    r21 = r20->_signalCollectionQueue;
                    var_28 = [r19 retain];
                    dispatch_async(r21, &var_50);
                    [var_28 release];
            }
    }
    [r19 release];
    return;
}

-(void)sendSignalsWithCompletionBlock:(void *)arg2 {
    r19 = [arg2 retain];
    var_38 = [NSMutableDictionary new];
    [self->_collectedSignalDict enumerateKeysAndObjectsUsingBlock:&var_88];
    r0 = self->_biometricSignalManager;
    r0 = [r0 biometricSignalsDict];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    [*(&var_60 + 0x28) addEntriesFromDictionary:r21];
    (*(r19 + 0x10))(r19, *(&var_60 + 0x28));
    [r19 release];
    [r21 release];
    _Block_object_dispose(&var_60, 0x8);
    [var_38 release];
    return;
}

-(void)collectStaticSignals {
    [FBBDSignalContext currentContextWithCompletionBlock:&var_28];
    return;
}

-(void)collectDynamicSignals {
    [FBBDSignalContext currentContextWithCompletionBlock:&var_28];
    return;
}

-(bool)isSignalEnabledForCurrentTierWithSignalFlags:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    if (objc_msgSend(self->_configDelegate, *(r8 + 0x578)) != 0x0) {
            r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    asm { sxtw       x9, w0 };
    reg_zero = r9 & !r19;
    if (reg_zero == 0x0) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r0 = r9 & r8;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_signalCollectionQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_collectedSignalDict, 0x0);
    objc_storeStrong((int64_t *)&self->_biometricSignalManager, 0x0);
    objc_storeStrong((int64_t *)&self->_dynamicLoadedLibraryProviderDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_loggerDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_signalsDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_configDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_allSupportedSignals, 0x0);
    return;
}

-(void *)initWithConfigDelegate:(void *)arg2 withSignalsDelegate:(void *)arg3 withLoggerDelegate:(void *)arg4 withDynamicLibraryProviderDelegate:(void *)arg5 withAppSessionId:(void *)arg6 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x240;
    r26 = arg5;
    r28 = arg4;
    r21 = arg3;
    r19 = arg2;
    r23 = [arg2 retain];
    var_268 = [r21 retain];
    r25 = [r28 retain];
    r27 = [r26 retain];
    r20 = [arg6 retain];
    r0 = [[&var_180 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            var_270 = r27;
            r0 = dispatch_queue_create("com.facebook.bdaas.signalCollection", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalCollectionQueue));
            r8 = *(r22 + r9);
            var_278 = r9;
            *(r22 + r9) = r0;
            [r8 release];
            r24 = (int64_t *)&r22->_configDelegate;
            objc_storeStrong(r24, r19);
            r27 = (int64_t *)&r22->_signalsDelegate;
            objc_storeStrong(r27, r21);
            r19 = (int64_t *)&r22->_loggerDelegate;
            objc_storeStrong(r19, r28);
            objc_storeStrong((int64_t *)&r22->_dynamicLoadedLibraryProviderDelegate, r26);
            r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r26 = *(r8 + 0x7f8);
            if (objc_msgSend(r23, r26) == 0x8000) {
                    r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r22->_isOffsite = r8;
            var_238 = r24;
            [FBBotDetectionLoggingUtils initializeWithConfigDelegate:*r24 withLoggerDelegate:*r19 withAppSessionId:r20];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_isIntervalModeEnabled));
            *(int8_t *)(r22 + r19) = 0x0;
            if ([r23 isNativeSignalIntervalModeEnabled] != 0x0) {
                    if ([r23 nativeSignalsBufferSize] != 0x0) {
                            var_280 = r20;
                            if ([r23 signalCollectionIntervalTime] >= 0x3e8) {
                                    var_290 = r25;
                                    stack[-664] = r23;
                                    r8 = 0x20c49ba5e353f7cf;
                                    asm { smulh      x8, x0, x8 };
                                    *(int8_t *)(r22 + r19) = 0x1;
                                    var_298 = (SAR(r8, 0x7)) + r8 / 0xffffffff80000000;
                                    [FBBDSignalCollectionExecutorBuilder setSignalsDelegate:*r27];
                                    [FBBDSignalParser initialize];
                                    r19 = @class(FBBDSignalParser);
                                    r20 = [[*var_238 signalConfig] retain];
                                    [r19 initWithSignalConfig:r20 onSurface:objc_msgSend(*var_238, r26)];
                                    [r20 release];
                                    r20 = [[FBBDSignalParser bdDynamicSignals] retain];
                                    r21 = [[FBBDSignalParser bdStaticSignals] retain];
                                    r0 = [r20 setByAddingObjectsFromSet:r21];
                                    r0 = [r0 retain];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_allSupportedSignals));
                                    r8 = *(r22 + r9);
                                    *(r22 + r9) = r0;
                                    [r8 release];
                                    [r21 release];
                                    [r20 release];
                                    r0 = [NSMutableDictionary new];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_collectedSignalDict));
                                    r8 = *(r22 + r9);
                                    var_248 = r9;
                                    var_240 = r22;
                                    *(r22 + r9) = r0;
                                    [r8 release];
                                    var_1B0 = q0;
                                    r0 = @class(FBBDSignalParser);
                                    r0 = [r0 bdStaticSignals];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                                    var_260 = r1;
                                    var_258 = r0;
                                    r0 = objc_msgSend(r0, r1);
                                    if (r0 != 0x0) {
                                            r27 = r0;
                                            var_250 = *var_1B0;
                                            do {
                                                    r25 = 0x0;
                                                    do {
                                                            if (*var_1B0 != var_250) {
                                                                    objc_enumerationMutation(var_258);
                                                            }
                                                            r26 = *(var_1B8 + r25 * 0x8);
                                                            r22 = [FBBotDetectionCircularBuffer alloc];
                                                            [r22 initWithCapacity:[*var_238 staticSignalsBufferCapacity]];
                                                            r28 = *(var_240 + var_248);
                                                            r0 = [r26 signalId];
                                                            r29 = r29;
                                                            [r0 retain];
                                                            [r28 setObject:r2 forKeyedSubscript:r3];
                                                            [r26 release];
                                                            [r22 release];
                                                            r25 = r25 + 0x1;
                                                    } while (r25 < r27);
                                                    r0 = objc_msgSend(var_258, var_260);
                                                    r27 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    var_2A0 = @selector(bdDynamicSignals);
                                    asm { scvtf      d8, x8 };
                                    [var_258 release];
                                    var_1F0 = q0;
                                    r0 = objc_msgSend(@class(FBBDSignalParser), var_2A0);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    var_258 = r0;
                                    r0 = objc_msgSend(r0, var_260);
                                    if (r0 != 0x0) {
                                            r28 = r0;
                                            var_250 = *var_1F0;
                                            do {
                                                    r27 = 0x0;
                                                    do {
                                                            if (*var_1F0 != var_250) {
                                                                    objc_enumerationMutation(var_258);
                                                            }
                                                            r22 = *(var_1F8 + r27 * 0x8);
                                                            r26 = [FBBotDetectionCircularBuffer alloc];
                                                            [r26 initWithCapacity:[*var_238 dynamicSignalsBufferCapacity]];
                                                            r25 = *(var_240 + var_248);
                                                            r0 = [r22 signalId];
                                                            r29 = r29;
                                                            [r0 retain];
                                                            [r25 setObject:r2 forKeyedSubscript:r3];
                                                            [r22 release];
                                                            [r26 release];
                                                            r27 = r27 + 0x1;
                                                    } while (r27 < r28);
                                                    r0 = objc_msgSend(var_258, var_260);
                                                    r28 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [var_258 release];
                                    r19 = [FBBDBiometricSignalsManager alloc];
                                    r20 = [[FBBDSignalParser bdBiometricSignals] retain];
                                    r0 = [r19 initWithSignals:r20 withConfigDelegate:*var_238];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_biometricSignalManager));
                                    r22 = var_240;
                                    r8 = *(r22 + r9);
                                    *(r22 + r9) = r0;
                                    [r8 release];
                                    [r20 release];
                                    objc_initWeak(&stack[-536], r22);
                                    objc_copyWeak(&var_230 + 0x20, &stack[-536]);
                                    [var_268 startTimerWithTimeInterval:r20 queue:&var_230 block:0x10];
                                    objc_destroyWeak(&var_230 + 0x20);
                                    objc_destroyWeak(&stack[-536]);
                                    r25 = var_290;
                                    r23 = stack[-664];
                            }
                            else {
                                    r0 = [NSMutableDictionary new];
                                    [r0 setObject:@"timer_started" forKeyedSubscript:@"o"];
                                    [r0 setObject:@"error" forKeyedSubscript:@"l"];
                                    [FBBotDetectionLoggingUtils logOperationData:r0];
                                    [r0 release];
                            }
                            r20 = var_280;
                    }
                    else {
                            r0 = [NSMutableDictionary new];
                            [r0 setObject:@"timer_started" forKeyedSubscript:@"o"];
                            r20 = r20;
                            [r0 setObject:@"error" forKeyedSubscript:@"l"];
                            [FBBotDetectionLoggingUtils logOperationData:r0];
                            [r0 release];
                    }
            }
            *(int8_t *)(int64_t *)&r22->_isSignalCollectorInitialized = 0x1;
            r27 = var_270;
    }
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r27 release];
    [r25 release];
    [var_268 release];
    [r23 release];
    if (**___stack_chk_guard == var_70) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end