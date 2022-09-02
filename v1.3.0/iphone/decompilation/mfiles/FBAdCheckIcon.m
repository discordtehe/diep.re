@implementation FBAdCheckIcon

-(double)iconPadding {
    r0 = self;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[UIColor colorWithUInt:r2 withAlpha:r3] retain];
    [self iconPadding];
    CGRectInset([self iconPadding], @selector(iconPadding), 0xffffff);
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    [r20 addLineToPoint:r2];
    [r19 setStroke];
    [r20 setLineWidth:r2];
    [r20 setMiterLimit:r2];
    [r20 setLineCapStyle:0x1];
    [r20 setLineJoinStyle:0x1];
    [r20 stroke];
    [r20 release];
    [r19 release];
    return;
}

-(void)setIconPadding:(double)arg2 {
    self->_iconPadding = d0;
    return;
}

@end