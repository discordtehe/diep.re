@implementation CCBAnimationManager

-(float)durationForSequenceId:(int)arg2 {
    r0 = [self sequenceFromSequenceId:arg2];
    r0 = [r0 duration];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            *(r19 + 0x8) = objc_msgSend([NSMutableArray alloc], r20);
            *(r19 + 0x10) = objc_msgSend([NSMutableDictionary alloc], r20);
            *(r19 + 0x18) = objc_msgSend([NSMutableDictionary alloc], r20);
            *(r19 + 0x68) = objc_msgSend([NSMutableArray alloc], r20);
            *(r19 + 0x70) = objc_msgSend([NSMutableArray alloc], r20);
            *(r19 + 0x78) = objc_msgSend([NSMutableArray alloc], r20);
            *(r19 + 0x80) = objc_msgSend([NSMutableArray alloc], r20);
            *(int32_t *)(r19 + 0x50) = 0x3f800000;
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)containerSize:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 != 0x0) {
            r0 = [r2 contentSize];
    }
    return r0;
}

-(void)addNode:(void *)arg2 andSequences:(void *)arg3 {
    [arg2 retain];
    [NSValue valueWithPointer:arg2];
    [*(self + 0x10) setObject:r2 forKey:r3];
    return;
}

-(void)moveAnimationsFromNode:(void *)arg2 toNode:(void *)arg3 {
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r22 = [NSValue valueWithPointer:r2];
    r23 = [NSValue valueWithPointer:r19];
    r0 = *(r21 + 0x18);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            [*(r21 + 0x18) setObject:r2 forKey:r3];
            [*(r21 + 0x18) removeObjectForKey:r2];
            [r20 release];
            [r19 retain];
    }
    r24 = @selector(objectForKey:);
    r0 = *(r21 + 0x10);
    r0 = objc_msgSend(r0, r24);
    if (r0 != 0x0) {
            [*(r21 + 0x10) setObject:r2 forKey:r3];
            [*(r21 + 0x10) removeObjectForKey:r2];
            [r20 release];
            [r19 retain];
    }
    return;
}

-(void)setBaseValue:(void *)arg2 forNode:(void *)arg3 propertyName:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r20 = arg2;
    r22 = self;
    r24 = [NSValue valueWithPointer:arg3];
    r0 = *(r22 + 0x18);
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r23 = r0;
            r22 = @selector(setObject:forKey:);
    }
    else {
            r23 = [NSMutableDictionary dictionary];
            r0 = *(r22 + 0x18);
            r22 = @selector(setObject:forKey:);
            objc_msgSend(r0, r22);
            [r21 retain];
    }
    objc_msgSend(r23, r22);
    return;
}

-(void *)baseValueForNode:(void *)arg2 propertyName:(void *)arg3 {
    [NSValue valueWithPointer:arg2];
    r0 = *(self + 0x18);
    r20 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r20);
    r0 = objc_msgSend(r0, r20);
    return r0;
}

-(int)sequenceIdForSequenceNamed:(void *)arg2 {
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
    r19 = arg2;
    var_110 = q0;
    r20 = *(self + 0x8);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1003445cc;

loc_100344538:
    r22 = r0;
    r26 = *var_110;
    r8 = 0x101137000;
    goto loc_10034454c;

loc_10034454c:
    r27 = 0x0;
    r28 = r8;
    r24 = *(r8 + 0x258);
    goto loc_10034455c;

loc_10034455c:
    if (*var_110 != r26) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_118 + r27 * 0x8);
    if ((objc_msgSend([r25 name], r24) & 0x1) != 0x0) goto loc_1003445d4;

loc_100344598:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_10034455c;

loc_1003445a4:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    r8 = r28;
    if (r0 != 0x0) goto loc_10034454c;

loc_1003445cc:
    r0 = 0xffffffffffffffff;
    goto loc_1003445e4;

loc_1003445e4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1003445d4:
    r0 = [r25 sequenceId];
    goto loc_1003445e4;
}

