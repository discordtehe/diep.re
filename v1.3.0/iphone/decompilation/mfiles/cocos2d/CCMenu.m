@implementation CCMenu

+(void *)menuWithArray:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithArray:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)menuWithItems:(void *)arg2 {
    r0 = [self menuWithItems:arg2 vaList:&saved_fp + 0x10];
    return r0;
}

-(void *)currentSelectedMenu {
    return *0x1011e2db8;
}

+(void *)menuWithItems:(void *)arg2 vaList:(char *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    var_28 = arg3;
    if (arg2 != 0x0) {
            r20 = [NSMutableArray arrayWithObject:r2];
            r8 = var_28;
            var_28 = r8 + 0x8;
            if (*r8 != 0x0) {
                    do {
                            [r20 addObject:r2];
                            r8 = var_28;
                            var_28 = r8 + 0x8;
                    } while (*r8 != 0x0);
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r19 alloc];
    r0 = [r0 initWithArray:r20];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCurrentSelectedMenu:(void *)arg2 {
    *0x1011e2db8 = arg2;
    return;
}

-(void *)init {
    r0 = [self initWithArray:0x0];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self currentSelectedMenu] == r19) {
            [r19 setCurrentSelectedMenu:0x0];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    [[&var_10 super] addChild:arg2 z:arg3 tag:arg4];
    return;
}

-(void *)initWithArray:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r0 = [[&var_100 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setTouchPriority:0xffffffffffffff80];
            [r19 setTouchMode:0x1];
            [r19 setTouchEnabled:0x1];
            *(int8_t *)(int64_t *)&r19->_enabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_preventTouchesInMultipleMenus = 0x0;
            *(int8_t *)(int64_t *)&r19->_invertTouchDetectionOrder = 0x0;
            [[CCDirector sharedDirector] winSize];
            [r19 setIgnoreAnchorPointForPosition:0x1];
            *(int128_t *)(int64_t *)&r19->_anchorPoint = q0;
            [r19 setContentSize:0x1];
            [[UIApplication sharedApplication] statusBarFrame];
            [r19 setPosition:0x1];
            var_130 = q0;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r25 = 0x0;
                    r26 = *var_130;
                    do {
                            r28 = 0x0;
                            asm { sxtw       x27, w25 };
                            do {
                                    r24 = r27 + r28;
                                    if (*var_130 != r26) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [r19 addChild:r2 z:r3];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                            r25 = r28 + sign_extend_64(r25);
                    } while (r0 != 0x0);
            }
            r19->_selectedItem = 0x0;
            r19->_hoveredItem = 0x0;
            *(int32_t *)(int64_t *)&r19->_state = 0x0;
            [r19 setCascadeColorEnabled:0x1];
            [r19 setCascadeOpacityEnabled:0x1];
            [r19 setCascadeEmissionEnabled:0x1];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)detachChild:(void *)arg2 cleanup:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    if (*(r0 + r8) == r2) {
            *(r0 + r8) = 0x0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hoveredItem));
    if (*(r0 + r8) == r2) {
            *(r0 + r8) = 0x0;
    }
    [[&var_10 super] detachChild:r2 cleanup:r3];
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    if (*(r0 + r8) != 0x0) {
            *(r0 + r8) = 0x0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hoveredItem));
    if (*(r0 + r8) != 0x0) {
            *(r0 + r8) = 0x0;
    }
    [[&var_10 super] removeAllChildrenWithCleanup:r2];
    return;
}

-(void)onExit {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_10042e800(*(int32_t *)(int64_t *)&self->_mouseEventId);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(int32_t *)(r19 + r20) == 0x1) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
            [*(r19 + r21) unselected];
            *(int32_t *)(r19 + r20) = 0x0;
            *(r19 + r21) = 0x0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_hoveredItem));
            [*(r19 + r20) unfocus];
            *(r19 + r20) = 0x0;
    }
    [[&var_30 super] onExit];
    return;
}

