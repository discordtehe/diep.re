@implementation FBAdReportingOptionCollectionViewCell

-(void)setOptionTitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_optionTitle, arg2);
    r19 = [arg2 retain];
    [self setNeedsLayout];
    [r19 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_50 super] layoutSubviews];
    if ([r19 isSelected] != 0x0) {
            r0 = [r19 selectedBackgroundColor];
            r29 = r29;
            r21 = [r0 retain];
            r24 = 0x0;
            r23 = 0x1;
    }
    else {
            r0 = [r19 unselectedBackgroundColor];
            r29 = r29;
            r21 = [r0 retain];
            r23 = 0x0;
            r24 = 0x1;
    }
    r0 = [r19 contentView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setBackgroundColor:r21];
    [r0 release];
    if (r24 != 0x0) {
            [r21 release];
    }
    if (r23 != 0x0) {
            [r21 release];
    }
    r0 = [r19 contentView];
    r0 = [r0 retain];
    CGRectGetHeight([r0 frame]);
    r0 = [r19 contentView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = [r19 contentView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    [r20 release];
    r20 = [[r19 optionTitleLabel] retain];
    r19 = [[r19 optionTitle] retain];
    [r20 setText:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)unselectedBackgroundColor {
    r0 = [UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

-(void *)unselectedTextColor {
    r0 = [UIColor colorWithUInt:0x616671 withAlpha:r3];
    return r0;
}

-(void)setSelected:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (arg2 != 0x0) {
            r20 = [[r19 selectedBackgroundColor] retain];
            r0 = [r19 contentView];
            r0 = [r0 retain];
            [r0 setBackgroundColor:r20];
            [r0 release];
            [r20 release];
            r20 = [[r19 selectedTextColor] retain];
            r0 = [r19 optionTitleLabel];
    }
    else {
            r20 = [[r19 unselectedBackgroundColor] retain];
            r0 = [r19 contentView];
            r0 = [r0 retain];
            [r0 setBackgroundColor:r20];
            [r0 release];
            [r20 release];
            r20 = [[r19 unselectedTextColor] retain];
            r0 = [r19 optionTitleLabel];
    }
    r0 = [r0 retain];
    [r0 setTextColor:r2];
    [r19 release];
    [r20 release];
    return;
}

-(void *)selectedBackgroundColor {
    r0 = [UIColor colorWithUInt:0x3578e5 withAlpha:r3];
    return r0;
}

-(void *)selectedTextColor {
    r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
    return r0;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r20 = [[self optionTitle] retain];
    r0 = [self optionTitleLabel];
    r0 = [r0 retain];
    [r0 setText:r20];
    [r0 release];
    [r20 release];
    r0 = [self optionTitleLabel];
    r0 = [r0 retain];
    [r0 sizeThatFits:r20];
    r0 = [r0 release];
    return r0;
}

-(void *)optionTitleLabel {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_optionTitleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r22 release];
            r22 = [[r21 unselectedTextColor] retain];
            [r20 setTextColor:r22];
            [r22 release];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r2 = r22;
            [r20 setBackgroundColor:r2];
            [r22 release];
            r22 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
            [r20 setFont:r2];
            [r22 release];
            r0 = [r21 contentView];
            r0 = [r0 retain];
            CGRectInset([r0 bounds], @selector(bounds), r22);
            [r20 setFrame:r2];
            [r23 release];
            [r20 setTextAlignment:0x1];
            [r20 setNumberOfLines:0x0];
            r0 = [r21 contentView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            objc_storeStrong(r19, r20);
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_optionTitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_optionTitle, 0x0);
    return;
}

-(void *)optionTitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_optionTitle)), 0x0);
    return r0;
}

-(void)setOptionTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_optionTitleLabel, arg2);
    return;
}

+(void *)reuseId {
    objc_retainAutorelease(@"fb_ad_reporting_option_cell");
    return @"fb_ad_reporting_option_cell";
}

@end