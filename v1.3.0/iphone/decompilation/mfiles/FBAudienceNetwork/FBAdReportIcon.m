@implementation FBAdReportIcon

-(double)iconPadding {
    r0 = self;
    return r0;
}

-(void)setIconPadding:(double)arg2 {
    self->_iconPadding = d0;
    return;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [self iconPadding];
    r0 = [self iconPadding];
    r0 = CGRectInset(r0, @selector(iconPadding), 0x616671);
    CGRectGetMinY(CGRectGetMinX(r0));
    r21 = [[r21 bezierPathWithRoundedRect:0x616671 cornerRadius:r3] retain];
    [r19 setStroke];
    [r21 setLineWidth:0x616671];
    [r21 stroke];
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r23 moveToPoint:0x616671]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r23 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r23 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r23 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r23 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX([r23 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r23 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX([r23 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r23 addLineToPoint:0x616671]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r23 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4]))))));
    [r23 addCurveToPoint:0x616671 controlPoint1:r3 controlPoint2:r4];
    [r23 closePath];
    [r23 setUsesEvenOddFillRule:0x1];
    [r20 setFill];
    r0 = [r23 fill];
    CGRectGetMinY(CGRectGetMinX(r0));
    r22 = [[r26 bezierPathWithRoundedRect:0x1 cornerRadius:r3] retain];
    [r20 setFill];
    [r22 fill];
    [r22 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end