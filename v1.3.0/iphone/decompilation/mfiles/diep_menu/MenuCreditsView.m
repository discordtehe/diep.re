@implementation MenuCreditsView

-(void)setupLayout {
    [self createTable];
    [self createNodes];
    return;
}

-(void)createTable {
    r20 = [self bgNode];
    objc_alloc();
    [r20 position];
    [r20 contentSize];
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r22);
    [MenuCreditsView numVisibleItems];
    asm { fcvt       d0, s0 };
    asm { fdiv       d11, d11, d0 };
    objc_msgSend(r20, r22);
    r0 = [r23 init:0x1 cellSize:r3 visibleArea:r4 direction:r5 itemOffset:r6 effectsDistanceFraction:r7 visibleAreaOffset:0x0];
    r0 = [r0 autorelease];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    *(r19 + r26) = r0;
    [r0 setScrollableTable:0x1];
    [*(r19 + r26) setSnapEnabled:0x0];
    [[*(r19 + r26) viewChangedCallback] setTarget:r19];
    [[*(r19 + r26) viewChangedCallback] setSelector:@selector(scrollCallback)];
    [r20 zOrder] + 0x1;
    [r19 addChild:r2 z:r3];
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r22);
    asm { fcvt       s8, d0 };
    [*(r19 + r26) currentScrollHandleRecommendedSize];
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r21);
    r0 = sub_100088a10();
    r19->_scrollbar = r0;
    objc_msgSend(*(r19 + r26), r23) + 0x1;
    objc_msgSend(r19, r24);
    return;
}

-(void *)bgNode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_1005cb540();
    r8 = 0x101169f28;
    if (s0 < *(int32_t *)0x100b9af20) {
            if (!CPU_FLAGS & S) {
                    r8 = 0x101169f28;
            }
            else {
                    r8 = 0x101169f24;
            }
    }
    r0 = *(r19 + sign_extend_64(*(int32_t *)r8));
    return r0;
}

-(void)onEnter {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [[*(self + r21) viewChangedCallback] setTarget:0x0];
    [[*(self + r21) viewChangedCallback] setSelector:0x0];
    [[&var_30 super] onEnter];
    return;
}

-(void)createNodes {
    r31 = r31 - 0x190;
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
    r19 = self;
    r0 = [MCConfigurationData sharedMCConfigurationData];
    r0 = [r0 tableWithId:@"General - Credits"];
    v0 = 0x0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_160 = r0;
    var_178 = r1;
    r0 = objc_msgSend(r0, r1);
    var_138 = r0;
    if (r0 != 0x0) {
            var_150 = *var_120;
            var_158 = sign_extend_64(*(int32_t *)ivar_offset(_table));
            do {
                    r28 = 0x0;
                    do {
                            if (*var_120 != var_150) {
                                    objc_enumerationMutation(var_160);
                            }
                            r22 = *(var_128 + r28 * 0x8);
                            r20 = sub_1005d84b0([r22 objectForKey:@"isTitle"], 0x0);
                            r23 = sub_1005d84b0([r22 objectForKey:@"isLargeBox"], 0x0);
                            r22 = [[[Application sharedApplication] localizationManager] textForKey:sub_1005d85d8([r22 objectForKey:@"value"], 0x0)];
                            r0 = r19;
                            if (r23 != 0x0) {
                                    [r0 largeViewCellSizeWithText:r22];
                            }
                            else {
                                    [r0 viewCellSize];
                            }
                            r25 = @selector(addCellItem:);
                            r0 = objc_alloc();
                            v0 = v0;
                            v1 = v1;
                            [[r0 initWithText:r22 isTitle:r20 size:r23 isLarge:r5] autorelease];
                            objc_msgSend(*(r19 + var_158), r25);
                            r28 = r28 + 0x1;
                    } while (r28 < var_138);
                    r0 = objc_msgSend(var_160, var_178);
                    var_138 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(struct CGSize)viewCellSize {
    [[self bgNode] contentSize];
    [[self bgNode] contentSize];
    r0 = [MenuCreditsView numVisibleItems];
    asm { fcvt       d0, s0 };
    asm { fdiv       d1, d9, d0 };
    return r0;
}

-(void)onExit {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [[*(self + r21) viewChangedCallback] setTarget:0x0];
    [[*(self + r21) viewChangedCallback] setSelector:0x0];
    [[&var_30 super] onExit];
    return;
}

-(struct CGSize)largeViewCellSizeWithText:(void *)arg2 {
    r20 = self;
    [[arg2 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] count] - 0x1;
    asm { sxtw       x19, w8 };
    [r20 viewCellSize];
    r0 = sub_1005cb618();
    asm { scvtf      s2, x19 };
    asm { fcvt       d0, s0 };
    return r0;
}

-(void)scrollCallback {
    r20 = self->_scrollbar;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_table));
    [*(self + r21) currentScrollProgress];
    [*(self + r21) currentScrollHandleRecommendedSize];
    [r20 scrollCallback:r2 andUpdateLength:r3];
    return;
}

+(struct CGSize)tableCellSize {
    [[CCDirector sharedDirector] winSize];
    r0 = [MenuCreditsView numVisibleItems];
    asm { fcvt       d3, s3 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d1, d1, d0 };
    return r0;
}

+(struct CGSize)largeTableCellSize:(void *)arg2 {
    [[arg2 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] count] - 0x1;
    asm { sxtw       x19, w8 };
    [MenuCreditsView tableCellSize];
    r0 = sub_1005cb618();
    asm { scvtf      s2, x19 };
    asm { fcvt       d0, s0 };
    return r0;
}

+(float)numVisibleItems {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = sub_1005cb540();
    if (s0 < *(int32_t *)0x100b9af20) {
            asm { fcsel      s0, s1, s0, mi };
    }
    return r0;
}

@end