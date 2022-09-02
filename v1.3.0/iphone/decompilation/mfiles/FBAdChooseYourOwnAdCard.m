@implementation FBAdChooseYourOwnAdCard

-(void *)initWithDelegate:(void *)arg2 imageUrl:(void *)arg3 iconUrl:(void *)arg4 iconStyle:(unsigned long long)arg5 adOptionsIconStyle:(unsigned long long)arg6 smallIconStyle:(unsigned long long)arg7 title:(void *)arg8 firstSubtitle:(void *)arg9 secondSubtitle:(void *)arg10 playIconOnTopInLandscape:(bool)arg11 {
    var_24 = arg11;
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r25 = arg7;
    r24 = arg6;
    r23 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg8 retain];
    r26 = [arg9 retain];
    r28 = [arg10 retain];
    r0 = [[&var_60 super] init];
    r27 = r0;
    if (r0 != 0x0) {
            r27->_smallIconStyle = r25;
            r27->_adOptionsIconStyle = r24;
            r27->_iconStyle = r23;
            objc_storeWeak((int64_t *)&r27->_delegate, r19);
            *(int8_t *)(int64_t *)&r27->_playIconOnTopInLandscape = var_24;
            [r27 setupViewWithImageUrl:r20 iconUrl:r21 title:r22 firstSubtitle:r26 secondSubtitle:r28];
    }
    [r28 release];
    [r26 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r27;
    return r0;
}

-(void *)titleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_titleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setTextColor:r21];
            [r21 release];
            r21 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
            [r20 setFont:r21];
            [r21 release];
            [r20 setTextAlignment:0x0];
            [r20 setNumberOfLines:0x2];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)imageView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_imageView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UIImageView new];
            [r21 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x1];
            [r0 release];
            r21 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
            [r20 setContentMode:0x2];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)gradientView {
    r31 = r31 - 0x70;
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
    r19 = (int64_t *)&self->_gradientView;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r23 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            r25 = [[NSArray arrayWithObjects:&var_58 count:0x2] retain];
            r24 = [[UIColor colorWithUInt:0xffffff withAlpha:0x2] retain];
            r22 = [FBGradientView newWithColors:r25 locations:0x0 startPoint:r24 endPoint:r5 backgroundColor:r6 opacity:r7];
            [r20 release];
            [r24 release];
            [r25 release];
            [r23 release];
            [r21 release];
            objc_storeStrong(r19, r22);
            r20 = r22;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)iconImageView {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_iconImageView;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UIImageView new];
            [r22 release];
            if ([r21 iconStyle] == 0x1) {
                    asm { fcsel      d8, d1, d0, eq };
            }
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x1];
            [r0 release];
            [r20 setContentMode:0x1];
            objc_storeStrong(r19, r20);
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)playIcon {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_playIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdPlayIcon new];
            [r20 release];
            [r21 setUserInteractionEnabled:0x0];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setBackgroundColor:r20];
            [r20 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)playIconShadowView {
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
    r19 = (int64_t *)&self->_playIconShadowView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UIView new];
            [r21 release];
            [r20 setUserInteractionEnabled:0x0];
            r21 = [[UIColor colorWithUInt:0x23272e withAlpha:r3] retain];
            [r20 setBackgroundColor:r21];
            [r21 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r21];
            [r0 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r22 = r0;
            r23 = [r0 CGColor];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowColor:r23];
            [r0 release];
            [r22 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowOffset:r23];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowRadius:r23];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:r23];
            [r0 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)infoIcon {
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
    r19 = (int64_t *)&self->_infoIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r22 = [FBAdSmallIcon alloc];
            r21 = [r21 adOptionsIconStyle];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r21 = [r22 initWithStyle:r21 color:r23];
            [r20 release];
            [r23 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adChoicesIcon {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_adChoicesIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdSmallIcon alloc];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r21 = [r21 initWithStyle:0x3 color:r22];
            [r20 release];
            [r22 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)leftIcon {
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
    r19 = (int64_t *)&self->_leftIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r22 = [FBAdSmallIcon alloc];
            r21 = [r21 smallIconStyle];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r21 = [r22 initWithStyle:r21 color:r23];
            [r20 release];
            [r23 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)firstSubtitleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_firstSubtitleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setTextColor:r21];
            [r21 release];
            r21 = [[FBAdFont sfuiTextRegularWithSize:r21] retain];
            [r20 setFont:r21];
            [r21 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)subtitleDivider {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_subtitleDivider;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setTextColor:r21];
            [r21 release];
            [r20 setText:0x100f15770];
            r21 = [[FBAdFont sfuiTextRegularWithSize:0x100f15770] retain];
            [r20 setFont:r21];
            [r21 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)secondSubtitleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_secondSubtitleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setTextColor:r21];
            [r21 release];
            r21 = [[FBAdFont sfuiTextRegularWithSize:r21] retain];
            [r20 setFont:r21];
            [r21 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)subtitleAndAdchoicesDivider {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = (int64_t *)&self->_subtitleAndAdchoicesDivider;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setTextColor:r21];
            [r21 release];
            [r20 setText:0x100f15770];
            r21 = [[FBAdFont sfuiTextRegularWithSize:0x100f15770] retain];
            [r20 setFont:r21];
            [r21 release];
            objc_storeStrong(r19, r20);
            r21 = r20;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)adReportingTouchAreaView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = (int64_t *)&self->_adReportingTouchAreaView;
    r0 = *r21;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UIView new];
            [r22 release];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            objc_storeStrong(r21, r20);
            r19 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(didTapReportAd)];
            [r20 addGestureRecognizer:r19];
            [r19 release];
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void)loadImageFromUrl:(void *)arg2 forImageView:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r20 retain];
    r20 = r0;
    if (r0 != 0x0) {
            objc_initWeak(&stack[-56], r19);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            [FBAdUtility loadRemoteImageWithURL:r20 withBlock:&var_50];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    [r20 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)didTapCard {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r19 lastTouchData] retain];
            [r20 didSelectCard:r19 touchData:r21];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)didTapReportAd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 didSelectReportAdForCard:r19];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_leftIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitleAndAdchoicesDivider, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitleDivider, 0x0);
    objc_storeStrong((int64_t *)&self->_secondSubtitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_firstSubtitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_infoIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_playIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_adReportingTouchAreaView, 0x0);
    objc_storeStrong((int64_t *)&self->_playIconShadowView, 0x0);
    objc_storeStrong((int64_t *)&self->_iconImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_imageView, 0x0);
    objc_storeStrong((int64_t *)&self->_gradientView, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void)setGradientView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gradientView, arg2);
    return;
}