-(void *)sequenceFromSequenceId:(int)arg2 {
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
    r19 = arg2;
    var_110 = q0;
    r20 = *(self + 0x8);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100344700;

loc_100344688:
    r22 = r0;
    r25 = *var_110;
    goto loc_100344698;

loc_100344698:
    r27 = 0x0;
    goto loc_1003446a0;

loc_1003446a0:
    if (*var_110 != r25) {
            objc_enumerationMutation(r20);
    }
    r24 = *(var_118 + r27 * 0x8);
    if ([r24 sequenceId] == r19) goto loc_100344704;

loc_1003446d4:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1003446a0;

loc_1003446e0:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_100344698;

loc_100344700:
    r24 = 0x0;
    goto loc_100344704;

loc_100344704:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setFirstFrameForNode:(void *)arg2 sequenceProperty:(void *)arg3 tweenDuration:(float)arg4 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    r0 = [arg3 keyframes];
    r22 = r0;
    if ([r0 count] != 0x0) {
            r22 = [r22 objectAtIndex:0x0];
            [r21 name];
            [r22 value];
            r0 = r20;
    }
    else {
            [r20 baseValueForNode:r19 propertyName:[r21 name]];
            [r21 name];
            r0 = r20;
    }
    [r0 setAnimatedProperty:r2 forNode:r3 toValue:r4 tweenDuration:r5];
    return;
}

-(void *)easeAction:(void *)arg2 easingType:(int)arg3 easingOpt:(float)arg4 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = arg2;
    [CCSequence class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r0 = r19;
    }
    else {
            if (r20 <= 0x16) {
                    r0 = (0x100346020 + *(int8_t *)(0x100bcd18b + r20) * 0x4)();
            }
            else {
                    r0 = r19;
            }
    }
    return r0;
}

-(void *)actionForCallbackChannel:(void *)arg2 {
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
    var_148 = self;
    var_138 = [NSMutableArray array];
    var_120 = q0;
    r0 = [arg2 keyframes];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r0;
    var_178 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1003449b8;

loc_1003447d8:
    r23 = r0;
    var_140 = *var_120;
    goto loc_100344814;

loc_100344814:
    r19 = 0x0;
    var_158 = @selector(actionWithDuration:);
    goto loc_10034484c;

loc_10034484c:
    if (*var_120 != var_140) {
            objc_enumerationMutation(var_150);
    }
    r25 = *(var_128 + r19 * 0x8);
    [r25 time];
    objc_msgSend(r25, r24);
    if (s0 > 0x0) {
            r0 = @class(CCDelayTime);
            asm { fcvt       d0, s9 };
            objc_msgSend(r0, var_158);
            objc_msgSend(var_138, r26);
    }
    r28 = @selector(objectAtIndex:);
    r27 = @selector(value);
    r22 = @selector(intValue);
    r20 = @selector(rootNode);
    r21 = objc_msgSend(objc_msgSend(r25, r27), r28);
    r0 = objc_msgSend(r25, r27);
    r0 = objc_msgSend(r0, r28);
    r0 = objc_msgSend(r0, r22);
    r1 = r20;
    if (r0 == 0x1) goto loc_100344920;

loc_100344904:
    if (r0 == 0x3) goto loc_10034491c;

loc_10034490c:
    r1 = @selector(owner);
    if (r0 == 0x2) goto loc_100344920;

loc_100344918:
    r0 = 0x0;
    goto loc_1003449f0;

loc_1003449f0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100344920:
    r25 = objc_msgSend(var_148, r1);
    r0 = NSSelectorFromString(r21);
    if (r25 != 0x0 && r0 != 0x0) {
            [CCCallFunc actionWithTarget:r2 selector:r3];
            objc_msgSend(var_138, r26);
    }
    r19 = r19 + 0x1;
    if (r19 < r23) goto loc_10034484c;

loc_100344970:
    r0 = objc_msgSend(var_150, var_178);
    r23 = r0;
    if (r0 != 0x0) goto loc_100344814;

loc_1003449b8:
    r19 = var_138;
    r0 = [r19 count];
    if (r0 != 0x0) {
            r0 = [CCSequence actionWithArray:r19];
    }
    goto loc_1003449f0;

loc_10034491c:
    r1 = @selector(absoluteRootNode);
    goto loc_100344920;
}

