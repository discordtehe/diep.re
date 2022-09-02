@implementation CCTouchDispatcher

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x20) release];
    [*(self + 0x28) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(r19 + 0x31) = 0x1;
            *(r19 + 0x8) = [[NSMutableArray alloc] initWithCapacity:0x8];
            *(r19 + 0x10) = [[NSMutableArray alloc] initWithCapacity:0x4];
            *(r19 + 0x20) = [[NSMutableArray alloc] initWithCapacity:0x8];
            *(r19 + 0x28) = [[NSMutableArray alloc] initWithCapacity:0x8];
            *(int8_t *)(r19 + 0x1a) = 0x0;
            *(int8_t *)(r19 + 0x30) = 0x0;
            *(int16_t *)(r19 + 0x18) = 0x0;
            *(int128_t *)(r19 + 0x38) = @selector(ccTouchesBegan:withEvent:);
            *(int128_t *)(r19 + 0x40) = @selector(ccTouchBegan:withEvent:);
            *(int32_t *)(r19 + 0x48) = 0x1;
            *(int128_t *)(r19 + 0x50) = @selector(ccTouchesMoved:withEvent:);
            *(int128_t *)(r19 + 0x58) = @selector(ccTouchMoved:withEvent:);
            *(int32_t *)(r19 + 0x60) = 0x2;
            *(int128_t *)(r19 + 0x68) = @selector(ccTouchesEnded:withEvent:);
            *(int128_t *)(r19 + 0x70) = @selector(ccTouchEnded:withEvent:);
            *(int32_t *)(r19 + 0x78) = 0x4;
            *(int128_t *)(r19 + 0x80) = @selector(ccTouchesCancelled:withEvent:);
            *(int128_t *)(r19 + 0x88) = @selector(ccTouchCancelled:withEvent:);
            *(int32_t *)(r19 + 0x90) = 0x8;
    }
    r0 = r19;
    return r0;
}

-(void)addStandardDelegate:(void *)arg2 priority:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r20 = [CCStandardTouchHandler handlerWithDelegate:r2 priority:arg3];
    if (*(int8_t *)(r19 + 0x18) != 0x0) {
            if (([r19 removeDelegate:r21 fromQueue:*(r19 + 0x28)] & 0x1) == 0x0) {
                    [*(r19 + 0x20) addObject:r20];
                    *(int8_t *)(r19 + 0x19) = 0x1;
            }
    }
    else {
            [r19 forceAddHandler:r20 array:*(r19 + 0x10)];
    }
    return;
}

-(bool)removeDelegate:(void *)arg2 fromQueue:(void *)arg3 {
    r31 = r31 - 0x140;
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
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 == 0x0) goto loc_10032139c;

loc_1003212ac:
    r22 = r0;
    r27 = *var_110;
    goto loc_1003212c8;

loc_1003212c8:
    r21 = 0x0;
    goto loc_1003212d8;

loc_1003212d8:
    if (*var_110 != r27) {
            objc_enumerationMutation(r19);
    }
    r23 = @selector(class);
    r26 = *(var_118 + r21 * 0x8);
    objc_msgSend(@class(CCTouchHandler), r23);
    if (objc_msgSend(r26, r24) == 0x0) goto loc_100321330;

loc_100321318:
    if ([r26 delegate] != r20) goto loc_100321338;

loc_100321378:
    if (r26 != 0x0) {
            [r19 removeObject:r26];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    goto loc_10032139c;

loc_10032139c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100321338:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1003212d8;

loc_100321344:
    r0 = objc_msgSend(r19, var_128);
    r22 = r0;
    if (r0 != 0x0) goto loc_1003212c8;
    goto loc_10032139c;

loc_100321330:
    if (r26 == r20) goto loc_100321374;
    goto loc_100321338;

loc_100321374:
    r26 = r20;
    goto loc_100321378;
}

-(void)forceAddHandler:(void *)arg2 array:(void *)arg3 {
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
    r20 = arg3;
    r19 = arg2;
    var_110 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r26 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            if ([*(var_118 + r28 * 0x8) priority] < [r19 priority]) {
                                    asm { cinc       x22, x22, lt };
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 insertObject:r19 atIndex:0x0];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)addTargetedDelegate:(void *)arg2 priority:(long long)arg3 swallowsTouches:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r20 = [CCTargetedTouchHandler handlerWithDelegate:r2 priority:arg3 swallowsTouches:arg4];
    if (*(int8_t *)(r19 + 0x18) != 0x0) {
            if (([r19 removeDelegate:r21 fromQueue:*(r19 + 0x28)] & 0x1) == 0x0) {
                    [*(r19 + 0x20) addObject:r20];
                    *(int8_t *)(r19 + 0x19) = 0x1;
            }
    }
    else {
            [r19 forceAddHandler:r20 array:*(r19 + 0x8)];
    }
    return;
}

