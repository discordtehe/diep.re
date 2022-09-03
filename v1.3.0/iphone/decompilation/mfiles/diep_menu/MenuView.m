@implementation MenuView

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_menusGathered = 0x0;
    }
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_menus));
    r20 = *(int128_t *)(self + r8);
    r21 = *(int128_t *)(0x8 + self + r8);
    if (r20 != r21) {
            do {
                    r0 = *r20;
                    r20 = r20 + 0x8;
                    [r0 release];
            } while (r21 != r20);
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)setupLayout:(unsigned long long)arg2 {
    return;
}

-(void)setupLayout {
    return;
}

-(void)removeChildByTag:(long long)arg2 cleanup:(bool)arg3 {
    [self removeChildFromMenus:[self getChildByTag:r2]];
    [[&var_30 super] removeChildByTag:arg2 cleanup:arg3];
    return;
}

-(void)gatherChildrenMenus {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_menusGathered));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            [r0 gatherChildrenMenus:r0];
            *(int8_t *)(r0 + r20) = 0x1;
    }
    return;
}

-(void)disableInput {
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
    [self gatherChildrenMenus];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_menus));
    r26 = *(int128_t *)(self + r8);
    r27 = *(int128_t *)(0x8 + self + r8);
    if (r26 != r27) {
            do {
                    r25 = *r26;
                    if (r25 != 0x0 && [r25 parent] != 0x0) {
                            if (([r25 isKindOfClass:[CCTable class]] & 0x1) != 0x0) {
                                    r0 = r25;
                                    r1 = @selector(setEnabled:);
                            }
                            else {
                                    [r25 setEnabled:0x0];
                                    r0 = r25;
                                    r1 = @selector(setTouchEnabled:);
                            }
                            objc_msgSend(r0, r1);
                            objc_msgSend(r25, r24);
                    }
                    r26 = r26 + 0x8;
            } while (r27 != r26);
    }
    return;
}

-(void)enableInput {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self gatherChildrenMenus];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_menus));
    r24 = *(int128_t *)(self + r8);
    r25 = *(int128_t *)(0x8 + self + r8);
    if (r24 != r25) {
            do {
                    r19 = @selector(class);
                    r23 = *r24;
                    objc_msgSend(@class(CCTable), r19);
                    if ((objc_msgSend(r23, r20) & 0x1) != 0x0) {
                            r0 = r23;
                            r1 = @selector(setEnabled:);
                    }
                    else {
                            [r23 setEnabled:r2];
                            r0 = r23;
                            r1 = r22;
                    }
                    objc_msgSend(r0, r1);
                    r24 = r24 + 0x8;
            } while (r25 != r24);
    }
    return;
}

-(double)refresh {
    r0 = self;
    return r0;
}

-(double)onEnterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    return r0;
}

-(double)onLeaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    return r0;
}

-(void)removeChildFromMenus:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [CCMenu class];
    if ([r19 isKindOfClass:r2] == 0x0) goto .l1;

loc_1000844ac:
    r21 = (int64_t *)&r20->_menus;
    r20 = *(int128_t *)r21;
    r8 = *(int128_t *)(r21 + 0x8);
    if (r8 == r20) goto .l1;

loc_1000844c4:
    if (*r20 == r19) goto loc_1000844f4;

loc_1000844d0:
    r8 = r8 - 0x8;
    goto loc_1000844d4;

loc_1000844d4:
    if (r8 == r20) goto .l1;

loc_1000844dc:
    r9 = r20 + 0x8;
    r10 = *(r20 + 0x8);
    r20 = r9;
    if (r10 != r19) goto loc_1000844d4;

loc_1000844f0:
    r20 = r9;
    goto loc_1000844f4;

loc_1000844f4:
    r19 = r20 + 0x8;
    [*r20 release];
    r8 = *(r21 + 0x8);
    r2 = r8 - r19;
    r22 = SAR(r2, 0x3);
    if (r2 != 0x0) {
            memmove(r20, r19, r2);
    }
    *(r21 + 0x8) = r20 + r22 * 0x8;
    return;

.l1:
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_menus));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    return r0;
}