-(void)runActionsForNode:(void *)arg2 sequenceProperty:(void *)arg3 tweenDuration:(float)arg4 {
    r4 = arg4;
    r31 = r31 - 0xb0;
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
    r20 = arg3;
    r19 = arg2;
    r21 = self;
    r0 = [arg3 keyframes];
    r22 = r0;
    r23 = [r0 count];
    if (r23 >= 0x2) {
            var_70 = r20;
            var_68 = r19;
            r20 = [NSMutableArray array];
            [[r22 objectAtIndex:0x0] time];
            if (s0 + s8 > 0x0) {
                    r0 = @class(CCDelayTime);
                    asm { fcvt       d0, s0 };
                    [r0 actionWithDuration:r2];
                    objc_msgSend(r20, *(r19 + 0x6c0));
            }
            r25 = 0x0;
            var_78 = r20;
            r20 = r23 - 0x1;
            r19 = var_70;
            do {
                    r28 = [r22 objectAtIndex:r25];
                    r25 = r25 + 0x1;
                    r0 = [r21 actionFromKeyframe0:r28 andKeyframe1:[r22 objectAtIndex:r25] propertyName:[r19 name] node:var_68];
                    if (r0 != 0x0) {
                            var_98 = @selector(addObject:);
                            r19 = [r28 easingType];
                            [r28 easingOpt];
                            r3 = r19;
                            r19 = var_70;
                            [r21 easeAction:r0 easingType:r3 easingOpt:r4];
                            objc_msgSend(var_78, var_98);
                    }
            } while (r20 != r25);
            [CCSequence actionWithArray:var_78];
            [var_68 runAction:r2];
    }
    return;
}

-(void)runAnimationsForSequenceNamed:(void *)arg2 tweenDuration:(float)arg3 {
    [self runAnimationsForSequenceId:[self sequenceIdForSequenceNamed:arg2] tweenDuration:arg3];
    return;
}

-(void)setAnimatedProperty:(void *)arg2 forNode:(void *)arg3 toValue:(void *)arg4 tweenDuration:(float)arg5 {
    r5 = arg5;
    r31 = r31 - 0x90;
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
    r22 = arg4;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if (s0 <= 0x0) goto loc_1003456b4;

loc_1003455f0:
    r0 = [CCBKeyframe alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    [r0 setValue:r22];
    [r0 setTime:r22];
    [r0 setEasingType:0x1];
    [r21 actionFromKeyframe0:0x0 andKeyframe1:r0 propertyName:r20 node:r19];
    [r19 runAction:r2];
    return;

loc_1003456b4:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_10034584c;

loc_1003456d4:
    r23 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x2] intValue];
    r26 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x3] intValue];
    r25 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x4] intValue];
    [[r22 objectAtIndex:0x0] floatValue];
    v8 = v0;
    [[r22 objectAtIndex:0x1] floatValue];
    v9 = v0;
    [r19 parent];
    [r21 containerSize:r2];
    if (r26 == 0x0) goto loc_100345ac4;

loc_1003457e4:
    if (r26 == 0x1) goto loc_100345800;

loc_1003457ec:
    if (r26 != 0x2) goto loc_100345814;

loc_1003457f4:
    asm { fcvt       d1, s8 };
    d0 = d0 * d1;
    asm { fcvt       s8, d0 };
    goto loc_100345800;

loc_100345800:
    [r19 resolutionScale];
    asm { fdiv       s8, s8, s0 };
    goto loc_100345814;

loc_100345814:
    if (r25 == 0x0) goto loc_100345ad8;

loc_100345818:
    if (r25 == 0x1) goto loc_100345834;

loc_100345820:
    if (r25 != 0x2) goto loc_100345ad8;

loc_100345828:
    asm { fcvt       d0, s9 };
    asm { fcvt       s9, d0 };
    goto loc_100345834;

loc_100345834:
    [r19 resolutionScale];
    asm { fdiv       s9, s9, s0 };
    goto loc_100345ad8;

loc_100345ad8:
    r22 = @selector(parent);
    asm { fcvt       d8, s8 };
    asm { fcvt       d9, s9 };
    objc_msgSend(r19, r22);
    objc_msgSend(r21, r24);
    [r19 setRelativePosition:r23 type:r20 parentSize:r4 propertyName:r5];
    return;

loc_100345ac4:
    if (r25 != 0x0) goto loc_100345818;
    goto loc_100345ad8;

