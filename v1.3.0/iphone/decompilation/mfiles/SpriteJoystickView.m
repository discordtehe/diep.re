@implementation SpriteJoystickView

-(void)createTexture {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(mBackground))) contentSize];
    [*(r19 + r23) scaleX];
    asm { fcvt       d0, s0 };
    objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(mStick))), r21);
    objc_msgSend(*(r19 + r24), r22);
    asm { fcvt       d0, s0 };
    asm { fcvtzs     w22, d0 };
    objc_msgSend(*(r19 + r23), r21);
    [*(r19 + r23) scaleY];
    asm { fcvt       d0, s0 };
    objc_msgSend(*(r19 + r24), r21);
    objc_msgSend(*(r19 + r24), r23);
    asm { fcvt       d0, s0 };
    asm { fcvtzs     w3, d0 };
    r0 = [r20 renderTextureWithWidth:r22 height:r3];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mRenderTexture));
    *(r19 + r22) = r0;
    r19->mOriginalRenderTextureTexture = [[[r0 sprite] texture] retain];
    [r19 addChild:*(r19 + r22)];
    [[[*(r19 + r22) sprite] texture] setAntiAliasTexParameters];
    [[*(r19 + r22) sprite] setOpacity:r2];
    return;
}

-(void)listenBackToForeground {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->mRenderTexture != 0x0) {
            [r19 removeChild:r2];
    }
    [r19 createTexture];
    return;
}

-(void *)initWithEaseFactor:(float)arg2 withCross:(bool)arg3 {
    r31 = r31 - 0x90;
    var_60 = d11;
    stack[-104] = d10;
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
    v8 = v0;
    r23 = self;
    r20 = sub_1005d7410(@"DiepControls.png", @"DiepControls.plist", @"game_joystick_bg.png", 0x0);
    r21 = sub_1005d7410(@"DiepControls.png", @"DiepControls.plist", @"game_joystick.png", 0x0);
    r0 = sub_1005d7410(@"DiepControls.png", @"DiepControls.plist", @"joystick-aim.png", 0x0);
    r22 = r0;
    [r0 setColor:0x0];
    *(int8_t *)(int64_t *)&r23->mShowCross = arg2;
    *(int8_t *)(int64_t *)&r23->mShowDeadZones = [[[[Application sharedApplication] userData] settings] drawDeadZones];
    sub_1005cb30c(&stack[-116], &var_68);
    if (var_68 > 0x4010000000000000) {
            [r20 setInchHeight:r2 proportional:r3];
            objc_msgSend(r21, r24);
    }
    [r22 setInchHeight:r2 proportional:r3];
    [r20 contentSize];
    [r20 scale];
    asm { fcvt       d0, s0 };
    objc_msgSend(r21, r24);
    objc_msgSend(r21, r25);
    asm { fcvt       d0, s0 };
    d0 = d11 + 0xbfd0000000000000 * d9 * d0;
    asm { fcvt       s0, d0 };
    r0 = [[&var_78 super] initWithMaxRadius:r2 easeFactor:r3];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r20 retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
            *(r23 + r20) = r0;
            r23->mStick = [r21 retain];
            r23->mCross = [r22 retain];
            [r23 createTexture];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mRenderTexture));
            [*(r23 + r21) contentSize];
            [*(r23 + r21) contentSize];
            [*(r23 + r20) setPosition:0x1];
            [r23 populateTexturesCache];
            [r23 updateRenderTexture];
            r20 = [NSNotificationCenter defaultCenter];
            [UIApplication sharedApplication];
            [r20 addObserver:r2 selector:r3 name:r4 object:r5];
    }
    r0 = r23;
    return r0;
}

-(void)didReceiveMemoryWarning:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mBufferedTextures));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[NSNotificationCenter defaultCenter] removeObserver:r19 name:**_UIApplicationDidReceiveMemoryWarningNotification object:0x0];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mBufferedTextures));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [r19->mBackground release];
    [r19->mStick release];
    [r19->mCross release];
    [r19->mOriginalRenderTextureTexture release];
    [[&var_20 super] dealloc];
    return;
}

