@implementation FBAdDetailsVerticalView

-(void *)init {
    r0 = [self initWithTitle:0x0 subtitle:0x0 iconURL:0x0 iconStyle:0x0];
    return r0;
}

-(void)setupSubtitleViewWithText:(void *)arg2 fontSize:(double)arg3 {
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
    r0 = [r19 subtitleLabel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 removeFromSuperview];
            r2 = 0x0;
            [r19 setSubtitleLabel:r2];
    }
    r23 = [FBAdLabel alloc];
    r24 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
    [r23 initWithText:r20 numberOfLines:0x3 font:r24];
    [r20 release];
    [r22 release];
    [r24 release];
    [r19 addSubview:r2];
    [r19 setSubtitleLabel:r2];
    [r23 release];
    return;
}

-(void)setupTitleViewWithText:(void *)arg2 fontSize:(double)arg3 {
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

-(void *)initWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 iconStyle:(unsigned long long)arg5 {
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
    r23 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r22->_iconStyle = r23;
            if (r21 != 0x0) {
                    [r22 setupIconViewWithIconUrl:r21];
            }
            if (r19 != 0x0) {
                    r25 = [r19 retain];
                    [FBAdFont fontSizeMedium];
                    [r22 setupTitleViewWithText:r25 fontSize:r3];
                    [r25 release];
            }
            if (r20 != 0x0) {
                    r25 = [r20 retain];
                    [FBAdFont fontSizeSmall];
                    [r22 setupSubtitleViewWithText:r25 fontSize:r3];
                    [r25 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setupIconViewWithIconUrl:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r23 = [r20 iconStyle];
    r0 = [r21 layer];
    r0 = [r0 retain];
    r22 = r0;
    if (r23 == 0x1) {
            asm { fcsel      d0, d0, d1, eq };
    }
    [r0 setCornerRadius:0x1];
    [r22 release];
    [r20 addSubview:r21];
    [r20 setIconView:r2];
    var_38 = r21;
    r21 = [r21 retain];
    [FBAdUtility loadRemoteImageWithURL:r19 withBlock:&var_58];
    [r19 release];
    [var_38 release];
    [r21 release];
    return;
}

-(void).cxx_destruct {
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

-(void)layoutSubviews {
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
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
    [self bounds];
    v8 = v2;
    r19 = [[self iconView] retain];
    r20 = [[self subtitleLabel] retain];
    r21 = [[self titleLabel] retain];
    d0 = 0xc040000000000000;
    d8 = d8 + d0;
    if (r19 != 0x0) {
            d9 = 0x4052000000000000;
            [r19 setFrame:r2];
            d0 = 0x4056000000000000;
            if ((r20 | r21) != 0x0) {
                    asm { fcsel      d9, d0, d9, ne };
            }
    }
    else {
            d9 = 0x0;
    }
    if (r21 != 0x0) {
            [r21 sizeThatFits:r2];
            v1 = v9;
            [r21 setFrame:r2];
            d9 = d9 + d10;
    }
    if (r20 != 0x0) {
            d0 = d9 + 0x4010000000000000;
            if (r21 != 0x0) {
                    asm { fcsel      d9, d0, d9, ne };
            }
            [r20 sizeThatFits:r2];
            [r20 setFrame:r2];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [[self iconView] retain];
    r20 = [[self subtitleLabel] retain];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    r21 = r0;
    if (r19 != 0x0) {
            asm { fcsel      d9, d0, d1, ne };
    }
    if (r0 != 0x0) {
            [r21 sizeThatFits:r2];
            d9 = d9 + 0x0;
    }
    if (r20 != 0x0) {
            [r20 sizeThatFits:r2];
            d9 = d9 + 0x0;
    }
    if ((r20 | r21) != 0x0) {
            asm { ccmp       x19, #0x0, #0x4, ne };
    }
    d0 = d9 + 0x4030000000000000;
    if (CPU_FLAGS & NE) {
            asm { fcsel      d0, d0, d9, ne };
    }
    if (r21 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d9, d1, d0, ne };
    }
    [r21 release];
    [r20 release];
    r0 = [r19 release];
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

-(void *)titleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleLabel, arg2);
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