loc_10034584c:
    if ([r20 isEqualToString:r2] != 0x0) {
            r21 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x2] intValue];
            [[r22 objectAtIndex:0x0] floatValue];
            v8 = v0;
            [[r22 objectAtIndex:0x1] floatValue];
            v9 = v0;
            if (r21 == 0x1) {
                    [r19 resolutionScale];
                    asm { fdiv       s8, s8, s0 };
                    asm { fdiv       s9, s9, s0 };
            }
            [r19 setRelativeScaleX:r21 Y:r20 type:r4 propertyName:r5];
    }
    else {
            if ([r20 isEqualToString:r2] != 0x0) {
                    r23 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x2] intValue];
                    r20 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x3] intValue];
                    [[r22 objectAtIndex:0x0] floatValue];
                    [[r22 objectAtIndex:0x1] floatValue];
                    [r21 containerSize:[r19 parent]];
                    if (r23 <= 0x4) {
                            (0x100345a68 + *(int8_t *)(0x100bcd17a + r23) * 0x4)();
                    }
                    else {
                            r2 = 0x0;
                            asm { fcvt       d0, s8 };
                            asm { fcvt       d1, s9 };
                            [r19 setRelativeSize:r2 type:r3];
                    }
            }
            else {
                    if ([r20 isEqualToString:r2] != 0x0) {
                            [[r22 objectAtIndex:0x0] floatValue];
                            [[r22 objectAtIndex:0x1] floatValue];
                            r22 = [NSString stringWithFormat:@"%@X"];
                            r20 = [NSString stringWithFormat:@"%@Y"];
                            r2 = [NSNumber numberWithFloat:@"%@Y"];
                            [r19 setValue:r2 forKey:r22];
                            [NSNumber numberWithFloat:r2];
                            r0 = r19;
                    }
                    else {
                            r0 = r19;
                    }
                    [r0 setValue:r2 forKey:r3];
            }
    }
    return;
}

-(void)runAnimationsForSequenceNamed:(void *)arg2 {
    [self runAnimationsForSequenceNamed:arg2 tweenDuration:r3];
    return;
}

-(void)sequenceCompleted {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(self + 0x90) != [*(self + 0x60) name]) {
            [*(r19 + 0x90) release];
            *(r19 + 0x90) = [[*(r19 + 0x60) name] copy];
    }
    r0 = *(r19 + 0x60);
    r0 = [r0 chainedSequenceId];
    *(r19 + 0x60) = 0x0;
    if (r0 != -0x1) {
            [r19 runAnimationsForSequenceId:r0 tweenDuration:r3];
    }
    [*(r19 + 0x58) completedAnimationSequenceNamed:*(r19 + 0x90)];
    r0 = *(r19 + 0x98);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

-(void *)runningSequenceName {
    r0 = *(self + 0x60);
    r0 = [r0 name];
    return r0;
}

-(void *)actionFromKeyframe0:(void *)arg2 andKeyframe1:(void *)arg3 propertyName:(void *)arg4 node:(void *)arg5 {
    r31 = r31 - 0xb0;
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
    r19 = arg5;
    r20 = arg4;
    r22 = arg3;
    r21 = self;
    [arg3 time];
    v8 = v0;
    [arg2 time];
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100344b28;

loc_100344abc:
    r2 = @"rotation";
    r19 = @class(CCBRotateTo);
    asm { fcvt       d8, s14 };
    [[r22 value] floatValue];
    r0 = [r19 actionWithDuration:r2 angle:r3];
    return r0;

loc_100344b28:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100344bac;

loc_100344b40:
    r19 = @class(CCFadeTo);
    asm { fcvt       d8, s14 };
    [[r22 value] intValue] & 0xff;
    r0 = [r19 actionWithDuration:r2 opacity:r3];
    return r0;

loc_100344bac:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100344c38;

loc_100344bc4:
    [[r22 value] getValue:&var_A8];
    r0 = @class(CCTintTo);
    asm { fcvt       d0, s14 };
    r0 = [r0 actionWithDuration:var_A8 red:var_A7 green:var_A6 blue:r5];
    return r0;

loc_100344c38:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100344ca4;

loc_100344c50:
    r21 = [[r22 value] boolValue];
    r0 = @class(CCDelayTime);
    asm { fcvt       d0, s14 };
    r20 = [r0 actionWithDuration:r2];
    if (r21 != 0x0) {
            r0 = @class(CCShow);
    }
    else {
            r0 = @class(CCHide);
    }
    r0 = [r0 action];
    goto loc_100344d24;

loc_100344d24:
    r0 = @class(CCSequence);
    goto loc_100344d38;

loc_100344d38:
    r0 = [r0 actionOne:r2 two:r3];
    return r0;

loc_100344ca4:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100344d68;

loc_100344cbc:
    r2 = @"displayFrame";
    r0 = @class(CCDelayTime);
    asm { fcvt       d0, s14 };
    r20 = [r0 actionWithDuration:r2];
    r0 = [CCBSetSpriteFrame actionWithSpriteFrame:[r22 value]];
    goto loc_100344d24;

loc_100344d68:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100344ed4;

loc_100344d80:
    r24 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x2] intValue];
    r23 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x3] intValue];
    r0 = [r22 value];
    [[r0 objectAtIndex:0x0] floatValue];
    [[r0 objectAtIndex:0x1] floatValue];
    [r21 containerSize:[r19 parent]];
    v9 = v0;
    v10 = v1;
    if (r24 > 0x4) goto loc_1003454ac;

