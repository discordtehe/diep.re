@implementation CCLayerRGBA

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_realOpacity = 0xff;
            *(int8_t *)(int64_t *)&r19->_displayedOpacity = 0xff;
            *(int32_t *)(int64_t *)&r19->_realColor = 0xffffff;
            *(int32_t *)(int64_t *)&r19->_displayedColor = 0xffffff;
            *(int32_t *)(int64_t *)&r19->_realEmission = 0x0;
            *(int32_t *)(int64_t *)&r19->_displayedEmission = 0x0;
            [r19 setCascadeOpacityEnabled:0x0];
            [r19 setCascadeColorEnabled:0x0];
            [r19 setCascadeEmissionEnabled:0x1];
            *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
    }
    r0 = r19;
    return r0;
}

-(unsigned char)opacity {
    r0 = *(int8_t *)(int64_t *)&self->_realOpacity;
    return r0;
}

-(unsigned char)displayedOpacity {
    r0 = *(int8_t *)(int64_t *)&self->_displayedOpacity;
    return r0;
}

-(void)setOpacity:(unsigned char)arg2 {
    *(int8_t *)(int64_t *)&self->_realOpacity = arg2;
    *(int8_t *)(int64_t *)&self->_displayedOpacity = arg2;
    [self cascadeOpacity];
    return;
}

-(void)setCascadeOpacityEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cascadeOpacityEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 cascadeOpacity];
    }
    return;
}

-(void)cascadeOpacity {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_parent));
    r0 = *(self + r20);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
            r20 = *(r19 + r20);
            if ([r20 isCascadeOpacityEnabled] != 0x0) {
                    r2 = [r20 displayedOpacity];
            }
            else {
                    r2 = 0xff;
            }
    }
    else {
            r2 = 0xff;
    }
    [r19 updateDisplayedOpacity:r2];
    return;
}

-(struct _ccColorThreeB)color {
    r0 = *(int32_t *)(int64_t *)&self->_realColor;
    return r0;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    r0 = self;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realOpacity));
    asm { scvtf      d0, w8 };
    r8 = 0x100ba3000;
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzs     w8, d0 };
    *(int8_t *)(int64_t *)&r0->_displayedOpacity = r8;
    if (*(int8_t *)(int64_t *)&r0->_cascadeOpacityEnabled != 0x0) {
            asm { csinv      w8, w8, wzr, ne };
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r9 = *(r0 + r9);
    if (r9 != 0x0) {
            r9 = r9->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r23 = *(r9 + 0x10);
                    r24 = r23 + r10 * 0x8 - 0x8;
                    if (r23 <= r24) {
                            r21 = 0x100ba3000 & 0xff;
                            do {
                                    r22 = *r23;
                                    if ([r22 conformsToProtocol:@protocol()] != 0x0) {
                                            [r22 updateDisplayedOpacity:r2];
                                    }
                                    r23 = r23 + 0x8;
                            } while (r23 < r24);
                    }
            }
    }
    return;
}

-(struct _ccColorThreeB)displayedColor {
    r0 = *(int32_t *)(int64_t *)&self->_displayedColor;
    return r0;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_realColor = r2;
    *(int32_t *)(int64_t *)&self->_displayedColor = r2;
    [self cascadeColor];
    return;
}

-(void)setCascadeColorEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cascadeColorEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 cascadeColor];
    }
    return;
}

-(void)cascadeColor {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_parent));
    r0 = *(self + r20);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
            r20 = *(r19 + r20);
            if ([r20 isCascadeColorEnabled] != 0x0) {
                    r2 = [r20 displayedColor] & 0xffffffff;
            }
            else {
                    r2 = 0xffffff;
            }
    }
    else {
            r2 = 0xffffff;
    }
    [r19 updateDisplayedColor:r2];
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
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
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realColor));
    r8 = r0 + r8;
    asm { scvtf      d0, w9 };
    r9 = 0x100ba3000;
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzs     w9, d0 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r10 = r0 + r10;
    *(int8_t *)r10 = r9;
    r9 = *(int8_t *)(r8 + 0x1);
    asm { ubfx       w11, w2, #0x8, #0x8 };
    r9 = r11 * r9;
    asm { scvtf      d0, w9 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzs     w9, d0 };
    *(int8_t *)(r10 + 0x1) = r9;
    r8 = *(int8_t *)(r8 + 0x2);
    asm { ubfx       w9, w2, #0x10, #0x8 };
    r8 = r9 * r8;
    asm { scvtf      d0, w8 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzs     w8, d0 };
    *(int8_t *)(r10 + 0x2) = r8;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cascadeColorEnabled));
    r8 = *(int8_t *)(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r10;
            }
            else {
                    r8 = 0x100bd150c;
            }
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r9 = *(r0 + r9);
    if (r9 != 0x0) {
            r9 = r9->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r24 = *(r9 + 0x10);
                    r25 = r24 + r10 * 0x8 - 0x8;
                    if (r24 <= r25) {
                            r26 = *(int32_t *)r8;
                            do {
                                    r23 = *r24;
                                    if ([r23 conformsToProtocol:@protocol()] != 0x0) {
                                            r22 = r22 & 0xffffffff00000000 | r26;
                                            [r23 updateDisplayedColor:r2];
                                    }
                                    r24 = r24 + 0x8;
                            } while (r24 < r25);
                    }
            }
    }
    *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
    return;
}

