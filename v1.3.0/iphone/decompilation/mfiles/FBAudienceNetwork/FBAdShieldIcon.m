@implementation FBAdShieldIcon

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setIconInsets:r2];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setIconColor:r20];
            [r20 release];
            r20 = [[UIColor colorWithRed:r20 green:r3 blue:r4 alpha:r5] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_iconColor, 0x0);
    return;
}

-(struct UIEdgeInsets)iconInsets {
    r0 = self;
    return r0;
}

-(void *)iconColor {
    r0 = self->_iconColor;
    return r0;
}

-(void)setIconInsets:(struct UIEdgeInsets)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_iconInsets));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void)setIconColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconColor, arg2);
    return;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[self iconColor] retain];
    [self iconInsets];
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r20 closePath];
    [r19 setStroke];
    [r20 setLineWidth:r2];
    [r20 setMiterLimit:r2];
    [r20 stroke];
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r22 moveToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX([r22 addLineToPoint:r2]));
    [r22 addLineToPoint:r2];
    [r19 setStroke];
    [r22 setLineWidth:r2];
    [r22 setMiterLimit:r2];
    [r22 setLineCapStyle:0x1];
    [r22 setLineJoinStyle:0x1];
    [r22 stroke];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

@end