loc_100344e80:
    r0 = (0x100344e9c + *(int8_t *)(0x100bcd164 + r24) * 0x4)();
    return r0;

loc_1003454ac:
    [r19 contentSize];
    asm { fcvt       d0, s8 };
    asm { fcvt       d1, s11 };
    [r19 setRelativeSize:r21 type:r20 parentSize:r4 propertyName:r5];
    objc_msgSend(r19, r22);
    [r19 setContentSize:r21];
    asm { fcvt       d10, s14 };
    objc_msgSend(r19, r22);
    asm { fcvt       s1, d0 };
    asm { fcvt       s2, d8 };
    [r21 actionWithDuration:r2 key:r3 from:r4 to:r5];
    objc_msgSend(r19, r22);
    asm { fcvt       s1, d1 };
    asm { fcvt       s2, d9 };
    objc_msgSend(r24, r23);
    r0 = r20;
    goto loc_100344d38;

loc_100344ed4:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_10034503c;

loc_100344eec:
    r23 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x2] intValue];
    r26 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x3] intValue];
    r24 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x4] intValue];
    r0 = [r22 value];
    [[r0 objectAtIndex:0x0] floatValue];
    [[r0 objectAtIndex:0x1] floatValue];
    [r21 containerSize:[r19 parent]];
    v9 = v0;
    v10 = v1;
    if (r26 == 0x0) goto loc_1003452a4;

loc_100345008:
    if (r26 == 0x1) goto loc_100345024;

loc_100345010:
    if (r26 != 0x2) goto loc_1003452a4;

loc_100345018:
    asm { fcvt       d0, s8 };
    d0 = d9 * d0;
    asm { fcvt       s8, d0 };
    goto loc_100345024;

loc_100345024:
    [r19 resolutionScale];
    asm { fdiv       s8, s8, s0 };
    goto loc_1003452a4;

loc_1003452a4:
    if (r24 == 0x0) goto loc_1003452ec;

loc_1003452a8:
    if (r24 == 0x1) goto loc_1003452c4;

loc_1003452b0:
    if (r24 != 0x2) goto loc_1003452ec;

loc_1003452b8:
    asm { fcvt       d0, s11 };
    asm { fcvt       s11, d0 };
    goto loc_1003452c4;

loc_1003452c4:
    [r19 resolutionScale];
    asm { fdiv       s11, s11, s0 };
    goto loc_1003452ec;

loc_1003452ec:
    asm { fcvt       d0, s8 };
    asm { fcvt       d1, s11 };
    [r19 absolutePositionFromRelative:r23 type:r20 parentSize:r4 propertyName:r5];
    r0 = @class(CCMoveTo);
    asm { fcvt       d0, s14 };
    r0 = [r0 actionWithDuration:r2 position:r3];
    return r0;

loc_10034503c:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100345120;

