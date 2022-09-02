@implementation CDAudioInterruptTargetGroup

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x10) = [[NSMutableArray alloc] initWithCapacity:0x20];
            *(int16_t *)(r19 + 0x8) = 0x100;
    }
    r0 = r19;
    return r0;
}

-(void)addAudioInterruptTarget:(void *)arg2 {
    [arg2 setMute:*(int8_t *)(self + 0x8)];
    [arg2 setEnabled:*(int8_t *)(self + 0x9)];
    [*(self + 0x10) addObject:r2];
    return;
}

-(void)removeAudioInterruptTarget:(void *)arg2 {
    [*(self + 0x10) removeObjectIdenticalTo:arg2];
    return;
}

-(bool)mute {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setMute:(bool)arg2 {
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
    if (*(int8_t *)(r0 + 0x8) != r2) {
            r19 = r2;
            var_110 = q0;
            r20 = *(r0 + 0x10);
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
                                    [*(var_118 + r26 * 0x8) setMute:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setEnabled:(bool)arg2 {
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
    if (*(int8_t *)(r0 + 0x9) != r2) {
            r19 = r2;
            var_110 = q0;
            r20 = *(r0 + 0x10);
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
                                    [*(var_118 + r26 * 0x8) setEnabled:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end