-(void)onEnter {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [[&var_48 super] onEnter];
    r0 = sub_10042e71c(&var_38);
    *(int32_t *)(int64_t *)&self->_mouseEventId = r0;
    r0 = &var_38;
    if (&var_38 == r0) goto loc_1002d0e08;

loc_1002d0df8:
    if (r0 == 0x0) goto loc_1002d0e14;

loc_1002d0dfc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1002d0e10;

loc_1002d0e10:
    (r8)();
    goto loc_1002d0e14;

loc_1002d0e14:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1002d0e08:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1002d0e10;
}

-(void)setHandlerPriority:(long long)arg2 {
    [[[CCDirector sharedDirector] touchDispatcher] setPriority:arg2 forDelegate:self];
    return;
}

-(void *)itemForTouch:(void *)arg2 {
    r2 = [arg2 view];
    [arg2 locationInView:r2];
    [[CCDirector sharedDirector] convertToGL:r2];
    r0 = [self itemForPoint:r2];
    return r0;
}

-(bool)canTouchNewCCMenu {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_preventTouchesInMultipleMenus != 0x0) {
            r19 = r0;
            if ([r0 currentSelectedMenu] != r19) {
                    r0 = [r19 currentSelectedMenu];
                    if (r0 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(int32_t *)(r0 + r24) == 0x0) goto loc_1002d12a8;

loc_1002d1290:
    r0 = 0x0;
    return r0;

.l1:
    return r0;

loc_1002d12a8:
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->_visible == 0x0 || *(int8_t *)(int64_t *)&r19->_enabled == 0x0) goto loc_1002d1290;

loc_1002d12d0:
    r20 = r2;
    r0 = [r19 canTouchNewCCMenu];
    if (r0 == 0x0) goto .l1;

loc_1002d12e8:
    r0 = [r19 parent];
    if (r0 == 0x0) goto loc_1002d1330;

loc_1002d1300:
    r22 = r0;
    goto loc_1002d130c;

loc_1002d130c:
    r0 = [r22 visible];
    if (r0 == 0x0) goto .l1;

loc_1002d131c:
    r0 = [r22 parent];
    r22 = r0;
    if (r0 != 0x0) goto loc_1002d130c;

loc_1002d1330:
    r0 = [r19 itemForTouch:r20];
    r19->_selectedItem = r0;
    if (r0 != 0x0) {
            [r0 selected];
            r0 = 0x1;
            *(int32_t *)(r19 + r24) = r0;
            if (*(int8_t *)(int64_t *)&r19->_preventTouchesInMultipleMenus != 0x0) {
                    [r19 setCurrentSelectedMenu:r19];
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)itemForPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    var_78 = r8;
    r21 = [*(self + r8) count];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_invertTouchDetectionOrder));
    var_80 = r8;
    if (*(int8_t *)(r19 + r8) != 0x0) {
            asm { ucvtf      s0, x8 };
            sub_10035d730();
            asm { fcvtzs     w24, s0 };
    }
    else {
            r24 = 0x0;
    }
    r25 = 0x0;
    if ((r24 & 0xffffffff80000000) != 0x0) goto loc_1002d11b8;

loc_1002d105c:
    r25 = 0x0;
    asm { sxtw       x2, w24 };
    if (r21 < r2) goto loc_1002d11b8;

loc_1002d10a8:
    r0 = *(r19 + var_78);
    r0 = [r0 objectAtIndex:r2];
    r25 = r0;
    if ([r0 visible] == 0x0 || [r25 isEnabled] == 0x0) goto loc_1002d118c;

loc_1002d10d8:
    [r25 convertToNodeSpace:r2];
    v10 = v9;
    v11 = v8;
    r0 = [r25 pickingAreas];
    r28 = r0;
    if ([r0 count] == 0x0) goto loc_1002d1170;

loc_1002d1110:
    if ([r28 count] == 0x0) goto loc_1002d118c;

loc_1002d1120:
    r26 = 0x0;
    goto loc_1002d112c;