loc_100345054:
    r21 = [[[r21 baseValueForNode:r19 propertyName:r20] objectAtIndex:0x2] intValue];
    r0 = [r22 value];
    [[r0 objectAtIndex:0x0] floatValue];
    v8 = v0;
    [[r0 objectAtIndex:0x1] floatValue];
    v9 = v0;
    if (r21 == 0x1) {
            [r19 resolutionScale];
            asm { fdiv       s8, s8, s0 };
            asm { fdiv       s9, s9, s0 };
    }
    r0 = @class(CCScaleTo);
    asm { fcvt       d0, s14 };
    r1 = @selector(actionWithDuration:scaleX:scaleY:);
    goto loc_1003451a8;

loc_1003451a8:
    r0 = objc_msgSend(r0, r1);
    return r0;

loc_100345120:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1003452dc;

loc_100345138:
    r0 = [r22 value];
    [[r0 objectAtIndex:0x0] floatValue];
    [[r0 objectAtIndex:0x1] floatValue];
    r0 = @class(CCSkewTo);
    asm { fcvt       d0, s14 };
    r1 = @selector(actionWithDuration:skewX:skewY:);
    goto loc_1003451a8;

loc_1003452dc:
    r0 = 0x0;
    return r0;
}

-(void)setCompletedAnimationCallbackBlock:(void *)arg2 {
    [*(self + 0x98) release];
    *(self + 0x98) = [arg2 copy];
    return;
}

-(void)debug {
    return;
}

