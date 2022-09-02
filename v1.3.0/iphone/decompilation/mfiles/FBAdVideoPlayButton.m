@implementation FBAdVideoPlayButton

-(void)setHighlighted:(bool)arg2 {
    [[&var_20 super] setHighlighted:arg2];
    [self setNeedsDisplay];
    return;
}

+(void *)videoPlayButton {
    r0 = [FBAdVideoPlayButton buttonWithType:0x0];
    return r0;
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
    r0 = objc_getClass("FBAdVideoPlayButton");
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

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIColor blackColor];
    r29 = &var_10;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r28 = [r0 CGColor];
    [r0 release];
    [r19 bounds];
    v8 = v2;
    [r19 bounds];
    if (d8 < d3) {
            asm { fcsel      d0, d3, d8, mi };
    }
    r1 = @selector(isHighlighted);
    asm { fdiv       d13, d0, d1 };
    r21 = objc_msgSend(r19, r1);
    r19 = UIGraphicsGetCurrentContext();
    r0 = [UIBezierPath bezierPath];
    r29 = r29;
    r20 = [r0 retain];
    if (r21 != 0x0) {
            [r20 moveToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 closePath];
            [r20 setLineCapStyle:0x1];
            [r20 setLineJoinStyle:0x1];
            CGContextSaveGState(r19);
            CGContextSetShadowWithColor(r19, r28, 0x1, r3);
            r0 = @class(UIColor);
            r0 = [r0 whiteColor];
            r0 = [r0 retain];
            [r0 setFill];
            [r0 release];
            [r20 fill];
            CGContextRestoreGState(r19);
    }
    else {
            [r20 moveToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 addLineToPoint:r2];
            [r20 closePath];
            [r20 setLineCapStyle:0x1];
            [r20 setLineJoinStyle:0x1];
            CGContextSaveGState(r19);
            CGContextSetShadowWithColor(r19, r28, 0x1, r3);
            r0 = @class(UIColor);
            r0 = [r0 whiteColor];
            r0 = [r0 retain];
            [r0 setFill];
            [r0 release];
            [r20 fill];
            CGContextRestoreGState(r19);
            r0 = [UIBezierPath bezierPath];
            r0 = [r0 retain];
            [r0 moveToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 closePath];
            [r0 setLineCapStyle:0x1];
            [r0 setLineJoinStyle:0x1];
            CGContextSaveGState(r19);
            CGContextSetShadowWithColor(r19, r28, 0x1, r3);
            r0 = [UIColor whiteColor];
            r0 = [r0 retain];
            [r0 setFill];
            [r0 release];
            [r23 fill];
            CGContextRestoreGState(r19);
            [r23 release];
    }
    [r20 release];
    return;
}

@end