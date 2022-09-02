@implementation FBAdIconDrawer

+(void)drawIcon:(unsigned long long)arg2 inRect:(struct CGRect)arg3 withColor:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
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
    r21 = arg2;
    r20 = self;
    r19 = [r3 retain];
    if (r21 > 0x1) goto loc_100a5eb5c;

loc_100a5eb44:
    if (r21 == 0x0) goto loc_100a5eb78;

loc_100a5eb48:
    if (r21 != 0x1) goto loc_100a5ebac;

loc_100a5eb50:
    r8 = &@selector(drawForwardArrowInRect:withColor:);
    goto loc_100a5eb8c;

loc_100a5eb8c:
    objc_msgSend(r20, *r8);
    goto loc_100a5ebac;

loc_100a5ebac:
    [r19 release];
    return;

loc_100a5eb78:
    r8 = &@selector(drawBackArrowInRect:withColor:);
    goto loc_100a5eb8c;

loc_100a5eb5c:
    if (r21 == 0x2) goto loc_100a5eb84;

loc_100a5eb64:
    if (r21 != 0x3) goto loc_100a5ebac;

loc_100a5eb6c:
    r8 = &@selector(drawArrowDownInRect:withColor:);
    goto loc_100a5eb8c;

loc_100a5eb84:
    r8 = &@selector(drawOpenInSafariInRect:withColor:);
    goto loc_100a5eb8c;
}

+(void)drawBackArrowInRect:(struct CGRect)arg2 withColor:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r2 retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r21 setStroke];
    [r21 release];
    [r0 setLineWidth:r2];
    [r0 setMiterLimit:r2];
    [r0 setLineCapStyle:0x1];
    [r0 setLineJoinStyle:0x1];
    [r0 stroke];
    [r0 release];
    return;
}

+(void)drawForwardArrowInRect:(struct CGRect)arg2 withColor:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r2 retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r21 setStroke];
    [r21 release];
    [r0 setLineWidth:r2];
    [r0 setMiterLimit:r2];
    [r0 setLineCapStyle:0x1];
    [r0 setLineJoinStyle:0x1];
    [r0 stroke];
    [r0 release];
    return;
}

+(void)drawArrowDownInRect:(struct CGRect)arg2 withColor:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r21 = [r2 retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r21 setStroke];
    [r21 release];
    [r0 setLineWidth:r2];
    [r0 setMiterLimit:r2];
    [r0 setLineCapStyle:0x1];
    [r0 setLineJoinStyle:0x1];
    [r0 stroke];
    [r0 release];
    return;
}

+(void)drawOpenInSafariInRect:(struct CGRect)arg2 withColor:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r25 = [r2 retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    r19 = r0;
    [r0 moveToPoint:r2];
    [r19 addLineToPoint:r2];
    [r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r19 addLineToPoint:r2];
    [r19 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r19 addLineToPoint:r2];
    [r25 setStroke];
    [r19 setLineWidth:r2];
    [r19 setMiterLimit:r2];
    [r19 setLineCapStyle:0x1];
    [r19 stroke];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    r21 = r0;
    [r0 moveToPoint:0x1];
    [r21 addLineToPoint:0x1];
    [r21 addLineToPoint:0x1];
    [r25 setStroke];
    [r21 setLineWidth:0x1];
    [r21 setMiterLimit:0x1];
    [r21 setLineCapStyle:0x1];
    [r21 setLineJoinStyle:0x1];
    [r21 stroke];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:0x1];
    [r0 addLineToPoint:0x1];
    [r25 setStroke];
    [r25 release];
    [r0 setLineWidth:0x1];
    [r0 setMiterLimit:0x1];
    [r0 setLineCapStyle:0x1];
    [r0 setLineJoinStyle:0x1];
    [r0 stroke];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

@end