loc_1002d112c:
    r2 = r26;
    if ((CGRectContainsPoint([[r28 objectAtIndex:r2] CGRectValue], @selector(CGRectValue)) & 0x1) != 0x0) goto loc_1002d11b8;

loc_1002d1154:
    r26 = r26 + 0x1;
    if ([r28 count] > r26) goto loc_1002d112c;

loc_1002d118c:
    if (*(int8_t *)(r19 + var_80) != 0x0) {
            asm { cneg       w8, w8, ne };
    }
    r25 = 0x0;
    r24 = 0x1 + r24;
    if (r24 < 0x0) goto loc_1002d11b8;

loc_1002d11ac:
    r25 = 0x0;
    asm { sxtw       x2, w24 };
    if (r21 > r2) goto loc_1002d10a8;

loc_1002d11b8:
    r0 = r25;
    return r0;

loc_1002d1170:
    if ((CGRectContainsPoint([r25 activeArea], @selector(activeArea)) & 0x1) != 0x0) goto loc_1002d11b8;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(int32_t *)(r0 + r20) == 0x1) {
            [r0 setCurrentSelectedMenu:0x0];
            [r0->_selectedItem unselected];
            *(int32_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(int32_t *)(r0 + r20) == 0x1) {
            r19 = r0;
            if ([r0 currentSelectedMenu] == r19) {
                    [r19 setCurrentSelectedMenu:0x0];
            }
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
            [*(r19 + r21) unselected];
            [*(r19 + r21) activate];
            *(int32_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(int64_t *)&r0->_state == 0x1) {
            r19 = r0;
            r20 = [r0 itemForTouch:r2];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
            r0 = *(r19 + r21);
            if (r20 != r0) {
                    [r0 unselected];
                    *(r19 + r21) = r20;
                    [r20 selected];
            }
    }
    return;
}

-(void)alignItemsVertically {
    [self alignItemsVerticallyWithPadding:r2];
    return;
}

-(void)alignItemsHorizontally {
    [self alignItemsHorizontallyWithPadding:r2];
    return;
}

-(void)alignItemsVerticallyWithPadding:(float)arg2 {
    r0 = self;
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(r0 + r24);
    if (r8 != 0x0) {
            s10 = -s0;
            r9 = r8->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r25 = *(r9 + 0x10);
                    r26 = r25 + r10 * 0x8 - 0x8;
                    if (r25 <= r26) {
                            r19 = r0;
                            asm { fcvt       d11, s8 };
                            do {
                                    r20 = @selector(contentSize);
                                    r22 = *r25;
                                    r25 = r25 + 0x8;
                                    objc_msgSend(r22, r20);
                                    objc_msgSend(r22, r21);
                                    asm { fcvt       d0, s0 };
                                    d0 = d9 * d0 + d11;
                                    asm { fcvt       d1, s10 };
                                    d0 = d0 + d1;
                                    asm { fcvt       s10, d0 };
                            } while (r25 < r26);
                            r8 = *(r19 + r24);
                            if (r8 != 0x0) {
                                    r8 = r8->data;
                                    r9 = *r8;
                                    if (r9 != 0x0) {
                                            r23 = *(r8 + 0x10);
                                            r24 = r23 + r9 * 0x8 - 0x8;
                                            if (r23 <= r24) {
                                                    asm { fcvt       d9, s8 };
                                                    do {
                                                            r19 = @selector(contentSize);
                                                            r22 = *r23;
                                                            r23 = r23 + 0x8;
                                                            objc_msgSend(r22, r19);
                                                            asm { fcvt       d11, s11 };
                                                            objc_msgSend(r22, r20);
                                                            asm { fcvt       d0, s0 };
                                                            objc_msgSend(r22, r21);
                                                            objc_msgSend(r22, r20);
                                                            asm { fcvt       d0, s0 };
                                                            d0 = d11 - d8 * d0 + d9;
                                                            asm { fcvt       s11, d0 };
                                                    } while (r23 < r24);
                                            }
                                    }
                            }
                    }
                    else {
                            r8 = r8->data;
                            r9 = *r8;
                            if (r9 != 0x0) {
                                    r23 = *(r8 + 0x10);
                                    r24 = r23 + r9 * 0x8 - 0x8;
                                    if (r23 <= r24) {
                                            asm { fcvt       d9, s8 };
                                            do {
                                                    r19 = @selector(contentSize);
                                                    r22 = *r23;
                                                    r23 = r23 + 0x8;
                                                    objc_msgSend(r22, r19);
                                                    asm { fcvt       d11, s11 };
                                                    objc_msgSend(r22, r20);
                                                    asm { fcvt       d0, s0 };
                                                    objc_msgSend(r22, r21);
                                                    objc_msgSend(r22, r20);
                                                    asm { fcvt       d0, s0 };
                                                    d0 = d11 - d8 * d0 + d9;
                                                    asm { fcvt       s11, d0 };
                                            } while (r23 < r24);
                                    }
                            }
                    }
            }
            else {
                    r8 = r8->data;
                    r9 = *r8;
                    if (r9 != 0x0) {
                            r23 = *(r8 + 0x10);
                            r24 = r23 + r9 * 0x8 - 0x8;
                            if (r23 <= r24) {
                                    asm { fcvt       d9, s8 };
                                    do {
                                            r19 = @selector(contentSize);
                                            r22 = *r23;
                                            r23 = r23 + 0x8;
                                            objc_msgSend(r22, r19);
                                            asm { fcvt       d11, s11 };
                                            objc_msgSend(r22, r20);
                                            asm { fcvt       d0, s0 };
                                            objc_msgSend(r22, r21);
                                            objc_msgSend(r22, r20);
                                            asm { fcvt       d0, s0 };
                                            d0 = d11 - d8 * d0 + d9;
                                            asm { fcvt       s11, d0 };
                                    } while (r23 < r24);
                            }
                    }
            }
    }
    return;
}