-(void)setImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_imageView, arg2);
    return;
}

-(void)setupViewWithImageUrl:(void *)arg2 iconUrl:(void *)arg3 title:(void *)arg4 firstSubtitle:(void *)arg5 secondSubtitle:(void *)arg6 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    r25 = [arg4 retain];
    r20 = [arg5 retain];
    r21 = [arg6 retain];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r19 setShouldShowFirstSubtitle:r2];
    if (r21 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r19 setShouldShowSecondSubtitle:r2];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    r0 = [UIColor colorWithUInt:0x0 withAlpha:r3];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r26 = r0;
    r27 = [r0 CGColor];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setShadowColor:r27];
    [r0 release];
    [r26 release];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setShadowOffset:r27];
    [r0 release];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setShadowRadius:r27];
    [r0 release];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setShadowOpacity:r27];
    [r0 release];
    r0 = [r19 titleLabel];
    r0 = [r0 retain];
    [r0 setText:r25];
    [r25 release];
    [r0 release];
    r27 = [[r19 imageView] retain];
    [r19 loadImageFromUrl:r24 forImageView:r27];
    [r24 release];
    [r27 release];
    r27 = [[r19 iconImageView] retain];
    [r19 loadImageFromUrl:r23 forImageView:r27];
    [r23 release];
    [r27 release];
    r27 = [[r19 imageView] retain];
    r28 = [[r19 gradientView] retain];
    [r27 addSubview:r28];
    [r28 release];
    [r27 release];
    r25 = [[r19 imageView] retain];
    [r19 addSubview:r25];
    [r25 release];
    r25 = [[r19 titleLabel] retain];
    [r19 addSubview:r25];
    [r25 release];
    r24 = [[r19 iconImageView] retain];
    [r19 addSubview:r24];
    [r24 release];
    r24 = [[r19 playIconShadowView] retain];
    [r19 addSubview:r24];
    [r24 release];
    r24 = [[r19 playIcon] retain];
    [r19 addSubview:r24];
    [r24 release];
    r24 = [[r19 infoIcon] retain];
    [r19 addSubview:r24];
    [r24 release];
    r0 = [r19 adChoicesIcon];
    r29 = r29;
    r24 = [r0 retain];
    [r19 addSubview:r24];
    [r24 release];
    if ([r19 shouldShowFirstSubtitle] != 0x0) {
            r0 = [r19 firstSubtitleLabel];
            r0 = [r0 retain];
            [r0 setText:r20];
            [r0 release];
            r25 = [[r19 leftIcon] retain];
            [r19 addSubview:r25];
            [r25 release];
            r24 = [[r19 firstSubtitleLabel] retain];
            [r19 addSubview:r24];
            [r24 release];
            r0 = [r19 subtitleDivider];
            r29 = r29;
            r24 = [r0 retain];
            [r19 addSubview:r24];
            [r24 release];
    }
    if ([r19 shouldShowSecondSubtitle] != 0x0) {
            r0 = [r19 secondSubtitleLabel];
            r0 = [r0 retain];
            [r0 setText:r21];
            [r0 release];
            r22 = [[r19 secondSubtitleLabel] retain];
            [r19 addSubview:r22];
            [r22 release];
            r0 = [r19 subtitleAndAdchoicesDivider];
            r29 = r29;
            r22 = [r0 retain];
            [r19 addSubview:r22];
            [r22 release];
    }
    r22 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(didTapCard)];
    [r19 addGestureRecognizer:r22];
    r24 = [[r19 adReportingTouchAreaView] retain];
    [r19 addSubview:r24];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)setIconImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconImageView, arg2);
    return;
}

