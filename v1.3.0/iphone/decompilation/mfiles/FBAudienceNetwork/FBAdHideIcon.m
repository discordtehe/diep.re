@implementation FBAdHideIcon

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupDefaults];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupDefaults];
    }
    r0 = r19;
    return r0;
}

-(void)setupDefaults {
    [self setIconInsets:r2];
    r21 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
    [self setIconColor:r21];
    [r21 release];
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_iconColor, 0x0);
    return;
}

-(struct UIEdgeInsets)iconInsets {
    r0 = self;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[self iconColor] retain];
    r0 = [self iconInsets];
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = [UIBezierPath bezierPathWithRoundedRect:r2 cornerRadius:r3];
    r0 = [r0 retain];
    var_A8 = r0;
    [r19 setStroke];
    [r0 setLineWidth:r2];
    [r0 stroke];
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r24 moveToPoint:r2]));
    [r24 addLineToPoint:r2];
    [r19 setStroke];
    [r24 setLineWidth:r2];
    [r24 setMiterLimit:r2];
    [r24 setLineCapStyle:0x1];
    [r24 stroke];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r25 moveToPoint:0x1]));
    [r25 addLineToPoint:0x1];
    [r19 setStroke];
    [r25 setLineWidth:0x1];
    [r25 setMiterLimit:0x1];
    [r25 setLineCapStyle:0x1];
    [r25 stroke];
    [r25 release];
    [r24 release];
    [var_A8 release];
    [r19 release];
    return;
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

-(void *)iconColor {
    r0 = self->_iconColor;
    return r0;
}

-(void)setIconColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconColor, arg2);
    return;
}

@end