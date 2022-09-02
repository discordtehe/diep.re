@implementation MCAnimVSZNode

-(void)setTexture:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    *(r19 + r21) = [r20 retain];
    return;
}

-(unsigned int)currentFrame {
    r0 = *(int32_t *)(int64_t *)&self->_frameCount;
    return r0;
}

-(bool)isReversed {
    r0 = *(int32_t *)(int64_t *)&self->mPlayDirection >> 0x1f;
    return r0;
}

-(void)setAdditiveTint:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mAdditiveTint));
    if (*(int8_t *)(r0 + r8) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = r2;
            [r0 color];
            asm { bfi        w0, w8, #0x10, #0x8 };
            asm { bfi        w0, w8, #0x18, #0x8 };
            [r19 setColor:r2];
    }
    return;
}

-(void)setAnimationEndedDelegate:(void *)arg2 selector:(void *)arg3 {
    self->_delegate = arg2;
    self->_vszAnimationEndedSelector = arg3;
    return;
}

+(void *)vszAnimationNodeWithAnimationName:(void *)arg2 {
    r0 = [MCAnimVSZNode vszAnimationNodeWithAnimationName:arg2 ignoreTexture:0x0];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    *(self + r21) = r2;
    if (r2 != 0x0) {
            r20 = @selector(vszAnimationEnded:);
            if (([r2 respondsToSelector:r20] & 0x1) == 0x0) {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    r19->_vszAnimationEndedSelector = r20;
    r0 = *(r19 + r21);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(setToNode:)] != 0x0) {
            [*(r19 + r21) setToNode:r2];
    }
    return;
}

+(void *)vszAnimationNodeWithAnimation:(void *)arg2 {
    r0 = [MCAnimVSZNode vszAnimationNodeWithAnimation:arg2 ignoreTexture:0x0];
    return r0;
}

+(void *)vszAnimationNodeWithAnimationName:(void *)arg2 ignoreTexture:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r0 = [MCAnimVSZCache sharedInstance];
    r0 = [r0 getAnimationDataForName:arg2];
    if (r0 != 0x0) {
            r21 = r0;
            r0 = objc_alloc();
            r0 = [r0 initWithAnimationData:r21 ignoreTexture:r19];
            r0 = [r0 autorelease];
    }
    return r0;
}

-(void *)init {
    r0 = __assert_rtn("-[MCAnimVSZNode init]", "/Users/pedro.geraldes/Repositories/diep.io.mobile.client/game/libs/Submodules/MCCocos2D/MCAnim/MCAnimVSZ/MCAnimVSZHandlers/MCAnimVSZNode.mm", 0x6c, "false");
    return r0;
}

+(void *)vszAnimationNodeWithAnimation:(void *)arg2 ignoreTexture:(bool)arg3 {
    r0 = objc_alloc();
    r0 = [r0 initWithAnimationData:arg2 ignoreTexture:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(struct CGPoint)center {
    r0 = self;
    return r0;
}

-(void)setVertexTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_100291e0c(r2, (int64_t *)&self->vertexTransform);
    *(int8_t *)(int64_t *)&self->definedVertexTransform = 0x1;
    *(int8_t *)(int64_t *)&self->mDirtyBBox = 0x1;
    return;
}

-(void)setUVTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_100291e0c(r2, (int64_t *)&self->uvTransform);
    return;
}

-(void)setNewAnimationData:(void *)arg2 {
    [self setNewAnimationData:arg2 ignoreTexture:0x0];
    return;
}

-(void)setNewAnimationData:(void *)arg2 ignoreTexture:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r0 = [r21 retain];
    *(r19 + r22) = r0;
    r21 = *(r0 + 0x8);
    [r19 calculateFirstFrameBoundingBox];
    *(int8_t *)(int64_t *)&r19->mDirtyBBox = 0x1;
    if ((r20 & 0x1) == 0x0 && *(int32_t *)r21 != 0x0) {
            [r19 setNewTexture:[NSString stringWithUTF8String:**(r21 + 0x8)]];
    }
    else {
            if (r19->_spriteFrame != 0x0) {
                    [r19 setSpriteFrameOffset];
            }
    }
    return;
}

-(void)setNewTextureFromSpriteFrame:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r19->_spriteFrame = [arg2 retain];
    r0 = [arg2 texture];
    r20 = r0;
    if ([r0 name] != [r19->_texture name]) {
            [r19 setTexture:r2];
    }
    [r19 setSpriteFrameOffset];
    return;
}

-(void)setNewActualTexture:(void *)arg2 {
    r19 = self;
    [self setTexture:arg2];
    r8 = *_CGAffineTransformIdentity;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    [*(r19 + r20) maxS];
    asm { fcvt       d8, s0 };
    [*(r19 + r20) maxT];
    asm { fcvt       d1, s0 };
    CGAffineTransformScale(&var_B0, r1, r2);
    [r19 setUVTransform:&var_E0];
    return;
}

-(void)setSpriteFrameOffset {
    r0 = self;
    var_50 = d9;
    stack[-88] = d8;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_spriteFrame));
    if (*(r0 + r22) != 0x0) {
            r19 = r0;
            r23 = *(r0->_currentVSZAnimation + 0x8);
            r0 = *(r23 + 0x40);
            if (r0 != 0x0) {
                    free(r0);
                    *(r23 + 0x40) = 0x0;
            }
            *(r23 + 0x40) = calloc(0x4, *(int32_t *)(r23 + 0x30) << 0x1);
            if (*(int32_t *)(r23 + 0x30) != 0x0) {
                    r24 = 0x0;
                    r25 = 0x0;
                    do {
                            r20 = @selector(rectInPixels);
                            asm { fcvt       d9, s0 };
                            objc_msgSend(*(r19 + r22), r20);
                            objc_msgSend(*(r19 + r22), r20);
                            d9 = d2 * d9 + d0;
                            objc_msgSend(*(r19 + r22), r21);
                            asm { fdiv       d0, d9, d0 };
                            asm { fcvt       s9, d0 };
                            asm { fcvt       d8, s8 };
                            objc_msgSend(*(r19 + r22), r20);
                            objc_msgSend(*(r19 + r22), r20);
                            d8 = d3 * d8 + d1;
                            objc_msgSend(*(r19 + r22), r21);
                            asm { fdiv       d0, d8, d1 };
                            asm { fcvt       s0, d0 };
                            r8 = *(r23 + 0x40);
                            *(int128_t *)(r8 + r24) = s9;
                            *(int128_t *)(0x4 + r8 + r24) = s0;
                            r25 = r25 + 0x1;
                            r24 = r24 + 0x8;
                    } while (r25 < *(int32_t *)(r23 + 0x30));
            }
    }
    return;
}