-(void)setPlayIconShadowView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playIconShadowView, arg2);
    return;
}

-(void)setAdReportingTouchAreaView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adReportingTouchAreaView, arg2);
    return;
}

-(void)setPlayIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playIcon, arg2);
    return;
}

-(void)setInfoIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_infoIcon, arg2);
    return;
}

-(void)setAdChoicesIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesIcon, arg2);
    return;
}

-(void)setFirstSubtitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_firstSubtitleLabel, arg2);
    return;
}

-(void)setSecondSubtitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_secondSubtitleLabel, arg2);
    return;
}

-(void)setSubtitleDivider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_subtitleDivider, arg2);
    return;
}

-(void)setSubtitleAndAdchoicesDivider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_subtitleAndAdchoicesDivider, arg2);
    return;
}

-(void)setLeftIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_leftIcon, arg2);
    return;
}

-(bool)shouldShowFirstSubtitle {
    r0 = *(int8_t *)(int64_t *)&self->_shouldShowFirstSubtitle;
    return r0;
}

-(void)setShouldShowFirstSubtitle:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldShowFirstSubtitle = arg2;
    return;
}

-(bool)shouldShowSecondSubtitle {
    r0 = *(int8_t *)(int64_t *)&self->_shouldShowSecondSubtitle;
    return r0;
}

-(void)setShouldShowSecondSubtitle:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldShowSecondSubtitle = arg2;
    return;
}

