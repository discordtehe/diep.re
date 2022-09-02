@implementation MCCycleTableWithNavigation

-(void)onExit {
    [[&var_30 super] onExit];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
    [[*(self + r22) cellActivatedCallback] setTarget:0x0];
    [[*(self + r22) viewChangedCallback] setTarget:0x0];
    [[*(self + r22) viewChangedCallback] setSelector:r2];
    return;
}

-(void *)initWithItems:(void *)arg2 defaultCyclePeriod:(float)arg3 size:(struct CGSize)arg4 leftButton:(void *)arg5 rightButton:(void *)arg6 bookmarkNormalSpriteDict:(void *)arg7 bookmarkHiglightedSpriteDict:(void *)arg8 bookmarkDisabledSpriteDictionary:(void *)arg9 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0xa0;
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
    r21 = r7;
    r22 = r6;
    r23 = r5;
    r24 = r4;
    r25 = arg3;
    v8 = v2;
    v9 = v1;
    v10 = v0;
    r20 = arg2;
    r0 = [[&var_A0 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_loaded = 0x0;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_leftButton));
            *(r19 + r26) = r25;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_rightButton));
            *(r19 + r25) = r24;
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_pagesBookmarks));
            *(r19 + r27) = r0;
            r19->_bookmarkNormal = [r23 retain];
            r19->_bookmarSelected = [r22 retain];
            r19->_bookmarkDisabled = [r21 retain];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_tableSize));
            *(int128_t *)(r19 + r8) = d9;
            *(int128_t *)(0x8 + r19 + r8) = d8;
            [r19 prepareLayout:r20 items:r3 defaultCyclePeriod:r4];
            [r19 setSelectedPage:0x1];
            [[*(r19 + r27) objectAtIndex:0x0] contentSize];
            [*(r19 + r26) contentSize];
            [*(r19 + r26) anchorPoint];
            [*(r19 + r25) contentSize];
            [*(r19 + r25) anchorPoint];
            [r19 setContentSize:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_pagesBookmarks));
    [*(self + r21) removeAllObjects];
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bookmarkNormal));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bookmarSelected));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bookmarkDisabled));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)prepareLayout:(struct CGSize)arg2 items:(void *)arg3 defaultCyclePeriod:(float)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r20 = r2;
    [[CCDirector sharedDirector] winSize];
    r0 = [CCMenu menuWithItems:0x0];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_menu));
    *(self + r23) = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_leftButton));
    r2 = *(self + r22);
    [r0 addChild:r2];
    [*(self + r22) setPosition:r2];
    r0 = *(self + r23);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_rightButton));
    r2 = *(self + r24);
    [r0 addChild:r2];
    [*(self + r24) setPosition:r2];
    r0 = [MCCycleTable alloc];
    r0 = [r0 initWithContentSize:r20 items:r3 defaultCyclePeriod:r4];
    r0 = [r0 autorelease];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
    *(self + r24) = r0;
    [r0 setPosition:r20];
    [[*(self + r24) cellActivatedCallback] setTarget:self];
    [[*(self + r24) viewChangedCallback] setTarget:self];
    [[*(self + r24) viewChangedCallback] setSelector:@selector(tableViewUpdated)];
    [self addChild:*(self + r23) z:0x1];
    [self addChild:*(self + r24) z:0xa];
    [self updateBookmarks:r20];
    [*(self + r24) setTouchSwallow:0x0];
    *(int8_t *)(int64_t *)&self->_loaded = 0x1;
    return;
}

-(void)rightButtonPressed {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self->_pagesBookmarks count] >= 0x3) {
            [r19 tableViewUpdatedWithTableUpdate];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
            [*(r19 + r20) deactivateItemsButtons];
            [*(r19 + r20) forceMoveCarousselRight];
    }
    return;
}

-(void *)createBookmark:(int)arg2 {
    r21 = sub_1005d7358(self->_bookmarkNormal, 0x0);
    r22 = sub_1005d7358(self->_bookmarSelected, 0x0);
    r20 = sub_1005d7358(self->_bookmarkDisabled, 0x0);
    r0 = [MCMenuItemNodeRGBA alloc];
    r2 = r21;
    r0 = [r0 initFromNormalNode:r2 selectedNode:r22 disabledNode:r20 target:0x0 selector:0x0];
    r0 = [r0 autorelease];
    r20 = r0;
    asm { sxtw       x2, w19 };
    [r0 setTag:r2];
    [r20 setAnchorPoint:r2];
    [r20 setSelectedColor:[r20 normalColor] & 0xffffffff];
    [r20 setDisabledColor:r2];
    r0 = r20;
    return r0;
}

-(void)leftButtonPressed {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self->_pagesBookmarks count] >= 0x3) {
            [r19 tableViewUpdatedWithTableUpdate];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
            [*(r19 + r20) deactivateItemsButtons];
            [*(r19 + r20) forceMoveCarousselLeft];
    }
    return;
}

-(void)tableViewUpdatedWithTableUpdate {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_loaded != 0x0) {
            r19 = r0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
            r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
            objc_msgSend(*(r0 + r22), *(r8 + 0x158));
            asm { fcvtzs     w8, s0 };
            r20 = r8 & !(r8 / 0xffffffff80000000);
            if (r20 >= [*(r19 + r22) getNumElements] - 0x1) {
                    r20 = [*(r19 + r22) getNumElements] - 0x1;
            }
            [r19 setSelectedPage:r20 updateTable:0x1];
    }
    return;
}

