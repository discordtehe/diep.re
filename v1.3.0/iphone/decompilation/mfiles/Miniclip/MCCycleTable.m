@implementation MCCycleTable

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_itemsList));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithContentSize:(struct CGSize)arg2 items:(void *)arg3 defaultCyclePeriod:(float)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_50 super] init:0x0 numVisibleItems:r3 cellSize:r4 direction:r5 itemOffset:r6 springOffset:r7];
    r20 = r0;
    if (r0 != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_initialized));
            *(int8_t *)(r20 + r23) = 0x0;
            [[r20 viewChangedCallback] setTarget:r20];
            [[r20 viewChangedCallback] setSelector:@selector(scrollCallback)];
            [r20 setKeepAllCellsLoaded:0x0];
            *(int32_t *)(int64_t *)&r20->_defaultCyclePeriod = s8;
            [r20 updateItems:r19];
            *(int8_t *)(r20 + r23) = 0x1;
    }
    r0 = r20;
    return r0;
}

-(void)leave {
    [self unscheduleUpdate];
    [self stopAllActions];
    *(int8_t *)(int64_t *)&self->_isScrolling = 0x0;
    [[self viewChangedCallback] setTarget:0x0];
    [[self viewChangedCallback] setSelector:r2];
    return;
}

-(void)ccTouchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    [[&var_20 super] ccTouchesBegan:arg2 withEvent:arg3];
    [self stopMovingCaroussel];
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] ccTouchCancelled:arg2 withEvent:arg3];
    if ([r19 tableState] != 0x0) {
            [r19 getCurrentGridOffset];
            asm { fcvtas     w2, s0 };
            [[r19 getCellItemByIndex:r2] enableButtons];
    }
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] ccTouchEnded:arg2 withEvent:arg3];
    if ([r19 tableState] != 0x0) {
            [r19 getCurrentGridOffset];
            asm { fcvtas     w2, s0 };
            [[r19 getCellItemByIndex:r2] enableButtons];
    }
    return;
}

-(void)update:(double)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] update:arg2];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfNodes));
    if (*(r19 + r20) != 0x0) {
            if ([r19 tableState] == 0x0) {
                    [r19 stopActionByTag:0xb8db99a];
                    *(int8_t *)(int64_t *)&r19->_isScrolling = 0x0;
                    [r19 startMovingCaroussel];
                    if ([r19 isDragging] != 0x0) {
                            [r19 deactivateItemsButtons];
                    }
            }
            if (*(r19 + r20) >= 0x2) {
                    [r19 tryWarp];
            }
            r0 = [r19 getCellForCurrentOffset];
            r0 = [r0 tag];
            if (r0 == 0x1) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_wrapping));
                    if (*(int8_t *)(r19 + r8) == 0x0) {
                            if (r0 == *(r19 + r20)) {
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_wrapping));
                                    if (*(int8_t *)(r19 + r8) != 0x0) {
                                            *(int8_t *)(r19 + r8) = 0x0;
                                    }
                            }
                    }
                    else {
                            *(int8_t *)(r19 + r8) = 0x0;
                    }
            }
            else {
                    if (r0 == *(r19 + r20)) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_wrapping));
                            if (*(int8_t *)(r19 + r8) != 0x0) {
                                    *(int8_t *)(r19 + r8) = 0x0;
                            }
                    }
            }
    }
    return;
}

-(void *)getItems {
    r0 = self->_itemsList;
    return r0;
}

-(void)tryWarp {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self getCurrentGridOffset];
    asm { fcvtzs     w9, s2 };
    if (r19->_numberOfNodes >= sign_extend_64(r9)) goto loc_1005e5b78;

loc_1005e5b5c:
    *(int8_t *)(int64_t *)&r19->_wrapping = 0x1;
    asm { ucvtf      s1, x8 };
    goto loc_1005e5b98;

loc_1005e5b98:
    [r19 setViewPositionByGridOffset:r2];
    return;