-(void)removeDelegate:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (*(int8_t *)(r0 + 0x18) != 0x0) {
                    if (([r19 removeDelegate:r20 fromQueue:*(r19 + 0x20)] & 0x1) == 0x0) {
                            [*(r19 + 0x28) addObject:r20];
                            *(int8_t *)(r19 + 0x1a) = 0x1;
                    }
            }
            else {
                    [r19 forceRemoveDelegate:r20];
            }
    }
    return;
}

-(void)forceRemoveAllDelegates {
    [*(self + 0x10) removeAllObjects];
    objc_msgSend(*(self + 0x8), r20);
    return;
}

-(void)forceRemoveDelegate:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r20 = arg2;
    r19 = self;
    var_190 = q0;
    r22 = *(self + 0x8);
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1003217d0;

loc_1003216dc:
    r25 = r0;
    r28 = *var_190;
    goto loc_1003216e8;

loc_1003216e8:
    r26 = 0x0;
    goto loc_1003216f0;

loc_1003216f0:
    if (*var_190 != r28) {
            objc_enumerationMutation(r22);
    }
    r23 = @selector(delegate);
    r24 = *(var_198 + r26 * 0x8);
    if (objc_msgSend(r24, r23) == r20) goto loc_100321754;

loc_100321724:
    r26 = r26 + 0x1;
    if (r26 < r25) goto loc_1003216f0;

loc_100321730:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r25 = r0;
    if (r0 != 0x0) goto loc_1003216e8;

loc_1003217d0:
    r21 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = q0;
    r22 = *(r19 + 0x10);
    r0 = objc_msgSend(r22, r21);
    if (r0 == 0x0) goto loc_100321888;

loc_1003217fc:
    r23 = r0;
    r28 = *var_1D0;
    goto loc_100321808;

loc_100321808:
    r26 = 0x0;
    goto loc_100321810;

loc_100321810:
    if (*var_1D0 != r28) {
            objc_enumerationMutation(r22);
    }
    r24 = @selector(delegate);
    r25 = *(var_1D8 + r26 * 0x8);
    if (objc_msgSend(r25, r24) == r20) goto loc_100321874;

loc_100321844:
    r26 = r26 + 0x1;
    if (r26 < r23) goto loc_100321810;

loc_100321850:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_100321808;

loc_100321888:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100321874:
    [*(r19 + 0x10) removeObject:r25];
    goto loc_100321888;

loc_100321754:
    if (*0x1011e2db8 != 0x0) {
            r22 = [r24 delegate];
            [CCMenu class];
            if ([r22 isKindOfClass:r2] != 0x0 && [r24 delegate] == *0x1011e2db8) {
                    *0x1011e2db8 = 0x0;
            }
    }
    [*(r19 + 0x8) removeObject:r24];
    goto loc_1003217d0;
}

-(void)removeAllDelegates {
    r0 = self;
    if (*(int8_t *)(r0 + 0x18) != 0x0) {
            *(int8_t *)(r0 + 0x30) = 0x1;
    }
    else {
            [r0 forceRemoveAllDelegates];
    }
    return;
}

-(void)rearrangeHandlers:(void *)arg2 {
    [arg2 sortUsingFunction:0x100321c1c context:0x0];
    return;
}

-(void)setPriority:(long long)arg2 forDelegate:(void *)arg3 {
    [[self findHandler:arg3] setPriority:arg2];
    [self rearrangeHandlers:*(self + 0x8)];
    [self rearrangeHandlers:*(self + 0x10)];
    return;
}

-(void *)findHandler:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    r19 = arg2;
    r21 = self;
    var_210 = q0;
    r22 = *(self + 0x8);
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100321a80;

loc_100321a08:
    r24 = r0;
    r26 = *var_210;
    goto loc_100321a18;

loc_100321a18:
    r28 = 0x0;
    goto loc_100321a20;

loc_100321a20:
    if (*var_210 != r26) {
            objc_enumerationMutation(r22);
    }
    r25 = @selector(delegate);
    r23 = *(var_218 + r28 * 0x8);
    if (objc_msgSend(r23, r25) == r19) goto loc_100321bdc;

