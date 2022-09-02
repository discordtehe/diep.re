@implementation FBAdSmallIcon

-(void *)initWithStyle:(unsigned long long)arg2 color:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r22 = arg2;
    r19 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_style = r22;
            objc_storeStrong((int64_t *)&r20->_color, r21);
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r0 = [self style];
    if (r0 <= 0x3) goto loc_100a8ed24;

loc_100a8ed00:
    if (r0 > 0x5) goto loc_100a8ed48;

loc_100a8ed08:
    if (r0 == 0x4) goto loc_100a8ed64;

loc_100a8ed10:
    if (r0 != 0x5) goto .l1;

loc_100a8ed18:
    r8 = &@selector(drawGlobeRect:);
    goto loc_100a8eda4;

loc_100a8eda4:
    objc_msgSend(r19, *r8);
    return;

.l1:
    return;

loc_100a8ed64:
    r8 = &@selector(drawAppleRect:);
    goto loc_100a8eda4;

loc_100a8ed48:
    if (r0 == 0x6) goto loc_100a8ed7c;

loc_100a8ed50:
    if (r0 != 0x7) goto .l1;

loc_100a8ed58:
    r8 = &@selector(drawANLogoRect:);
    goto loc_100a8eda4;

loc_100a8ed7c:
    r8 = &@selector(drawBigStarRect:);
    goto loc_100a8eda4;

loc_100a8ed24:
    if (r0 == 0x1) goto loc_100a8ed70;

loc_100a8ed2c:
    if (r0 == 0x2) goto loc_100a8ed9c;

loc_100a8ed34:
    if (r0 != 0x3) goto .l1;

loc_100a8ed3c:
    r8 = &@selector(drawAdChoicesRect:);
    goto loc_100a8eda4;

loc_100a8ed9c:
    r8 = &@selector(drawStarRect:);
    goto loc_100a8eda4;

loc_100a8ed70:
    r8 = &@selector(drawInfoRect:);
    goto loc_100a8eda4;
}

-(void)drawInfoRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = [[self color] retain];
    r0 = @class(UIBezierPath);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 closePath];
    [r0 moveToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 closePath];
    [r19 setFill];
    [r0 fill];
    r23 = [[UIBezierPath bezierPathWithOvalInRect:r2] retain];
    [r19 setFill];
    [r23 fill];
    r24 = [[UIBezierPath bezierPathWithRoundedRect:r2 cornerRadius:r3] retain];
    [r19 setFill];
    [r24 fill];
    [r24 release];
    [r23 release];
    [r0 release];
    [r19 release];
    return;
}

-(void)drawStarRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = [[self color] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 closePath];
    [r19 setFill];
    [r0 fill];
    [r0 release];
    [r19 release];
    return;
}

-(void)drawAppleRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = [[self color] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 closePath];
    [r0 moveToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 closePath];
    [r19 setFill];
    [r0 fill];
    [r0 release];
    [r19 release];
    return;
}

-(void)drawBigStarRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = [[self color] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 closePath];
    [r19 setFill];
    [r0 fill];
    [r0 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_color, 0x0);
    return;
}

-(unsigned long long)style {
    r0 = self->_style;
    return r0;
}

-(void)setStyle:(unsigned long long)arg2 {
    self->_style = arg2;
    return;
}

-(void *)color {
    r0 = self->_color;
    return r0;
}

-(void)setColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_color, arg2);
    return;
}

-(void)drawGlobeRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = [[self color] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    [r0 moveToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addLineToPoint:r2];
    [r0 closePath];
    [r0 moveToPoint:r2];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r0 closePath];
    [r19 setFill];
    [r0 fill];
    [r0 release];
    [r19 release];
    return;
}

-(void)drawAdChoicesRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = objc_msgSend(self, *(&@selector(holderForWebView:) + 0xf90));
    [r0 retain];
    r0 = *(&@class(ADCTransitionalContainer) + 0xa60);
    r0 = objc_msgSend(r0, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa00));
    r0 = [r0 retain];
    r0 = CGRectGetMinX(r0);
    var_80 = *double_value_6_61;
    CGRectGetMinY(r0);
    var_78 = *double_value_9_86;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc10));
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_12_24;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa08))));
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc18));
    r0 = CGRectGetMinX(r0);
    var_98 = *double_value_1_76;
    CGRectGetMinY(r0);
    var_88 = *double_value_1_68;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r22)));
    var_90 = *double_value_12_32;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_2_33;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_3_05;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A0 = d0 + *double_value_4_24;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A0 = var_A0 + *double_value_3_87;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = var_A0 + *double_value_3_16;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_A0 = d0 + var_98;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_98 = *double_value_13_93;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_0_21;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_2_59;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_88 = *double_value_13_07;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_90 = d0 + *double_value_13_79;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_88 = *double_value_6_14 + var_90 + var_88;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = var_88 + *double_value_4_85;
    var_88 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = d0 + *double_value_11_26;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    var_88 = *double_value_8_68;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_5_73;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_7_84;
    var_A0 = d1;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_90 = *double_value_8_22;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_98 = d0 + var_80;
    r0 = CGRectGetMinY(r0);
    d0 = var_88 + d0 + var_80;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa10));
    r0 = CGRectGetMinX(r0);
    var_80 = *double_value_6_59;
    CGRectGetMinY(r0);
    var_78 = *double_value_6_35;
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_5_71;
    var_90 = d1;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_A0 = *double_value_6_81;
    r0 = CGRectGetMinX(r0);
    var_88 = *double_value_6_19;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = *double_value_4_83 + d0 + d1;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    var_98 = *double_value_5_22;
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    var_A0 = d0 + var_90;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_90 = *double_value_5_79;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_98 = var_A0 + var_80;
    r0 = CGRectGetMinY(r0);
    d0 = 0x4019000000000000 + var_A0 + var_80;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r24);
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa18));
    objc_msgSend(r19, *(&@selector(_initOpenAL) + 0x9f8));
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa20));
    [r20 release];
    [r19 release];
    return;
}

+(double)iconWidthAndHeight {
    r0 = self;
    return r0;
}

-(void)drawANLogoRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[self color] retain];
    r0 = [UIBezierPath bezierPath];
    r0 = [r0 retain];
    CGRectGetMinY(CGRectGetMinX(r0));
    CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addLineToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    CGRectGetMinY(CGRectGetMinX([r20 closePath]));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 moveToPoint:r2]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX([r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4]))))));
    r0 = [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(CGRectGetMinX(r0))));
    [r20 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    [r20 closePath];
    [r20 setUsesEvenOddFillRule:0x1];
    [r19 setFill];
    [r20 fill];
    [r20 release];
    [r19 release];
    return;
}

@end