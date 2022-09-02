@implementation CCArray

+(void *)arrayWithCapacity:(unsigned long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithCapacity:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)array {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)arrayWithArray:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithArray:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)arrayWithNSArray:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithNSArray:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithCapacity:0x2];
    return r0;
}

-(void *)initWithCapacity:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x8) = sub_10033a278();
    }
    r0 = r20;
    return r0;
}

-(void *)initWithArray:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self initWithCapacity:**(arg2 + 0x8)];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 addObjectsFromArray:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithNSArray:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self initWithCapacity:[arg2 count]];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 addObjectsFromNSArray:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithNSArray:[arg2 decodeObjectForKey:@"nsarray"]];
    return r0;
}

-(unsigned long long)count {
    r0 = **(self + 0x8);
    return r0;
}

-(unsigned long long)capacity {
    r0 = *(*(self + 0x8) + 0x8);
    return r0;
}

-(unsigned long long)indexOfObject:(void *)arg2 {
    r1 = arg2;
    r0 = *(self + 0x8);
    r9 = *r0;
    if (r9 == 0x0) goto loc_10033a478;

loc_10033a454:
    r8 = r0;
    r0 = 0x0;
    r8 = *(r8 + 0x10);
    goto loc_10033a460;

loc_10033a460:
    if (*(r8 + r0 * 0x8) == r1) goto .l1;

loc_10033a46c:
    r0 = r0 + 0x1;
    if (r0 < r9) goto loc_10033a460;

loc_10033a478:
    r0 = 0x7fffffffffffffff;
    return r0;

.l1:
    return r0;
}

-(void *)objectAtIndex:(unsigned long long)arg2 {
    r0 = *(*(*(self + 0x8) + 0x10) + arg2 * 0x8);
    return r0;
}

