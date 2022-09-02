@implementation FBBDBiometricSignalsManager

-(void *)biometricSignalsDict {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [NSMutableDictionary new];
    r0 = self->_touchManager;
    if (r0 != 0x0) {
            r20 = [[r0 touchSignalsArray] retain];
            r21 = [@(0x4e84) retain];
            [r19 setObject:r20 forKeyedSubscript:r21];
            [r21 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
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

-(void *)initWithSignals:(void *)arg2 withConfigDelegate:(void *)arg3 {
    r31 = r31 - 0x190;
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
    r19 = arg3;
    r22 = [arg2 retain];
    var_168 = [r19 retain];
    r0 = [[&var_F0 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_configDelegate, r19);
            var_120 = q0;
            var_178 = r22;
            r0 = [r22 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_138 = r0;
            var_170 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r28 = *var_120;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_120 != r28) {
                                            objc_enumerationMutation(var_138);
                                    }
                                    r23 = *(var_128 + r19 * 0x8);
                                    if ([r21 isSignalEnabledForCurrentTierWithSignalFlags:[r23 signalFlags]] != 0x0) {
                                            r20 = [[r23 signalId] retain];
                                            r0 = @(0x4e84);
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            r27 = [r20 isEqualToNumber:r22];
                                            [r22 release];
                                            [r20 release];
                                            if (r27 != 0x0) {
                                                    r20 = [FBBDTouchSignalManager alloc];
                                                    [r23 signalFlags];
                                                    r0 = [r20 initWithConfigDelegate:r2 withTouchSignalFlags:r3];
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_touchManager));
                                                    r8 = *(r21 + r9);
                                                    *(r21 + r9) = r0;
                                                    [r8 release];
                                            }
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r0 = objc_msgSend(var_138, var_170);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [var_138 release];
            r22 = var_178;
    }
    var_60 = **___stack_chk_guard;
    [var_168 release];
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_touchManager, 0x0);
    objc_storeStrong((int64_t *)&self->_configDelegate, 0x0);
    return;
}

@end