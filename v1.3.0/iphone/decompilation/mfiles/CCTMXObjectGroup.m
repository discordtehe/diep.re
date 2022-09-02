@implementation CCTMXObjectGroup

-(void *)propertyNamed:(void *)arg2 {
    r0 = *(self + 0x28);
    r0 = [r0 valueForKey:arg2];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setGroupName:0x0];
            [r19 setPositionOffset:0x0];
            [r19 setObjects:[NSMutableArray arrayWithCapacity:0xa]];
            [r19 setProperties:[NSMutableDictionary dictionaryWithCapacity:0x5]];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x20) release];
    [*(self + 0x28) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)groupName {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setObjects:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)objects {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)objectNamed:(void *)arg2 {
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
    r20 = *(self + 0x20);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1002e299c;

loc_1002e2900:
    r22 = r0;
    r27 = *var_110;
    goto loc_1002e291c;

loc_1002e291c:
    r28 = 0x0;
    goto loc_1002e2928;

loc_1002e2928:
    if (*var_110 != r27) {
            objc_enumerationMutation(r20);
    }
    r25 = @selector(isEqual:);
    r26 = *(var_118 + r28 * 0x8);
    if ((objc_msgSend([r26 valueForKey:r2], r25) & 0x1) != 0x0) goto loc_1002e29a0;

loc_1002e2968:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1002e2928;

loc_1002e2974:
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r22 = r0;
    if (r0 != 0x0) goto loc_1002e291c;

loc_1002e299c:
    r26 = 0x0;
    goto loc_1002e29a0;

loc_1002e29a0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r26;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setGroupName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setPositionOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x10) = d0;
    *(self + 0x18) = d1;
    return;
}

-(void *)properties {
    r0 = *(self + 0x28);
    return r0;
}

-(struct CGPoint)positionOffset {
    r0 = self;
    return r0;
}

-(void)setProperties:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end