-(void)setNewTexture:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r0 = [MCAnimVSZUtils getSpriteFrameWithName:r20];
    if (r0 != 0x0) {
            r1 = @selector(setNewTextureFromSpriteFrame:);
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_spriteFrame));
            r0 = *(r19 + r22);
            if (r0 != 0x0) {
                    [r0 release];
                    *(r19 + r22) = 0x0;
            }
            [MCAnimVSZUtils getVSZTexture:r20];
            r1 = @selector(setNewActualTexture:);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void *)initWithAnimationData:(void *)arg2 {
    r0 = [self initWithAnimationData:arg2 ignoreTexture:0x0];
    return r0;
}

-(void)onEnter {
    [[&var_20 super] onEnter];
    [self scheduleUpdate];
    return;
}

-(void *)initWithAnimationData:(void *)arg2 ignoreTexture:(bool)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    sub_100292530();
                    sub_1002925c4(&var_58, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r22, &var_58);
                    r22 = (int64_t *)&r19->_mcRenderJob;
                    *(r22 + 0x140) = r0;
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_58);
                    }
                    q0 = *(int128_t *)0x1011e2ec0;
                    q1 = *(int128_t *)0x1011e2ed0;
                    q2 = *(int128_t *)0x1011e2ea0;
                    q3 = *(int128_t *)0x1011e2eb0;
                    *(int128_t *)r22 = q2;
                    *(int128_t *)(r22 + 0x10) = q3;
                    *(int128_t *)(r22 + 0x20) = q0;
                    *(int128_t *)(r22 + 0x30) = q1;
                    *(r22 + 0x18) = *0x100ba3648;
            }
            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            *(int32_t *)(int64_t *)&r19->_speed = 0x3f800000;
            *(int8_t *)(int64_t *)&r19->opacityModifyRGB_ = 0x1;
            [[&var_68 super] setOpacity:0xff];
            [[&var_78 super] setColor:0xffffff];
            r19->blendFunc_ = *0x100ba3650;
            *(int8_t *)(int64_t *)&r19->mAdditiveTint = 0x0;
            *(int8_t *)(int64_t *)&r19->mfullTint = 0x0;
            *(int8_t *)(int64_t *)&r19->definedVertexTransform = 0x0;
            [r19 setNewAnimationData:r21 ignoreTexture:r20];
            *(int32_t *)(int64_t *)&r19->mPlayDirection = 0x1;
            *(int8_t *)(int64_t *)&r19->mInvertDirection = 0x0;
            [r19 reset];
    }
    r0 = r19;
    return r0;
}

-(void)onExit {
    [[&var_20 super] onExit];
    [self unscheduleUpdate];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_spriteFrame));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)play:(int)arg2 {
    [self play:arg2 stoppingAtFrame:0x0];
    *(int32_t *)(int64_t *)&self->mPlayDirection = 0x1;
    return;
}

-(void)playNewAnimationData:(void *)arg2 {
    [self setNewAnimationData:arg2 ignoreTexture:0x1];
    [self reset];
    [self play];
    *(int32_t *)(int64_t *)&self->mPlayDirection = 0x1;
    return;
}

-(void)play:(int)arg2 stoppingAtFrame:(int)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
    r10 = *(int32_t *)(*(*(*(r0 + r8) + 0x8) + 0x8) + 0x8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_isRunningVsz));
    if (r10 >= 0x2) {
            *(int8_t *)(r0 + r9) = 0x1;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_numRepeatTimes));
            *(int32_t *)(r0 + r9) = r2;
            r8 = *(r0 + r8);
            r8 = *(r8 + 0x8);
            r8 = *(r8 + 0x8);
            r8 = *(int32_t *)(r8 + 0x8);
            if ((r3 & 0xffffffff80000000) != 0x0) {
                    asm { neg        w9, w3 };
                    asm { udiv       w9, w9, w8 };
                    asm { madd       w9, w9, w8, w3 };
                    r8 = r8 + r9;
            }
            r9 = 0x10116b83c;
    }
    else {
            r8 = 0x0;
            *(int8_t *)(r0 + r9) = 0x0;
            r9 = 0x10116b838;
    }
    *(int32_t *)(r0 + sign_extend_64(*(int32_t *)r9)) = r8;
    *(int32_t *)(int64_t *)&r0->mPlayDirection = 0x1;
    return;
}

-(void)play {
    [self play:0x0 stoppingAtFrame:0x0];
    *(int32_t *)(int64_t *)&self->mPlayDirection = 0x1;
    return;
}

-(void)playLooped {
    [self play:0xffffffffffffffff stoppingAtFrame:0x0];
    *(int32_t *)(int64_t *)&self->mPlayDirection = 0x1;
    *(int8_t *)(int64_t *)&self->mInvertDirection = 0x0;
    return;
}

-(void)playLoopedPing {
    [self playLoopedPing:0xffffffffffffffff];
    return;
}

-(void)playLoopedPing:(int)arg2 {
    [self play:arg2 stoppingAtFrame:0x0];
    *(int32_t *)(int64_t *)&self->mPlayDirection = 0x1;
    *(int8_t *)(int64_t *)&self->mInvertDirection = 0x1;
    return;
}

-(void)setReversedStoppingAtFrame:(int)arg2 {
    [self setReversedStoppingAtFrame:arg2 fromBegining:0x1];
    return;
}