-(struct _ccColorThreeB)emission {
    r0 = *(int32_t *)(int64_t *)&self->_realEmission;
    return r0;
}

-(struct _ccColorThreeB)displayedEmission {
    r0 = *(int32_t *)(int64_t *)&self->_displayedEmission;
    return r0;
}

-(void)setEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_realEmission = r2;
    *(int32_t *)(int64_t *)&self->_displayedEmission = r2;
    [self cascadeEmission];
    return;
}

-(void)setCascadeEmissionEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cascadeEmissionEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 cascadeEmission];
    }
    return;
}

-(void)cascadeEmission {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_parent));
    r0 = *(self + r20);
    if (r0 != 0x0 && [r0 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
            r20 = *(r19 + r20);
            if ([r20 isCascadeEmissionEnabled] != 0x0) {
                    r2 = [r20 displayedEmission] & 0xffffffff;
            }
            else {
                    r2 = 0x0;
            }
    }
    else {
            r2 = 0x0;
    }
    [r19 updateDisplayedEmission:r2];
    return;
}

-(void)updateDisplayedEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
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
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realEmission));
    r9 = *(int8_t *)(r0 + r8);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_displayedEmission));
    r10 = r0 + r10;
    *(int8_t *)r10 = r9 + r2;
    *(int8_t *)(r10 + 0x1) = *(int8_t *)(0x1 + r0 + r8) + r2 / 0x100;
    *(int8_t *)(r10 + 0x2) = *(int8_t *)(0x2 + r0 + r8) + r2 / 0x10000;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_cascadeEmissionEnabled));
    r8 = *(int8_t *)(r0 + r8);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r10;
            }
            else {
                    r8 = 0x100bd1510;
            }
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r9 = *(r0 + r9);
    if (r9 != 0x0) {
            r9 = r9->data;
            r10 = *r9;
            if (r10 != 0x0) {
                    r24 = *(r9 + 0x10);
                    r25 = r24 + r10 * 0x8 - 0x8;
                    if (r24 <= r25) {
                            r26 = *(int32_t *)r8;
                            do {
                                    r23 = *r24;
                                    if ([r23 conformsToProtocol:@protocol()] != 0x0) {
                                            r22 = r22 & 0xffffffff00000000 | r26;
                                            [r23 updateDisplayedEmission:r2];
                                    }
                                    r24 = r24 + 0x8;
                            } while (r24 < r25);
                    }
            }
    }
    *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
    return;
}

-(void)didLoadFromCCB {
    [self cascadeColor];
    [self cascadeOpacity];
    [self cascadeEmission];
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    [[&var_20 super] addChild:r2 z:arg3 tag:arg4];
    [self cascadeCascadablesOfNode:arg2];
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    [arg2 retain];
    [[&var_30 super] removeChild:arg2 cleanup:arg3];
    [self cascadeCascadablesOfNode:arg2];
    [arg2 release];
    return;
}

-(bool)isCascadeColorEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_cascadeColorEnabled;
    return r0;
}

-(void)cascadeCascadablesOfNode:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([r19 conformsToProtocol:@protocol(CCRGBAProtocol)] != 0x0) {
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [r19 cascadeColor];
            }
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [r19 cascadeOpacity];
            }
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [r19 cascadeEmission];
            }
    }
    return;
}

-(bool)isCascadeOpacityEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_cascadeOpacityEnabled;
    return r0;
}

-(bool)isCascadeEmissionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_cascadeEmissionEnabled;
    return r0;
}

@end