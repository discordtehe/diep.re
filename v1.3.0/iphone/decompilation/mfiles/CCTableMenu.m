@implementation CCTableMenu

-(void)reset {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 unselected];
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            asm { ccmp       x0, x2, #0x0, ne };
    }
    if (!CPU_FLAGS & NE) {
            [r0 unselected];
            *(r21 + r22) = 0x0;
    }
    [[&var_30 super] removeChild:r20 cleanup:r19];
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
    r0 = *(self + r24);
    if (r0 != 0x0 && [r0 isTouchInsidePickRect:r20] == 0x0) {
            r22 = 0x0;
    }
    else {
            r0 = [[&var_50 super] ccTouchBegan:r20 withEvent:r19];
            r22 = r0;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
            r23 = *(r21 + r25);
            r0 = [MCMenuItemToggleSwipe class];
            r0 = sub_1005d8554(r23, r0, 0x0);
            if (r0 != 0x0) {
                    r2 = [r20 view];
                    [r20 locationInView:r2];
                    [r0 onTouched:r2];
            }
            r0 = *(r21 + r24);
            if (r0 != 0x0 && *(r21 + r25) != 0x0) {
                    if ([r0 tableState] == 0x1) {
                            [*(r21 + r24) ccTouchBegan:r20 withEvent:r19 ignoreCells:*(int8_t *)(int64_t *)&r21->mIgnoreTableCells ignoreMenuItems:*(int8_t *)(int64_t *)&r21->mIgnoreMenuItems];
                    }
            }
    }
    r0 = r22;
    return r0;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x170;
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
    var_150 = r8;
    if (([*(self + r8) dragMode] & 0x1) == 0x0) {
            [[&var_F0 super] ccTouchMoved:r20 withEvent:r19];
    }
    var_158 = r19;
    var_120 = q0;
    var_148 = r21;
    r0 = [r21 children];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r21 = *var_120;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_120 != r21) {
                                    objc_enumerationMutation(var_138);
                            }
                            r22 = *(var_128 + r23 * 0x8);
                            r0 = [MCMenuItemToggleSwipe class];
                            r0 = sub_1005d8554(r22, r0, 0x0);
                            if (r0 != 0x0) {
                                    [r20 locationInView:[r20 view]];
                                    [r0 onMoved:r2];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r25);
                    r0 = objc_msgSend(var_138, var_140);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    r21 = var_150;
    r19 = var_148;
    r0 = *(r19 + r21);
    if (r0 != 0x0 && [r0 tableState] == 0x0) {
            if (([*(r19 + r21) dragMode] & 0x1) == 0x0 && [*(r19 + r21) isDragging] != 0x0) {
                    [r19 reset];
            }
            [*(r19 + r21) ccTouchMoved:r20 withEvent:var_158];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x160;
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
    var_140 = arg2;
    var_138 = arg3;
    var_110 = q0;
    var_148 = self;
    r0 = [self children];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r22);
                            }
                            r25 = @selector(class);
                            r27 = *(var_118 + r19 * 0x8);
                            r0 = objc_msgSend(@class(MCMenuItemToggleSwipe), r25);
                            r0 = sub_1005d8554(r27, r0, 0x0);
                            if (r0 != 0x0) {
                                    [r0 onRelease];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    r23 = var_148;
    r21 = var_140;
    r20 = var_138;
    [[&var_130 super] ccTouchEnded:r21 withEvent:r20];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
    r0 = *(r23 + r19);
    if (r0 != 0x0 && [r0 tableState] == 0x0) {
            [*(r23 + r19) ccTouchEnded:r21 withEvent:r20];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)table {
    r0 = self->mTable;
    return r0;
}

-(void)setTable:(void *)arg2 {
    self->mTable = arg2;
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x160;
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
    var_140 = arg2;
    var_138 = arg3;
    var_110 = q0;
    var_148 = self;
    r0 = [self children];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r22);
                            }
                            r25 = @selector(class);
                            r27 = *(var_118 + r19 * 0x8);
                            r0 = objc_msgSend(@class(MCMenuItemToggleSwipe), r25);
                            r0 = sub_1005d8554(r27, r0, 0x0);
                            if (r0 != 0x0) {
                                    [r0 onRelease];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    r23 = var_148;
    r21 = var_140;
    r20 = var_138;
    [[&var_130 super] ccTouchCancelled:r21 withEvent:r20];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
    r0 = *(r23 + r19);
    if (r0 != 0x0 && [r0 tableState] == 0x0) {
            [*(r23 + r19) ccTouchCancelled:r21 withEvent:r20];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)ignoreTableCells {
    r0 = *(int8_t *)(int64_t *)&self->mIgnoreTableCells;
    return r0;
}

-(void)setIgnoreTableCells:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mIgnoreTableCells = arg2;
    return;
}

-(bool)ignoreMenuItems {
    r0 = *(int8_t *)(int64_t *)&self->mIgnoreMenuItems;
    return r0;
}

-(void)setIgnoreMenuItems:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mIgnoreMenuItems = arg2;
    return;
}

@end