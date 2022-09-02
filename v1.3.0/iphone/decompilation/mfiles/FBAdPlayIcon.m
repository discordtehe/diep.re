@implementation FBAdPlayIcon

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
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setIconColor:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setIconColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconColor, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_iconColor, 0x0);
    return;
}

-(void *)iconColor {
    r0 = self->_iconColor;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self iconColor];
    r0 = [r0 retain];
    r0 = CGRectGetMidX(r0);
    CGRectGetMidY(r0);
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 closePath];
    [r19 setFill];
    [r0 fill];
    [r0 release];
    [r19 release];
    return;
}

@end