loc_100321a54:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_100321a20;

loc_100321a60:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_100321a18;

loc_100321a80:
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_250 = q0;
    r22 = *(r21 + 0x10);
    r0 = objc_msgSend(r22, r20);
    if (r0 == 0x0) goto loc_100321b24;

loc_100321aac:
    r24 = r0;
    r26 = *var_250;
    goto loc_100321abc;

loc_100321abc:
    r28 = 0x0;
    goto loc_100321ac4;

loc_100321ac4:
    if (*var_250 != r26) {
            objc_enumerationMutation(r22);
    }
    r25 = @selector(delegate);
    r23 = *(var_258 + r28 * 0x8);
    if (objc_msgSend(r23, r25) == r19) goto loc_100321bdc;

loc_100321af8:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_100321ac4;

loc_100321b04:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 != 0x0) goto loc_100321abc;

loc_100321b24:
    if (*(int8_t *)(r21 + 0x19) == 0x0) goto loc_100321bd8;

loc_100321b2c:
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_290 = q0;
    r21 = *(r21 + 0x20);
    r0 = objc_msgSend(r21, r20);
    if (r0 == 0x0) goto loc_100321bd8;

loc_100321b58:
    r22 = r0;
    r25 = *var_290;
    goto loc_100321b68;

loc_100321b68:
    r27 = 0x0;
    goto loc_100321b70;

loc_100321b70:
    if (*var_290 != r25) {
            objc_enumerationMutation(r21);
    }
    r24 = @selector(delegate);
    r23 = *(var_298 + r27 * 0x8);
    if (objc_msgSend(r23, r24) == r19) goto loc_100321bdc;

loc_100321ba4:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_100321b70;

loc_100321bb0:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100321b68;

loc_100321bd4:
    r23 = 0x0;
    goto loc_100321bdc;

loc_100321bdc:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100321bd8:
    r23 = 0x0;
    goto loc_100321bdc;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x31) != 0x0) {
            [r0 touches:r2 withEvent:r3 withTouchType:0x0];
    }
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x31) != 0x0) {
            [r0 touches:r2 withEvent:r3 withTouchType:0x1];
    }
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x31) != 0x0) {
            [r0 touches:r2 withEvent:r3 withTouchType:0x2];
    }
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (*(int8_t *)(r0 + 0x31) != 0x0) {
            [r0 touches:r2 withEvent:r3 withTouchType:0x3];
    }
    return;
}

-(bool)dispatchEvents {
    r0 = *(int8_t *)(self + 0x31);
    return r0;
}

-(void)setDispatchEvents:(bool)arg2 {
    *(int8_t *)(self + 0x31) = arg2;
    return;
}