-(void)playNewAnimationDataReversed:(void *)arg2 {
    [self playNewAnimationData:arg2];
    [self setReversedStoppingAtFrame:0x0];
    return;
}

-(void)setReversedStoppingAtFrame:(int)arg2 fromBegining:(bool)arg3 {
    r2 = arg2;
    r0 = self;
    *(int32_t *)(int64_t *)&r0->mPlayDirection = 0xffffffffffffffff;
    if (arg3 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_frameCount = *(int32_t *)(*(*(r0->_currentVSZAnimation + 0x8) + 0x8) + 0x8) - 0x1;
    }
    *(int32_t *)(int64_t *)&r0->_stoppingAtFrame = r2;
    return;
}

-(void)playReversed:(int)arg2 {
    [self play:arg2];
    [self setReversedStoppingAtFrame:0x0];
    return;
}

-(void)playReversed:(int)arg2 stoppingAtFrame:(int)arg3 {
    [self play:arg2 stoppingAtFrame:arg3];
    [self setReversedStoppingAtFrame:*(int32_t *)(int64_t *)&self->_stoppingAtFrame];
    return;
}

-(void)playReversedFromBegining:(bool)arg2 {
    [self play];
    [self setReversedStoppingAtFrame:0x0 fromBegining:arg2];
    return;
}

-(void)playReversed {
    [self playReversedFromBegining:0x1];
    return;
}

-(void)playReversedLooped {
    [self playLooped];
    [self setReversedStoppingAtFrame:0x0];
    return;
}

-(void)stop {
    *(int8_t *)(int64_t *)&self->_isRunningVsz = 0x0;
    return;
}

-(void)reset {
    *(int32_t *)(int64_t *)&self->_frameCount = 0x0;
    return;
}

-(bool)setFrame:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    if (*(int32_t *)(*(*(r0->_currentVSZAnimation + 0x8) + 0x8) + 0x8) >= r2) {
            *(int32_t *)(int64_t *)&r0->_frameCount = r2;
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)setFrameAtProgress:(float)arg2 {
    r0 = self;
    if (s0 >= 0x0) {
            asm { fccmp      s0, s1, #0x2, ge };
    }
    if (!CPU_FLAGS & B) {
            r0 = 0x0;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
            r8 = *(r0 + r8);
            r8 = *(r8 + 0x8);
            r8 = *(r8 + 0x8);
            r8 = *(int32_t *)(r8 + 0x8);
            r8 = r8 - 0x1;
            asm { ucvtf      s1, w8 };
            asm { fcvtas     w8, s0 };
            *(int32_t *)(int64_t *)&r0->_frameCount = r8;
            r0 = 0x1;
    }
    return r0;
}

-(unsigned int)framesCount {
    r0 = *(int32_t *)(*(*(self->_currentVSZAnimation + 0x8) + 0x8) + 0x8);
    return r0;
}

-(bool)isLooped {
    r0 = *(int32_t *)(int64_t *)&self->_numRepeatTimes >> 0x1f;
    return r0;
}

-(unsigned int)repeatTimesRemaining {
    r0 = *(int32_t *)(int64_t *)&self->_numRepeatTimes;
    return r0;
}

-(void)animationEnded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    r0 = *(self + r21);
    if (r0 != 0x0 && [r0 respondsToSelector:@selector(vszAnimationEnded:)] != 0x0) {
            [*(r19 + r21) performSelector:@selector(vszAnimationEnded:) withObject:r3];
    }
    return;
}