-(bool)containsObject:(void *)arg2 {
    r1 = arg2;
    r0 = *(self + 0x8);
    r10 = *r0;
    if (r10 == 0x0) goto loc_10033a4ac;

loc_10033a48c:
    r9 = 0x0;
    r11 = *(r0 + 0x10);
    goto loc_10033a494;

loc_10033a494:
    if (*(r11 + r9 * 0x8) == r1) goto loc_10033a4b0;

loc_10033a4a0:
    r9 = r9 + 0x1;
    if (r10 != r9) goto loc_10033a494;

loc_10033a4ac:
    r9 = 0x7fffffffffffffff;
    goto loc_10033a4b0;

loc_10033a4b0:
    if (r9 != 0x7fffffffffffffff) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)lastObject {
    r8 = *(self + 0x8);
    r9 = *r8;
    if (r9 != 0x0) {
            r0 = *(0xfffffffffffffff8 + *(r8 + 0x10) + r9 * 0x8);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getNSArray {
    r9 = *(self + 0x8);
    r0 = [NSArray arrayWithObjects:*(r9 + 0x10) count:*r9];
    return r0;
}

-(bool)isEqualToArray:(void *)arg2 {
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
    r19 = arg2;
    r20 = self;
    if ([self count] == 0x0) goto loc_10030e6b8;

loc_10030e654:
    r22 = 0x0;
    goto loc_10030e668;

loc_10030e668:
    r23 = @selector(objectAtIndex:);
    objc_msgSend(r20, r23);
    objc_msgSend(r19, r23);
    if ((objc_msgSend(r25, r24) & 0x1) == 0x0) goto loc_10030e6c0;

loc_10030e6a0:
    r22 = r22 + 0x1;
    if ([r20 count] > r22) goto loc_10030e668;

loc_10030e6b8:
    r0 = 0x1;
    return r0;

loc_10030e6c0:
    r0 = 0x0;
    return r0;
}

-(void *)randomObject {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(self + 0x8);
    if (*r8 != 0x0) {
            asm { ucvtf      s8, x9 };
            random();
            asm { scvtf      s0, x0 };
            r8 = 0x30000000;
            asm { fcvtzs     w8, s0 };
            r0 = *(r19 + r8 * 0x8);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)addObject:(void *)arg2 {
    sub_10033a504(*(self + 0x8), arg2);
    return;
}

-(void)addObjectsFromArray:(void *)arg2 {
    sub_10033a5c8(*(self + 0x8), *(arg2 + 0x8));
    return;
}

-(void)insertObject:(void *)arg2 atIndex:(unsigned long long)arg3 {
    sub_10033a5f8(*(self + 0x8), arg2, arg3);
    return;
}

-(void)addObjectsFromNSArray:(void *)arg2 {
    r31 = r31 - 0x120;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    sub_10033a39c(*(self + 0x8), [arg2 count]);
    var_100 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r23 = *var_100;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            sub_10033a4bc(*(r20 + 0x8), *(var_108 + r24 * 0x8));
                            r24 = r24 + 0x1;
                    } while (r24 < r22);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeObject:(void *)arg2 {
    sub_10033a7bc(*(self + 0x8), arg2);
    return;
}

-(void)removeObjectAtIndex:(unsigned long long)arg2 {
    sub_10033a68c(*(self + 0x8), arg2);
    return;
}

-(void)fastRemoveObject:(void *)arg2 {
    sub_10033a73c(*(self + 0x8), arg2);
    return;
}

-(void)removeObjectsInArray:(void *)arg2 {
    sub_10033a85c(*(self + 0x8), *(arg2 + 0x8));
    return;
}

-(void)fastRemoveObjectAtIndex:(unsigned long long)arg2 {
    sub_10033a6f0(*(self + 0x8), arg2);
    return;
}

-(void)removeLastObject {
    r0 = *(self + 0x8);
    sub_10033a68c(r0, *r0 - 0x1);
    return;
}

-(void)removeAllObjects {
    sub_10033a31c(*(self + 0x8));
    return;
}

-(void)exchangeObject:(void *)arg2 withObject:(void *)arg3 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = loc_10033a44c(r0, r2, r2);
    if (r0 != 0x7fffffffffffffff) {
            r20 = r0;
            r0 = *(r19 + 0x8);
            r0 = loc_10033a44c(r0, r21, r2);
            if (r0 != 0x7fffffffffffffff) {
                    r2 = r0;
                    r0 = *(r19 + 0x8);
                    r1 = r20;
                    r8 = *(r0 + 0x10);
                    r9 = *(r8 + r1 * 0x8);
                    *(r8 + r1 * 0x8) = *(r8 + r2 * 0x8);
                    *(*(r0 + 0x10) + r2 * 0x8) = r9;
            }
    }
    return;
}

-(void)exchangeObjectAtIndex:(unsigned long long)arg2 withObjectAtIndex:(unsigned long long)arg3 {
    loc_10033a670(*(self + 0x8), arg2, arg3, arg3);
    return;
}

-(void)replaceObjectAtIndex:(unsigned long long)arg2 withObject:(void *)arg3 {
    sub_10033a5f8(*(self + 0x8), arg3, arg2);
    sub_10033a68c(*(self + 0x8), arg2 + 0x1);
    return;
}

-(void)reverseObjects {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r8 = *r0;
    r20 = r8 - 0x2;
    if (r20 >= 0x0) {
            asm { ucvtf      s0, x8 };
            asm { fcvtms     w21, s0 };
            if (r21 >= 0x1) {
                    loc_10033a670(r0, 0x0, r8 - 0x1, r3);
                    if (r21 != 0x1) {
                            r22 = r21;
                            r21 = 0x1;
                            do {
                                    loc_10033a670(*(r19 + 0x8), r21, r20, r3);
                                    r21 = r21 + 0x1;
                                    r20 = r20 - 0x1;
                            } while (r22 != r21);
                    }
            }
    }
    return;
}

-(void)makeObjectsPerformSelector:(void *)arg2 {
    sub_10033a8b0(*(self + 0x8), arg2);
    return;
}

-(void)reduceMemoryFootprint {
    sub_10033a3f4(*(self + 0x8));
    return;
}

-(void)makeObjectsPerformSelector:(void *)arg2 withObject:(void *)arg3 {
    sub_10033a910(*(self + 0x8), arg2, arg3);
    return;
}

-(void)makeObjectPerformSelectorWithArrayObjects:(void *)arg2 selector:(void *)arg3 {
    sub_10033a980(*(self + 0x8), arg3, arg2);
    return;
}

-(void)insertionSortUsingCFuncComparator:(void * *)arg2 {
    sub_10033ac94(*(self + 0x8), arg2);
    return;
}

-(unsigned long long)countByEnumeratingWithState:(union ? *)arg2 objects:(void * *)arg3 count:(unsigned long long)arg4 {
    r2 = arg2;
    r0 = self;
    if (*r2 == 0x1) {
            r0 = 0x0;
    }
    else {
            *(r2 + 0x10) = r0;
            r8 = *(r0 + 0x8);
            r8 = *(r8 + 0x10);
            *(int128_t *)r2 = 0x1;
            *(int128_t *)(r2 + 0x8) = r8;
            r0 = **(r0 + 0x8);
    }
    return r0;
}

-(void)mergesortLUsingCFuncComparator:(void * *)arg2 {
    sub_10033aafc(*(self + 0x8), 0x8, arg2);
    return;
}

-(void)qsortUsingCFuncComparator:(void * *)arg2 {
    r8 = *(self + 0x8);
    qsort(*(r8 + 0x10), *r8, 0x8, arg2);
    return;
}

-(void)insertionSort:(void *)arg2 {
    r2 = arg2;
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
    r8 = *(self + 0x8);
    r21 = *r8;
    if (r21 >= 0x2) {
            r19 = r2;
            r22 = *(r8 + 0x10);
            r23 = 0x1;
            r24 = 0x2;
            r25 = r22;
            do {
                    r26 = r25;
                    r27 = r24;
                    do {
                            if ([*r26 performSelector:r2 withObject:r3] != 0x1) {
                                break;
                            }
                            asm { ext        v1.16b, v0.16b, v0.16b, #0x8 };
                            *(int128_t *)r26 = q1;
                            r26 = r26 + 0xfffffffffffffff8;
                            r27 = r27 - 0x1;
                    } while (r27 > 0x1);
                    r23 = r23 + 0x1;
                    r24 = r24 + 0x1;
                    r25 = r25 + 0x8;
            } while (r23 != r21);
    }
    return;
}

-(void)sortUsingSelector:(void *)arg2 {
    [self sortUsingFunction:0x10030eb1c context:arg2];
    return;
}

-(void)encodeWithCoder:(void *)arg2 {
    [arg2 encodeObject:[self getNSArray] forKey:@"nsarray"];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithArray:self];
    return r0;
}

-(void)dealloc {
    sub_10033a2bc();
    [[&var_20 super] dealloc];
    return;
}

-(void)sortUsingFunction:(void * *)arg2 context:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    var_70 = arg2;
    stack[-120] = arg3;
    r19 = self;
    r0 = [self count];
    r25 = r0;
    if (r0 < 0x0) {
            asm { cinc       x8, x0, lt };
    }
    r21 = malloc((0x101137000 << 0x2 & 0xfffffffffffffff8) + 0x8);
    if (r25 >= 0x1) {
            r20 = 0x0;
            do {
                    [*(*(*(r19 + 0x8) + 0x10) + r20 * 0x8) retain];
                    r20 = r20 + 0x1;
            } while (r25 != r20);
            if (r25 >= 0x2) {
                    r10 = 0x1;
                    var_88 = r25;
                    do {
                            r23 = r25 + (r10 ^ 0xffffffff);
                            if (r23 >= 0x0) {
                                    r9 = @selector(replaceObjectAtIndex:withObject:);
                                    var_80 = r10 << 0x1;
                                    var_78 = r10;
                                    do {
                                            if (r23 < r10) {
                                                    asm { csinc      x26, xzr, x8, lt };
                                            }
                                            if (r26 <= r23) {
                                                    r28 = r9;
                                                    r20 = 0x0;
                                                    do {
                                                            *(r21 + r20 * 0x8) = [r19 objectAtIndex:r26 + r20];
                                                            r20 = r20 + 0x1;
                                                            r27 = r26 + r20;
                                                            r8 = r27 - 0x1;
                                                    } while (r8 < r23);
                                                    if (r26 <= r8) {
                                                            var_58 = r23 + var_78;
                                                            if (r8 < r23 + var_78) {
                                                                    r25 = 0x0;
                                                                    do {
                                                                            r22 = [r19 objectAtIndex:r27];
                                                                            r20 = *(r21 + r25 * 0x8);
                                                                            if ((var_70)() == 0x1) {
                                                                                    r25 = r25 + 0x1;
                                                                                    [r19 replaceObjectAtIndex:r2 withObject:r3];
                                                                            }
                                                                            else {
                                                                                    [r19 replaceObjectAtIndex:r2 withObject:r3];
                                                                                    r27 = r27 + 0x1;
                                                                            }
                                                                            r26 = r26 + 0x1;
                                                                            r9 = r28;
                                                                            if (r26 >= r27 || r27 > var_58) {
                                                                                break;
                                                                            }
                                                                            else {
                                                                                continue;
                                                                            }
                                                                    } while (true);
                                                            }
                                                            else {
                                                                    r25 = 0x0;
                                                                    r9 = r28;
                                                            }
                                                    }
                                                    else {
                                                            r25 = 0x0;
                                                            r9 = r28;
                                                    }
                                                    if (r26 < r27) {
                                                            r20 = r21 + r25 * 0x8;
                                                            do {
                                                                    r20 = r20 + 0x8;
                                                                    objc_msgSend(r19, r28);
                                                                    r9 = r28;
                                                                    r26 = r22;
                                                            } while (r27 != r22);
                                                    }
                                            }
                                            r8 = var_80;
                                            r10 = var_78;
                                            r23 = r23 - r8;
                                    } while (r23 >= 0x0);
                                    r25 = var_88;
                            }
                            else {
                                    r8 = r10 << 0x1;
                            }
                            r10 = r8;
                    } while (r8 < r25);
            }
            r20 = 0x0;
            do {
                    [*(*(*(r19 + 0x8) + 0x10) + r20 * 0x8) release];
                    r20 = r20 + 0x1;
            } while (r25 != r20);
    }
    free(r21);
    return;
}

-(void *)description {
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
    [self class];
    r20 = [NSMutableString stringWithFormat:@"<%@ = %p> = ( "];
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            [r20 appendFormat:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 appendString:@")"];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end