@implementation FBPlayableIntroScreenView

-(void)setupAdDetailsView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_adDetailsView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UIView new];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    [r21 release];
    return;
}

-(void)setupTitleView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_titleView;
    r0 = objc_loadWeakRetained(r19);
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 title];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r23 = [FBAdLabel alloc];
            r0 = [r20 nativeAdDataModel];
            r0 = [r0 retain];
            r22 = [[r0 title] retain];
            [FBAdFont fontSizeLarge];
            r24 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
            [r23 initWithText:r22 numberOfLines:0x2 font:r24];
            [r24 release];
            [r22 release];
            [r0 release];
            r0 = [r20 adDetailsView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
            objc_storeWeak(r19, r23);
            [r23 release];
    }
    return;
}

-(void)setupSubtitleView {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_subtitleView;
    r0 = objc_loadWeakRetained(r19);
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 subtitle];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r23 = [FBAdLabel alloc];
            r0 = [r20 nativeAdDataModel];
            r0 = [r0 retain];
            r22 = [[r0 subtitle] retain];
            [FBAdFont fontSizeSmall];
            r24 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
            [r23 initWithText:r22 numberOfLines:0x3 font:r24];
            [r24 release];
            [r22 release];
            [r0 release];
            r0 = [r20 adDetailsView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
            objc_storeWeak(r19, r23);
            [r23 release];
    }
    return;
}

-(void)setupGameplayView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_gameplayView;
    r0 = objc_loadWeakRetained(r19);
    r20 = r0;
    if (r0 == 0x0) {
            r20 = [UIView new];
            r0 = [r21 adDetailsView];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r21];
            [r0 release];
            objc_storeWeak(r19, r20);
    }
    [r20 release];
    return;
}

-(void)setupIconView {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self nativeAdDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 iconURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            var_58 = &var_60;
            r22 = (int64_t *)&r19->_iconView;
            var_38 = objc_loadWeakRetained(r22);
            if (*(var_58 + 0x28) == 0x0) {
                    r0 = [UIImageView new];
                    r8 = *(var_58 + 0x28);
                    *(var_58 + 0x28) = r0;
                    [r8 release];
                    r0 = [r19 adDetailsView];
                    r0 = [r0 retain];
                    [r0 addSubview:*(var_58 + 0x28)];
                    [r0 release];
                    r0 = *(var_58 + 0x28);
                    r0 = [r0 layer];
                    r0 = [r0 retain];
                    [r0 setMasksToBounds:0x1];
                    [r0 release];
                    r0 = *(var_58 + 0x28);
                    r0 = [r0 layer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setCornerRadius:0x1];
                    [r0 release];
                    objc_storeWeak(r22, *(var_58 + 0x28));
            }
            r0 = [r19 nativeAdDataModel];
            r0 = [r0 retain];
            r20 = [[r0 iconURL] retain];
            [FBAdUtility loadRemoteImageWithURL:r20 withBlock:&var_88];
            [r20 release];
            [r0 release];
            _Block_object_dispose(&var_60, 0x8);
            [var_38 release];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r19->_iconView);
            [r0 removeFromSuperview];
            [r19 release];
    }
    return;
}

-(void)setNativeAdDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdDataModel, arg2);
    r19 = [arg2 retain];
    [self initView];
    [r19 release];
    return;
}

-(void)setupGameplayIconView {
    r31 = r31 - 0xb0;
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
    r20 = self;
    r0 = [self nativeAdDataModel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 playableAdDataModel];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 introCardIconURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 != 0x0) {
            var_68 = &var_70;
            r23 = (int64_t *)&r20->_gameplayIconView;
            var_48 = objc_loadWeakRetained(r23);
            if (*(var_68 + 0x28) == 0x0) {
                    r0 = [UIImageView new];
                    r8 = *(var_68 + 0x28);
                    *(var_68 + 0x28) = r0;
                    [r8 release];
                    r0 = [r20 gameplayView];
                    r0 = [r0 retain];
                    [r0 addSubview:*(var_68 + 0x28)];
                    [r0 release];
                    r0 = *(var_68 + 0x28);
                    r0 = [r0 layer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setMasksToBounds:0x1];
                    [r0 release];
                    objc_storeWeak(r23, *(var_68 + 0x28));
            }
            r0 = [r20 nativeAdDataModel];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 playableAdDataModel];
            r0 = [r0 retain];
            r19 = [[r0 introCardIconURL] retain];
            [r0 release];
            [r20 release];
            [FBAdUtility loadRemoteImageWithURL:r19 withBlock:&var_98];
            [r19 release];
            _Block_object_dispose(&var_70, 0x8);
            [var_48 release];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_gameplayIconView);
            [r0 removeFromSuperview];
            [r19 release];
    }
    return;
}

