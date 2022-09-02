@implementation CCPointArray

+(void *)arrayWithCapacity:(unsigned long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithCapacity:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithCapacity:0x32];
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
            *(r20 + 0x8) = [[NSMutableArray alloc] initWithCapacity:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r21 = [*(self + 0x8) mutableCopy];
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithCapacity:0xa];
    [r0 setControlPoints:r21];
    [r21 release];
    r0 = r0;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)addControlPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [NSValue valueWithCGPoint:r2];
    [*(self + 0x8) addObject:r2];
    return;
}

-(void)insertControlPoint:(struct CGPoint)arg2 atIndex:(unsigned long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [*(self + 0x8) insertObject:[NSValue valueWithCGPoint:r2] atIndex:r2];
    return;
}

-(struct CGPoint)getControlPointAtIndex:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x8) count] - 0x1 < (arg2 & !(arg2 / 0xffffffff80000000))) {
            r2 = [*(r19 + 0x8) count] - 0x1;
    }
    r0 = *(r19 + 0x8);
    r0 = [r0 objectAtIndex:r2];
    r0 = [r0 CGPointValue];
    return r0;
}

-(void)replaceControlPoint:(struct CGPoint)arg2 atIndex:(unsigned long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [*(self + 0x8) replaceObjectAtIndex:r2 withObject:[NSValue valueWithCGPoint:r2]];
    return;
}

-(void)removeControlPointAtIndex:(unsigned long long)arg2 {
    [*(self + 0x8) removeObjectAtIndex:arg2];
    return;
}

-(unsigned long long)count {
    r0 = *(self + 0x8);
    r0 = [r0 count];
    return r0;
}

-(void)reverseInline {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 count];
    r23 = r0 >> 0x1;
    if (r23 != 0x0) {
            r20 = 0x0;
            r22 = r0 - 0x1;
            do {
                    [*(r19 + 0x8) exchangeObjectAtIndex:r2 withObjectAtIndex:r3];
                    r20 = r20 + 0x1;
                    r22 = r22 - 0x1;
            } while (r23 != r20);
    }
    return;
}

-(void *)controlPoints {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)reverse {
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
    r20 = self;
    r21 = [NSMutableArray alloc];
    r21 = [r21 initWithCapacity:[*(r20 + 0x8) count]];
    r0 = *(r20 + 0x8);
    r0 = [r0 reverseObjectEnumerator];
    r23 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r27 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r23);
                            }
                            [r21 addObject:r2];
                            r19 = r19 + 0x1;
                    } while (r19 < r25);
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    r0 = [r20 class];
    r0 = [r0 alloc];
    r0 = [r0 initWithCapacity:0x0];
    [r0 setControlPoints:r21];
    [r21 release];
    r0 = [r0 autorelease];
    if (**___stack_chk_guard != var_60) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setControlPoints:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end