@implementation FBAdDetailsView

-(void *)init {
    r0 = [self initWithTitle:0x0 subtitle:0x0 iconURL:0x0 ratingValue:0x0 ratingCount:0x0 style:0x0 iconStyle:0x0];
    return r0;
}

-(void *)initWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 ratingValue:(void *)arg5 ratingCount:(void *)arg6 style:(unsigned long long)arg7 iconStyle:(unsigned long long)arg8 {
    var_0 = arg8;
    r31 = r31 - 0x60;
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
    r23 = arg7;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r25 = [arg6 retain];
    r0 = [[&var_50 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            r24->_style = r23;
            r24->_iconStyle = var_0;
            if (r23 != 0x1) {
                    if (r23 == 0x0) {
                            [r24 setupViewWithTitle:r19 subtitle:r20 iconURL:r21];
                    }
            }
            else {
                    [r24 setupViewWithTitle:r19 iconURL:r21 ratingValue:r22 ratingCount:r25];
            }
    }
    [r25 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)setupViewWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r21 setupIconViewWithIconUrl:r22];
    }
    if (r20 != 0x0) {
            r23 = [FBAdLabel alloc];
            r24 = @class(FBAdFont);
            [r24 fontSizeSmall];
            r24 = [[r24 sfuiTextRegularWithSize:r2] retain];
            r23 = [r23 initWithText:r20 numberOfLines:0x3 font:r24];
            [r24 release];
            [r21 addSubview:r23];
            [r21 setSubtitleLabel:r23];
            [r23 release];
    }
    if (r19 != 0x0) {
            r25 = [r19 retain];
            [FBAdFont fontSizeLarge];
            [r21 setupTitleViewWithTitle:r25 fontSize:r3];
            [r25 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setupViewWithTitle:(void *)arg2 iconURL:(void *)arg3 ratingValue:(void *)arg4 ratingCount:(void *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [arg5 retain];
    if (r20 != 0x0) {
            [r21 setupIconViewWithIconUrl:r20];
    }
    if (r19 != 0x0) {
            r26 = [r19 retain];
            [FBAdFont fontSizeMedium];
            [r21 setupTitleViewWithTitle:r26 fontSize:r3];
            [r26 release];
    }
    if (r22 != 0x0) {
            [r21 setupRatingViewWithValue:r22 ratingCount:r23];
    }
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setupRatingViewWithValue:(void *)arg2 ratingCount:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r19 starRatingView];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 removeFromSuperview];
            [r19 setStarRatingView:r2];
    }
    [[FBAdStarRatingView alloc] initWithRating:r20 ratingCount:r21];
    [r21 release];
    [r20 release];
    [r22 release];
    [r19 addSubview:r2];
    [r19 setStarRatingView:r2];
    [r24 release];
    return;
}

-(void)setupTitleViewWithTitle:(void *)arg2 fontSize:(double)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 titleLabel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 removeFromSuperview];
            r2 = 0x0;
            [r19 setTitleLabel:r2];
    }
    r23 = [FBAdLabel alloc];
    r24 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
    [r23 initWithText:r20 numberOfLines:0x2 font:r24];
    [r20 release];
    [r22 release];
    [r24 release];
    [r19 addSubview:r2];
    [r19 setTitleLabel:r2];
    [r23 release];
    return;
}

-(void)setupIconViewWithIconUrl:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 iconView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 removeFromSuperview];
            [r20 setIconView:r2];
    }
    r21 = [UIImageView new];
    [r22 release];
    r0 = [r21 layer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    if ([r20 iconStyle] == 0x1) {
            [r20 iconSize];
            r0 = [r21 layer];
    }
    else {
            [r20 cornerRadius];
            v8 = v0;
            r0 = [r21 layer];
    }
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    [r20 addSubview:r21];
    [r20 setIconView:r2];
    var_48 = r21;
    r21 = [r21 retain];
    [FBAdUtility loadRemoteImageWithURL:r19 withBlock:&var_68];
    [r19 release];
    [var_48 release];
    [r21 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] layoutSubviews];
    r8 = &@selector(defaultLayoutSubviews);
    if ([r19 style] == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(defaultLayoutSubviews);
            }
            else {
                    r8 = &@selector(detailedLayoutSubviews);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(struct CGSize)intrinsicContentSize {
    [self bounds];
    r0 = [self sizeThatFits:r2];
    return r0;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self calculateHeightForWidth:r2];
    return r0;
}

