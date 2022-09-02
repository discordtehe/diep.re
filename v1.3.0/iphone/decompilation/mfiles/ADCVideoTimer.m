@implementation ADCVideoTimer

-(void)update:(double)arg2 withTotal:(double)arg3 {
    r19 = self;
    d2 = 0x3ff0000000000000;
    asm { fmaxnm     d3, d1, d2 };
    asm { fdiv       d3, d0, d3 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_progress));
    asm { fmin       d2, d3, d2 };
    asm { fmaxnm     d2, d2, d3 };
    *(r19 + r8) = d2;
    asm { frinta     d0, d0 };
    asm { fmaxnm     d0, d0, d3 };
    asm { fcvtzs     w8, d0 };
    r20 = r19->_label;
    r21 = [[NSString stringWithFormat:r2] retain];
    [r20 setText:r21];
    [r21 release];
    [r19 setNeedsDisplay];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_60 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setClipsToBounds:0x0];
            r0 = [ADCShadowedLabel alloc];
            r0 = [r0 init];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_label));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r22 = *(r19 + r25);
            r23 = [[UIColor clearColor] retain];
            [r22 setBackgroundColor:r23];
            [r23 release];
            [*(r19 + r25) setOpaque:0x0];
            r23 = *(r19 + r25);
            r24 = [[UIColor colorWithRed:0x0 green:r3 blue:r4 alpha:r5] retain];
            [r23 setTextColor:r24];
            [r24 release];
            [*(r19 + r25) setTextAlignment:0x1];
            r23 = *(r19 + r25);
            r24 = [[UIFont fontWithName:@"Helvetica" size:r3] retain];
            [r23 setFont:r24];
            [r24 release];
            r20 = [[UIColor clearColor] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
            [r19 setOpaque:0x0];
            [*(r19 + r25) setFrame:0x0];
            [r19 addSubview:r2];
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(r0);
    CGContextAddArc(r19, 0x0, r2, r3, r4, r5, r6);
    CGContextSetLineWidth(r19, 0x0);
    r0 = @class(UIColor);
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGContextSetStrokeColor(r19, CGColorGetComponents([r0 CGColor]));
    [r21 release];
    r0 = @class(UIColor);
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGContextSetShadowWithColor(r19, [r0 CGColor], r2, r3);
    [r20 release];
    CGContextStrokePath(r19);
    CGContextRestoreGState(r19);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_label, 0x0);
    return;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCVideoTimer dealloc]" line:0x56 withFormat:@"dealloc called on ADCVideoTimer"];
    [[&var_20 super] dealloc];
    return;
}

@end