-(void).cxx_destruct {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_menus));
    r8 = self + r8;
    r0 = *r8;
    if (r0 != 0x0) {
            *(r8 + 0x8) = r0;
            operator delete(r0);
    }
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    [self removeChildFromMenus:r2];
    [[&var_30 super] removeChild:arg2 cleanup:arg3];
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    r31 = r31 - 0x70;
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
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    [CCMenu class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_100084338;

loc_10008427c:
    r23 = (int64_t *)&r22->_menus;
    r9 = *(int128_t *)(r23 + 0x8);
    r8 = *(int128_t *)(r23 + 0x10);
    if (r9 >= r8) goto loc_1000842a0;

loc_100084294:
    *r9 = r21;
    *(r23 + 0x8) = r9 + 0x8;
    goto loc_100084330;

loc_100084330:
    [r21 retain];
    goto loc_100084338;

loc_100084338:
    [[&var_60 super] addChild:r21 z:r20 tag:r19];
    return;

loc_1000842a0:
    r24 = *r23;
    r25 = r9 - r24;
    r27 = SAR(r25, 0x3);
    r9 = r27 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_100084380;

loc_1000842b8:
    r8 = r8 - r24;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r28 = 0x1fffffffffffffff;
            }
            else {
                    r28 = r9;
            }
    }
    if (r28 == 0x0) goto loc_1000842f4;

loc_1000842dc:
    if (r28 >> 0x3d != 0x0) goto loc_100084388;

loc_1000842e4:
    r26 = operator new();
    goto loc_1000842f8;

loc_1000842f8:
    r28 = r26 + r28 * 0x8;
    *(r26 + r27 * 0x8) = r21;
    r27 = 0x8 + r26 + r27 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    *(int128_t *)r23 = r26;
    *(int128_t *)(r23 + 0x8) = r27;
    *(r23 + 0x10) = r28;
    if (r24 != 0x0) {
            operator delete(r24);
    }
    goto loc_100084330;

loc_100084388:
    sub_100084584();
    return;

loc_1000842f4:
    r26 = 0x0;
    goto loc_1000842f8;

loc_100084380:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

-(void)gatherChildrenMenus:(void *)arg2 {
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
    r28 = self;
    var_110 = q0;
    r0 = [arg2 children];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1000841d8;

loc_10008404c:
    r21 = r0;
    r23 = *var_110;
    var_150 = r23;
    var_148 = r20;
    goto loc_100084064;

loc_100084064:
    r22 = 0x0;
    r27 = @selector(class);
    r19 = @selector(isKindOfClass:);
    var_130 = r27;
    var_140 = r21;
    var_138 = r19;
    goto loc_100084088;

loc_100084088:
    if (*var_110 != r23) {
            objc_enumerationMutation(r20);
    }
    r26 = *(var_118 + r22 * 0x8);
    objc_msgSend(@class(CCMenu), r27);
    if (objc_msgSend(r26, r19) == 0x0) goto loc_10008419c;

loc_1000840c8:
    r19 = r28;
    r27 = (int64_t *)&r28->_menus;
    r9 = *(int128_t *)(r27 + 0x8);
    r8 = *(int128_t *)(r27 + 0x10);
    if (r9 >= r8) goto loc_1000840ec;

loc_1000840e0:
    *r9 = r26;
    *(r27 + 0x8) = r9 + 0x8;
    goto loc_10008418c;

loc_10008418c:
    [r26 retain];
    r28 = r19;
    r19 = var_138;
    r27 = var_130;
    goto loc_10008419c;

loc_10008419c:
    [r28 gatherChildrenMenus:r2];
    r22 = r22 + 0x1;
    if (r22 < r21) goto loc_100084088;

loc_1000841b8:
    r0 = objc_msgSend(r20, var_158);
    r21 = r0;
    if (r0 != 0x0) goto loc_100084064;

loc_1000841d8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1000840ec:
    r28 = *r27;
    r21 = r9 - r28;
    r23 = SAR(r21, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_100084214;

loc_100084104:
    r8 = r8 - r28;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r24 = &@class(MCConfigurationData);
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r24 = 0x1fffffffffffffff;
            }
            else {
                    r24 = r9;
            }
    }
    if (r24 == 0x0) goto loc_100084140;

loc_100084128:
    if (r24 >> 0x3d != 0x0) goto loc_10008421c;

loc_100084130:
    r20 = operator new();
    goto loc_100084144;

loc_100084144:
    r25 = r20 + r23 * 0x8;
    r23 = r20 + r24 * 0x8;
    *r25 = r26;
    r25 = r25 + 0x8;
    if (r21 >= 0x1) {
            memcpy(r20, r28, r21);
    }
    *(int128_t *)r27 = r20;
    *(int128_t *)(r27 + 0x8) = r25;
    *(r27 + 0x10) = r23;
    r20 = var_148;
    r21 = var_140;
    r23 = var_150;
    if (r28 != 0x0) {
            operator delete(r28);
    }
    goto loc_10008418c;

loc_10008421c:
    sub_100084584();
    return;

loc_100084140:
    r20 = 0x0;
    goto loc_100084144;

loc_100084214:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

@end