-(void)alignItemsInColumns:(void *)arg2 {
    [self alignItemsInColumns:arg2 vaList:&saved_fp + 0x10];
    return;
}

-(void)alignItemsHorizontallyWithPadding:(float)arg2 {
    r0 = self;
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(r0 + r24);
    if (r8 != 0x0) {
            s10 = -s0;
            r9 = r8->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r25 = *(r9 + 0x10);
                    r26 = r25 + r10 * 0x8 - 0x8;
                    if (r25 <= r26) {
                            r19 = r0;
                            asm { fcvt       d11, s8 };
                            do {
                                    r20 = @selector(contentSize);
                                    r22 = *r25;
                                    r25 = r25 + 0x8;
                                    objc_msgSend(r22, r20);
                                    objc_msgSend(r22, r21);
                                    asm { fcvt       d0, s0 };
                                    d0 = d9 * d0 + d11;
                                    asm { fcvt       d1, s10 };
                                    d0 = d0 + d1;
                                    asm { fcvt       s10, d0 };
                            } while (r25 < r26);
                            r8 = *(r19 + r24);
                            if (r8 != 0x0) {
                                    r8 = r8->data;
                                    r9 = *r8;
                                    if (r9 != 0x0) {
                                            r23 = *(r8 + 0x10);
                                            r24 = r23 + r9 * 0x8 - 0x8;
                                            if (r23 <= r24) {
                                                    asm { fcvt       d9, s8 };
                                                    do {
                                                            r19 = @selector(contentSize);
                                                            r22 = *r23;
                                                            r23 = r23 + 0x8;
                                                            objc_msgSend(r22, r19);
                                                            asm { fcvt       d11, s11 };
                                                            objc_msgSend(r22, r20);
                                                            asm { fcvt       d0, s0 };
                                                            objc_msgSend(r22, r21);
                                                            objc_msgSend(r22, r20);
                                                            asm { fcvt       d0, s0 };
                                                            d0 = d11 + d8 * d0 + d9;
                                                            asm { fcvt       s11, d0 };
                                                    } while (r23 < r24);
                                            }
                                    }
                            }
                    }
                    else {
                            r8 = r8->data;
                            r9 = *r8;
                            if (r9 != 0x0) {
                                    r23 = *(r8 + 0x10);
                                    r24 = r23 + r9 * 0x8 - 0x8;
                                    if (r23 <= r24) {
                                            asm { fcvt       d9, s8 };
                                            do {
                                                    r19 = @selector(contentSize);
                                                    r22 = *r23;
                                                    r23 = r23 + 0x8;
                                                    objc_msgSend(r22, r19);
                                                    asm { fcvt       d11, s11 };
                                                    objc_msgSend(r22, r20);
                                                    asm { fcvt       d0, s0 };
                                                    objc_msgSend(r22, r21);
                                                    objc_msgSend(r22, r20);
                                                    asm { fcvt       d0, s0 };
                                                    d0 = d11 + d8 * d0 + d9;
                                                    asm { fcvt       s11, d0 };
                                            } while (r23 < r24);
                                    }
                            }
                    }
            }
            else {
                    r8 = r8->data;
                    r9 = *r8;
                    if (r9 != 0x0) {
                            r23 = *(r8 + 0x10);
                            r24 = r23 + r9 * 0x8 - 0x8;
                            if (r23 <= r24) {
                                    asm { fcvt       d9, s8 };
                                    do {
                                            r19 = @selector(contentSize);
                                            r22 = *r23;
                                            r23 = r23 + 0x8;
                                            objc_msgSend(r22, r19);
                                            asm { fcvt       d11, s11 };
                                            objc_msgSend(r22, r20);
                                            asm { fcvt       d0, s0 };
                                            objc_msgSend(r22, r21);
                                            objc_msgSend(r22, r20);
                                            asm { fcvt       d0, s0 };
                                            d0 = d11 + d8 * d0 + d9;
                                            asm { fcvt       s11, d0 };
                                    } while (r23 < r24);
                            }
                    }
            }
    }
    return;
}

