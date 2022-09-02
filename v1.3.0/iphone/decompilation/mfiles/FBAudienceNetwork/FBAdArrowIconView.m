@implementation FBAdArrowIconView

-(void)setFillColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fillColor, arg2);
    r19 = [arg2 retain];
    [self setNeedsDisplay];
    [r19 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setBackgroundColor:r21];
            [r21 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fillColor));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fillColor, 0x0);
    return;
}

-(void *)fillColor {
    r0 = self->_fillColor;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[self fillColor] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]))))));
    r0 = [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    CGRectGetMinY(CGRectGetMinX([r20 closePath]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    [r20 addLineToPoint:r2];
    [r20 closePath];
    [r19 setFill];
    [r20 fill];
    [r20 release];
    [r19 release];
    return;
}

@end