-(void)populateTexturesCache {
    r31 = r31 - 0xb0;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mBufferedTextures));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r0 = @class(NSMutableDictionary);
    asm { fcvtzu     x2, s0 };
    *(r19 + r20) = [[r0 dictionaryWithCapacity:r2] retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
    var_A8 = r20;
    [*(r19 + r23) contentSize];
    var_B0 = d0;
    [*(r19 + r23) scaleX];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mStick));
    [*(r19 + r24) contentSize];
    [*(r19 + r24) scaleX];
    [*(r19 + r23) contentSize];
    [*(r19 + r23) scaleY];
    [*(r19 + r24) contentSize];
    [*(r19 + r24) scaleY];
    asm { fdiv       s0, s0, s1 };
    sub_10035d730();
    s0 = *(int32_t *)(r19 + r22);
    if (s0 >= 0x0) {
            r8 = 0x42200000;
            asm { fcvt       d1, s14 };
            asm { fcvt       d2, s9 };
            d2 = 0x3fe0000000000000 * d15 * d2;
            asm { fcvt       d2, s10 };
            asm { fcvt       d4, s12 };
            asm { fcvt       s2, d2 };
            asm { fcvtzs     w8, s2 };
            var_B0 = r8;
            asm { fcvt       s1, d1 };
            asm { fcvtzs     w21, s1 };
            do {
                    if (s0 < s8) {
                            asm { fcsel      s10, s9, s0, mi };
                    }
                    r23 = @selector(renderJoystickToTexture:lenght:);
                    [CCRenderTexture renderTextureWithWidth:r2 height:r3];
                    asm { fcvtzs     w3, s10 };
                    objc_msgSend(r19, r23);
                    objc_msgSend(objc_msgSend(r28, r24), r25);
                    r0 = @class(NSNumber);
                    asm { fcvtas     w2, s10 };
                    objc_msgSend(r0, r26);
                    objc_msgSend(r20, r27);
                    s0 = s10 - s8;
            } while (s0 >= 0x0);
    }
    return;
}

-(void)updateRenderTexture {
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
    sub_1003115a8();
    asm { fcvtas     w20, d0 };
    r21 = r19->mBufferedTextures;
    if (r21 != 0x0) {
            [NSNumber numberWithInt:r20];
            r0 = [r21 objectForKey:r2];
            if (r0 != 0x0) {
                    [[r19->mRenderTexture sprite] setTexture:r2];
            }
            else {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(mRenderTexture));
                    r0 = *(r19 + r22);
                    r0 = [r0 sprite];
                    r0 = [r0 texture];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalRenderTextureTexture));
                    if (r0 != *(r19 + r23)) {
                            [[*(r19 + r22) sprite] setTexture:r2];
                    }
                    [r19 renderJoystickToTexture:r2 lenght:r3];
            }
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(mRenderTexture));
            r0 = *(r19 + r22);
            r0 = [r0 sprite];
            r0 = [r0 texture];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalRenderTextureTexture));
            if (r0 != *(r19 + r23)) {
                    [[*(r19 + r22) sprite] setTexture:r2];
            }
            [r19 renderJoystickToTexture:r2 lenght:r3];
    }
    return;
}

-(void)renderJoystickToTexture:(void *)arg2 lenght:(int)arg3 {
    [arg2 beginWithClear:r2 g:r3 b:r4 a:r5];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(mBackground))) visit];
    [*(r21 + r23) position];
    asm { scvtf      d2, w19 };
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mStick));
    [*(r21 + r19) setPosition:r2];
    objc_msgSend(*(r21 + r19), r22);
    [r20 end];
    return;
}

-(void)onSetEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->mEnabled != r2) {
            [[&var_20 super] onSetEnabled:r2];
            [r0->mRenderTexture setVisible:r2];
    }
    return;
}

-(float)getBackgroundRadius {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
    [*(self + r20) contentSize];
    r0 = *(self + r20);
    r0 = [r0 scale];
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    return r0;
}

