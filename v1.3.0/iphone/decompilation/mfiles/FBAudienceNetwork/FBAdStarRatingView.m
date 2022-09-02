@implementation FBAdStarRatingView

-(void *)initWithRating:(void *)arg2 ratingCount:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setupViewWithRating:r19 ratingCount:r20];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_ratingCountLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_starFillViews, 0x0);
    objc_storeStrong((int64_t *)&self->_starViews, 0x0);
    return;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = self;
    [FBAdSmallIcon iconWidthAndHeight];
    v8 = v0;
    d9 = (d8 + 0x4010000000000000) * 0x4014000000000000 + 0xc010000000000000;
    r0 = [r19 ratingCountLabel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 ratingCountLabel];
            r0 = [r0 retain];
            [r0 sizeToFit];
            [r0 release];
            r0 = [r19 ratingCountLabel];
            r0 = [r0 retain];
            [r0 frame];
            [r21 release];
            r0 = [r19 ratingCountLabel];
            r0 = [r0 retain];
            CGRectGetHeight(objc_msgSend(r0, r22));
            r0 = [r19 release];
            if (d8 < d10) {
                    asm { fcsel      d8, d10, d8, mi };
            }
    }
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0xe0;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_70 super] layoutSubviews];
    [FBAdSmallIcon iconWidthAndHeight];
    r0 = [r19 bounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    var_88 = &var_90;
    CGRectGetMidY(r0);
    r0 = [r19 starViews];
    d13 = d13 + d12 * 0xbfe0000000000000;
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:&var_D0];
    [r0 release];
    r0 = [r19 ratingCountLabel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 ratingCountLabel];
            r0 = [r0 retain];
            [r0 sizeToFit];
            [r0 release];
            r0 = [r19 ratingCountLabel];
            r0 = [r0 retain];
            [r0 frame];
            r0 = [r0 release];
            CGRectGetMidY(r0);
            r0 = [r19 ratingCountLabel];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r19 release];
    }
    _Block_object_dispose(&var_90, 0x8);
    return;
}

-(void *)starViews {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_starViews)), 0x0);
    return r0;
}

-(void)setupViewWithRating:(void *)arg2 ratingCount:(void *)arg3 {
    r31 = r31 - 0x120;
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
    r29 = &var_10;
    var_C0 = self;
    r21 = [arg2 retain];
    var_108 = [arg3 retain];
    r26 = [NSMutableArray new];
    r28 = [NSMutableArray new];
    [FBAdSmallIcon iconWidthAndHeight];
    v8 = v0;
    [r21 floatValue];
    v9 = v0;
    [r21 release];
    r23 = @selector(alloc);
    asm { fcvt       d12, s9 };
    r21 = @selector(addSubview:);
    r22 = 0x5;
    d15 = 0x0;
    var_C8 = r26;
    var_B0 = r23;
    do {
            var_B8 = @selector(addObject:);
            var_E0 = @selector(initWithLeftColor:rightColor:leftPercentage:);
            var_E8 = @selector(layer);
            var_F0 = @selector(setMask:);
            var_F8 = @selector(setMasksToBounds:);
            r25 = objc_msgSend(@class(FBAdSmallIcon), r23);
            r0 = *(&@class(MCConfigurationData) + 0x700);
            r0 = [r0 colorWithUInt:r2 withAlpha:r3];
            r19 = [r0 retain];
            r27 = [r25 initWithStyle:0x6 color:r19];
            [r19 release];
            [r27 setFrame:0x6];
            objc_msgSend(var_C0, r21);
            objc_msgSend(r26, var_B8);
            asm { fmax       d0, d0, d13 };
            asm { fminnm     d11, d0, d14 };
            r19 = objc_msgSend(@class(FBAdSplitBackgroundView), var_B0);
            r0 = *(r20 + 0x700);
            r0 = objc_msgSend(r0, r23);
            r0 = [r0 retain];
            r26 = r21;
            r20 = [objc_msgSend(*(r20 + 0x700), r23) retain];
            objc_msgSend(r19, var_E0);
            [r20 release];
            r21 = r26;
            [r0 release];
            r0 = r28;
            r28 = r24;
            objc_msgSend(r0, r26);
            [objc_msgSend(r27, var_E8) retain];
            r0 = objc_msgSend(r25, var_E8);
            r0 = [r0 retain];
            objc_msgSend(r0, var_F0);
            r26 = var_C8;
            [r20 release];
            [r19 release];
            r0 = objc_msgSend(r25, var_E8);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, var_F8);
            [r19 release];
            objc_msgSend(r28, var_B8);
            r23 = var_B0;
            [r25 release];
            [r27 release];
            d15 = d15 + d14;
            r22 = r22 - 0x1;
    } while (r22 != 0x0);
    [var_C0 setStarViews:r26];
    [var_C0 setStarFillViews:r28];
    r0 = [var_108 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSNumberFormatter new];
            [r0 setUsesGroupingSeparator:0x1];
            [r0 setGroupingSeparator:@","];
            [r0 setGroupingSize:0x3];
            [[r0 stringFromNumber:r19] retain];
            r20 = objc_msgSend(@class(FBAdLabel), r23);
            r22 = [[NSString stringWithFormat:@"(%@)"] retain];
            [FBAdFont fontSizeExtraSmall];
            r25 = [[FBAdFont sfuiTextRegularWithSize:@"(%@)"] retain];
            [r20 initWithText:r22 numberOfLines:0x1 font:r25];
            [r25 release];
            [r22 release];
            objc_msgSend(var_C0, r21);
            [var_C0 setRatingCountLabel:r20];
            r26 = var_C8;
            [r20 release];
            [r24 release];
            [r21 release];
    }
    [r19 release];
    [r28 release];
    [r26 release];
    [r19 release];
    return;
}

-(void)setStarViews:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)starFillViews {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_starFillViews)), 0x0);
    return r0;
}

-(void)setStarFillViews:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)ratingCountLabel {
    r0 = self->_ratingCountLabel;
    return r0;
}

-(void)setRatingCountLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ratingCountLabel, arg2);
    return;
}

@end