-(void)layoutSubviews {
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
    r19 = self;
    [[&var_B8 super] layoutSubviews];
    [r19 bounds];
    v8 = v0;
    v9 = v1;
    v13 = v2;
    v14 = v3;
    if ([r19 playIconOnTopInLandscape] != 0x0) {
            r22 = [FBAdScreen isLandscape];
    }
    else {
            r22 = 0x0;
    }
    r0 = [r19 imageView];
    r0 = [r0 retain];
    v2 = v13;
    v3 = v14;
    [r0 setFrame:r2];
    [r0 release];
    [FBAdSmallIcon iconWidthAndHeight];
    v10 = v8;
    r0 = [r19 subtitleDivider];
    r29 = r29;
    r0 = [r0 retain];
    [r0 sizeToFit];
    [r0 release];
    var_DC = r22;
    d11 = 0x0;
    if (r22 != 0x0) {
            asm { fcsel      d9, d11, d0, ne };
    }
    r0 = [r19 subtitleDivider];
    r29 = r29;
    r0 = [r0 retain];
    [r0 frame];
    d12 = 0x4030000000000000;
    d8 = d2 + d12;
    [r0 release];
    var_D8 = ((d13 + 0xc030000000000000 - d10) + 0xc020000000000000 - d10) + 0xc020000000000000 - d8 - d9;
    var_D0 = d9;
    r0 = [r19 shouldShowFirstSubtitle];
    var_C8 = d13;
    var_C0 = d14;
    if ((r0 & 0x1) != 0x0) {
            r0 = [r19 firstSubtitleLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 sizeToFit];
            [r0 release];
            r8 = *_CGRectZero;
            d11 = *r8;
            d12 = *(int128_t *)(r8 + 0x10);
            var_E8 = *(int128_t *)(r8 + 0x18);
            r0 = [r19 smallIconStyle];
            if (r0 != 0x0) {
                    var_F0 = 0x4030000000000000;
                    v2 = v10;
                    v3 = v10;
                    CGRectGetMaxX(r0);
                    d13 = 0x8040000000000000;
                    var_F8 = d10;
                    var_E8 = d10;
            }
            else {
                    d13 = 0x4030000000000000;
                    var_F8 = d12;
                    var_F0 = d11;
            }
            r0 = [r19 shouldShowSecondSubtitle];
            v12 = v9;
            if (r0 != 0x0) {
                    asm { fcsel      d9, d0, d1, ne };
            }
            r0 = [r19 firstSubtitleLabel];
            r0 = [r0 retain];
            r28 = r0;
            [r0 frame];
            d14 = (d14 - d3) + 0xc030000000000000;
            r0 = [r19 firstSubtitleLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 frame];
            v8 = v2;
            [r0 release];
            if (d8 < 0x4020000000000000 - d13) {
                    asm { fcsel      d9, d8, d0, mi };
            }
            var_108 = 0x4020000000000000;
            r0 = [r19 firstSubtitleLabel];
            r0 = [r0 retain];
            [r0 frame];
            v15 = v3;
            [r22 release];
            r0 = [r28 release];
            var_118 = d14;
            r0 = CGRectGetMidY(r0);
            d8 = 0x3fe0000000000000;
            d0 = d13 - var_E8 * d8;
            asm { frintm     d0, d0 };
            CGRectGetMaxX(r0);
            r0 = objc_msgSend(r19, r26);
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            r0 = objc_msgSend(r19, r26);
            r0 = [r0 retain];
            r28 = r0;
            objc_msgSend(r0, r21);
            [r28 release];
            r0 = [r22 release];
            asm { frintm     d8, d0 };
            CGRectGetMaxX(r0);
            d12 = d0 + 0x4028000000000000;
            r0 = [r19 leftIcon];
            r0 = [r0 retain];
            d11 = var_118;
            objc_msgSend(r0, r20);
            [r22 release];
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            d2 = var_108;
            objc_msgSend(r0, r20);
            [r22 release];
            r0 = objc_msgSend(r19, r26);
            r29 = r29;
            r0 = [r0 retain];
            v2 = v9;
            v3 = v14;
            objc_msgSend(r0, r20);
            [r22 release];
    }
    else {
            d13 = 0x0;
    }
    if ([r19 shouldShowSecondSubtitle] != 0x0) {
            r0 = [r19 subtitleAndAdchoicesDivider];
            r0 = [r0 retain];
            [r0 sizeToFit];
            [r0 release];
            r0 = [r19 secondSubtitleLabel];
            r0 = [r0 retain];
            [r0 sizeToFit];
            [r0 release];
            r0 = [r19 secondSubtitleLabel];
            r0 = [r0 retain];
            r22 = r0;
            [r0 frame];
            d11 = (var_C0 - d3) + 0xc030000000000000;
            r0 = [r19 secondSubtitleLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 frame];
            v8 = v2;
            [r0 release];
            d0 = var_D8 - d12;
            if (d8 < d0) {
                    asm { fcsel      d8, d8, d0, mi };
            }
            r0 = [r19 secondSubtitleLabel];
            r0 = [r0 retain];
            [r0 frame];
            [r25 release];
            CGRectGetMaxX(CGRectGetMidY([r22 release]));
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            [r25 release];
            [r22 release];
            asm { frintm     d15, d0 };
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            CGRectGetMaxX(objc_msgSend(r0, r21));
            [r22 release];
            r0 = objc_msgSend(r19, r27);
            r0 = [r0 retain];
            d14 = var_C0;
            objc_msgSend(r0, r20);
            [r22 release];
            r0 = objc_msgSend(r19, r26);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r20);
            [r22 release];
            v12 = v8;
    }
    else {
            d14 = var_C0;
    }
    d0 = d13 + d10 * 0xbfe0000000000000;
    if (d13 != 0x0) {
            asm { fcsel      d0, d0, d1, ne };
    }
    r20 = @selector(setFrame:);
    asm { frintm     d8, d0 };
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    objc_msgSend(r0, r20);
    [r22 release];
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    CGRectGetMaxX(objc_msgSend(r0, r21));
    [r22 release];
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    r0 = [r19 adChoicesIcon];
    r0 = [r0 retain];
    v1 = v8;
    objc_msgSend(r0, r20);
    [r27 release];
    [r22 release];
    r0 = [r19 adChoicesIcon];
    r0 = [r0 retain];
    CGRectGetMaxX(objc_msgSend(r0, r21));
    [r22 release];
    d12 = var_C8;
    asm { frintm     d8, d0 };
    r0 = [r19 titleLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 sizeThatFits:r2];
    v8 = v8;
    v9 = v1;
    [r0 release];
    var_E8 = r24;
    r24 = r23;
    if (d11 != 0x0) {
            r23 = 0x0;
    }
    else {
            r0 = [r19 infoIcon];
            r29 = r29;
            r0 = [r0 retain];
            r28 = r0;
            [r0 frame];
            r23 = 0x1;
    }
    d10 = d11 + 0xc010000000000000 - 0x4020000000000000;
    r0 = [r19 titleLabel];
    r29 = r29;
    r0 = [r0 retain];
    v2 = v8;
    [r0 setFrame:r2];
    [r0 release];
    if (r23 != 0x0) {
            [r28 release];
    }
    r0 = [r19 titleLabel];
    r0 = [r0 retain];
    r22 = r0;
    [r0 frame];
    r0 = [r19 iconImageView];
    r29 = r29;
    r0 = [r0 retain];
    v0 = v8;
    v1 = v9;
    [r0 setFrame:r2];
    [r0 release];
    [r22 release];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) {
            r0 = [r19 firstSubtitleLabel];
            r29 = r29;
    }
    else {
            if ((objc_msgSend(r19, var_E8) & 0x1) != 0x0) {
                    r0 = [r19 secondSubtitleLabel];
                    r29 = r29;
            }
            else {
                    r0 = [r19 infoIcon];
                    r29 = r29;
            }
    }
    r0 = [r0 retain];
    CGRectGetMaxY([r0 frame]);
    [r22 release];
    if ((var_DC & 0x1) == 0x0) {
            r0 = [r19 titleLabel];
            r0 = [r0 retain];
            r22 = r0;
            [r0 frame];
            v8 = v1;
            r0 = [r19 titleLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 frame];
            d10 = 0xc048000000000000 - d10;
            [r0 release];
            d0 = -d10;
            if (d10 < 0x0) {
                    asm { fcsel      d0, d0, d10, mi };
            }
            asm { frintm     d8, d0 };
            [r22 release];
    }
    r0 = [r19 playIcon];
    r0 = [r0 retain];
    v1 = v8;
    [r0 setFrame:r2];
    [r0 release];
    r0 = [r19 playIcon];
    r0 = [r0 retain];
    r22 = r0;
    [r0 frame];
    v8 = v9;
    v9 = v1;
    r0 = [r19 playIconShadowView];
    r0 = [r0 retain];
    v0 = v8;
    [r0 setFrame:r2];
    [r0 release];
    [r22 release];
    r0 = [r19 gradientView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    r22 = r0;
    CGRectGetMinX([r0 frame]);
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    r23 = r0;
    CGRectGetMinY([r0 frame]);
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    CGRectGetMinX([r0 frame]);
    v10 = v0;
    r0 = [r19 adChoicesIcon];
    r29 = r29;
    r0 = [r0 retain];
    CGRectGetMaxX([r0 frame]);
    [r27 release];
    [r24 release];
    d0 = -(d10 - 0x0);
    if (d10 < 0x0) {
            asm { fcsel      d0, d0, d10, mi };
    }
    r0 = [r19 infoIcon];
    r0 = [r0 retain];
    CGRectGetMinY([r0 frame]);
    v11 = v0;
    r0 = [r19 adChoicesIcon];
    r29 = r29;
    r0 = [r0 retain];
    CGRectGetMaxY([r0 frame]);
    d11 = d11 - d0;
    [r25 release];
    [r24 release];
    d0 = -d11;
    if (d11 < 0x0) {
            asm { fcsel      d0, d0, d11, mi };
    }
    r0 = [r19 adReportingTouchAreaView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r23 release];
    [r22 release];
    return;
}

-(void)setPlayIconOnTopInLandscape:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playIconOnTopInLandscape = arg2;
    return;
}

-(bool)playIconOnTopInLandscape {
    r0 = *(int8_t *)(int64_t *)&self->_playIconOnTopInLandscape;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setIconStyle:(unsigned long long)arg2 {
    self->_iconStyle = arg2;
    return;
}

-(unsigned long long)iconStyle {
    r0 = self->_iconStyle;
    return r0;
}

-(unsigned long long)smallIconStyle {
    r0 = self->_smallIconStyle;
    return r0;
}

-(void)setSmallIconStyle:(unsigned long long)arg2 {
    self->_smallIconStyle = arg2;
    return;
}

-(unsigned long long)adOptionsIconStyle {
    r0 = self->_adOptionsIconStyle;
    return r0;
}

-(void)setAdOptionsIconStyle:(unsigned long long)arg2 {
    self->_adOptionsIconStyle = arg2;
    return;
}

@end