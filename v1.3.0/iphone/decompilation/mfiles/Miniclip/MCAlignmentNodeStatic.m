@implementation MCAlignmentNodeStatic

+(void *)alignmentNode {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)alignmentNodeWithSpacing:(float)arg2 direction:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithSpacing:arg2 direction:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)alignmentNodeWithSpacing:(float)arg2 direction:(unsigned long long)arg3 forceCentering:(bool)arg4 invertOrder:(bool)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithSpacing:arg2 direction:arg3 forceCentering:arg4 invertOrder:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithSpacing:0x0 direction:0x1 forceCentering:0x0 invertOrder:r5];
    return r0;
}

-(void *)initWithSpacing:(float)arg2 direction:(unsigned long long)arg3 {
    r0 = [self initWithSpacing:arg2 direction:0x1 forceCentering:0x0 invertOrder:r5];
    return r0;
}

-(void *)initWithSpacing:(float)arg2 direction:(unsigned long long)arg3 forceCentering:(bool)arg4 invertOrder:(bool)arg5 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setAnchorPoint:r2];
            *(int32_t *)(int64_t *)&r22->_spacing = s8;
            r22->_direction = r21;
            *(int8_t *)(int64_t *)&r22->_forceCentering = r20;
            *(int8_t *)(int64_t *)&r22->_invertOrder = r19;
            *(int8_t *)(int64_t *)&r22->_needsAlign = 0x0;
    }
    r0 = r22;
    return r0;
}

-(void)align {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self children] getNSArray];
    r22 = [r19 direction];
    [r19 spacing];
    r21 = [r19 forceCentering];
    r2 = [r19 invertOrder];
    r0 = r20;
    r1 = r21;
    if (r22 != 0x0) {
            sub_10034e440(r0, r1, r2);
    }
    else {
            sub_10034de80(r0, r1, r2);
    }
    [r19 centerChildren];
    *(int8_t *)(int64_t *)&r19->_needsAlign = 0x0;
    return;
}

-(void)centerChildren {
    r31 = r31 - 0x150;
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
    [self contentSize];
    v8 = v0;
    [self contentSize];
    var_130 = q0;
    r0 = [self children];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            d10 = d8 * 0x3fe0000000000000;
            d9 = d9 * 0x3fe0000000000000;
            r25 = *var_130;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_130 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_138 + r28 * 0x8) position];
                            objc_msgSend(r24, r22);
                            d1 = d9 + d1;
                            objc_msgSend(r24, r23);
                            r28 = r28 + 0x1;
                    } while (r28 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(struct CGSize)contentSize {
    r0 = [[&var_10 super] contentSize];
    return r0;
}

-(void)setSpacing:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_spacing = s0;
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)setDirection:(unsigned long long)arg2 {
    self->_direction = arg2;
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)setForceCentering:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceCentering = arg2;
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)setInvertOrder:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_invertOrder = arg2;
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    [arg2 setRotation:r2];
    [[&var_30 super] addChild:arg2 z:arg3 tag:arg4];
    [self sortAllChildren];
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setContentSize:r2];
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    [[&var_20 super] removeChild:arg2 cleanup:arg3];
    *(int8_t *)(int64_t *)&self->_needsAlign = 0x1;
    return;
}

-(void)visit {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] visit];
    if (*(int8_t *)(int64_t *)&r19->_needsAlign != 0x0) {
            [r19 align];
    }
    return;
}

-(void)didLoadFromCCBAfterChildren {
    [self align];
    return;
}

-(float)spacing {
    r0 = self;
    return r0;
}

-(bool)forceCentering {
    r0 = *(int8_t *)(int64_t *)&self->_forceCentering;
    return r0;
}

-(bool)invertOrder {
    r0 = *(int8_t *)(int64_t *)&self->_invertOrder;
    return r0;
}

-(unsigned long long)direction {
    r0 = self->_direction;
    return r0;
}

@end