@implementation MCPromoMultiTriggerEvent

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x28) = [[NSMutableDictionary dictionary] retain];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r0 = [self initWithConfiguration:arg2 withError:&var_8];
    return r0;
}

-(void)reset {
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
    r19 = self;
    var_110 = q0;
    r20 = *(self + 0x28);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = [*(r19 + 0x28) objectForKey:*(var_118 + r21 * 0x8)];
@(NO);
                            [r26 replaceObjectAtIndex:r2 withObject:r3];
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r0 = objc_msgSend(r20, var_128);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)dealloc {
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
    r19 = self;
    [self setEnabled:0x0];
    var_110 = q0;
    r20 = *(r19 + 0x28);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            [[[*(r19 + 0x28) objectForKey:*(var_118 + r28 * 0x8)] objectAtIndex:r2] setDelegateParameter:r2];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + 0x28);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x28) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [r19 setDelegateParameter:0x0];
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)initWithConfiguration:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
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
    r19 = arg3;
    if (r2 == 0x0) goto loc_1009e7b7c;

loc_1009e7974:
    r24 = r2;
    r23 = r0;
    if ([r2 count] == 0x0) goto loc_1009e7b7c;

loc_1009e7994:
    r0 = [r24 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009e7b9c;

loc_1009e79b4:
    r20 = r0;
    if ([r0 count] == 0x0) goto loc_1009e7b9c;

loc_1009e79c4:
    var_190 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009e7a60;

loc_1009e79f4:
    r26 = r0;
    r27 = *var_190;
    goto loc_1009e7a00;

loc_1009e7a00:
    r28 = 0x0;
    goto loc_1009e7a04;

loc_1009e7a04:
    if (*var_190 != r27) {
            objc_enumerationMutation(r20);
    }
    r0 = *(var_198 + r28 * 0x8);
    if (r0 == 0x0 || [r0 count] == 0x0) goto loc_1009e7b9c;

loc_1009e7a34:
    r28 = r28 + 0x1;
    if (r28 < r26) goto loc_1009e7a04;

loc_1009e7a40:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r26 = r0;
    if (r0 != 0x0) goto loc_1009e7a00;

loc_1009e7a60:
    r0 = [[&var_1B0 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r24 objectForKey:r2];
            if (r0 != 0x0) {
                    r0 = [r0 boolValue];
            }
            r22 = @selector(count);
            *(int8_t *)(r23 + 0x21) = r0;
            objc_msgSend(r20, r22);
            *(r23 + 0x28) = [[NSMutableDictionary dictionaryWithCapacity:r2] retain];
            var_1E0 = q0;
            r0 = objc_msgSend(r20, r21);
            if (r0 != 0x0) {
                    r22 = r0;
                    r25 = *var_1E0;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_1E0 != r25) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [r23 addEvent:r2 withError:r3];
                                    r27 = r27 + 0x1;
                            } while (r27 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    goto loc_1009e7bd4;

loc_1009e7bd4:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009e7b9c:
    if (r19 != 0x0) {
            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
            r23 = 0x0;
            *r19 = r0;
    }
    else {
            r23 = 0x0;
    }
    goto loc_1009e7bd4;

loc_1009e7b7c:
    if (r19 != 0x0) {
            r0 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
            r23 = 0x0;
            *r19 = r0;
    }
    else {
            r23 = 0x0;
    }
    goto loc_1009e7bd4;
}

-(void)addEvent:(void *)arg2 {
    [self addEvent:arg2 withError:&var_8];
    return;
}

-(void)addEvent:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 initWithEventLevels:r20];
                    r0 = [r0 autorelease];
                    r21 = r0;
                    r0 = [r0 description];
                    if (r0 != 0x0) {
                            r20 = r0;
                            if ([r0 isEqualToString:r2] != 0x0) {
                                    if (r22 != 0x0) {
                                            *r22 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                                    }
                            }
                            else {
                                    [r21 description];
                                    if ([r22 objectForKey:r2] == 0x0) {
                                            [r21 setEnabled:[r19 enabled]];
                                            [r21 setDelegateTarget:r19];
                                            [r21 setDelegateSelector:@selector(eventReceived:)];
                                            [r21 setDelegateParameter:r21];
                                            r19 = *(r19 + 0x28);
@(NO);
                                            [NSMutableArray arrayWithObjects:r21];
                                            [r19 setObject:r2 forKey:r3];
                                    }
                            }
                    }
                    else {
                            if (r22 != 0x0) {
                                    *r22 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                            }
                    }
            }
            else {
                    if (r22 != 0x0) {
                            *r22 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
                    }
            }
    }
    else {
            if (r22 != 0x0) {
                    *r22 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
            }
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
    if (*(int8_t *)(r0 + 0x20) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + 0x20) = r2;
            var_110 = q0;
            r20 = *(r0 + 0x28);
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r26 = *var_110;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [[[*(r19 + 0x28) objectForKey:r2] objectAtIndex:r2] setEnabled:r2];
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
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

-(void *)events {
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
    r19 = self;
    r20 = [NSMutableArray array];
    var_110 = q0;
    r21 = *(r19 + 0x28);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r21, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = @selector(addObject:);
                            [[[*(r19 + 0x28) objectForKey:*(var_118 + r22 * 0x8)] objectAtIndex:0x0] eventLevels];
                            objc_msgSend(r20, r27);
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r0 = objc_msgSend(r21, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)eventReceived:(void *)arg2 {
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
    if (r2 == 0x0) goto loc_1009e8414;

loc_1009e8284:
    r19 = r0;
    r21 = *(r0 + 0x28);
    [r2 description];
    r0 = [r21 objectForKey:r2];
    if (r0 == 0x0) goto loc_1009e8414;

loc_1009e82b8:
    [r0 replaceObjectAtIndex:0x1 withObject:@(YES)];
    if (*(int8_t *)(r19 + 0x21) == 0x0) goto loc_1009e831c;

loc_1009e82f4:
    r0 = *(r19 + 0x8);
    if (r0 != 0x0 && *(r19 + 0x10) != 0x0) {
            if (*(r19 + 0x18) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
            else {
                    [r0 performSelector:r2];
            }
    }
    [r19 reset];
    goto loc_1009e8414;

loc_1009e8414:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1009e831c:
    var_110 = q0;
    r21 = *(r19 + 0x28);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1009e82f4;

loc_1009e8350:
    r23 = r0;
    r27 = *var_110;
    r26 = 0x1;
    goto loc_1009e8368;

loc_1009e8368:
    r28 = 0x0;
    goto loc_1009e8374;

loc_1009e8374:
    if (*var_110 != r27) {
            objc_enumerationMutation(r21);
    }
    r20 = @selector(objectForKey:);
    r24 = @selector(objectAtIndex:);
    r0 = *(r19 + 0x28);
    r0 = objc_msgSend(r0, r20);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 boolValue];
    if (r0 == 0x0) goto loc_1009e8414;

loc_1009e83b8:
    r26 = r26 & r0;
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_1009e8374;

loc_1009e83c8:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1009e8368;

loc_1009e83f0:
    if (r26 != 0x0) {
            r0 = *(r19 + 0x8);
            if (r0 != 0x0 && *(r19 + 0x10) != 0x0) {
                    if (*(r19 + 0x18) != 0x0) {
                            [r0 performSelector:r2 withObject:r3];
                    }
                    else {
                            [r0 performSelector:r2];
                    }
            }
            [r19 reset];
    }
    goto loc_1009e8414;
}

-(void *)getState {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x110;
    r19 = [NSNumber numberWithBool:*(int8_t *)(self + 0x20)];
    *((r29 - 0x28) + 0xffffffffffffff00) = self;
    r0 = *(self + 0x28);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r21 = @selector(count);
            *((r29 - 0x48) + 0xffffffffffffff00) = r19;
            r19 = *((r29 - 0x28) + 0xffffffffffffff00);
            r0 = *(r19 + 0x28);
            r0 = objc_msgSend(r0, r21);
            *((r29 - 0x50) + 0xffffffffffffff00) = &var_160;
            *((r29 - 0x58) + 0xffffffffffffff00) = r0;
            *((r29 - 0x30) + 0xffffffffffffff00) = &var_160 - ((r0 << 0x3) + 0xf & 0xfffffffffffffff0);
            r23 = &var_160 - ((r0 << 0x3) + 0xf & 0xfffffffffffffff0);
            *(int128_t *)((r29 - 0x20) + 0xffffffffffffff00) = q0;
            *(int128_t *)((r29 - 0x10) + 0xffffffffffffff00) = q0;
            r0 = *(r19 + 0x28);
            *((r29 - 0x38) + 0xffffffffffffff00) = r0;
            *((r29 - 0x40) + 0xffffffffffffff00) = @selector(countByEnumeratingWithState:objects:count:);
            r0 = [r0 countByEnumeratingWithState:r29 - 0x120 objects:r29 - 0xe0 count:0x10];
            if (r0 != 0x0) {
                    r26 = r0;
                    r8 = 0x0;
                    r25 = **((r29 - 0x10) + 0xffffffffffffff00);
                    do {
                            r24 = 0x0;
                            r20 = r8;
                            do {
                                    r22 = r20 + r24;
                                    if (**((r29 - 0x10) + 0xffffffffffffff00) != r25) {
                                            objc_enumerationMutation(*((r29 - 0x38) + 0xffffffffffffff00));
                                    }
                                    r28 = @selector(objectAtIndex:);
                                    r27 = @selector(objectForKey:);
                                    r0 = *(*((r29 - 0x28) + 0xffffffffffffff00) + 0x28);
                                    r0 = objc_msgSend(r0, r27);
                                    r19 = r0;
                                    r0 = objc_msgSend(r0, r28);
                                    r0 = [r0 description];
                                    asm { ubfiz      x22, x22, #0x3, #0x20 };
                                    *(*((r29 - 0x30) + 0xffffffffffffff00) + r22) = r0;
                                    *(r23 + r22) = objc_msgSend(r19, r28);
                                    r24 = r24 + 0x1;
                            } while (r24 < r26);
                            r0 = *((r29 - 0x38) + 0xffffffffffffff00);
                            r0 = objc_msgSend(r0, *((r29 - 0x40) + 0xffffffffffffff00));
                            r26 = r0;
                            r8 = r20 + r24;
                    } while (r0 != 0x0);
            }
            r0 = [NSDictionary dictionaryWithObjects:r23 forKeys:*((r29 - 0x30) + 0xffffffffffffff00) count:*((r29 - 0x58) + 0xffffffffffffff00)];
            r31 = *((r29 - 0x50) + 0xffffffffffffff00);
            r19 = *((r29 - 0x48) + 0xffffffffffffff00);
    }
    else {
            r0 = [NSDictionary dictionary];
    }
    var_60 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:r19];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x20) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r20 = @"Yes";
            }
            else {
                    r20 = @"No";
            }
    }
    if (*(int8_t *)(r0 + 0x21) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r21 = @"Yes";
            }
            else {
                    r21 = @"No";
            }
    }
    r0 = *(r0 + 0x28);
    [r0 description];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(self + 0x20);
    return r0;
}

