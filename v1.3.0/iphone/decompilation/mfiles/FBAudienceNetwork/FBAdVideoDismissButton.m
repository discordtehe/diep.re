@implementation FBAdVideoDismissButton

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = *(&@class(MCConfigurationData) + 0x700);
    r0 = [r0 blackColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGColorRetain([r0 CGColor]);
    [r0 release];
    asm { fdiv       d8, d8, d0 };
    r20 = UIGraphicsGetCurrentContext();
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 setLineCapStyle:r2];
    CGContextSaveGState(r20);
    CGContextSetShadowWithColor(r20, r19, 0x1, r3);
    r0 = *(r24 + 0x700);
    r0 = [r0 whiteColor];
    r0 = [r0 retain];
    [r0 setStroke];
    [r0 release];
    [r21 setLineWidth:r2];
    [r21 stroke];
    CGContextRestoreGState(r20);
    CGColorRelease(r19);
    [r21 release];
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdVideoDismissButton");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)videoDismissButton {
    r0 = [FBAdVideoDismissButton buttonWithType:0x0];
    return r0;
}

@end