.l1:
    return;

loc_1005e5b78:
    if (s0 >= 0x3fe0000000000000) goto .l1;

loc_1005e5b80:
    *(int8_t *)(int64_t *)&r19->_wrapping = 0x1;
    asm { ucvtf      s1, x8 };
    goto loc_1005e5b98;
}

-(float)getCycleDurationOfCurrentItem {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self getCurrentGridOffset];
    asm { fcvtas     w2, s0 };
    r0 = [r19 getCellItemByIndex:r2];
    if (r0 != 0x0) {
            r0 = [r0 getCycleDuration];
    }
    return r0;
}

-(void)scrollCallback {
    [self getCurrentGridOffset];
    *(int32_t *)(int64_t *)&self->_previousOffset = s0;
    return;
}

-(void)prepareListForSmoothScrolling:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([arg2 count] >= 0x2) {
            r21 = @selector(count);
            r20 = [[r19 objectAtIndex:0x0] getCopy];
            r2 = objc_msgSend(r19, r21) - 0x1;
            r2 = [[r19 objectAtIndex:r2] getCopy];
            if (r20 != 0x0) {
                    asm { ccmp       x2, #0x0, #0x4, ne };
            }
            if (CPU_FLAGS & NE) {
                    [r19 insertObject:r2 atIndex:0x0];
                    [r19 addObject:r2];
            }
    }
    return;
}

-(void)snapToCellItem:(void *)arg2 {
    [[&var_20 super] snapToCellItem:r2];
    [arg2 activateTableItem];
    [self deactivateItemsButtons];
    [arg2 enableButtons];
    return;
}

-(void)restartMovingCaroussel {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_isScrolling = 0x0;
    [self stopAllActions];
    if ([r19->_itemsList count] >= 0x2) {
            [r19 startMovingCaroussel];
    }
    return;
}

-(void)deactivateItemsButtons {
    r31 = r31 - 0x120;
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
    var_100 = q0;
    r19 = self->_itemsList;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) disableButtons];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)activateItemsButtons {
    r31 = r31 - 0x120;
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
    var_100 = q0;
    r19 = self->_itemsList;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) enableButtons];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateItems:(void *)arg2 {
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
    r21 = arg2;
    r27 = self;
    [self stopMovingCaroussel];
    [r27 stopAllActions];
    [r27 removeAllCellItems];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_itemsList));
    r0 = *(r27 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r27 + r20) = 0x0;
    }
    if (r21 != 0x0 && [r21 count] != 0x0) {
            r22 = @selector(count);
            r19 = [NSMutableArray arrayWithArray:r21];
            [r27 prepareListForSmoothScrolling:r19];
            r0 = [r19 retain];
            *(r27 + r20) = r0;
            r0 = objc_msgSend(r0, r22);
            var_140 = r22;
            if (r0 == 0x1) {
                    r8 = 0x1;
            }
            else {
                    r8 = [*(r27 + r20) count] - 0x2;
            }
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfNodes));
            var_148 = r9;
            *(r27 + r9) = r8;
            var_110 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r2 = &var_120;
            var_138 = r1;
            r0 = objc_msgSend(r19, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r9 = 0x0;
                    r22 = *var_110;
                    var_128 = r19;
                    do {
                            r20 = 0x0;
                            var_130 = r9;
                            asm { sxtw       x21, w9 };
                            do {
                                    r19 = r27;
                                    r27 = r21 + r20;
                                    if (*var_110 != r22) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r28 = *(var_118 + r20 * 0x8);
                                    [r28 setTag:r27];
                                    r27 = r19;
                                    [r19 addCellItem:r28];
                                    [r28 activateTableItem];
                                    r20 = r20 + 0x1;
                            } while (r20 < r23);
                            r2 = &var_120;
                            r19 = var_128;
                            r0 = objc_msgSend(r19, var_138);
                            r23 = r0;
                            r9 = r20 + sign_extend_64(var_130);
                    } while (r0 != 0x0);
            }
            r20 = var_140;
            if (objc_msgSend(r19, r20) != 0x0) {
                    r22 = r27->_children;
                    if (objc_msgSend(r19, r20) > 0x1) {
                            if (CPU_FLAGS & A) {
                                    r2 = 0x1;
                            }
                    }
                    [r27 snapToCellItem:[r22 objectAtIndex:r2]];
                    *(int8_t *)(int64_t *)&r27->_wrapping = 0x0;
                    r8 = *(r27 + var_148);
                    if (r8 < 0x2) {
                            if (!CPU_FLAGS & B) {
                                    r8 = &@selector(enableScroll);
                            }
                            else {
                                    r8 = &@selector(disableScroll);
                            }
                    }
                    objc_msgSend(r27, *r8);
                    *(int8_t *)(int64_t *)&r27->_isScrolling = 0x0;
                    [r27 startMovingCaroussel];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)startMovingCaroussel {
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isScrolling));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            r19 = r0;
            [r0 stopMovingCaroussel];
            [r19 getCycleDurationOfCurrentItem];
            if (s0 != 0x0) {
                    *(int8_t *)(r19 + r20) = 0x1;
                    r2 = @selector(update:);
                    [r19 schedule:r2];
                    [r19 getScrollSequenceLeftToRight];
                    r21 = @class(CCSequence);
                    r0 = @class(CCDelayTime);
                    asm { fcvt       d0, s8 };
                    r0 = [r21 actions:[r0 actionWithDuration:r2]];
                    [r0 setTag:0xb8db99a];
                    [r19 runAction:r2];
            }
    }
    return;
}