-(void)runAnimationsForSequenceId:(int)arg2 tweenDuration:(float)arg3 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x380;
    v8 = v0;
    var_394 = arg2;
    [*(self + 0x28) stopAllActions];
    var_2A0 = q0;
    var_388 = self;
    r0 = *(self + 0x10);
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    var_3E0 = r0;
    r0 = objc_msgSend(r0, r22);
    var_390 = r22;
    var_3B0 = r0;
    if (r0 != 0x0) {
            var_3D8 = *var_2A0;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_2A0 != var_3D8) {
                                    objc_enumerationMutation(var_3E0);
                            }
                            var_3A0 = r19;
                            r0 = [*(var_2A8 + r19 * 0x8) pointerValue];
                            r23 = r0;
                            [r0 stopAllActions];
                            var_3A8 = r20;
                            r20 = [*(var_388 + 0x10) objectForKey:r20];
                            r20 = [r20 objectForKey:[NSNumber numberWithInt:var_394]];
                            var_378 = [NSMutableSet set];
                            var_2E0 = q0;
                            r0 = objc_msgSend(r20, r22);
                            if (r0 != 0x0) {
                                    r25 = r0;
                                    r26 = *var_2E0;
                                    do {
                                            r22 = 0x0;
                                            do {
                                                    if (*var_2E0 != r26) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    r21 = *(var_2E8 + r22 * 0x8);
                                                    [r20 objectForKey:r21];
                                                    [var_378 addObject:r21];
                                                    [var_388 setFirstFrameForNode:r2 sequenceProperty:r3 tweenDuration:r4];
                                                    objc_msgSend(var_388, r24);
                                                    r22 = r22 + 0x1;
                                            } while (r22 < r25);
                                            r22 = var_390;
                                            r0 = objc_msgSend(r20, r22);
                                            r25 = r0;
                                    } while (r0 != 0x0);
                            }
                            r0 = *(var_388 + 0x18);
                            r0 = [r0 objectForKey:var_3A8];
                            r20 = r0;
                            var_320 = q0;
                            r0 = objc_msgSend(r0, r22);
                            if (r0 != 0x0) {
                                    r24 = r0;
                                    r19 = *var_320;
                                    do {
                                            r21 = 0x0;
                                            do {
                                                    if (*var_320 != r19) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    r25 = @selector(containsObject:);
                                                    r28 = *(var_328 + r21 * 0x8);
                                                    if ((objc_msgSend(var_378, r25) & 0x1) == 0x0) {
                                                            r0 = [r20 objectForKey:r28];
                                                            if (r0 != 0x0) {
                                                                    [var_388 setAnimatedProperty:r2 forNode:r3 toValue:r4 tweenDuration:r5];
                                                            }
                                                    }
                                                    r21 = r21 + 0x1;
                                            } while (r21 < r24);
                                            r0 = objc_msgSend(r20, r22);
                                            r24 = r0;
                                    } while (r0 != 0x0);
                            }
                            r19 = var_3A0 + 0x1;
                    } while (r19 < var_3B0);
                    r0 = objc_msgSend(var_3E0, r22);
                    var_3B0 = r0;
            } while (r0 != 0x0);
    }
    r21 = var_388;
    r2 = var_394;
    r0 = [r21 sequenceFromSequenceId:r2];
    r19 = @class(CCSequence);
    r20 = @class(CCDelayTime);
    [r0 duration];
    asm { fcvt       d0, s0 };
    [r19 actionOne:[r20 actionWithDuration:r2] two:[CCCallFunc actionWithTarget:r21 selector:@selector(sequenceCompleted)]];
    [*(r21 + 0x28) runAction:r2];
    var_360 = q0;
    r26 = *(r21 + 0x8);
    r0 = objc_msgSend(r26, r22);
    if (r0 != 0x0) {
            r27 = r0;
            r21 = *var_360;
            asm { fcvt       d9, s8 };
            do {
                    r24 = 0x0;
                    do {
                            if (*var_360 != r21) {
                                    objc_enumerationMutation(r26);
                            }
                            r23 = *(var_368 + r24 * 0x8);
                            if ([r23 sequenceId] == var_394) {
                                    [r23 callbackChannel];
                                    r0 = objc_msgSend(var_388, r22);
                                    if (r0 != 0x0) {
                                            r23 = r0;
                                            if (s8 > 0x0) {
                                                    [CCDelayTime actionWithDuration:r2];
                                                    r23 = [CCSequence actionOne:r2 two:r3];
                                            }
                                            [*(var_388 + 0x28) runAction:r2];
                                    }
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r27);
                    r0 = objc_msgSend(r26, var_390);
                    r27 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    *(var_388 + 0x60) = [var_388 sequenceFromSequenceId:r2];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void *)sequences {
    r0 = *(self + 0x8);
    return r0;
}

-(void)dealloc {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = self;
    var_190 = q0;
    r21 = *(self + 0x10);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_190;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_190 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            [[*(var_198 + r28 * 0x8) pointerValue] release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = q0;
    r21 = *(r19 + 0x18);
    r0 = objc_msgSend(r21, r20);
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_1D0;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_1D0 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            [[*(var_1D8 + r28 * 0x8) pointerValue] release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + 0x18) release];
    [*(r19 + 0x8) release];
    [*(r19 + 0x10) release];
    [r19 setRootNode:0x0];
    [r19 setDelegate:0x0];
    [r19 setDocumentControllerName:0x0];
    [r19 setAbsoluteRootNode:0x0];
    [*(r19 + 0x68) release];
    [*(r19 + 0x70) release];
    [*(r19 + 0x78) release];
    [*(r19 + 0x80) release];
    [*(r19 + 0x90) release];
    [*(r19 + 0x98) release];
    [[&var_1F0 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(int)autoPlaySequenceId {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(void)setAutoPlaySequenceId:(int)arg2 {
    *(int32_t *)(self + 0x20) = arg2;
    return;
}

-(void *)rootNode {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setRootNode:(void *)arg2 {
    *(self + 0x28) = arg2;
    return;
}

-(struct CGSize)rootContainerSize {
    r0 = self;
    return r0;
}

-(void)setRootContainerSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x40) = d0;
    *(self + 0x48) = d1;
    return;
}

-(void *)delegate {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)documentOutletNames {
    r0 = *(self + 0x68);
    return r0;
}

-(void *)documentOutletNodes {
    r0 = *(self + 0x70);
    return r0;
}

-(void *)documentCallbackNames {
    r0 = *(self + 0x78);
    return r0;
}

-(void *)documentCallbackNodes {
    r0 = *(self + 0x80);
    return r0;
}

-(void *)documentControllerName {
    r0 = objc_getProperty(self, _cmd, 0x88, 0x0);
    return r0;
}

-(void)setDocumentControllerName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)lastCompletedSequenceName {
    r0 = *(self + 0x90);
    return r0;
}

-(float)pointScale {
    r0 = self;
    return r0;
}

-(void)setPointScale:(float)arg2 {
    *(int32_t *)(self + 0x50) = s0;
    return;
}

-(void *)absoluteRootNode {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setAbsoluteRootNode:(void *)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void *)owner {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setOwner:(void *)arg2 {
    *(self + 0x38) = arg2;
    return;
}

@end