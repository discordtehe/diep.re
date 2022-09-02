@implementation FBAdVideoPlayPauseButton

-(void)setHighlighted:(bool)arg2 {
    [[&var_20 super] setHighlighted:arg2];
    [self setNeedsDisplay];
    return;
}

-(void *)circleColor {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if ([self style] != 0x0) {
            r0 = [UIColor colorWithUInt:r2 withAlpha:r3];
    }
    else {
            r0 = [UIColor colorWithUInt:r2 withAlpha:r3];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)iconColor {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if ([self style] != 0x0) {
            r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
    }
    else {
            r0 = [UIColor colorWithWhite:r2 alpha:r3];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)shadowColor {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if ([self style] != 0x0) {
            r0 = [UIColor colorWithUInt:r2 withAlpha:r3];
    }
    else {
            r0 = [UIColor colorWithUInt:r2 withAlpha:r3];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(long long)style {
    r0 = self->_style;
    return r0;
}

-(void)setStyle:(long long)arg2 {
    self->_style = arg2;
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
    r0 = objc_getClass("FBAdVideoPlayPauseButton");
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

+(void *)videoPlayPauseButton {
    r0 = [FBAdVideoPlayPauseButton buttonWithType:0x0];
    r0 = [r0 retain];
    [r0 setStyle:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r26 = self;
    [self bounds];
    d8 = d2 * 0x3fe0000000000000;
    [r26 bounds];
    d9 = d3 * 0x3fe0000000000000;
    r23 = [[r26 circleColor] retain];
    r0 = [r26 iconColor];
    r29 = &var_10;
    var_A8 = [r0 retain];
    [r26 bounds];
    v10 = v2;
    [r26 bounds];
    if (d10 < d3) {
            asm { fcsel      d0, d10, d3, mi };
    }
    d10 = d0 * 0x3fe0000000000000 + 0xc01c000000000000;
    r0 = [r26 shadowColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGColorRetain([r0 CGColor]);
    [r0 release];
    r21 = UIGraphicsGetCurrentContext();
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    r24 = r0;
    [r0 addArcWithCenter:r2 radius:r3 startAngle:r4 endAngle:r5 clockwise:r6];
    CGContextSaveGState(r21);
    CGContextSetShadowWithColor(r21, r25, 0x1, r3);
    r20 = r23;
    [r23 setFill];
    [r24 fill];
    CGContextRestoreGState(r21);
    CGColorRelease(r25);
    r19 = [r26 isHighlighted];
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r29 = r29;
    r25 = [r0 retain];
    if (r19 != 0x0) {
            d12 = d10 * *0x100bf1cf0;
            r0 = [r26 style];
            d0 = 0x3fe8000000000000 * d10 * *0x100bdf948;
            if (r0 == 0x1) {
                    asm { fcsel      d13, d0, d10, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d0, d2, d12, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d12, d1, d11, eq };
            }
            [r25 moveToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 closePath];
            [r25 setLineCapStyle:0x1];
            [r25 setLineJoinStyle:0x1];
            CGContextSaveGState(r21);
            [var_A8 setFill];
            [r25 fill];
            CGContextRestoreGState(r21);
    }
    else {
            d12 = d10 * *0x100bfcbd8;
            if ([r26 style] == 0x1) {
                    asm { fcsel      d13, d0, d10, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d14, d2, d12, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d12, d1, d11, eq };
            }
            [r25 moveToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 addLineToPoint:0x1];
            [r25 closePath];
            [r25 setLineCapStyle:0x1];
            [r25 setLineJoinStyle:0x1];
            r0 = [UIBezierPath bezierPath];
            r0 = [r0 retain];
            [r0 moveToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 addLineToPoint:0x1];
            [r0 closePath];
            r20 = r20;
            [r0 setLineCapStyle:0x1];
            r24 = r24;
            [r0 setLineJoinStyle:0x1];
            CGContextSaveGState(r21);
            [var_A8 setFill];
            [r25 fill];
            [r27 fill];
            CGContextRestoreGState(r21);
            [r27 release];
    }
    [r25 release];
    [r24 release];
    [var_A8 release];
    [r20 release];
    return;
}

@end