-(bool)activateOnFirstEvent {
    r0 = *(int8_t *)(self + 0x21);
    return r0;
}

-(void)setState:(void *)arg2 withError:(void * *)arg3 {
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_1009e8928;

loc_1009e88c0:
    r20 = r0;
    r21 = @selector(objectForKey:);
    r22 = objc_msgSend(r2, r21);
    r0 = objc_msgSend(r2, r21);
    if (r22 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1009e8948;

loc_1009e8908:
    if (r19 != 0x0) {
            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    }
    goto loc_1009e8abc;

loc_1009e8abc:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1009e8948:
    r23 = r0;
    r24 = @selector(count);
    if (objc_msgSend(r0, r24) != objc_msgSend(*(r20 + 0x28), r24)) goto loc_1009e8a70;

loc_1009e8974:
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r22;
    var_128 = r1;
    r0 = objc_msgSend(r23, r1);
    if (r0 == 0x0) goto loc_1009e8a48;

loc_1009e89a4:
    r25 = r0;
    r24 = *var_110;
    goto loc_1009e89b4;

loc_1009e89b4:
    r22 = 0x0;
    goto loc_1009e89bc;

loc_1009e89bc:
    if (*var_110 != r24) {
            objc_enumerationMutation(r23);
    }
    r21 = @selector(objectForKey:);
    r27 = *(var_118 + r22 * 0x8);
    r0 = *(r20 + 0x28);
    r0 = objc_msgSend(r0, r21);
    if (r0 == 0x0) goto loc_1009e8a90;

loc_1009e89f0:
    [r23 objectForKey:r2];
    objc_msgSend(r0, r26);
    r22 = r22 + 0x1;
    if (r22 < r25) goto loc_1009e89bc;

loc_1009e8a24:
    r0 = objc_msgSend(r23, var_128);
    r25 = r0;
    if (r0 != 0x0) goto loc_1009e89b4;

loc_1009e8a48:
    [var_130 boolValue];
    [r20 setEnabled:r2];
    goto loc_1009e8abc;

loc_1009e8a90:
    if (r19 != 0x0) {
            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    }
    goto loc_1009e8abc;

loc_1009e8a70:
    if (r19 != 0x0) {
            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    }
    goto loc_1009e8abc;

loc_1009e8928:
    if (r19 != 0x0) {
            *r19 = [NSError errorWithDomain:r2 code:r3 userInfo:r4];
    }
    goto loc_1009e8abc;
}

-(void)setActivateOnFirstEvent:(bool)arg2 {
    *(int8_t *)(self + 0x21) = arg2;
    return;
}

-(void *)delegateTarget {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setDelegateTarget:(void *)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void *)delegateSelector {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setDelegateParameter:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setDelegateSelector:(void *)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void *)delegateParameter {
    r0 = *(self + 0x18);
    return r0;
}

@end