-(void)tableViewUpdated {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_loaded != 0x0) {
            r19 = r0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
            r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
            objc_msgSend(*(r0 + r22), *(r8 + 0x158));
            asm { fcvtzs     w8, s0 };
            r20 = r8 & !(r8 / 0xffffffff80000000);
            if (r20 >= [*(r19 + r22) getNumElements] - 0x1) {
                    r20 = [*(r19 + r22) getNumElements] - 0x1;
            }
            [r19 setSelectedPage:r20 updateTable:0x0];
    }
    return;
}

-(void)updateItems:(void *)arg2 {
    [self updateBookmarks:r2];
    [self->_cTable updateItems:arg2];
    return;
}

-(void *)getCurrentItem {
    r0 = self->_cTable;
    r0 = [r0 getCellForCurrentOffset];
    return r0;
}

-(void)setSelectedPage:(int)arg2 {
    [self setSelectedPage:arg2 updateTable:0x1];
    return;
}

-(void)updateBookmarks:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    if ([arg2 count] >= 0x2) {
            r26 = [r21 count] + 0x2;
    }
    else {
            r26 = 0x1;
    }
    r20 = @selector(count);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_pagesBookmarks));
    r0 = *(r19 + r27);
    r0 = objc_msgSend(r0, r20);
    if (r0 != r26) {
            if (!CPU_FLAGS & GE) {
                    if (r26 > sign_extend_64(r0)) {
                            asm { sxtw       x20, w0 };
                            do {
                                    r22 = @selector(addObject:);
                                    [r19 createBookmark:r20];
                                    objc_msgSend(*(r19 + r27), r22);
                                    r20 = r20 + 0x1;
                            } while (r26 > r20);
                    }
                    if (r26 >= 0x3) {
                            r24 = 0x2;
                            do {
                                    r20 = @selector(objectAtIndex:);
                                    r21 = @selector(parent);
                                    r0 = *(r19 + r27);
                                    r0 = objc_msgSend(r0, r20);
                                    r23 = r0;
                                    if (objc_msgSend(r0, r21) == 0x0) {
                                            [r19->_menu addChild:r2];
                                    }
                                    r24 = r24 + 0x1;
                            } while (r26 != r24);
                    }
            }
            else {
                    if (r0 - r26 >= 0x1) {
                            r28 = (r0 - r26) + 0x1;
                            do {
                                    r20 = @selector(count);
                                    [*(r19 + r27) removeLastObject];
                                    if (objc_msgSend(*(r19 + r27), r20) != 0x0) {
                                            r0 = *(r19 + r27);
                                            r0 = [r0 lastObject];
                                            r25 = r0;
                                            if ([r0 parent] != 0x0) {
                                                    [r25 removeFromParent];
                                            }
                                    }
                                    r28 = r28 - 0x1;
                            } while (r28 > 0x1);
                    }
            }
            [r19 alignBookmarks];
    }
    if (r26 > 0x1) {
            if (CPU_FLAGS & G) {
                    r20 = 0x1;
            }
    }
    [r19->_leftButton setVisible:r20];
    [r19->_rightButton setVisible:r20];
    return;
}

-(void)setSelectedPage:(int)arg2 updateTable:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
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
    r19 = self;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_cTable));
    r0 = *(self + r27);
    if (r0 != 0x0) {
            r21 = r3;
            r20 = r2;
            if ([r0 getItems] != 0x0) {
                    r0 = *(r19 + r27);
                    r0 = [r0 getItems];
                    r0 = [r0 count];
                    if (r20 >= 0x1) {
                            asm { sxtw       x9, w20 };
                            if (r0 - 0x1 >= r9) {
                                    var_124 = r21;
                                    *(int32_t *)(int64_t *)&r19->_selectedIndex = r20;
                                    var_110 = q0;
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_pagesBookmarks));
                                    var_138 = r8;
                                    stack[-320] = r9;
                                    r23 = *(r19 + r8);
                                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r25 = r0;
                                            r22 = *var_110;
                                            do {
                                                    r21 = 0x0;
                                                    do {
                                                            if (*var_110 != r22) {
                                                                    objc_enumerationMutation(r23);
                                                            }
                                                            [*(var_118 + r21 * 0x8) setIsEnabled:r2];
                                                            r21 = r21 + 0x1;
                                                    } while (r21 < r25);
                                                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r25 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [[*(r19 + var_138) objectAtIndex:stack[-320]] setIsEnabled:r2];
                                    if (var_124 != 0x0) {
                                            r21 = *(r19 + r27);
                                            [r21 snapToCellItem:[r21 getCellItemByIndex:r20]];
                                            [*(r19 + r27) restartMovingCaroussel];
                                    }
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)alignBookmarks {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_pagesBookmarks));
    if ([*(self + r20) count] != 0x0) {
            [[CCDirector sharedDirector] winSize];
            [[*(r19 + r20) objectAtIndex:0x0] contentSize];
            r0 = *(r19 + r20);
            asm { fcvt       s2, d0 };
            loc_1005d74e8(r0, 0x1);
    }
    return;
}

@end