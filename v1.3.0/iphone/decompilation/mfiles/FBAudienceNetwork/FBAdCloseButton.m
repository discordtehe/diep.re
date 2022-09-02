@implementation FBAdCloseButton

-(void *)init {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r0 = [r19 initWithForcedViewTime:&var_30 style:0x0];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r0 = [r19 initWithForcedViewTime:&var_30 style:0x0];
    return r0;
}

-(void *)initWithForcedViewTime:(union ?)arg2 style:(long long)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r3;
    r21 = r2;
    r0 = [[&var_30 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            r22 = (int64_t *)&r20->_currentTime;
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            q0 = *(int128_t *)r8;
            *(r22 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r22 = q0;
            *(int8_t *)(int64_t *)&r20->_forcedViewDisabled = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
            r9 = *(r21 + 0x10);
            *(int128_t *)(r20 + r8) = *(int128_t *)r21;
            *(0x10 + r20 + r8) = r9;
            r0 = @class(UIColor);
            r0 = [r0 blackColor];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_progressColor));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_contentPadding = 0x0;
            r0 = @class(UIColor);
            r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_strokeColor));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_style = r19;
            *(int8_t *)(int64_t *)&r20->_fillup = 0x1;
            *(int8_t *)(int64_t *)&r20->_shouldScaleToFill = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r0 = [r19 initWithForcedViewTime:&var_30 style:0x0];
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = self;
    [self contentPadding];
    v12 = v0;
    r0 = UIGraphicsGetCurrentContext();
    r19 = r0;
    CGContextSaveGState(r0);
    r21 = [r20 style];
    r0 = [r20 isCloseable];
    if (r0 == 0x0) goto loc_100a27018;

loc_100a26fb0:
    if (r21 == 0x0) goto loc_100a27058;

loc_100a26fb4:
    if (r21 == 0x2) goto loc_100a27018;

loc_100a26fbc:
    if (r21 != 0x1) goto loc_100a27038;

loc_100a26fc4:
    [r20 bounds];
    [r20 bounds];
    r1 = @selector(drawArrowsInRect:);
    r0 = r20;
    goto loc_100a27034;

loc_100a27034:
    objc_msgSend(r0, r1);
    goto loc_100a27038;

loc_100a27038:
    CGContextRestoreGState(r19);
    return;

loc_100a27018:
    r1 = @selector(drawProgressInRect:);
    r0 = r20;
    goto loc_100a27034;

loc_100a27058:
    CGRectInset(r0, @selector(isCloseable), r2);
    r1 = @selector(drawXInRect:);
    r0 = r20;
    goto loc_100a27034;
}

-(void)drawXInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = CGRectGetMinX(self);
    CGRectGetMaxY(CGRectGetMinY(CGRectGetMaxX(r0)));
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    r20 = r0;
    [r0 moveToPoint:r2];
    [r20 addLineToPoint:r2];
    [r20 moveToPoint:r2];
    [r20 addLineToPoint:r2];
    [r20 setLineWidth:r2];
    [r20 setLineCapStyle:0x2];
    r0 = [self progressColor];
    r0 = [r0 retain];
    [r0 setStroke];
    [r0 release];
    [r20 stroke];
    [r20 release];
    return;
}

-(void)drawProgressInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_70 = d13;
    stack[-120] = d12;
    r31 = r31 + 0xffffffffffffff80;
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
    v11 = v2;
    r19 = self;
    r0 = CGRectGetMidX(self);
    v8 = v0;
    r0 = CGRectGetMidY(r0);
    v9 = v0;
    CGRectGetWidth(r0);
    v10 = v0;
    [r19 contentPadding];
    r0 = @class(UIBezierPath);
    r22 = @selector(bezierPath);
    asm { fdiv       d10, d0, d1 };
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r20 = r0;
    [r0 addArcWithCenter:0x1 radius:r3 startAngle:r4 endAngle:r5 clockwise:r6];
    [r20 setLineWidth:0x1];
    r0 = [r19 strokeColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setStroke];
    [r0 release];
    [r20 stroke];
    [r19 completeRatio];
    if (*(int8_t *)(int64_t *)&r19->_fillup == 0x0) {
            asm { fcsel      d12, d1, d0, eq };
    }
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    r22 = r0;
    [r0 addArcWithCenter:0x1 radius:r3 startAngle:r4 endAngle:r5 clockwise:r6];
    [r22 setLineWidth:0x1];
    r0 = [r19 progressColor];
    r0 = [r0 retain];
    [r0 setStroke];
    [r0 release];
    [r22 stroke];
    [r22 release];
    [r20 release];
    return;
}

-(void)disableForcedView {
    *(int8_t *)(int64_t *)&self->_forcedViewDisabled = 0x1;
    return;
}

-(double)currentTimeMs {
    [self currentTime];
    r0 = sub_100a3e4dc(&stack[-40]);
    return r0;
}