-(void)customDraw {
    r1 = _cmd;
    r0 = self;
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mAxis));
    d0 = *(int128_t *)(r0 + r8);
    d1 = *(int128_t *)(0x8 + r0 + r8);
    asm { fcvt       d2, s2 };
    d0 = d0 * d2;
    d1 = d1 * d2;
    r20 = (int64_t *)&r0->mLerpedStickPosition;
    d2 = *(int128_t *)r20;
    d3 = *(int128_t *)(r20 + 0x8);
    asm { fcvt       d4, s4 };
    *(int128_t *)r20 = d2 + (d0 - d2) * d4;
    *(int128_t *)(r20 + 0x8) = d3 + (d1 - d3) * d4;
    loc_10031164c(r0, r1, r2, r3, r4);
    asm { fcvt       s8, d0 };
    sub_1003115a8();
    asm { fcvt       s9, d0 };
    r21 = (int64_t *)&r19->mStickPosition;
    d0 = *(int128_t *)r21;
    sub_1003115a8();
    asm { fcvt       s0, d0 };
    asm { fabd       s0, s9, s0 };
    if (s0 > 0x3ff0000000000000) {
            *(int128_t *)r21 = *(int128_t *)r20;
            [r19 updateRenderTexture];
    }
    s0 = s8 * *(int32_t *)0x100b9b070;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mRenderTexture));
    [*(r19 + r20) setRotation:r2];
    if (*(int8_t *)(int64_t *)&r19->mShowCross != 0x0) {
            [*(r19 + r20) position];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(mCross));
            [*(r19 + r20) setPosition:r2];
            [*(r19 + r20) visit];
    }
    if (*(int8_t *)(int64_t *)&r19->mShowDeadZones != 0x0) {
            [r19 getStickRadius];
            [r19 getBackgroundRadius];
            s0 = s11 * s0;
            v0 = v8;
            v1 = v9;
            r29 = saved_fp;
            r30 = stack[-8];
            r20 = var_10;
            r19 = stack[-24];
            r22 = var_20;
            r21 = stack[-40];
            d9 = var_30;
            d8 = stack[-56];
            d11 = var_40;
            d10 = stack[-72];
            r31 = r31 + 0x50;
            var_C0 = d15;
            stack[-200] = d14;
            var_B0 = d13;
            stack[-184] = d12;
            var_A0 = d11;
            stack[-168] = d10;
            var_90 = d9;
            stack[-152] = d8;
            var_80 = r24;
            var_70 = r22;
            stack[-120] = r21;
            var_60 = r20;
            stack[-104] = r19;
            r29 = &var_50;
            r21 = &var_D0 - 0x100;
            if (0x10 != 0x0) {
                    r0 = 0x10;
                    r22 = 0x0;
                    asm { ucvtf      s0, x19 };
                    asm { fdiv       s13, s1, s0 };
                    r23 = r21 + 0x8;
                    do {
                            r19 = 0x10;
                            asm { ucvtf      s0, x22 };
                            r0 = cosf(r0);
                            s0 = s9 * s13 * s0;
                            asm { fcvt       d0, s0 };
                            d14 = d11 + d0;
                            r0 = sinf(r0);
                            s0 = s0 * s9;
                            asm { fcvt       d0, s0 };
                            d0 = d10 + d0;
                            *(int128_t *)(r23 + 0xfffffffffffffff8) = d14;
                            *(int128_t *)r23 = d0;
                            r22 = r22 + 0x1;
                            r23 = r23 + 0x10;
                    } while (r19 != r22);
            }
            r19 = 0x10;
            var_78 = **___stack_chk_guard;
            asm { ubfx       x8, x20, #0x18, #0x8 };
            asm { scvtf      s0, w9 };
            asm { fdiv       s0, s0, s3 };
            asm { ubfx       w9, w20, #0x8, #0x8 };
            asm { scvtf      s1, w9 };
            asm { fdiv       s1, s1, s3 };
            asm { ubfx       w9, w20, #0x10, #0x8 };
            asm { scvtf      s2, w9 };
            asm { fdiv       s2, s2, s3 };
            asm { scvtf      s4, w8 };
            asm { fdiv       s3, s4, s3 };
            sub_1002a22a4(r21, r19);
            if (**___stack_chk_guard != var_78) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(float)getStickRadius {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mStick));
    [*(self + r20) contentSize];
    r0 = *(self + r20);
    r0 = [r0 scale];
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    return r0;
}

-(float)setDeadZoneSize:(float)arg2 {
    r0 = self;
    *(int32_t *)(int64_t *)&r0->mDeadZoneSize = s0;
    return r0;
}

@end