-(void)updateColor {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->opacityModifyRGB_ != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
            r10 = *(int8_t *)(0x2 + r0 + r8);
            r11 = *(int8_t *)(0x1 + r0 + r8);
            asm { scvtf      s0, w8 };
            r8 = 0x437f0000;
            asm { fdiv       s0, s0, s1 };
            asm { fcvtzs     w8, s0 };
            r12 = sign_extend_64(*(int32_t *)ivar_offset(_modifiedColor));
            r12 = r0 + r12;
            *(int8_t *)r12 = r8;
            r8 = *(int8_t *)(r0 + r9);
            r8 = r8 * r11;
            asm { scvtf      s0, w8 };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtzs     w8, s0 };
            *(int8_t *)(r12 + 0x1) = r8;
            r8 = *(int8_t *)(r0 + r9);
            r8 = r8 * r10;
            asm { scvtf      s0, w8 };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtzs     w8, s0 };
            *(int8_t *)(r12 + 0x2) = r8;
    }
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
    if (*(r0 + r21) != 0x0) {
            r19 = r0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_isRunningVsz));
            if (*(int8_t *)(r0 + r22) != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(mPlayDirection));
                    asm { scvtf      d1, w8 };
                    asm { fcvt       s0, d0 };
                    s0 = *(int32_t *)(int64_t *)&r19->_speed * s0;
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_frameDt));
                    s1 = *(int32_t *)(r19 + r24);
                    *(int32_t *)(r19 + r24) = s1 + s0;
                    s8 = *(int32_t *)(*(r19 + r21) + 0x10);
                    r0 = [r19 isReversed];
                    s0 = *(int32_t *)(r19 + r24);
                    if ((r0 & 0x1) != 0x0) {
                            if (s0 < -s8) {
                                    r8 = &@selector(getVSZTexture:);
                                    s1 = Abs(s0);
                                    asm { fdiv       s1, s1, s8 };
                                    asm { fcvtms     w8, s1 };
                                    asm { scvtf      s1, w8 };
                                    *(int32_t *)(r19 + r24) = s0 + s8 * s1;
                                    r9 = *(r19 + r21);
                                    r9 = *(r9 + 0x8);
                                    r10 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                                    r11 = *(int32_t *)(r19 + r10);
                                    asm { udiv       w12, w8, w9 };
                                    asm { neg        w8, w8 };
                                    asm { madd       w8, w12, w9, w8 };
                                    *(int32_t *)(r19 + r10) = r11 + r8;
                            }
                    }
                    else {
                            if (s0 > s8) {
                                    r8 = &@selector(getVSZTexture:);
                                    asm { fdiv       s1, s0, s8 };
                                    asm { fcvtms     w8, s1 };
                                    asm { scvtf      s1, w8 };
                                    *(int32_t *)(r19 + r24) = s0 - s8 * s1;
                                    r9 = *(r19 + r21);
                                    r9 = *(r9 + 0x8);
                                    r9 = *(r9 + 0x8);
                                    r9 = *(int32_t *)(r9 + 0x8);
                                    asm { udiv       w10, w8, w9 };
                                    r8 = r8 - r10 * r9;
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                                    *(int32_t *)(r19 + r9) = *(int32_t *)(r19 + r9) + r8;
                            }
                    }
                    r1 = @selector(isReversed);
                    if (objc_msgSend(r19, r1) != 0x0) {
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                            if ((*(int32_t *)(r19 + r24) & 0xffffffff80000000) == 0x0) {
                                    r1 = @selector(isReversed);
                                    if ((objc_msgSend(r19, r1) & 0x1) == 0x0) {
                                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                                            if (*(int32_t *)(r19 + r24) >= *(int32_t *)(*(*(*(r19 + r21) + 0x8) + 0x8) + 0x8) - 0x1) {
                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_numRepeatTimes));
                                                    r9 = *(int32_t *)(r19 + r8);
                                                    if (r9 != 0x0) {
                                                            r9 = r9 - 0x1;
                                                            if (r9 >= 0x0) {
                                                                    *(int32_t *)(r19 + r8) = r9;
                                                            }
                                                            r9 = *(int8_t *)(int64_t *)&r19->mInvertDirection;
                                                            r8 = *(int32_t *)(r19 + r23);
                                                            if (r9 != 0x0) {
                                                                    asm { neg        w8, w8 };
                                                                    *(int32_t *)(r19 + r23) = r8;
                                                                    r8 = *(int32_t *)(r19 + (r24 << r1));
                                                                    r8 = r8 & !(r8 / 0xffffffff80000000);
                                                                    r9 = *(r19 + r21);
                                                                    r9 = *(r9 + 0x8);
                                                                    r9 = *(r9 + 0x8);
                                                                    r9 = *(int32_t *)(r9 + 0x8);
                                                                    r9 = r9 - 0x1;
                                                                    if (r8 < r9) {
                                                                            if (!CPU_FLAGS & B) {
                                                                                    r8 = r9;
                                                                            }
                                                                            else {
                                                                                    r8 = r8;
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    r8 = *(int32_t *)(r19 + (r24 << r1)) - *(int32_t *)(*(*(*(r19 + r21) + 0x8) + 0x8) + 0x8) * r8;
                                                            }
                                                            *(int32_t *)(r19 + (r24 << r1)) = r8;
                                                    }
                                                    else {
                                                            *(int32_t *)(r19 + (r24 << @selector(isReversed))) = *(int32_t *)(int64_t *)&r19->_stoppingAtFrame - ([r19 isReversed] ^ 0x1);
                                                            *(int8_t *)(r19 + r22) = 0x0;
                                                    }
                                                    r0 = r19->_delegate;
                                                    if (r0 != 0x0 && r19->_vszAnimationEndedSelector != 0x0) {
                                                            [r0 performSelector:r2 withObject:r3];
                                                    }
                                            }
                                    }
                            }
                            else {
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_numRepeatTimes));
                                    r9 = *(int32_t *)(r19 + r8);
                                    if (r9 != 0x0) {
                                            r9 = r9 - 0x1;
                                            if (r9 >= 0x0) {
                                                    *(int32_t *)(r19 + r8) = r9;
                                            }
                                            r9 = *(int8_t *)(int64_t *)&r19->mInvertDirection;
                                            r8 = *(int32_t *)(r19 + r23);
                                            if (r9 != 0x0) {
                                                    asm { neg        w8, w8 };
                                                    *(int32_t *)(r19 + r23) = r8;
                                                    r8 = *(int32_t *)(r19 + (r24 << r1));
                                                    r8 = r8 & !(r8 / 0xffffffff80000000);
                                                    r9 = *(r19 + r21);
                                                    r9 = *(r9 + 0x8);
                                                    r9 = *(r9 + 0x8);
                                                    r9 = *(int32_t *)(r9 + 0x8);
                                                    r9 = r9 - 0x1;
                                                    if (r8 < r9) {
                                                            if (!CPU_FLAGS & B) {
                                                                    r8 = r9;
                                                            }
                                                            else {
                                                                    r8 = r8;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r8 = *(int32_t *)(r19 + (r24 << r1)) - *(int32_t *)(*(*(*(r19 + r21) + 0x8) + 0x8) + 0x8) * r8;
                                            }
                                            *(int32_t *)(r19 + (r24 << r1)) = r8;
                                    }
                                    else {
                                            *(int32_t *)(r19 + (r24 << @selector(isReversed))) = *(int32_t *)(int64_t *)&r19->_stoppingAtFrame - ([r19 isReversed] ^ 0x1);
                                            *(int8_t *)(r19 + r22) = 0x0;
                                    }
                                    r0 = r19->_delegate;
                                    if (r0 != 0x0 && r19->_vszAnimationEndedSelector != 0x0) {
                                            [r0 performSelector:r2 withObject:r3];
                                    }
                            }
                    }
                    else {
                            r1 = @selector(isReversed);
                            if ((objc_msgSend(r19, r1) & 0x1) == 0x0) {
                                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                                    if (*(int32_t *)(r19 + r24) >= *(int32_t *)(*(*(*(r19 + r21) + 0x8) + 0x8) + 0x8) - 0x1) {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_numRepeatTimes));
                                            r9 = *(int32_t *)(r19 + r8);
                                            if (r9 != 0x0) {
                                                    r9 = r9 - 0x1;
                                                    if (r9 >= 0x0) {
                                                            *(int32_t *)(r19 + r8) = r9;
                                                    }
                                                    r9 = *(int8_t *)(int64_t *)&r19->mInvertDirection;
                                                    r8 = *(int32_t *)(r19 + r23);
                                                    if (r9 != 0x0) {
                                                            asm { neg        w8, w8 };
                                                            *(int32_t *)(r19 + r23) = r8;
                                                            r8 = *(int32_t *)(r19 + (r24 << r1));
                                                            r8 = r8 & !(r8 / 0xffffffff80000000);
                                                            r9 = *(r19 + r21);
                                                            r9 = *(r9 + 0x8);
                                                            r9 = *(r9 + 0x8);
                                                            r9 = *(int32_t *)(r9 + 0x8);
                                                            r9 = r9 - 0x1;
                                                            if (r8 < r9) {
                                                                    if (!CPU_FLAGS & B) {
                                                                            r8 = r9;
                                                                    }
                                                                    else {
                                                                            r8 = r8;
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            r8 = *(int32_t *)(r19 + (r24 << r1)) - *(int32_t *)(*(*(*(r19 + r21) + 0x8) + 0x8) + 0x8) * r8;
                                                    }
                                                    *(int32_t *)(r19 + (r24 << r1)) = r8;
                                            }
                                            else {
                                                    *(int32_t *)(r19 + (r24 << @selector(isReversed))) = *(int32_t *)(int64_t *)&r19->_stoppingAtFrame - ([r19 isReversed] ^ 0x1);
                                                    *(int8_t *)(r19 + r22) = 0x0;
                                            }
                                            r0 = r19->_delegate;
                                            if (r0 != 0x0 && r19->_vszAnimationEndedSelector != 0x0) {
                                                    [r0 performSelector:r2 withObject:r3];
                                            }
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_20 super] setOpacity:arg2];
    [self updateColor];
    return;
}