-(union ?)forcedViewRemainingTime {
    r0 = self;
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r8;
    if (*(int8_t *)(int64_t *)&r0->_forcedViewDisabled != 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    else {
            r20 = r0;
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [r20 currentTime];
            sub_100a3e440(&stack[-104], &var_90, &stack[-128]);
            r0 = sub_100a3e3a4(r19, r29 - 0x40, &stack[-104]);
    }
    return r0;
}

-(void)setContentPadding:(double)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentPadding));
    if (*(r0 + r8) != d0) {
            *(r0 + r8) = d0;
            [r0 setNeedsDisplay];
    }
    return;
}

-(bool)isCloseable {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    [self forcedViewRemainingTime];
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r0 = sub_100a3e318(&stack[-40], &var_30);
    if (r0 < 0x1) {
            if (CPU_FLAGS & L) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    [self setNeedsDisplay];
    return;
}

-(void)setForcedViewTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    [self setNeedsDisplay];
    return;
}

-(void)setProgressColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressColor, arg2);
    r19 = [arg2 retain];
    [self setNeedsDisplay];
    [r19 release];
    return;
}

-(void)setStyle:(long long)arg2 {
    self->_style = arg2;
    [self setNeedsDisplay];
    return;
}

-(double)completeRatio {
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self currentTime];
    sub_100a3e4dc(&stack[-72]);
    r0 = sub_100a3e4dc(&var_50);
    if (d1 > 0x0) {
            asm { fdiv       d0, d8, d1 };
            asm { fmin       d0, d0, d1 };
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_strokeColor, 0x0);
    objc_storeStrong((int64_t *)&self->_progressColor, 0x0);
    return;
}

-(union ?)currentTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void *)progressColor {
    r0 = self->_progressColor;
    return r0;
}

-(void *)strokeColor {
    r0 = self->_strokeColor;
    return r0;
}

-(void)setStrokeColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_strokeColor, arg2);
    return;
}

-(double)contentPadding {
    r0 = self;
    return r0;
}

-(long long)style {
    r0 = self->_style;
    return r0;
}

-(bool)fillup {
    r0 = *(int8_t *)(int64_t *)&self->_fillup;
    return r0;
}

-(union ?)forcedViewTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setFillup:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_fillup = arg2;
    return;
}

-(bool)shouldScaleToFill {
    r0 = *(int8_t *)(int64_t *)&self->_shouldScaleToFill;
    return r0;
}

-(void)setShouldScaleToFill:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldScaleToFill = arg2;
    return;
}

-(void)drawArrowsInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r31 = r31 + 0xffffffffffffff60 - 0x170;
    v11 = v3;
    v12 = v2;
    v8 = v1;
    v9 = v0;
    r20 = self;
    [self bounds];
    r0 = @class(UIBezierPath);
    r1 = @selector(bezierPath);
    asm { fdiv       d0, d12, d2 };
    var_188 = d0;
    r24 = r1;
    r0 = objc_msgSend(r0, r1);
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    CGRectGetMinY(CGRectGetMinX(r0));
    v14 = v12;
    CGRectGetMinY(CGRectGetMinX([r19 moveToPoint:r2]));
    r0 = [r19 addLineToPoint:r2];
    r0 = CGRectGetMinX(r0);
    var_190 = d0 + d10;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX([r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r19 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX([r19 addLineToPoint:r2]));
    r0 = [r19 addLineToPoint:r2];
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    v10 = v15;
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX([r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r19 addLineToPoint:r2]));
    r0 = [r19 addLineToPoint:r2];
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)))));
    CGRectGetMinY(CGRectGetMinX([r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r19 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    r0 = [r19 addLineToPoint:r2];
    r0 = CGRectGetMinX(r0);
    var_200 = d10 + d0 + *0x100bfb3f0;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    v0 = v9;
    CGRectGetMinY(r0);
    d0 = var_200;
    [r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r19 closePath];
    r1 = @selector(shouldScaleToFill);
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            d0 = var_188;
            CGAffineTransformMakeScale(r0, r1);
            r23 = @selector(applyTransform:);
            CGAffineTransformMakeTranslation(objc_msgSend(r19, r23), r23);
            r2 = r29 - 0xf8;
            objc_msgSend(r19, r23);
    }
    r0 = [r20 progressColor];
    r0 = [r0 retain];
    [r0 setFill];
    [r0 release];
    [r19 fill];
    r0 = objc_msgSend(@class(UIBezierPath), r24);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r24 moveToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r24 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r24 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r24 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r24 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r24 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    r0 = [r24 addLineToPoint:r2];
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    v0 = v9;
    CGRectGetMinY(r0);
    [r24 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r24 closePath];
    r1 = @selector(shouldScaleToFill);
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            CGAffineTransformMakeScale(r0, r1);
            r0 = [r24 applyTransform:&stack[-312]];
            CGAffineTransformMakeTranslation(r0, @selector(applyTransform:));
            [r24 applyTransform:&stack[-360]];
    }
    r0 = [r20 progressColor];
    r0 = [r0 retain];
    [r0 setFill];
    [r0 release];
    [r24 fill];
    [r24 release];
    [r19 release];
    return;
}

@end