-(void)defaultLayoutSubviews {
    r31 = r31 - 0x90;
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
    r22 = self;
    [self bounds];
    v8 = v0;
    var_70 = d3;
    stack[-120] = d1;
    v10 = v2;
    r19 = [[r22 iconView] retain];
    r20 = [[r22 subtitleLabel] retain];
    r21 = [[r22 titleLabel] retain];
    r0 = [r22 iconSize];
    v13 = v0;
    if (r19 != 0x0) {
            r0 = [r22 iconMargin];
            d12 = d13 + d0;
    }
    else {
            d12 = 0x0;
    }
    d0 = d10 - d12;
    r8 = *_CGSizeZero;
    asm { fmin       d11, d0, d1 };
    d15 = *(int128_t *)(r8 + 0x8);
    v9 = v15;
    if (r20 != 0x0) {
            r0 = [r20 sizeThatFits:r2];
            v9 = v1;
    }
    var_78 = d0;
    if (r21 != 0x0) {
            r0 = [r21 sizeThatFits:r2];
            v14 = v11;
            v15 = v1;
    }
    CGRectGetHeight(r0);
    d11 = d0 - d15 - d9;
    if (r19 != 0x0) {
            [r19 setFrame:r2];
    }
    d11 = d11 * 0x3fe0000000000000;
    if (r21 != 0x0) {
            [r21 setFrame:r2];
    }
    if (r20 != 0x0) {
            [r20 setFrame:r2];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)detailedLayoutSubviews {
    r31 = r31 - 0x90;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
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
    r22 = self;
    [self bounds];
    v10 = v2;
    r19 = [[r22 iconView] retain];
    r20 = [[r22 titleLabel] retain];
    r21 = [[r22 starRatingView] retain];
    [r22 iconSize];
    v8 = v0;
    if (r19 != 0x0) {
            [r22 iconMargin];
            d0 = d8 + d0;
    }
    else {
            d0 = 0x0;
    }
    var_78 = d0;
    d11 = *(int128_t *)(*_CGSizeZero + 0x8);
    v12 = v10;
    v13 = v11;
    if (r21 != 0x0) {
            [r21 sizeThatFits:r2];
            v12 = v14;
            v13 = v1;
    }
    if (r20 != 0x0) {
            [r20 sizeThatFits:r2];
            v10 = v14;
            v11 = v1;
    }
    [r22 calculateHeightForWidth:r2];
    d0 = d0 - d11;
    if (r21 != 0x0) {
            [r21 setFrame:r2];
            if (r19 != 0x0) {
                    if (d15 > d8) {
                            asm { fcsel      d1, d1, d0, gt };
                    }
                    [r19 setFrame:r2];
            }
    }
    else {
            if (r19 != 0x0) {
                    if (d15 > d8) {
                            asm { fcsel      d1, d1, d0, gt };
                    }
                    [r19 setFrame:r2];
            }
    }
    if (r20 != 0x0) {
            [r20 setFrame:r2];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(double)iconSize {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self style];
    if (r0 == 0x1) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

-(double)iconMargin {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self style];
    if (r0 == 0x1) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

-(double)cornerRadius {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self style];
    if (r0 == 0x1) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

-(double)calculateHeightForWidth:(double)arg2 {
    r2 = arg2;
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    v9 = v0;
    r23 = self;
    r19 = [[self iconView] retain];
    r20 = [[r23 subtitleLabel] retain];
    r21 = [[r23 titleLabel] retain];
    r22 = [[r23 starRatingView] retain];
    d11 = 0x0;
    d0 = 0x0;
    if (r19 != 0x0) {
            [r23 iconSize];
            v8 = v0;
            [r23 iconSize];
            [r23 iconMargin];
            d0 = d10 + 0x0;
    }
    asm { fmin       d9, d0, d1 };
    r0 = [r23 style];
    if (r20 != 0x0 && r0 == 0x0) {
            [r20 sizeThatFits:r2];
            d11 = 0x7fefffffffffffff;
    }
    r0 = [r23 style];
    if (r22 != 0x0 && r0 == 0x1) {
            [r22 sizeThatFits:r2];
            d11 = d11 + 0xbff7ffffffffffff;
    }
    if (r21 != 0x0) {
            [r21 sizeThatFits:r2];
            d11 = d11 + 0x7fefffffffffffff;
    }
    if (0x0 < d11) {
            asm { fcsel      d8, d11, d8, mi };
    }
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_starRatingView);
    objc_destroyWeak((int64_t *)&self->_titleLabel);
    objc_destroyWeak((int64_t *)&self->_subtitleLabel);
    objc_destroyWeak((int64_t *)&self->_iconView);
    return;
}

-(void *)iconView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconView, arg2);
    return;
}

-(void *)subtitleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_subtitleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSubtitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_subtitleLabel, arg2);
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void *)titleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)starRatingView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_starRatingView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setStarRatingView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_starRatingView, arg2);
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

-(unsigned long long)iconStyle {
    r0 = self->_iconStyle;
    return r0;
}

-(void)setIconStyle:(unsigned long long)arg2 {
    self->_iconStyle = arg2;
    return;
}

@end