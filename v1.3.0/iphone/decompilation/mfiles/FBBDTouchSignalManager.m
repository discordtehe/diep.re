@implementation FBBDTouchSignalManager

-(void *)touchSignalsArray {
    r0 = self->_circularBuffer;
    r0 = [r0 readAllObjects];
    return r0;
}

-(void *)initWithConfigDelegate:(void *)arg2 withTouchSignalFlags:(int)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [[FBBotDetectionCircularBuffer alloc] initWithCapacity:[r19 biometricSignalsBufferCapacity]];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_circularBuffer));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r20->_touchSignalFlags = r22;
            objc_storeStrong((int64_t *)&r20->_configDelegate, r21);
            r0 = [FBBDTapGestureRecognizer alloc];
            r0 = [r0 initWithTarget:0x0 action:0x0];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_bdTapGestureRecognizer));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [*(r20 + r21) setCancelsTouchesInView:0x0];
            [*(r20 + r21) setBdTapGestureRecognizerDelegate:r20];
            objc_initWeak(&stack[-88], r20);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            dispatch_async(*__dispatch_main_q, &var_70);
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_circularBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_bdTapGestureRecognizer, 0x0);
    return;
}

-(void)touchOccuredWithTouches:(void *)arg2 withEvent:(void *)arg3 {
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x1f0;
    var_190 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    r20 = [arg2 retain];
    if (dispatch_queue_get_label(*__dispatch_main_q) != dispatch_queue_get_label(0x0)) {
            v0 = 0x0;
            var_160 = q0;
            var_288 = r20;
            r0 = [r20 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_270 = r0;
            var_280 = r1;
            r0 = objc_msgSend(r0, r1);
            var_1A0 = r0;
            if (r0 != 0x0) {
                    var_250 = *var_160;
                    var_258 = sign_extend_64(*(int32_t *)ivar_offset(_configDelegate));
                    var_198 = sign_extend_64(*(int32_t *)ivar_offset(_circularBuffer));
                    var_260 = sign_extend_64(*(int32_t *)ivar_offset(_touchSignalFlags));
                    r24 = var_190;
                    r25 = var_258;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_160 != var_250) {
                                            objc_enumerationMutation(var_270);
                                    }
                                    r23 = *(var_168 + r21 * 0x8);
                                    r0 = [NSNumber numberWithUnsignedLong:r23];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r23 locationInView:0x0];
                                    v9 = v0;
                                    v10 = v1;
                                    if (sub_1009f77b0(0x9, 0x1, 0x0) != 0x0) {
                                            [r23 azimuthAngleInView:0x0];
                                    }
                                    [r23 force];
                                    v11 = v0;
                                    [r23 maximumPossibleForce];
                                    v12 = v0;
                                    [r23 majorRadius];
                                    v13 = v0;
                                    [r23 majorRadiusTolerance];
                                    v14 = v0;
                                    r19 = [r23 type];
                                    r0 = [r23 phase];
                                    r8 = 0x3;
                                    r10 = var_174;
                                    if (r0 == 0x4) {
                                            if (!CPU_FLAGS & E) {
                                                    r8 = r10;
                                            }
                                            else {
                                                    r8 = 0x3;
                                            }
                                    }
                                    if (r0 == 0x3) {
                                            if (!CPU_FLAGS & E) {
                                                    r8 = r8;
                                            }
                                            else {
                                                    r8 = 0x1;
                                            }
                                    }
                                    if (r0 == 0x2) {
                                            if (!CPU_FLAGS & E) {
                                                    r8 = r8;
                                            }
                                            else {
                                                    r8 = 0x0;
                                            }
                                    }
                                    r9 = 0x2;
                                    if (r0 == 0x1) {
                                            if (!CPU_FLAGS & E) {
                                                    r9 = r10;
                                            }
                                            else {
                                                    r9 = 0x2;
                                            }
                                    }
                                    if (r0 == 0x0) {
                                            if (!CPU_FLAGS & E) {
                                                    r9 = r9;
                                            }
                                            else {
                                                    r9 = 0x0;
                                            }
                                    }
                                    if (r0 > 0x1) {
                                            if (!CPU_FLAGS & G) {
                                                    r22 = r9;
                                            }
                                            else {
                                                    r22 = r8;
                                            }
                                    }
                                    r26 = @selector(alloc);
                                    r20 = objc_msgSend(@class(FBBDTouchSignalValue), r26);
                                    [*(r24 + r25) minDistanceBetweenTouches];
                                    var_180 = r27;
                                    var_174 = r22;
                                    v1 = v10;
                                    r19 = [r20 initWithTouchId:r27 withTouchEventAction:r22 withTouchType:r19 withLocation:r5 withForce:r6 withMaxForce:r7 withMajorRadius:stack[-656] withMajorRadiusTolerance:var_288 withAzimuthAngle:var_280 withMinDistanceBetweenTouches:@selector(addObject:)];
                                    r0 = objc_msgSend(@class(FBBDSignalValue), r26);
                                    var_188 = r19;
                                    r27 = [r0 initWithTouchValue:r19];
                                    r28 = [objc_msgSend(@class(FBBDSignalValueOrError), r26) initWithValue:r27];
                                    r0 = [r23 view];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r19 = [NSStringFromClass([r0 class]) retain];
                                    [r20 release];
                                    r0 = [FBBDSignalContext contextWithContextName:r19];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r23 timestamp];
                                    v9 = v9;
                                    if ([*(r24 + r25) surfaceFlag] == 0x8000) {
                                            if (CPU_FLAGS & E) {
                                                    r20 = 0x1;
                                            }
                                    }
                                    r0 = objc_msgSend(@class(FBBDCollectedSignal), r26);
                                    v0 = v9;
                                    r23 = [r0 initWithTime:r22 withContext:r28 withValueOrError:r20 withIsOffsiteFlag:r5];
                                    r0 = *(r24 + var_198);
                                    r0 = [r0 readLatestObject];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    if (([r23 isEqualToCollectedSignal:r20 withFlags:sign_extend_64(*(int32_t *)(r24 + var_260))] & 0x1) == 0x0) {
                                            [*(var_190 + var_198) addObject:r2];
                                    }
                                    [r20 release];
                                    [r23 release];
                                    [r22 release];
                                    [r19 release];
                                    [r28 release];
                                    [r27 release];
                                    [var_188 release];
                                    [var_180 release];
                                    r21 = r21 + 0x1;
                            } while (r21 < var_1A0);
                            r0 = objc_msgSend(var_270, var_280);
                            var_1A0 = r0;
                    } while (r0 != 0x0);
            }
            [var_270 release];
            r20 = var_288;
    }
    [r20 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;
}

@end