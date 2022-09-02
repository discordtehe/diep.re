@implementation FBAdChoicesIcon

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:0x616671]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    [r20 addLineToPoint:0x616671];
    [r19 setStroke];
    [r20 setLineWidth:0x616671];
    [r20 setMiterLimit:0x616671];
    [r20 setLineCapStyle:0x1];
    [r20 stroke];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r21 moveToPoint:0x1]));
    [r21 addLineToPoint:0x1];
    [r19 setStroke];
    [r21 setLineWidth:0x1];
    [r21 setMiterLimit:0x1];
    [r21 setLineCapStyle:0x1];
    [r21 stroke];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end