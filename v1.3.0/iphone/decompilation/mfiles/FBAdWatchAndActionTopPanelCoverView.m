@implementation FBAdWatchAndActionTopPanelCoverView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupViewsWithLogoImage:0x0 mainTitle:0x0 subtitle:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithLogo:(void *)arg2 mainTitle:(void *)arg3 subtitle:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setupViewsWithLogoImage:r19 mainTitle:r20 subtitle:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setupViewsWithLogoImage:(void *)arg2 mainTitle:(void *)arg3 subtitle:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    if (r19 != 0x0) {
            [r21 setupLogoViewWithAdImage:r19];
    }
    if (r20 != 0x0) {
            [r21 setupTitleViewWithTitle:r20];
    }
    if (r22 != 0x0) {
            [r21 setupSubtitleViewWithSubtitle:r22];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setupLogoViewWithAdImage:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 logoImageView];
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    [r22 removeFromSuperview];
                    objc_storeWeak((int64_t *)&r20->_logoImageView, 0x0);
            }
            r21 = [UIImageView new];
            [r22 release];
            [r20 addSubview:r21];
            objc_storeWeak((int64_t *)&r20->_logoImageView, r21);
            objc_initWeak(&stack[-72], r20);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r19 loadImageAsyncWithBlock:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
            [r21 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_subtitleView);
    objc_destroyWeak((int64_t *)&self->_titleView);
    objc_destroyWeak((int64_t *)&self->_logoImageView);
    return;
}

-(void)setupTitleViewWithTitle:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 titleView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 removeFromSuperview];
            objc_storeWeak((int64_t *)&r19->_titleView, 0x0);
    }
    r20 = [UILabel new];
    [r22 release];
    [r20 setText:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setTextColor:r21];
    [r21 release];
    r21 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
    [r20 setFont:r21];
    [r21 release];
    [r20 setNumberOfLines:0x1];
    [r19 addSubview:r20];
    objc_storeWeak((int64_t *)&r19->_titleView, r20);
    [r20 release];
    return;
}

-(void)setupSubtitleViewWithSubtitle:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 subtitleView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            [r0 removeFromSuperview];
            [r20 release];
    }
    r0 = [UILabel new];
    [r0 setText:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r0 setTextColor:r21];
    [r21 release];
    r21 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
    [r0 setFont:r21];
    [r21 release];
    [r0 setNumberOfLines:0x1];
    [r19 addSubview:r0];
    objc_storeWeak((int64_t *)&r19->_subtitleView, r0);
    [r20 release];
    return;
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
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r19 = [[self logoImageView] retain];
    r20 = [[self titleView] retain];
    r0 = [self subtitleView];
    r0 = [r0 retain];
    r21 = r0;
    if (r19 != 0x0) {
            CGRectGetHeight(r0);
            d0 = 0x404c000000000000;
            [r19 setFrame:r2];
            r0 = [r19 frame];
            r0 = CGRectGetMaxX(r0);
    }
    if (r20 != 0x0) {
            [r20 setFrame:r2];
            r0 = [r20 sizeToFit];
    }
    if (r21 != 0x0) {
            CGRectGetHeight(r0);
            [r21 setFrame:r2];
            [r21 sizeToFit];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)logoImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logoImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLogoImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logoImageView, arg2);
    return;
}

-(void *)titleView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleView, arg2);
    return;
}

-(void *)subtitleView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_subtitleView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSubtitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_subtitleView, arg2);
    return;
}

@end