-(void)setOpacityModifyRGB:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(opacityModifyRGB_));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 updateColor];
    }
    return;
}

-(bool)doesOpacityModifyRGB {
    r0 = *(int8_t *)(int64_t *)&self->opacityModifyRGB_;
    return r0;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    [[&var_20 super] updateDisplayedOpacity:arg2];
    [self updateColor];
    return;
}

-(void)calculateFirstFrameBoundingBox {
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = *(r0->_currentVSZAnimation + 0x8);
    r10 = *(*(r9 + 0x8) + 0x10);
    r13 = *(int32_t *)r10 << 0x1;
    if (r13 >= 0x1) {
            r8 = 0x0;
            r10 = sign_extend_64(*(int32_t *)(r10 + 0x4));
            r14 = *(r9 + 0x18);
            r9 = r13;
            r10 = r14 + r10 * 0x4;
            do {
                    s0 = *(int32_t *)0x100ba3660;
                    s4 = *(int128_t *)(r10 + r8 * 0x4);
                    s5 = *(int128_t *)(0x4 + r10 + r8 * 0x4);
                    if (s4 < s0) {
                            asm { fcsel      s0, s4, s0, mi };
                    }
                    s2 = *(int32_t *)0x100ba3664;
                    if (s4 > s2) {
                            asm { fcsel      s2, s4, s2, gt };
                    }
                    if (s5 < s1) {
                            asm { fcsel      s1, s5, s1, mi };
                    }
                    if (s5 > s3) {
                            asm { fcsel      s3, s5, s3, gt };
                    }
                    r8 = r8 + 0x2;
            } while (r8 < r9);
    }
    else {
            s1 = *(int32_t *)0x100ba3660;
            s3 = *(int32_t *)0x100ba3664;
    }
    asm { fcvt       d2, s2 };
    r19 = (int64_t *)&r0->mFirstFrameBox;
    asm { fcvt       d3, s3 };
    *(int128_t *)(r19 + 0x10) = d2;
    *(int128_t *)(r19 + 0x18) = d3;
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    *(int128_t *)r19 = d0;
    *(int128_t *)(r19 + 0x8) = d1;
    if (*(int8_t *)(int64_t *)&r0->definedVertexTransform != 0x0) {
            CGRectApplyAffineTransform(&stack[-80], r1);
            *(int128_t *)r19 = d0;
            *(int128_t *)(r19 + 0x8) = d1;
            *(int128_t *)(r19 + 0x10) = d2;
            *(int128_t *)(r19 + 0x18) = d3;
    }
    return;
}

-(struct CGRect)firstFrameBoundingBox {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->mDirtyBBox != 0x0) {
            [r19 calculateBoundingBox];
            r0 = [r19 calculateFirstFrameBoundingBox];
    }
    return r0;
}

-(void)calculateOwnBoundingBox {
    r1 = _cmd;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r9 = *(self->_currentVSZAnimation + 0x8);
    r10 = *(int32_t *)(r9 + 0x14) << 0x1;
    if (r10 != 0x0) {
            r8 = 0x0;
            r9 = *(r9 + 0x18);
            r10 = r10;
            v3 = v2;
            do {
                    s0 = *(int32_t *)0x100ba3660;
                    s4 = *(int128_t *)(r9 + r8 * 0x4);
                    s5 = *(int128_t *)(0x4 + r9 + r8 * 0x4);
                    if (s4 < s0) {
                            asm { fcsel      s0, s4, s0, mi };
                    }
                    s2 = *(int32_t *)0x100ba3664;
                    if (s4 > s2) {
                            asm { fcsel      s2, s4, s2, gt };
                    }
                    if (s5 < s1) {
                            asm { fcsel      s1, s5, s1, mi };
                    }
                    if (s5 > s3) {
                            asm { fcsel      s3, s5, s3, gt };
                    }
                    r8 = r8 + 0x2;
            } while (r8 < r10);
    }
    else {
            s1 = *(int32_t *)0x100ba3660;
            s3 = *(int32_t *)0x100ba3664;
            v2 = v3;
    }
    asm { fcvt       d2, s2 };
    r20 = (int64_t *)&r19->mBox;
    asm { fcvt       d3, s3 };
    *(int128_t *)(r20 + 0x10) = d2;
    *(int128_t *)(r20 + 0x18) = d3;
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    *(int128_t *)r20 = d0;
    *(int128_t *)(r20 + 0x8) = d1;
    if (*(int8_t *)(int64_t *)&r19->definedVertexTransform != 0x0) {
            CGRectApplyAffineTransform(&stack[-80], r1);
            *(int128_t *)r20 = d0;
            *(int128_t *)(r20 + 0x8) = d1;
            *(int128_t *)(r20 + 0x10) = d2;
            *(int128_t *)(r20 + 0x18) = d3;
    }
    [r19 setContentSize:r2];
    return;
}