-(void)touches:(void *)arg2 withEvent:(void *)arg3 withTouchType:(unsigned int)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x490;
    var_424 = arg4;
    var_430 = arg3;
    r21 = arg2;
    r20 = self;
    *(int8_t *)(self + 0x18) = 0x1;
    var_480 = self + 0x8;
    r19 = [*(self + 0x8) count];
    r8 = r20 + 0x10;
    r0 = *r8;
    var_4A0 = r8;
    r0 = [r0 count];
    if (r19 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    var_4D8 = r0;
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    var_4BC = r8 & r9;
    if ((r8 & r9) == 0x1) {
            var_4B8 = [r21 mutableCopy];
    }
    else {
            var_4B8 = r21;
    }
    r8 = 0x18;
    var_498 = r20;
    asm { umaddl     x8, w9, w8, x20 };
    var_4C8 = *(r8 + 0x38);
    var_45C = *(int32_t *)(r8 + 0x48);
    if (r19 == 0x0) goto loc_100322070;

loc_100321dfc:
    var_310 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_478 = r1;
    r0 = objc_msgSend(r21, r1);
    var_490 = r0;
    if (r0 == 0x0) goto loc_100322070;

loc_100321e38:
    var_460 = var_45C & 0xc;
    var_4B0 = *var_310;
    var_4A8 = r21;
    goto loc_100321e50;

loc_100321e50:
    r19 = 0x0;
    goto loc_100321e60;

loc_100321e60:
    if (*var_310 != var_4B0) {
            objc_enumerationMutation(r21);
    }
    var_488 = r19;
    r22 = *(var_318 + r19 * 0x8);
    var_350 = q0;
    r0 = *var_480;
    var_438 = r0;
    r0 = objc_msgSend(r0, var_478);
    if (r0 == 0x0) goto loc_10032203c;

loc_100321eb4:
    r24 = r0;
    r20 = *var_350;
    goto loc_100321ec0;

loc_100321ec0:
    r25 = 0x0;
    goto loc_100321f20;

loc_100321f20:
    if (*var_350 != r20) {
            objc_enumerationMutation(var_438);
    }
    r26 = *(var_358 + r25 * 0x8);
    if (var_424 == 0x0) goto loc_100321fa8;

loc_100321f48:
    if ([[r26 claimedTouches] containsObject:r22] == 0x0) goto loc_100321ff4;

loc_100321f64:
    if (([r26 enabledSelectors] & var_45C) != 0x0) {
            [[r26 delegate] performSelector:*0x58 withObject:r22 withObject:var_430];
    }
    r23 = @selector(removeObject:);
    if (var_460 != 0x0) {
            objc_msgSend([r26 claimedTouches], r23);
    }
    goto loc_100321fe4;

loc_100321fe4:
    if ([r26 swallowsTouches] != 0x0) goto loc_100322024;

loc_100321ff4:
    r25 = r25 + 0x1;
    if (r25 < r24) goto loc_100321f20;

loc_100322000:
    r0 = objc_msgSend(var_438, var_478);
    r24 = r0;
    if (r0 != 0x0) goto loc_100321ec0;

loc_10032203c:
    r19 = var_488 + 0x1;
    r21 = var_4A8;
    if (r19 < var_490) goto loc_100321e60;

loc_100322050:
    r0 = objc_msgSend(r21, var_478);
    var_490 = r0;
    if (r0 != 0x0) goto loc_100321e50;

loc_100322070:
    if (var_4D8 != 0x0 && [var_4B8 count] != 0x0) {
            var_390 = q0;
            r19 = *var_4A0;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r26 = *var_390;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_390 != r26) {
                                            objc_enumerationMutation(r19);
                                    }
                                    r25 = *(var_398 + r28 * 0x8);
                                    if (([r25 enabledSelectors] & var_45C) != 0x0) {
                                            [[r25 delegate] performSelector:r2 withObject:r3 withObject:r4];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (var_4BC != 0x0) {
            [var_4B8 release];
    }
    r26 = var_498;
    *(int8_t *)(r26 + 0x18) = 0x0;
    if (*(int8_t *)(r26 + 0x19) != 0x0) {
            *(int8_t *)(r26 + 0x19) = 0x0;
            r19 = [CCTargetedTouchHandler class];
            var_3D0 = q0;
            r20 = *(r26 + 0x20);
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r27 = *var_3D0;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_3D0 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r23 = @selector(isKindOfClass:);
                                    r25 = *(var_3D8 + r28 * 0x8);
                                    COND = objc_msgSend(r25, r23) != 0x0;
                                    r8 = var_480;
                                    r9 = var_4A0;
                                    r0 = var_498;
                                    if (COND) {
                                            if (!CPU_FLAGS & NE) {
                                                    r8 = r9;
                                            }
                                            else {
                                                    r8 = r8;
                                            }
                                    }
                                    [r0 forceAddHandler:r2 array:r3];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            r26 = var_498;
            [*(r26 + 0x20) removeAllObjects];
    }
    if (*(int8_t *)(r26 + 0x1a) != 0x0) {
            *(int8_t *)(r26 + 0x1a) = 0x0;
            var_410 = q0;
            r19 = *(r26 + 0x28);
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r23 = *var_410;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_410 != r23) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [r26 forceRemoveDelegate:r2];
                                    r25 = r25 + 0x1;
                            } while (r25 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
            [*(r26 + 0x28) removeAllObjects];
    }
    if (*(int8_t *)(r26 + 0x30) != 0x0) {
            *(int8_t *)(r26 + 0x30) = 0x0;
            [r26 forceRemoveAllDelegates];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100322024:
    if (var_4BC != 0x0) {
            [var_4B8 removeObject:r2];
    }
    goto loc_10032203c;

loc_100321fa8:
    r0 = [r26 delegate];
    r0 = [r0 ccTouchBegan:r22 withEvent:var_430];
    r23 = @selector(addObject:);
    if ((r0 & 0x1) == 0x0) goto loc_100321ff4;

loc_100321fcc:
    objc_msgSend([r26 claimedTouches], r23);
    goto loc_100321fe4;
}

+(void *)sharedDispatcher {
    r0 = [CCDirector sharedDirector];
    r0 = [r0 touchDispatcher];
    return r0;
}

@end