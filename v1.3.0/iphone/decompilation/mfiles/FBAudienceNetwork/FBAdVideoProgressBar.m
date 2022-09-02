@implementation FBAdVideoProgressBar

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_cornerRadius = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
            r9 = *_kCMTimeZero;
            q0 = *(int128_t *)r9;
            *(0x10 + r19 + r8) = *(r9 + 0x10);
            *(int128_t *)(r19 + r8) = q0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
            r9 = *_kCMTimeInvalid;
            r10 = *(r9 + 0x10);
            *(int128_t *)(r19 + r8) = *(int128_t *)r9;
            *(0x10 + r19 + r8) = r10;
            r0 = [UIView alloc];
            r0 = [r0 initWithFrame:r2];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_progressView));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [r19 addSubview:r2];
    }
    r0 = r19;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x80;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self bounds];
    v9 = v0;
    v10 = v1;
    v8 = v3;
    [r19 currentTime];
    sub_100a3e4dc(&stack[-104]);
    v11 = v0;
    [r19 duration];
    sub_100a3e4dc(&stack[-128]);
    if (Abs(d11) >= 0x10000000000000) {
            asm { fccmp      d11, d11, #0x1, ge };
    }
    if (CPU_FLAGS & NO) {
            asm { fccmp      d1, d2, #0x4, vc };
    }
    if (!CPU_FLAGS & E) {
            if (Abs(d0) >= 0x10000000000000) {
                    asm { fccmp      d0, d0, #0x1, ge };
            }
            if (CPU_FLAGS & NO) {
                    asm { fccmp      d1, d2, #0x4, vc };
            }
            if (!CPU_FLAGS & E) {
                    asm { fdiv       d12, d11, d0 };
            }
    }
    [r19 bounds];
    r0 = [r19 progressView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(struct CGColor *)progressColor {
    r0 = [self progressView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    r21 = [r0 backgroundColor];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setCornerRadius:(double)arg2 {
    self->_cornerRadius = d0;
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:arg2];
    [r0 release];
    r0 = [self progressView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:arg2];
    [r0 release];
    [r21 release];
    [self setNeedsLayout];
    return;
}

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    [self setNeedsLayout];
    return;
}

-(void)setProgressColor:(struct CGColor *)arg2 {
    r0 = [self progressView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setBackgroundColor:arg2];
    [r0 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_progressView, 0x0);
    return;
}

-(double)cornerRadius {
    r0 = self;
    return r0;
}

-(union ?)currentTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(union ?)duration {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setDuration:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void)setProgressView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressView, arg2);
    return;
}

-(void *)progressView {
    r0 = self->_progressView;
    return r0;
}

@end