-(struct CGRect)boundingBox {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->mDirtyBBox != 0x0) {
            [r19 calculateBoundingBox];
            r0 = [r19 calculateFirstFrameBoundingBox];
    }
    return r0;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mDirtyBBox = 0x1;
    [[&var_10 super] removeAllChildrenWithCleanup:arg2];
    return;
}

-(void)calculateBoundingBox {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
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
    [self calculateOwnBoundingBox];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(r19 + r8);
    if (r8 != 0x0) {
            r8 = r8->data;
            r9 = *r8;
            if (r9 != 0x0) {
                    r23 = *(r8 + 0x10);
                    r24 = r23 + r9 * 0x8 - 0x8;
                    if (r23 <= r24) {
                            do {
                                    r22 = *r23;
                                    if ([r22 visible] != 0x0) {
                                            r0 = [r22 boundingBox];
                                            v0 = v8;
                                            v1 = v9;
                                            v2 = v10;
                                            v3 = v11;
                                            CGRectUnion(r0, @selector(boundingBox));
                                            r19->mBox = d0;
                                            *((int64_t *)&r19->mBox + 0x8) = d1;
                                            *((int64_t *)&r19->mBox + 0x10) = d2;
                                            *((int64_t *)&r19->mBox + 0x18) = d3;
                                    }
                                    r23 = r23 + 0x8;
                            } while (r23 < r24);
                    }
            }
    }
    *(int8_t *)(int64_t *)&r19->mDirtyBBox = 0x0;
    return;
}

-(void)detachChild:(void *)arg2 cleanup:(bool)arg3 {
    *(int8_t *)(int64_t *)&self->mDirtyBBox = 0x1;
    [[&var_10 super] detachChild:arg2 cleanup:arg3];
    return;
}

-(void)insertChild:(void *)arg2 z:(int)arg3 {
    *(int8_t *)(int64_t *)&self->mDirtyBBox = 0x1;
    [[&var_10 super] insertChild:arg2 z:arg3];
    return;
}

-(void)forceBBoxRecalculation {
    *(int8_t *)(int64_t *)&self->mDirtyBBox = 0x1;
    return;
}

-(void *)defaultTexturePath {
    r0 = [NSString stringWithUTF8String:r2];
    return r0;
}

-(void *)currentVSZAnimation {
    r0 = self->_currentVSZAnimation;
    return r0;
}

-(bool)isRunningVsz {
    r0 = *(int8_t *)(int64_t *)&self->_isRunningVsz;
    return r0;
}

-(void)setIsRunningVsz:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRunningVsz = arg2;
    return;
}

-(void *)texture {
    r0 = self->_texture;
    return r0;
}

-(float)speed {
    r0 = self;
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setSpeed:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_speed = s0;
    return;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->blendFunc_;
    return r0;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->blendFunc_ = r2;
    return;
}

-(bool)additiveTint {
    r0 = *(int8_t *)(int64_t *)&self->mAdditiveTint;
    return r0;
}

-(bool)fullTint {
    r0 = *(int8_t *)(int64_t *)&self->mfullTint;
    return r0;
}

-(void)setFullTint:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mfullTint = arg2;
    return;
}

-(void)makeDrawCallR:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
    r8 = *(r0 + r8);
    r8 = *(r8 + 0x8);
    if (*(int32_t *)r8 >= r2) {
            r10 = *(int32_t *)(int64_t *)&r0->_frameCount;
            r9 = *(r8 + 0x8);
            r11 = *(int32_t *)(r9 + 0x8);
            asm { udiv       w12, w10, w11 };
            r10 = r10 - r12 * r11;
            if ((r10 & 0xffffffff80000000) == 0x0) {
                    asm { umaddl     x12, w2, w11, x9 };
                    if (r10 < *(int32_t *)(r12 + 0x8)) {
                            asm { madd       x9, x12, x11, x9 };
                            r9 = *(r9 + 0x10);
                            asm { umaddl     x9, w10, w11, x9 };
                            r10 = *(int128_t *)(r9 + 0x8);
                            r9 = *(int128_t *)(r9 + 0xc);
                            r1 = r10 + r10 * 0x2;
                            r11 = *(int32_t *)(r8 + 0x20);
                            if (r9 + r1 - 0x1 < r11 + r11 * 0x2) {
                                    glDrawElements(0x4, r1, 0x1403, *(r8 + 0x28) + r9 * 0x2);
                            }
                            else {
                                    sub_100295cdc();
                            }
                    }
                    else {
                            sub_100295d04();
                    }
            }
            else {
                    sub_100295d04();
            }
    }
    else {
            sub_100295d2c();
    }
    return;
}