-(void)alignItemsInColumns:(void *)arg2 vaList:(char *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSMutableArray alloc] initWithObjects:arg2];
    var_28 = arg3 + 0x8;
    if (*arg3 != 0x0) {
            do {
                    [r20 addObject:r2];
                    r8 = var_28;
                    var_28 = r8 + 0x8;
            } while (*r8 != 0x0);
    }
    [r19 alignItemsInColumnsWithArray:r20];
    [r20 release];
    return;
}

-(void)alignItemsInRows:(void *)arg2 {
    [self alignItemsInRows:arg2 vaList:&saved_fp + 0x10];
    return;
}

-(void)alignItemsInRows:(void *)arg2 vaList:(char *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSMutableArray alloc] initWithObjects:arg2];
    var_28 = arg3 + 0x8;
    if (*arg3 != 0x0) {
            do {
                    [r20 addObject:r2];
                    r8 = var_28;
                    var_28 = r8 + 0x8;
            } while (*r8 != 0x0);
    }
    [r19 alignItemsInRowsWithArray:r20];
    [r20 release];
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled;
    return r0;
}

-(void)alignItemsInColumnsWithArray:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = arg2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    var_B0 = r8;
    stack[-168] = self;
    r8 = *(self + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r28 = *(r8 + 0x10);
                    r23 = r28 + r9 * 0x8 - 0x8;
                    if (r28 >= r23) {
                            r20 = 0xfffffffffffffffb;
                    }
                    else {
                            r20 = 0xfffffffffffffffb;
                            do {
                                    r24 = @selector(contentSize);
                                    r8 = 0x101137000;
                                    r25 = *r28;
                                    r28 = r28 + 0x8;
                                    [[r19 objectAtIndex:0x0] unsignedIntegerValue];
                                    asm { ucvtf      s8, x22 };
                                    objc_msgSend(r25, r24);
                                    asm { fcvt       s0, d1 };
                                    asm { fmaxnm     s0, s8, s0 };
                                    asm { fcvtzu     x8, s0 };
                                    r9 = 0x5 + r20 + r8;
                                    if (r27 + 0x1 >= r26) {
                                            asm { csinc      x27, xzr, x27, hs };
                                    }
                                    if (CPU_FLAGS & NS) {
                                            asm { cinc       x21, x21, hs };
                                    }
                                    if (CPU_FLAGS & S) {
                                            if (!CPU_FLAGS & B) {
                                                    r20 = r9;
                                            }
                                            else {
                                                    r20 = r20;
                                            }
                                    }
                            } while (r28 < r23);
                    }
            }
            else {
                    r20 = 0xfffffffffffffffb;
            }
    }
    else {
            r20 = 0xfffffffffffffffb;
    }
    [[CCDirector sharedDirector] winSize];
    if (r20 < 0x0) {
            asm { cinc       w8, w20, lt };
    }
    r9 = *(stack[-168] + var_B0);
    if (r9 != 0x0) {
            r9 = r9->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r28 = *(r9 + 0x10);
                    r21 = r28 + r10 * 0x8 - 0x8;
                    if (r28 <= r21) {
                            r27 = 0x0;
                            r20 = 0x0;
                            r24 = 0x0;
                            asm { scvtf      s9, w8 };
                            d0 = 0x3fe0000000000000;
                            d10 = d8 * d0;
                            do {
                                    r26 = *r28;
                                    if (r24 == 0x0) {
                                            r24 = [[r19 objectAtIndex:r20] unsignedIntegerValue];
                                            asm { ucvtf      d0, x8 };
                                            asm { fdiv       d0, d8, d0 };
                                            asm { fcvt       s12, d0 };
                                    }
                                    [r26 contentSize];
                                    asm { ucvtf      s0, x22 };
                                    asm { fcvt       s2, d1 };
                                    asm { fmaxnm     s0, s0, s2 };
                                    asm { fcvtzu     x22, s0 };
                                    asm { fcvt       d0, s13 };
                                    d0 = d0 - d10;
                                    asm { fcvt       d2, s9 };
                                    d1 = d2 + d1 * d11;
                                    objc_msgSend(r26, r25);
                                    r27 = r27 + 0x1;
                                    if (r27 >= r24) {
                                            r24 = 0x0;
                                            r27 = 0x0;
                                            asm { ucvtf      s0, x8 };
                                            s9 = s9 - s0;
                                            r20 = r20 + 0x1;
                                    }
                                    s13 = s12 + s13;
                                    r28 = r28 + 0x8;
                            } while (r28 < r21);
                    }
            }
    }
    return;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enabled = arg2;
    return;
}

