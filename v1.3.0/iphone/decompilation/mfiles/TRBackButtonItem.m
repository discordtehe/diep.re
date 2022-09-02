@implementation TRBackButtonItem

-(void *)initWithTarget:(void *)arg2 action:(void *)arg3 {
    r23 = [arg2 retain];
    r21 = [[TRBackButtonItem backArrowImage] retain];
    r0 = [[&var_40 super] initWithImage:r21 style:0x0 target:r23 action:arg3];
    [r23 release];
    [r21 release];
    r0 = r0;
    return r0;
}

+(void *)backArrowImage {
    UIGraphicsBeginImageContextWithOptions();
    [TRBackButtonItem drawBackArrow:r2];
    [UIGraphicsGetImageFromCurrentImageContext() retain];
    UIGraphicsEndImageContext();
    r0 = [r19 autorelease];
    return r0;
}

+(void)drawBackArrow:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[UIColor colorWithHue:r2 saturation:r3 brightness:r4 alpha:r5] retain];
    r0 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(r0);
    r0 = [UIBezierPath alloc];
    r0 = [r0 init];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    CGContextSaveGState(r20);
    CGContextTranslateCTM(r20, @selector(addLineToPoint:), r2);
    [r21 setLineCapStyle:r2];
    [r21 setLineWidth:r2];
    [r19 setStroke];
    [r21 stroke];
    CGContextRestoreGState(r20);
    r0 = [UIBezierPath alloc];
    r0 = [r0 init];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    CGContextSaveGState(r20);
    CGContextTranslateCTM(r20, @selector(addLineToPoint:), 0x2);
    [r22 setLineCapStyle:0x2];
    [r22 setLineWidth:0x2];
    [r19 setStroke];
    [r22 stroke];
    CGContextRestoreGState(r20);
    CGContextRestoreGState(r20);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

@end