-(void)draw {
    r0 = self;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x130;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    *((r29 - 0x40) + 0xffffffffffffff00) = r8;
    if (*(r0 + r8) != 0x0) {
            r28 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_currentVSZAnimation));
            if (*(*(r0 + r20) + 0x8) != 0x0) {
                    r0 = [CCConfiguration sharedConfiguration];
                    r0 = [r0 useNewRenderer];
                    *((r29 - 0x38) + 0xffffffffffffff00) = r28;
                    if (r0 != 0x0) {
                            r27 = *(*(r28 + r20) + 0x8);
                            *(int128_t *)((r29 - 0xa0) + 0x4) = *(int128_t *)0x1011e2ea4;
                            *(int128_t *)((r29 - 0xa0) + 0x14) = *(int128_t *)0x1011e2eb4;
                            *(int128_t *)((r29 - 0xa0) + 0x24) = *(int128_t *)0x1011e2ec4;
                            sub_1003812ec();
                            sub_1003812ec();
                            sub_100380e9c(r29 - 0xa0);
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJob));
                            *((r29 - 0x48) + 0xffffffffffffff00) = r28 + r8;
                            sub_100380ae0(*(0x140 + r28 + r8));
                            if (*(int32_t *)r27 != 0x0) {
                                    r21 = 0x0;
                                    *((r29 - 0x50) + 0xffffffffffffff00) = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                                    r20 = (r29 - 0x130) + 0x8;
                                    *((r29 - 0x58) + 0xffffffffffffff00) = (r29 - 0x130) + 0x78;
                                    *((r29 - 0x70) + 0xffffffffffffff00) = (r29 - 0x130) + 0x30;
                                    *((r29 - 0x78) + 0xffffffffffffff00) = (r29 - 0x130) + 0x60;
                                    *((r29 - 0x60) + 0xffffffffffffff00) = (int64_t *)&r28->_modifiedColor;
                                    *((r29 - 0x68) + 0xffffffffffffff00) = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
                                    do {
                                            q0 = *(int128_t *)0x1011e2ed0;
                                            r8 = *((r29 - 0x50) + 0xffffffffffffff00);
                                            r8 = *(int32_t *)(r28 + r8);
                                            r9 = *(r27 + 0x8);
                                            asm { udiv       w11, w8, w10 };
                                            asm { madd       x8, x21, x19, x9 };
                                            r8 = *(r8 + 0x10);
                                            asm { smull      x9, w23, w19 };
                                            r24 = *(int32_t *)(r8 + r9);
                                            *(r20 + 0x80) = 0x0;
                                            *(int128_t *)(r20 + 0x60) = q0;
                                            *(int128_t *)(r20 + 0x70) = q0;
                                            *(int128_t *)(r20 + 0x40) = q0;
                                            *(int128_t *)(r20 + 0x50) = q0;
                                            *(int128_t *)(r20 + 0x20) = q0;
                                            *(int128_t *)(r20 + 0x30) = q0;
                                            *(int128_t *)r20 = q0;
                                            *(int128_t *)(r20 + 0x10) = q0;
                                            r8 = *((r29 - 0x40) + 0xffffffffffffff00);
                                            r8 = *(r28 + r8);
                                            r9 = *(int128_t *)(int64_t *)&r8->MCTexturePointer;
                                            r8 = *(int128_t *)((int64_t *)&r8->MCTexturePointer + 0x8);
                                            if (r8 != 0x0) {
                                                    do {
                                                            asm { ldxr       x11, [x10] };
                                                            r11 = r11 + 0x1;
                                                            asm { stxr       w12, x11, [x10] };
                                                    } while (r12 != 0x0);
                                                    r25 = *((r29 - 0x8) + 0xffffffffffffff00);
                                                    *((r29 - 0x10) + 0xffffffffffffff00) = r9;
                                                    r9 = r29 - 0x8;
                                                    *(r9 + 0xffffffffffffff00) = r8;
                                                    if (r25 != 0x0) {
                                                            do {
                                                                    asm { ldaxr      x9, [x8] };
                                                                    asm { stlxr      w11, x10, [x8] };
                                                            } while (r11 != 0x0);
                                                            if (r9 == 0x0) {
                                                                    (*(*r25 + 0x10))(r25);
                                                                    std::__1::__shared_weak_count::__release_weak();
                                                            }
                                                    }
                                            }
                                            else {
                                                    *((r29 - 0x10) + 0xffffffffffffff00) = r9;
                                                    *((r29 - 0x8) + 0xffffffffffffff00) = r8;
                                            }
                                            *(int32_t *)((r29 - 0x30) + 0xffffffffffffff00) = 0x4;
                                            r26 = *(int8_t *)*((r29 - 0x60) + 0xffffffffffffff00);
                                            sub_100293420(*((r29 - 0x58) + 0xffffffffffffff00), r24);
                                            asm { sxtw       x25, w23 };
                                            r8 = var_B8;
                                            r9 = var_B0 - r8;
                                            if (r9 >= 0x1) {
                                                    asm { bfi        w26, w22, #0x8, #0x8 };
                                                    asm { bfi        w26, w19, #0x10, #0x8 };
                                                    asm { bfi        w26, w28, #0x18, #0x8 };
                                                    r9 = (r9 >> 0x2) + 0x1;
                                                    do {
                                                            *(int32_t *)r8 = r26;
                                                            r8 = r8 + 0x4;
                                                            r9 = r9 - 0x1;
                                                    } while (r9 > 0x1);
                                            }
                                            r1 = var_F8;
                                            r8 = *(r27 + 0x18);
                                            r9 = *(r27 + 0x8);
                                            asm { madd       x9, x21, x19, x9 };
                                            r9 = *(r9 + 0x10);
                                            asm { madd       x9, x25, x19, x9 };
                                            r9 = *(int32_t *)(r9 + 0x4);
                                            sub_10029344c(*((r29 - 0x70) + 0xffffffffffffff00), r1, r8 + r9 * 0x4, r24 * 0x8 + r8 + r9 * 0x4);
                                            r8 = *(r27 + 0x40);
                                            r1 = var_C8;
                                            if (r8 != 0x0) {
                                                    r9 = *(r27 + 0x8);
                                                    asm { madd       x9, x21, x19, x9 };
                                                    r9 = *(r9 + 0x10);
                                                    asm { madd       x9, x25, x19, x9 };
                                                    r9 = *(int32_t *)(r9 + 0x14);
                                                    sub_10029344c(*((r29 - 0x78) + 0xffffffffffffff00), r1, r8 + r9 * 0x4, r24 * 0x8 + r8 + r9 * 0x4);
                                            }
                                            else {
                                                    r8 = *(r27 + 0x38);
                                                    r9 = *(r27 + 0x8);
                                                    asm { madd       x9, x21, x19, x9 };
                                                    r9 = *(r9 + 0x10);
                                                    asm { madd       x9, x25, x19, x9 };
                                                    r9 = *(int32_t *)(r9 + 0x14);
                                                    sub_10029344c(*((r29 - 0x78) + 0xffffffffffffff00), r1, r8 + r9 * 0x4, r24 * 0x8 + r8 + r9 * 0x4);
                                            }
                                            r1 = *((r29 - 0x20) + 0xffffffffffffff00);
                                            r8 = *(r27 + 0x28);
                                            r9 = *(r27 + 0x8);
                                            asm { madd       x9, x21, x19, x9 };
                                            r9 = *(r9 + 0x10);
                                            asm { madd       x9, x25, x19, x9 };
                                            r10 = *(int128_t *)(r9 + 0x8);
                                            r9 = *(int128_t *)(r9 + 0xc);
                                            sub_100293674(r20, r1, r8 + r9 * 0x2, zero_extend_64(r10 + r10 * 0x2) * 0x2 + r8 + r9 * 0x2);
                                            sub_100380bd8(*(*((r29 - 0x48) + 0xffffffffffffff00) + 0x140), r29 - 0x130);
                                            r0 = var_B8;
                                            if (r0 != 0x0) {
                                                    var_B0 = r0;
                                                    operator delete(r0);
                                            }
                                            r0 = var_D0;
                                            r28 = *((r29 - 0x38) + 0xffffffffffffff00);
                                            if (r0 != 0x0) {
                                                    var_C8 = r0;
                                                    operator delete(r0);
                                            }
                                            r0 = var_E8;
                                            if (r0 != 0x0) {
                                                    operator delete(r0);
                                            }
                                            r0 = var_100;
                                            if (r0 != 0x0) {
                                                    var_F8 = r0;
                                                    operator delete(r0);
                                            }
                                            r24 = *((r29 - 0x8) + 0xffffffffffffff00);
                                            if (r24 != 0x0) {
                                                    do {
                                                            asm { ldaxr      x9, [x8] };
                                                            asm { stlxr      w11, x10, [x8] };
                                                    } while (r11 != 0x0);
                                                    if (r9 == 0x0) {
                                                            (*(*r24 + 0x10))(r24);
                                                            std::__1::__shared_weak_count::__release_weak();
                                                    }
                                            }
                                            r0 = *((r29 - 0x28) + 0xffffffffffffff00);
                                            if (r0 != 0x0) {
                                                    *((r29 - 0x20) + 0xffffffffffffff00) = r0;
                                                    operator delete(r0);
                                            }
                                            r21 = r21 + 0x1;
                                    } while (r21 < *(int32_t *)r27);
                            }
                    }
                    else {
                            sub_10031a6c4();
                            r19 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
                            [*(r28 + r19) use];
                            [*(r28 + r19) setUniformsForBuiltins];
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(blendFunc_));
                            sub_10031a4a8(*(int128_t *)(r28 + r8), *(int128_t *)(0x4 + r28 + r8));
                            [*(r28 + *((r29 - 0x40) + 0xffffffffffffff00)) bind];
                            r22 = *(*(r28 + r20) + 0x8);
                            sub_10031a6f0(0x7);
                            if (*(int32_t *)r22 != 0x0) {
                                    r20 = 0x0;
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
                                    do {
                                            r9 = *(r22 + 0x8);
                                            asm { udiv       w10, w8, w9 };
                                            glBindBuffer(0x8892, 0x0);
                                            r8 = *(r22 + 0x18);
                                            r9 = *(r22 + 0x8);
                                            asm { madd       x9, x20, x24, x9 };
                                            r9 = *(r9 + 0x10);
                                            asm { sxtw       x28, w19 };
                                            asm { smaddl     x9, w19, w24, x9 };
                                            glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x8, r8 + *(int32_t *)(r9 + 0x4) * 0x4);
                                            r8 = *(r22 + 0x40);
                                            if (r8 == 0x0) {
                                                    r8 = *(r22 + 0x38);
                                            }
                                            r9 = *(r22 + 0x8);
                                            asm { madd       x9, x20, x24, x9 };
                                            r9 = *(r9 + 0x10);
                                            asm { madd       x9, x28, x24, x9 };
                                            glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x0, r8 + *(int32_t *)(r9 + 0x14) * 0x4);
                                            r27 = &var_180;
                                            r8 = *(r22 + 0x8);
                                            asm { madd       x8, x20, x24, x8 };
                                            r8 = *(r8 + 0x10);
                                            r8 = *(int32_t *)(r8 + r28 * r24);
                                            r10 = &var_180;
                                            r5 = r10 - ((r8 << 0x2) + 0xf & 0x7fffffff0);
                                            r28 = *((r29 - 0x38) + 0xffffffffffffff00);
                                            if (r8 != 0x0) {
                                                    r9 = *(int8_t *)(int64_t *)&r28->_modifiedColor;
                                                    r10 = *(int8_t *)((int64_t *)&r28->_modifiedColor + 0x1);
                                                    r11 = *(int8_t *)((int64_t *)&r28->_modifiedColor + 0x2);
                                                    r12 = *(int8_t *)(int64_t *)&r28->_displayedOpacity;
                                                    r13 = r5 + 0x3;
                                                    do {
                                                            *(int8_t *)(r13 + 0xfffffffffffffffd) = r9;
                                                            *(int8_t *)(r13 + 0xfffffffffffffffe) = r10;
                                                            *(int8_t *)(r13 + 0xffffffffffffffff) = r11;
                                                            *(int8_t *)r13 = r12;
                                                            r13 = r13 + 0x4;
                                                            r8 = r8 - 0x1;
                                                    } while (r8 != 0x0);
                                            }
                                            glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x0, r5);
                                            glBindBuffer(0x8893, 0x0);
                                            objc_msgSend(r28, r21);
                                            r31 = r27;
                                            r20 = r20 + 0x1;
                                    } while (r20 < *(int32_t *)r22);
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end