-(void)initView {
    [self setupAdDetailsView];
    [self setupGameplayView];
    [self setupIconView];
    [self setupTitleView];
    [self setupSubtitleView];
    [self setupGameplayIconView];
    [self setupGameplayTextView];
    return;
}

-(void)setupGameplayTextView {
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
    r20 = self;
    r19 = (int64_t *)&self->_gameplayTextView;
    r0 = objc_loadWeakRetained(r19);
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 playableAdDataModel];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 localizedIntroCardPlayText];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r24 release];
    if (r0 != 0x0) {
            r24 = [FBAdLabel alloc];
            r0 = [r20 nativeAdDataModel];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 playableAdDataModel];
            r0 = [r0 retain];
            r23 = [[r0 localizedIntroCardPlayText] retain];
            [FBAdFont fontSizeExtraSmall];
            r25 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
            [r24 initWithText:r23 numberOfLines:0x1 font:r25];
            [r25 release];
            [r23 release];
            [r0 release];
            [r21 release];
            r0 = [r20 gameplayView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
            objc_storeWeak(r19, r24);
            [r24 release];
    }
    return;
}

-(void *)initWithAdData:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setNativeAdDataModel:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setFrameOnShow:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setFrame:r2];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_titleView);
    objc_destroyWeak((int64_t *)&self->_subtitleView);
    objc_storeStrong((int64_t *)&self->_nativeAdDataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_gameplayTextView);
    objc_destroyWeak((int64_t *)&self->_gameplayIconView);
    objc_destroyWeak((int64_t *)&self->_gameplayView);
    objc_destroyWeak((int64_t *)&self->_adDetailsView);
    return;
}

-(void *)adDetailsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adDetailsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdDetailsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDetailsView, arg2);
    return;
}

-(void *)gameplayView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_gameplayView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setGameplayView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_gameplayView, arg2);
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0xb0;
    var_90 = d15;
    stack[-136] = d14;
    var_80 = d13;
    stack[-120] = d12;
    var_70 = d11;
    stack[-104] = d10;
    var_60 = d9;
    stack[-88] = d8;
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
    [self bounds];
    var_98 = d3;
    sub_100aabe74();
    v11 = v1;
    v10 = v3;
    r19 = [[UIColor colorWithUInt:0x23272e withAlpha:r3] retain];
    [self setBackgroundColor:r19];
    [r19 release];
    r19 = [[self adDetailsView] retain];
    r20 = [[self iconView] retain];
    r21 = [[self subtitleView] retain];
    r22 = [[self titleView] retain];
    r23 = [[self gameplayView] retain];
    r24 = [[self gameplayIconView] retain];
    r25 = [[self gameplayTextView] retain];
    d1 = 0x4030000000000000;
    asm { fmaxnm     d0, d11, d1 };
    var_A8 = d0;
    d0 = d9 - d0;
    asm { fmaxnm     d1, d10, d1 };
    d11 = d0 - d1;
    d13 = *(int128_t *)*_CGSizeZero;
    v0 = v13;
    v12 = v10;
    if (r21 != 0x0) {
            v0 = v11;
            [r21 sizeThatFits:r2];
            v12 = v1;
    }
    var_A0 = d0;
    v9 = v13;
    v14 = v10;
    if (r22 != 0x0) {
            v0 = v11;
            [r22 sizeThatFits:r2];
            v9 = v0;
            v14 = v1;
    }
    if (r25 != 0x0) {
            [r25 sizeThatFits:r2];
            v13 = v0;
            v10 = v1;
    }
    if (r19 != 0x0) {
            v2 = v11;
            [r19 setFrame:r2];
    }
    if (r20 != 0x0) {
            [r20 setFrame:r2];
    }
    if (r22 != 0x0) {
            v2 = v9;
            [r22 setFrame:r2];
    }
    d9 = d14 + 0x8066000000000000;
    if (r21 != 0x0) {
            [r21 setFrame:r2];
    }
    if (r23 != 0x0) {
            [r23 setFrame:r2];
    }
    if (r24 != 0x0) {
            [r24 setFrame:r2];
    }
    if (r25 != 0x0) {
            [r25 setFrame:r2];
    }
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)gameplayIconView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_gameplayIconView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setGameplayIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_gameplayIconView, arg2);
    return;
}

-(void *)gameplayTextView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_gameplayTextView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setGameplayTextView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_gameplayTextView, arg2);
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

-(void *)nativeAdDataModel {
    r0 = self->_nativeAdDataModel;
    return r0;
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

-(void *)titleView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleView, arg2);
    return;
}

@end