-(void *)getScrollSequenceLeftToRight {
    r0 = [self getScrollSequenceWithOrientation:0x0];
    return r0;
}

-(void *)getScrollSequenceRightToLeft {
    r0 = [self getScrollSequenceWithOrientation:0x1];
    return r0;
}

-(void *)getScrollSequenceWithOrientation:(unsigned long long)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
    objc_msgSend(self, *(r8 + 0x158));
    asm { frinta     s1, s0 };
    asm { fcvtzs     x8, s0 };
    if (r8 < 0x0) {
            asm { cneg       x8, x8, mi };
    }
    if (r20 == 0x1) {
            asm { fcsel      s1, s1, s0, eq };
    }
    if (r20 == 0x0) {
            asm { fcsel      s1, s0, s1, eq };
    }
    if (&@selector(renderNativeAdForAdConfiguration:completionHandler:) != 0x0) {
            asm { scvtf      s2, x8 };
            asm { fcvt       d0, s0 };
    }
    [TableScrollAction actionWithDuration:r2 table:r3 numNodesToScroll:r4];
    [CCCallBlock actionWithBlock:&var_48];
    [CCCallFunc actionWithTarget:r19 selector:@selector(restartMovingCaroussel)];
    r0 = [CCSequence actions:r2];
    return r0;
}

-(void)forceMoveCarousselRight {
    [self forceMoveCaroussel:0x0];
    return;
}

-(void)forceMoveCarousselLeft {
    [self forceMoveCaroussel:0x1];
    return;
}

-(void)forceMoveCaroussel:(unsigned long long)arg2 {
    [self stopMovingCaroussel];
    *(int8_t *)(int64_t *)&self->_isScrolling = 0x1;
    [self schedule:@selector(update:)];
    r0 = [CCSequence actionOne:[self getScrollSequenceWithOrientation:arg2] two:[CCCallFunc actionWithTarget:self selector:@selector(activateItemsButtons)]];
    [r0 setTag:0xb8db99a];
    [self runAction:r2];
    return;
}

-(void)stopMovingCaroussel {
    [self stopActionByTag:0xb8db99a];
    [self unschedule:@selector(update:)];
    *(int8_t *)(int64_t *)&self->_isScrolling = 0x0;
    return;
}

@end