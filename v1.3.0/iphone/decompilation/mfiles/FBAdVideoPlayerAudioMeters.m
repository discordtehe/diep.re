@implementation FBAdVideoPlayerAudioMeters

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 newAudioMeter];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_leftMeter));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r19 addSubview:*(r19 + r21)];
            r0 = [r19 newAudioMeter];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_centerMeter));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r19 addSubview:*(r19 + r22)];
            r0 = [r19 newAudioMeter];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_rightMeter));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [r19 addSubview:*(r19 + r20)];
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(void)layoutSubviews {
    CGRectGetMaxX([self->_leftMeter setFrame:r2]);
    CGRectGetMaxX([self->_centerMeter setFrame:r2]);
    [self->_rightMeter setFrame:r2];
    return;
}

-(void)setHidden:(bool)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [[&var_30 super] isHidden];
    if ((r0 ^ r20) == 0x1) {
            [[&var_40 super] setHidden:r20];
            [r19 _startAnimatingIfNecessary];
    }
    return;
}

-(void)didMoveToSuperview {
    [[&var_20 super] didMoveToSuperview];
    [self _startAnimatingIfNecessary];
    return;
}

-(void)startAnimating {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_isAnimating = 0x1;
    [self _startAnimatingIfNecessary];
    if ([r19 hidesWhenStopped] != 0x0) {
            [r19 setHidden:0x0];
    }
    return;
}

-(void)stopAnimating {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_isAnimating = 0x0;
    [self _stopAnimating];
    if ([r19 hidesWhenStopped] != 0x0) {
            [r19 setHidden:0x1];
    }
    return;
}

-(bool)isAnimating {
    r0 = *(int8_t *)(int64_t *)&self->_isAnimating;
    return r0;
}

-(void *)newAudioMeter {
    r0 = [UIView new];
    r19 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setAnchorPoint:r2];
    [r0 release];
    r20 = [[UIColor colorWithWhite:r2 alpha:r3] retain];
    [r19 setBackgroundColor:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)_setAnimationForLayer:(void *)arg2 values:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [r19 removeAllAnimations];
    if (r20 != 0x0) {
            if (*qword_1011dcd78 != -0x1) {
                    dispatch_once_f(0x1011dcd78, 0x1011c5d10, 0x100a3d91c);
            }
            r0 = *0x1011dcd80;
            r0 = [r0 animationWithKeyPath:@"transform"];
            r0 = [r0 retain];
            [r0 setValues:r20];
            [r0 setDuration:r20];
            r22 = [[CAMediaTimingFunction functionWithName:**_kCAMediaTimingFunctionLinear] retain];
            [r0 setTimingFunction:r22];
            [r22 release];
            [r0 setAutoreverses:0x1];
            [r0 setRepeatCount:0x1];
            r22 = [[r0 keyPath] retain];
            [r19 addAnimation:r0 forKey:r22];
            [r22 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rightMeter, 0x0);
    objc_storeStrong((int64_t *)&self->_centerMeter, 0x0);
    objc_storeStrong((int64_t *)&self->_leftMeter, 0x0);
    return;
}

-(void)_stopAnimating {
    r21 = [[self->_leftMeter layer] retain];
    [self _setAnimationForLayer:r21 values:0x0];
    [r21 release];
    r21 = [[self->_centerMeter layer] retain];
    [self _setAnimationForLayer:r21 values:0x0];
    [r21 release];
    r20 = [[self->_rightMeter layer] retain];
    [self _setAnimationForLayer:r20 values:0x0];
    [r20 release];
    return;
}

-(bool)hidesWhenStopped {
    r0 = *(int8_t *)(int64_t *)&self->_hidesWhenStopped;
    return r0;
}

-(void)_startAnimatingIfNecessary {
    r0 = self;
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
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x190;
    if (*(int8_t *)(int64_t *)&r0->_isAnimating != 0x0) {
            r19 = r0;
            if (([r0 isHidden] & 0x1) == 0x0) {
                    r0 = [r19 superview];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r26 = 0x32;
                            r20 = [[NSMutableArray arrayWithCapacity:0x32] retain];
                            r21 = [[NSMutableArray arrayWithCapacity:0x32] retain];
                            r0 = @class(NSMutableArray);
                            r1 = @selector(arrayWithCapacity:);
                            r2 = 0x32;
                            r0 = objc_msgSend(r0, r1);
                            r29 = r29;
                            r22 = [r0 retain];
                            do {
                                    rand();
                                    asm { scvtf      s0, w0 };
                                    rand();
                                    asm { scvtf      s0, w0 };
                                    rand();
                                    asm { scvtf      s0, w0 };
                                    s0 = s0 * s11;
                                    s14 = s0 * s0;
                                    r0 = rand();
                                    asm { scvtf      s0, w0 };
                                    s0 = s0 * s11;
                                    s1 = s13 + s12 + s14;
                                    asm { fdiv       s1, s1, s9 };
                                    s0 = s0 * s1;
                                    asm { fcvt       d1, s1 };
                                    CATransform3DMakeScale(r0, r1, r2);
                                    r0 = objc_msgSend(r25, r23);
                                    [r0 retain];
                                    objc_msgSend(r20, r24);
                                    r0 = [r25 release];
                                    asm { fcvt       d1, s12 };
                                    CATransform3DMakeScale(r0, r1, r2);
                                    r0 = objc_msgSend(r25, r23);
                                    [r0 retain];
                                    objc_msgSend(r21, r24);
                                    r0 = [r25 release];
                                    asm { fcvt       d1, s11 };
                                    CATransform3DMakeScale(r0, r1, r2);
                                    r0 = objc_msgSend(r25, r23);
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    r1 = r24;
                                    r2 = r25;
                                    objc_msgSend(r22, r1);
                                    [r25 release];
                                    r26 = r26 - 0x1;
                            } while (r26 != 0x0);
                            r24 = [[r19->_leftMeter layer] retain];
                            [r19 _setAnimationForLayer:r24 values:r20];
                            [r24 release];
                            r24 = [[r19->_centerMeter layer] retain];
                            [r19 _setAnimationForLayer:r24 values:r21];
                            [r24 release];
                            r23 = [[r19->_rightMeter layer] retain];
                            [r19 _setAnimationForLayer:r23 values:r22];
                            [r23 release];
                            [r22 release];
                            [r21 release];
                            [r20 release];
                    }
            }
    }
    return;
}

-(void)setHidesWhenStopped:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hidesWhenStopped = arg2;
    return;
}

@end