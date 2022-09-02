@implementation AnimWait

-(void)setup {
    [self setCycle:r2];
    [self setOverlap:r2];
    [self setMaxScale:r2];
    [self setMinScale:r2];
    [self minScale];
    [self->_circleA setScale:r2];
    [self minScale];
    [self->_circleB setScale:r2];
    [self minScale];
    [self->_circleC setScale:r2];
    [self minScale];
    [self->_circleD setScale:r2];
    [self minScale];
    [self->_circleE setScale:r2];
    [self setUseMotion:r2];
    return;
}

-(void)animScaleSprite:(void *)arg2 delay:(float)arg3 {
    [self cycle];
    asm { fcvt       d9, s0 };
    [r20 maxScale];
    [r21 actionWithDuration:r2 scale:r3];
    objc_msgSend(r20, r22);
    asm { fcvt       d9, s0 };
    [r20 minScale];
    objc_msgSend(r24, r23);
    objc_msgSend(r20, r22);
    [r20 overlap];
    asm { fcvt       d0, s0 };
    [r24 actionWithDuration:r2];
    r21 = [CCRepeat actionWithAction:[CCSequence actions:r2] times:0x7fffffff];
    [r19 stopAllActions];
    r22 = @class(CCSequence);
    r0 = *(r25 + 0xfd0);
    asm { fcvt       d0, s8 };
    [r22 actionOne:objc_msgSend(r0, r20) two:r21];
    [r19 runAction:r2];
    return;
}

-(void)animStop {
    [self->_circleA stopAllActions];
    [self->_circleB stopAllActions];
    [self->_circleC stopAllActions];
    [self->_circleD stopAllActions];
    [self->_circleE stopAllActions];
    return;
}

-(void)animMoveSprite:(void *)arg2 delay:(float)arg3 {
    [self cycle];
    asm { fcvt       d9, s0 };
    [r19 position];
    objc_msgSend(r19, r20);
    [r19 contentSize];
    [r23 actionWithDuration:r2 position:r3];
    objc_msgSend(r21, r22);
    asm { fcvt       d9, s0 };
    objc_msgSend(r19, r20);
    objc_msgSend(r19, r20);
    objc_msgSend(r19, r25);
    objc_msgSend(r26, r24);
    objc_msgSend(r21, r22);
    asm { fcvt       d9, s0 };
    objc_msgSend(r19, r20);
    objc_msgSend(r19, r20);
    objc_msgSend(r26, r24);
    r2 = [CCSequence actions:r2];
    r20 = [CCRepeat actionWithAction:r2 times:0x7fffffff];
    r21 = @class(CCSequence);
    r0 = @class(CCDelayTime);
    asm { fcvt       d0, s8 };
    [r21 actionOne:[r0 actionWithDuration:r2] two:r20];
    [r19 runAction:r2];
    return;
}

-(void)animStart {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_circleA));
    [self animScaleSprite:*(self + r24) delay:r3];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_circleB));
    r23 = *(r19 + r25);
    [r19 cycle];
    [r19 overlap];
    [r19 animScaleSprite:r23 delay:r3];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_circleC));
    r23 = *(r19 + r26);
    [r19 cycle];
    [r19 overlap];
    [r19 animScaleSprite:r23 delay:r3];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_circleD));
    r23 = *(r19 + r27);
    [r19 cycle];
    [r19 overlap];
    [r19 animScaleSprite:r23 delay:r3];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_circleE));
    r23 = *(r19 + r28);
    [r19 cycle];
    [r19 overlap];
    [r19 animScaleSprite:r23 delay:r3];
    if ([r19 useMotion] != 0x0) {
            [r19 animMoveSprite:r2 delay:r3];
            [r19 overlap];
            objc_msgSend(r19, r21);
            [r19 overlap];
            objc_msgSend(r19, r21);
            [r19 overlap];
            objc_msgSend(r19, r21);
            [r19 overlap];
            objc_msgSend(r19, r21);
    }
    return;
}

-(void)didLoadFromCCBAfterChildren {
    [[&var_10 super] didLoadFromCCBAfterChildren];
    return;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(float)cycle {
    r0 = self;
    return r0;
}

-(void)setCycle:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_cycle = s0;
    return;
}

-(float)overlap {
    r0 = self;
    return r0;
}

-(void)setOverlap:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_overlap = s0;
    return;
}

-(float)maxScale {
    r0 = self;
    return r0;
}

-(void)setMaxScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_maxScale = s0;
    return;
}

-(float)minScale {
    r0 = self;
    return r0;
}

-(void)setMinScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_minScale = s0;
    return;
}

-(bool)useMotion {
    r0 = *(int8_t *)(int64_t *)&self->_useMotion;
    return r0;
}

-(void)setUseMotion:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useMotion = arg2;
    return;
}

@end