-(void)alignItemsInRowsWithArray:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    var_B0 = arg2;
    var_A8 = [[NSMutableArray alloc] init];
    var_B8 = [[NSMutableArray alloc] init];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    var_E8 = r8;
    stack[-224] = self;
    r8 = *(self + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r25 = *(r8 + 0x10);
                    var_C0 = r25 + r9 * 0x8 - 0x8;
                    if (r25 >= r25 + r9 * 0x8 - 0x8) {
                            r20 = 0x0;
                            r24 = 0xfffffffffffffff6;
                    }
                    else {
                            r23 = 0x0;
                            r20 = 0x0;
                            r24 = 0xfffffffffffffff6;
                            do {
                                    d8 = 0x4014000000000000;
                                    r21 = *r25;
                                    r19 = [[var_B0 objectAtIndex:r23] unsignedIntegerValue];
                                    [r21 contentSize];
                                    asm { ucvtf      s2, x28 };
                                    asm { fcvt       s0, d0 };
                                    asm { fmaxnm     s0, s2, s0 };
                                    asm { fcvtzu     x28, s0 };
                                    asm { scvtf      d0, w26 };
                                    d1 = d1 + d8;
                                    d0 = d1 + d0;
                                    asm { fcvtzs     w26, d0 };
                                    r20 = r20 + 0x1;
                                    if (r20 >= r19) {
                                            [NSNumber numberWithUnsignedInteger:r2];
                                            objc_msgSend(var_A8, r22);
                                            r0 = @class(NSNumber);
                                            asm { sxtw       x2, w26 };
                                            objc_msgSend(r0, r27);
                                            objc_msgSend(var_B8, r22);
                                            r20 = 0x0;
                                            r24 = 0xa + r24 + r28;
                                            r23 = r23 + 0x1;
                                    }
                                    r25 = r25 + 0x8;
                            } while (r25 < var_C0);
                    }
            }
            else {
                    r20 = 0x0;
                    r24 = 0xfffffffffffffff6;
            }
    }
    else {
            r20 = 0x0;
            r24 = 0xfffffffffffffff6;
    }
    [[CCDirector sharedDirector] winSize];
    if (r24 < 0x0) {
            asm { cinc       w8, w24, lt };
    }
    r9 = *(stack[-224] + var_E8);
    if (r9 != 0x0) {
            r9 = r9->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r19 = *(r9 + 0x10);
                    var_C0 = r19 + r10 * 0x8 - 0x8;
                    if (r19 <= r19 + r10 * 0x8 - 0x8) {
                            r22 = 0x0;
                            r27 = 0x0;
                            asm { neg        w8, w8, asr #1 };
                            asm { scvtf      s10, w8 };
                            d12 = d1 * 0x3fe0000000000000;
                            do {
                                    r25 = *r19;
                                    if (r27 == 0x0) {
                                            r27 = [[var_B0 objectAtIndex:r22] unsignedIntegerValue];
                                            [[var_B8 objectAtIndex:r22] intValue];
                                            asm { scvtf      d0, w0 };
                                            asm { fcvt       s14, d0 };
                                    }
                                    [r25 contentSize];
                                    asm { ucvtf      s1, x21 };
                                    asm { fcvt       s0, d0 };
                                    asm { fmaxnm     s0, s1, s0 };
                                    asm { fcvtzu     x21, s0 };
                                    objc_msgSend(objc_msgSend(var_A8, r23), r24) >> 0x1;
                                    asm { ucvtf      s0, x8 };
                                    s0 = s10 + s0;
                                    asm { fcvt       d0, s0 };
                                    asm { fcvt       d14, s14 };
                                    objc_msgSend(r25, r28);
                                    d0 = d14 - d9 + d13;
                                    r20 = r20 + 0x1;
                                    if (r20 >= r27) {
                                            r27 = 0x0;
                                            r20 = 0x0;
                                            asm { ucvtf      s1, x8 };
                                            s10 = s10 + s1;
                                            r22 = r22 + 0x1;
                                    }
                                    asm { fcvt       s14, d0 };
                                    r19 = r19 + 0x8;
                            } while (r19 < var_C0);
                    }
            }
    }
    [var_A8 release];
    [var_B8 release];
    return;
}

-(bool)preventTouchesInMultipleMenus {
    r0 = *(int8_t *)(int64_t *)&self->_preventTouchesInMultipleMenus;
    return r0;
}

-(void)setPreventTouchesInMultipleMenus:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_preventTouchesInMultipleMenus = arg2;
    return;
}

-(bool)invertTouchDetectionOrder {
    r0 = *(int8_t *)(int64_t *)&self->_invertTouchDetectionOrder;
    return r0;
}

-(void)setInvertTouchDetectionOrder:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_invertTouchDetectionOrder = arg2;
    return;
}

-(void)selectItem:(void *)arg2 {
    self->_selectedItem = arg2;
    [arg2 selected];
    return;
}

-(void)resetInput {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    [*(self + r20) unselected];
    *(self + r20) = 0x0;
    *(int32_t *)(int64_t *)&self->_state = 0x0;
    return;
}

@end