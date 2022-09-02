@implementation CCAnimation

+(void *)animation {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)animationWithSpriteFrames:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithSpriteFrames:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)animationWithSpriteFrames:(void *)arg2 delay:(float)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithSpriteFrames:arg2 delay:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)animationWithAnimationFrames:(void *)arg2 delayPerUnit:(float)arg3 loops:(unsigned long long)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithAnimationFrames:arg2 delayPerUnit:arg3 loops:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithSpriteFrames:0x0 delay:r3];
    return r0;
}

-(void *)initWithSpriteFrames:(void *)arg2 {
    r0 = [self initWithSpriteFrames:arg2 delay:r3];
    return r0;
}

-(void *)initWithAnimationFrames:(void *)arg2 delayPerUnit:(float)arg3 loops:(unsigned long long)arg4 {
    r31 = r31 - 0x150;
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
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_F8 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(r19 + 0x14) = s8;
            *(r19 + 0x20) = r21;
            [r19 setFrames:[NSMutableArray arrayWithArray:r20]];
            var_130 = q0;
            r20 = *(r19 + 0x8);
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_130;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_130 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_138 + r26 * 0x8) delayUnits];
                                    s0 = s0 + *(int32_t *)(r19 + 0x10);
                                    *(int32_t *)(r19 + 0x10) = s0;
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithSpriteFrames:(void *)arg2 delay:(float)arg3 {
    r31 = r31 - 0x160;
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
    v8 = v0;
    var_148 = arg2;
    r0 = [[&var_100 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x20) = 0x1;
            *(int32_t *)(r20 + 0x14) = s8;
            [r20 setFrames:[NSMutableArray arrayWithCapacity:[var_148 count]]];
            var_130 = q0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r1;
            r0 = objc_msgSend(var_148, r1);
            if (r0 != 0x0) {
                    r22 = r0;
                    r21 = *var_130;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_130 != r21) {
                                            objc_enumerationMutation(var_148);
                                    }
                                    r28 = *(var_138 + r19 * 0x8);
                                    r28 = [[CCAnimationFrame alloc] initWithSpriteFrame:r28 delayUnits:0x0 userInfo:0x10];
                                    [[r20 frames] addObject:r28];
                                    [r28 release];
                                    *(int32_t *)(r20 + 0x10) = *(int32_t *)(r20 + 0x10) + 0x3ff0000000000000;
                                    r19 = r19 + 0x1;
                            } while (r19 < r22);
                            r0 = objc_msgSend(var_148, var_150);
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(float)duration {
    r0 = self;
    return r0;
}

-(void *)description {
    r20 = @class(NSString);
    [self class];
    r0 = *(self + 0x8);
    [r0 count];
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    r0 = [r20 stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithAnimationFrames:*(self + 0x8) delayPerUnit:*(self + 0x20) loops:r4];
    [r0 setRestoreOriginalFrame:*(int8_t *)(self + 0x18)];
    r0 = r0;
    return r0;
}

-(void)addSpriteFrame:(void *)arg2 {
    r19 = [[CCAnimationFrame alloc] initWithSpriteFrame:arg2 delayUnits:0x0 userInfo:r4];
    [*(self + 0x8) addObject:r19];
    [r19 release];
    *(int32_t *)(self + 0x10) = *(int32_t *)(self + 0x10) + 0x3ff0000000000000;
    return;
}

-(void)addSpriteFrameWithFilename:(void *)arg2 {
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 addImage:arg2];
    [r0 contentSize];
    [self addSpriteFrame:[CCSpriteFrame frameWithTexture:r0 rect:r3]];
    return;
}

-(void *)frames {
    r0 = *(self + 0x8);
    return r0;
}

-(void)addSpriteFrameWithTexture:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [self addSpriteFrame:[CCSpriteFrame frameWithTexture:arg2 rect:r3]];
    return;
}

-(float)totalDelayUnits {
    r0 = self;
    return r0;
}

-(void)setFrames:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(float)delayPerUnit {
    r0 = self;
    return r0;
}

-(void)setDelayPerUnit:(float)arg2 {
    *(int32_t *)(self + 0x14) = s0;
    return;
}

-(bool)restoreOriginalFrame {
    r0 = *(int8_t *)(self + 0x18);
    return r0;
}

-(void)setRestoreOriginalFrame:(bool)arg2 {
    *(int8_t *)(self + 0x18) = arg2;
    return;
}

-(unsigned long long)loops {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setLoops:(unsigned long long)arg2 {
    *(self + 0x20) = arg2;
    return;
}

+(void *)animationWithFrames:(void *)arg2 {
    r0 = [self animationWithSpriteFrames:arg2];
    return r0;
}

+(void *)animationWithFrames:(void *)arg2 delay:(float)arg3 {
    r0 = [self animationWithSpriteFrames:arg2 delay:arg3];
    return r0;
}

-(void *)initWithFrames:(void *)arg2 {
    r0 = [self initWithSpriteFrames:arg2];
    return r0;
}

-(void *)initWithFrames:(void *)arg2 delay:(float)arg3 {
    r0 = [self initWithSpriteFrames:arg2 delay:arg3];
    return r0;
}

-(void)addFrame:(void *)arg2 {
    [self addSpriteFrame:arg2];
    return;
}

-(void)addFrameWithFilename:(void *)arg2 {
    [self addSpriteFrameWithFilename:arg2];
    return;
}

-(void)addFrameWithTexture:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [self addSpriteFrameWithTexture:arg2 rect:r3];
    return;
}

@end