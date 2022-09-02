@implementation MCMenuItemNodeRGBA

-(void)setNormalNode:(void *)arg2 removeExisting:(bool)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 != 0x0) {
            r19 = r0;
            [[&var_70 super] setNormalNode:r2 removeExisting:r3];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_normalNode));
            r2 = *(r19 + r21);
            [r19 calculateAreaOfNode:r2];
            asm { fabd       d8, d2, d0 };
            asm { fabd       d9, d3, d1 };
            [r19 anchorPoint];
            [r19 anchorPoint];
            [r19 anchorPoint];
            [r19 anchorPoint];
            r19->occupiedArea = d0 * d8;
            *((int64_t *)&r19->occupiedArea + 0x8) = d1 * d9;
            *((int64_t *)&r19->occupiedArea + 0x10) = d8 * (0x3ff0000000000000 - d0);
            *((int64_t *)&r19->occupiedArea + 0x18) = d9 * (0x3ff0000000000000 - d1);
            [r19 setContentSize:r2];
            [r19 centerChild:*(r19 + r21) inArea:r3];
    }
    return;
}

-(void)setSelectedNode:(void *)arg2 removeExisting:(bool)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 != 0x0) {
            [[&var_30 super] setSelectedNode:r2 removeExisting:r3];
            r2 = r0->_selectedNode;
            [r0 centerChild:r2 inArea:r3];
    }
    return;
}

-(void)setDisabledNode:(void *)arg2 removeExisting:(bool)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 != 0x0) {
            [[&var_30 super] setDisabledNode:r2 removeExisting:r3];
            r2 = r0->_disabledNode;
            [r0 centerChild:r2 inArea:r3];
    }
    return;
}

-(void)centerChild:(void *)arg2 inArea:(struct pair<CGPoint, CGPoint>)arg3 {
    memcpy(&r3, &arg3, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [self calculateAreaOfNode:r2];
    [r19 position];
    [r19 position];
    [r19 setPosition:r2];
    if (*(int8_t *)(int64_t *)&r20->_pickOnChildren != 0x0) {
            [r20->_pickingAreas removeAllObjects];
            [r20 addPickingAreas:r19];
    }
    return;
}

-(void)addPickingAreas:(void *)arg2 {
    r31 = r31 - 0x150;
    var_70 = d11;
    stack[-120] = d10;
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
    r20 = arg2;
    r19 = self;
    var_130 = q0;
    r0 = [arg2 children];
    r21 = r0;
    r3 = &stack[-264];
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_130;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_130 != r25) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 addPickingAreas:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r3 = &stack[-264];
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (*(int8_t *)(int64_t *)&r19->_ignoreInvisibleClasses != 0x0) {
            NSStringFromClass([r20 class]);
            if (([r21 containsObject:r2] & 0x1) == 0x0) {
                    [r20 position];
                    [r19 convertToNodeSpacePoint:r20 fromChild:r3];
                    [r20 anchorPointInPoints];
                    [r20 anchorPointInPoints];
                    [r20 contentSize];
                    [r20 contentSize];
                    r19 = r19->_pickingAreas;
                    [NSValue valueWithCGRect:r20];
                    [r19 addObject:r2];
            }
    }
    else {
            [r20 position];
            [r19 convertToNodeSpacePoint:r20 fromChild:r3];
            [r20 anchorPointInPoints];
            [r20 anchorPointInPoints];
            [r20 contentSize];
            [r20 contentSize];
            r19 = r19->_pickingAreas;
            [NSValue valueWithCGRect:r20];
            [r19 addObject:r2];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(struct pair<CGPoint, CGPoint>)calculateAreaOfNode:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r19 = arg2;
    r20 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    var_160 = q0;
    r0 = [arg2 children];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_160;
            d14 = 0x0;
            d12 = 0x0;
            d11 = 0x0;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_160 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 calculateAreaOfNode:r2];
                            if (d0 < 0x0) {
                                    asm { fccmp      d0, d14, #0x0, mi };
                            }
                            if (CPU_FLAGS & S) {
                                    asm { fcsel      d13, d0, d13, mi };
                            }
                            if (d1 < 0x0) {
                                    asm { fccmp      d1, d14, #0x0, mi };
                            }
                            if (CPU_FLAGS & S) {
                                    asm { fcsel      d10, d1, d10, mi };
                            }
                            [r19 contentSize];
                            if (d9 > d0) {
                                    [r19 contentSize];
                                    d0 = d9 - d0;
                                    if (d0 > d12) {
                                            [r19 contentSize];
                                            d12 = d9 - d0;
                                    }
                            }
                            [r19 contentSize];
                            if (d8 > d1) {
                                    [r19 contentSize];
                                    d0 = d8 - d1;
                                    if (d0 > d11) {
                                            [r19 contentSize];
                                            d11 = d8 - d1;
                                    }
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    else {
            d12 = 0x0;
            d11 = 0x0;
    }
    [r19 contentSize];
    [r19 anchorPoint];
    d8 = d8 * d0;
    [r19 scaleX];
    asm { fcvt       d0, s0 };
    asm { fcvt       s9, d0 };
    objc_msgSend(r19, r20);
    objc_msgSend(r19, r21);
    d8 = d8 * d1;
    [r19 scaleY];
    asm { fcvt       d0, s0 };
    asm { fcvt       s14, d0 };
    [r19 position];
    var_178 = d0;
    asm { fcvt       d0, s9 };
    d0 = d13 - d0;
    asm { fcvt       d1, s1 };
    if (d0 < d1) {
            asm { fcsel      d13, d0, d1, mi };
    }
    [r19 position];
    asm { fcvt       d0, s14 };
    d0 = d10 - d0;
    asm { fcvt       d1, s1 };
    if (d0 < d1) {
            asm { fcsel      d14, d0, d1, mi };
    }
    [r19 contentSize];
    objc_msgSend(r19, r21);
    [r19 scaleX];
    asm { fcvt       d0, s0 };
    asm { fcvt       s8, d0 };
    objc_msgSend(r19, r20);
    objc_msgSend(r19, r21);
    d10 = d10 * (d15 - d1);
    objc_msgSend(r19, r24);
    asm { fcvt       d0, s0 };
    d0 = d10 * d0;
    asm { fcvt       s15, d0 };
    objc_msgSend(r19, r22);
    asm { fcvt       d0, s8 };
    d1 = d12 + d0;
    if (d1 > d0) {
            asm { fcsel      d12, d1, d0, gt };
    }
    r0 = [r19 position];
    asm { fcvt       d0, s15 };
    if (d11 + d0 > d0) {
            asm { fcsel      d3, d2, d0, gt };
    }
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end