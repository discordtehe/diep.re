@implementation FBAdBackButton

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[UIColor colorWithUInt:r2 withAlpha:r3] retain];
    [self contentEdgeInsets];
    CGRectInset([self contentEdgeInsets], @selector(contentEdgeInsets), 0x616671);
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    r0 = [r20 addLineToPoint:r2];
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(r0))));
    [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r20 closePath];
    [r19 setFill];
    [r20 fill];
    [r20 release];
    [r19 release];
    return;
}

@end