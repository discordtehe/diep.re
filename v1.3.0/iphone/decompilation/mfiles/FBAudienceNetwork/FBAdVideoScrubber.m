@implementation FBAdVideoScrubber

-(void)setPlayableDuration:(double)arg2 {
    [self setPlayableDuration:0x0 animated:r3];
    return;
}

-(void)setPlayableDuration:(double)arg2 animated:(bool)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_playableDuration));
    if (*(r0 + r8) != d0) {
            *(r0 + r8) = d0;
            if (r2 != 0x0) {
                    asm { fcsel      d0, d0, d1, ne };
            }
            [UIView animateWithDuration:&var_28 animations:r3];
    }
    return;
}

-(void)_updateTrackLoadingViewFrame {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    CGRectGetWidth([self->_trackView bounds]);
    v8 = v0;
    [r19 playableDuration];
    [r19 maximumValue];
    asm { fcvt       d0, s0 };
    r0 = @class(FBAdScreen);
    r1 = @selector(scale);
    asm { fdiv       d8, d8, d0 };
    objc_msgSend(r0, r1);
    asm { frinta     d1, d1 };
    asm { fdiv       d8, d1, d0 };
    if (sub_100aab508() != 0x0) {
            [r19->_trackLoadingView setFrame:r2];
    }
    return;
}

-(void *)_imageWithColor:(void *)arg2 andSize:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 retain];
    UIGraphicsBeginImageContext();
    r20 = UIGraphicsGetCurrentContext();
    r0 = objc_retainAutorelease(r19);
    r21 = [r0 CGColor];
    [r0 release];
    CGContextSetFillColorWithColor(r20, r21);
    CGContextFillRect(r20, r21);
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x80;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_70 super] layoutSubviews];
    [r19 bounds];
    v11 = v0;
    v12 = v1;
    v13 = v2;
    v14 = v3;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_trackView));
    r0 = [r19 sendSubviewToBack:*(r19 + r21)];
    d8 = r19->_currentScrubberHeight;
    d9 = r19->_currentInset;
    r0 = CGRectGetWidth(r0);
    if (Abs(d8) != 0x7ff0000000000000) {
            asm { fccmp      d8, d8, #0x1, ne };
    }
    if (CPU_FLAGS & NO) {
            asm { fcsel      d8, d8, d15, vc };
    }
    if (Abs(d9) != 0x7ff0000000000000) {
            asm { fccmp      d9, d9, #0x1, ne };
    }
    if (CPU_FLAGS & NO) {
            asm { fcsel      d10, d9, d15, vc };
    }
    d4 = 0x7ff0000000000000;
    asm { fabd       d0, d0, d1 };
    if (d0 != d4) {
            asm { fccmp      d2, d2, #0x1, ne };
    }
    if (CPU_FLAGS & NO) {
            asm { fcsel      d9, d2, d15, vc };
    }
    CGRectGetMaxY(r0);
    d0 = d0 - r19->_hitAreaBelowScrubber;
    if (sub_100aab508() != 0x0) {
            [*(r19 + r21) setFrame:r2];
    }
    [r19 value];
    asm { fcvt       d0, s0 };
    [r19 maximumValue];
    asm { fcvt       d0, s0 };
    r0 = @class(FBAdScreen);
    r1 = @selector(scale);
    asm { fdiv       d10, d10, d0 };
    objc_msgSend(r0, r1);
    asm { frinta     d1, d1 };
    asm { fdiv       d0, d1, d0 };
    if (Abs(d0) != 0x7ff0000000000000) {
            asm { fccmp      d0, d0, #0x1, ne };
    }
    if (CPU_FLAGS & NO) {
            asm { fcsel      d10, d0, d15, vc };
    }
    if (sub_100aab508() != 0x0) {
            if (Abs(d9) != 0x7ff0000000000000) {
                    asm { fccmp      d9, d9, #0x1, ne };
            }
            if (CPU_FLAGS & NO) {
                    asm { fcsel      d9, d9, d0, vc };
            }
            [r19->_trackMinView setFrame:r2];
            objc_msgSend(r19->_trackMaxView, r20);
    }
    [r19 _updateTrackLoadingViewFrame];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
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
    r29 = &saved_fp;
    r0 = [[&var_70 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_currentScrubberHeight = 0x4000000000000000;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentInset));
            *(r19 + r21) = 0x4028000000000000;
            r0 = @class(UIImage);
            r0 = [r0 new];
            var_78 = r0;
            [r19 setMinimumTrackImage:r0 forState:0x0];
            [r19 setMaximumTrackImage:r0 forState:0x0];
            r0 = [UIView new];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_trackView));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r19 addSubview:*(r19 + r22)];
            [*(r19 + r22) setUserInteractionEnabled:0x0];
            *(r19 + r21) = 0x0;
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:0x0] retain];
            r0 = [r19 _imageWithColor:r21 andSize:0x0];
            r0 = [r0 retain];
            var_80 = r0;
            [r21 release];
            [r19 setThumbImage:r0 forState:0x0];
            r20 = [UIImage new];
            [r19 setThumbImage:r20 forState:0x2];
            [r20 release];
            r20 = [[UIColor darkGrayColor] retain];
            r0 = [r19 _imageWithColor:r20];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 resizableImageWithCapInsets:0x1 resizingMode:0x2];
            r0 = [r0 retain];
            r23 = r0;
            var_88 = r0;
            [r21 release];
            [r20 release];
            r0 = [UIImageView alloc];
            r2 = r23;
            r0 = [r0 initWithImage:r2];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_trackMaxView));
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [*(r19 + r23) setAlpha:r2];
            [*(r19 + r22) addSubview:*(r19 + r23)];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:0x2] retain];
            r0 = [r19 _imageWithColor:r23];
            r0 = [r0 retain];
            r27 = [[r0 resizableImageWithCapInsets:0x1 resizingMode:0x2] retain];
            [r0 release];
            [r23 release];
            r0 = [UIImageView alloc];
            r0 = [r0 initWithImage:r27];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_trackLoadingView));
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [*(r19 + r23) setAlpha:r27];
            [*(r19 + r22) addSubview:*(r19 + r23)];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:0x2] retain];
            r0 = [r19 _imageWithColor:r23];
            r0 = [r0 retain];
            r26 = [[r0 resizableImageWithCapInsets:0x1 resizingMode:0x2] retain];
            [r0 release];
            [r23 release];
            r0 = [UIImageView alloc];
            r0 = [r0 initWithImage:r26];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_trackMinView));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [*(r19 + r21) setAlpha:r26];
            [*(r19 + r22) addSubview:*(r19 + r21)];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x0];
            [r0 release];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setShadowOffset:0x0];
            [r0 release];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:0x0];
            [r0 release];
            [r19 addTarget:r19 action:@selector(_scrubberIsBeingUsed:) forControlEvents:0x1];
            [r19 addTarget:r19 action:@selector(_scrubberIsNotBeingUsed:) forControlEvents:0x1c0];
            r19->_trackInsetWhileScrubbing = 0x4028000000000000;
            [r26 release];
            [r27 release];
            [var_88 release];
            [var_80 release];
            [var_78 release];
    }
    r0 = r19;
    return r0;
}

