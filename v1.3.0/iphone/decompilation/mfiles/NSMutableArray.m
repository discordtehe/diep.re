@implementation NSMutableArray

-(void)mp_removeNullsRecursively {
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
    r20 = [[NSNull null] retain];
    [self removeObjectIdenticalTo:r20];
    [r20 release];
    var_110 = q0;
    r0 = [self retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r25 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            r23 = @selector(respondsToSelector:);
                            r24 = *(var_118 + r28 * 0x8);
                            if (objc_msgSend(r24, r23) != 0x0) {
                                    [r24 mp_removeNullsRecursively];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)removeFirst {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self count] != 0x0) {
            r20 = [[r19 firstObject] retain];
            [r19 removeObjectAtIndex:0x0];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)push:(void *)arg2 {
    [self addObject:r2];
    return;
}

-(void *)pop {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self lastObject];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 removeLastObject];
    }
    r0 = r20;
    return r0;
}

-(void *)peekStack {
    r0 = [self lastObject];
    return r0;
}

-(void *)objectAtDepth:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [self count];
    if (r0 >= r20) {
            r0 = [r19 objectAtIndex:r2];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)enqueue:(void *)arg2 {
    [self addObject:r2];
    return;
}

-(void *)dequeue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self count] != 0x0) {
            r0 = [r19 objectAtIndex:0x0];
            r20 = r0;
            [r0 retain];
            [r20 autorelease];
            [r19 removeObjectAtIndex:0x0];
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void *)peekQueue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self count];
    if (r0 != 0x0) {
            r0 = [r19 objectAtIndex:r2];
    }
    return r0;
}

-(unsigned long long)lastIndexOfObject:(void *)arg2 {
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
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            var_110 = q0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r25 = 0x0;
                    r26 = *var_110;
                    r22 = 0x7fffffffffffffff;
                    do {
                            r28 = 0x0;
                            do {
                                    r27 = r25 + r28;
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(r20);
                                    }
                                    if ([*(var_118 + r28 * 0x8) isEqual:r2] != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r22 = r22;
                                            }
                                            else {
                                                    r22 = r27;
                                            }
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r23);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                            r25 = r25 + r28;
                    } while (r0 != 0x0);
            }
            else {
                    r22 = 0x7fffffffffffffff;
            }
    }
    else {
            r22 = 0x7fffffffffffffff;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)removeLastInstanceOfObject:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (arg2 != 0x0) {
            r19 = r0;
            r0 = [r0 lastIndexOfObject:r2];
            if (r0 != 0x7fffffffffffffff) {
                    [r19 removeObjectAtIndex:r0];
            }
    }
    return;
}

@end