-(void *)_imageWithColor:(void *)arg2 {
    r0 = [self _imageWithColor:arg2 andSize:r3];
    return r0;
}

-(bool)beginTrackingWithTouch:(void *)arg2 withEvent:(void *)arg3 {
    return 0x1;
}

-(void)_scrubberIsNotBeingUsed:(void *)arg2 {
    self->_currentScrubberHeight = 0x4000000000000000;
    self->_currentInset = 0x0;
    [UIView animateWithDuration:&var_28 animations:r3];
    return;
}

-(void)_scrubberIsBeingUsed:(void *)arg2 {
    self->_currentScrubberHeight = 0x4018000000000000;
    self->_currentInset = self->_trackInsetWhileScrubbing;
    [UIView animateWithDuration:&var_28 animations:r3];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackMaxView, 0x0);
    objc_storeStrong((int64_t *)&self->_trackLoadingView, 0x0);
    objc_storeStrong((int64_t *)&self->_trackMinView, 0x0);
    objc_storeStrong((int64_t *)&self->_trackView, 0x0);
    return;
}

-(double)playableDuration {
    r0 = self;
    return r0;
}

-(void)setTrackInsetWhileScrubbing:(double)arg2 {
    self->_trackInsetWhileScrubbing = d0;
    return;
}

-(double)trackInsetWhileScrubbing {
    r0 = self;
    return r0;
}

-(double)hitAreaBelowScrubber {
    r0 = self;
    return r0;
}

-(void)setHitAreaBelowScrubber:(double)arg2 {
    self->_hitAreaBelowScrubber = d0;
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdVideoScrubber");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end