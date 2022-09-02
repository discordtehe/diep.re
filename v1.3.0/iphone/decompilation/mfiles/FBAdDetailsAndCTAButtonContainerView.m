@implementation FBAdDetailsAndCTAButtonContainerView

-(void *)initWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 bodyText:(void *)arg5 socialContext:(void *)arg6 callToActionText:(void *)arg7 ratingValue:(void *)arg8 ratingCount:(void *)arg9 style:(unsigned long long)arg10 iconStyle:(unsigned long long)arg11 {
    var_24 = arg11;
    var_16 = arg10;
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r26 = [arg8 retain];
    r27 = [arg9 retain];
    r0 = [[&var_60 super] init];
    r25 = r0;
    if (r0 != 0x0) {
            [r25 setupViewsWithTitle:r19 subtitle:r20 iconURL:r21 bodyText:r22 socialContext:r23 callToActionText:r24 ratingValue:r26 ratingCount:r27 style:var_16 iconStyle:var_24];
    }
    [r27 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 removeAllAnimations];
    [r0 release];
    [[&var_20 super] layoutSubviews];
    r8 = &@selector(layoutSubviewsForDefaultAndInverted);
    if ([r19 isDetailedLayout] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(layoutSubviewsForDefaultAndInverted);
            }
            else {
                    r8 = &@selector(layoutSubviewsForDetailed);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)setupViewsWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 bodyText:(void *)arg5 socialContext:(void *)arg6 callToActionText:(void *)arg7 ratingValue:(void *)arg8 ratingCount:(void *)arg9 style:(unsigned long long)arg10 iconStyle:(unsigned long long)arg11 {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r27 = self;
    var_70 = [arg2 retain];
    r25 = [arg3 retain];
    r28 = [arg4 retain];
    var_58 = [arg5 retain];
    r21 = [arg6 retain];
    var_60 = [arg7 retain];
    r23 = [arg8 retain];
    r19 = [arg9 retain];
    [r27 setAdDetailsAndCTAButtonContainerViewButtonStyle:arg10];
    r24 = [FBAdDetailsView alloc];
    var_78 = arg10;
    r24 = [r24 initWithTitle:var_70 subtitle:r25 iconURL:r28 ratingValue:r23 ratingCount:r19 style:[r27 adDetailsViewStyleForStyle:arg10] iconStyle:arg11];
    [r19 release];
    r0 = r23;
    r23 = r21;
    [r0 release];
    [r28 release];
    [r25 release];
    [var_70 release];
    [r27 addSubview:r24];
    [r27 setAdDetailsView:r24];
    if (r23 != 0x0) {
            r19 = [FBAdLabel alloc];
            r0 = [r23 uppercaseString];
            r0 = [r0 retain];
            r22 = r23;
            r23 = r0;
            r25 = r27;
            r27 = @class(FBAdFont);
            [r27 fontSizeTiny];
            r0 = [r27 sfuiDisplaySemiboldWithSize:r2];
            r29 = r29;
            r27 = [r0 retain];
            r2 = r23;
            r19 = [r19 initWithText:r2 numberOfLines:r3 font:r4];
            r0 = r27;
            r27 = r25;
            [r0 release];
            r0 = r23;
            r23 = r22;
            [r0 release];
            [r19 setTextAlignment:0x1];
            [r25 addSubview:r19];
            [r25 setSocialContextLabel:r19];
            [r19 release];
    }
    r25 = var_58;
    if (([FBAdUtility isStringNilEmptyOrWhiteSpace:r25] & 0x1) == 0x0) {
            r19 = [FBAdLabel alloc];
            r22 = r23;
            r23 = @class(FBAdFont);
            [r23 fontSizeSmall];
            r23 = [[r23 sfuiTextRegularWithSize:r2] retain];
            r19 = [r19 initWithText:r2 numberOfLines:r3 font:r4];
            r0 = r23;
            r23 = r22;
            [r0 release];
            [r27 addSubview:r19];
            [r27 setBodyTextLabel:r19];
            [r19 release];
    }
    r21 = var_60;
    if (r21 != 0x0) {
            r0 = [[FBAdCTAButton alloc] initWithStyle:[r27 ctaButtonStyleForStyle:var_78]];
            [r0 setTitle:r21 forState:0x0];
            [r27 addSubview:r0];
            [r27 setCallToActionButton:r0];
            [r0 release];
    }
    [r24 release];
    [r21 release];
    [r23 release];
    [r25 release];
    return;
}

-(void)layoutSubviewsForDefaultAndInverted {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [self bounds];
    v8 = v2;
    v9 = v3;
    r0 = [r20 callToActionButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if ([r20 ctaIsOnBottomForStyle:[r20 adDetailsAndCTAButtonContainerViewButtonStyle]] != 0x0) {
                    v9 = v8;
            }
            else {
                    v0 = v8;
                    v1 = v9;
                    [r20 callToActionWantedWidthAndMarginForSize:r2];
                    v8 = v0;
                    v9 = v0;
            }
            [r19 setFrame:r2];
            v8 = v9;
    }
    r0 = [r20 adDetailsView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 sizeThatFits:r2];
            [r20 setFrame:r2];
    }
    [r20 release];
    [r19 release];
    return;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    r8 = &@selector(sizeThatFitsForDetailed:);
    if ([self isDetailedLayout] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(sizeThatFitsForDefaultAndInverted:);
            }
            else {
                    r8 = &@selector(sizeThatFitsForDetailed:);
            }
    }
    r0 = objc_msgSend(r19, *r8);
    return r0;
}

-(void)layoutSubviewsForDetailed {
    var_80 = d15;
    stack[-136] = d14;
    r31 = r31 + 0xffffffffffffff70;
    var_70 = d13;
    stack[-120] = d12;
    var_60 = d11;
    stack[-104] = d10;
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
    r20 = self;
    [self bounds];
    v9 = v2;
    v10 = v3;
    r19 = [[r20 callToActionButton] retain];
    r21 = [[r20 socialContextLabel] retain];
    r0 = [r20 bodyTextLabel];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r2 = [r20 adDetailsAndCTAButtonContainerViewButtonStyle];
    r23 = [r20 ctaIsOnBottomForStyle:r2];
    [r20 callToActionWantedWidthAndMarginForSize:r2];
    v13 = v9;
    CGRectGetWidth([r20 marginForStyle]);
    r0 = [r20 textAndCtaHorizontalMargin];
    v0 = v11;
    v1 = v12;
    CGRectGetMaxY(r0);
    if (r21 != 0x0) {
            v0 = v8;
            [r21 sizeThatFits:r2];
            [r21 setTextAlignment:r23];
            [r21 setFrame:r2];
            d11 = d11 - d14 + d12;
    }
    if (r19 == 0x0) goto loc_100a38d6c;

loc_100a38d34:
    if (r23 == 0x0) goto loc_100a38e78;

loc_100a38d38:
    [r19 setFrame:r2];
    d11 = d11 - d14 + 0x4048000000000000;
    goto loc_100a38d6c;

loc_100a38d6c:
    if (r22 != 0x0) {
            v0 = v8;
            [r22 sizeThatFits:r2];
            [r22 setFrame:r2];
            [r20 hideBodyTextAndDimButton] ^ 0x1;
            asm { ucvtf      d0, w8 };
            [r22 setAlpha:r2];
    }
    goto loc_100a38dcc;

loc_100a38dcc:
    r0 = [r20 adDetailsView];
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r20 adDetailsViewAnimationOffset];
            [r23 sizeThatFits:r2];
            [r23 setFrame:r2];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_100a38e78:
    [r19 setFrame:r2];
    if (r22 != 0x0) {
            v0 = v8;
            [r22 sizeThatFits:r2];
            [r22 setFrame:r2];
            [r20 hideBodyTextAndDimButton] ^ 0x1;
            asm { ucvtf      d0, w8 };
            [r22 setAlpha:r2];
    }
    goto loc_100a38dcc;
}

-(struct CGSize)sizeThatFitsForDetailed:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    v9 = v1;
    v8 = v0;
    r19 = self;
    r2 = [self adDetailsAndCTAButtonContainerViewButtonStyle];
    r21 = [r19 ctaIsOnBottomForStyle:r2];
    [r19 marginForStyle];
    [r19 callToActionWantedWidthAndMarginForSize:r2];
    r0 = [r19 adDetailsView];
    r0 = [r0 retain];
    r22 = r0;
    [r0 sizeThatFits:r2];
    v12 = v9;
    [r22 release];
    r0 = [r19 callToActionButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    [r0 release];
    if ((r21 & r22) != 0x0) {
            asm { fcsel      d12, d0, d12, ne };
    }
    r0 = [r19 bodyTextLabel];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 bodyTextLabel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 sizeThatFits:r2];
            d12 = d12 + d10 + d1;
            [r0 release];
    }
    r0 = [r19 socialContextLabel];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 socialContextLabel];
            r0 = [r0 retain];
            [r0 sizeThatFits:r2];
            r0 = [r0 release];
    }
    return r0;
}

-(struct CGSize)sizeThatFitsForDefaultAndInverted:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r0 = [self adDetailsView];
    r0 = [r0 retain];
    [r0 sizeThatFits:r2];
    v9 = v1;
    [r0 release];
    r0 = [r19 callToActionButton];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r19 = [r19 ctaIsOnBottomForStyle:[r19 adDetailsAndCTAButtonContainerViewButtonStyle]];
            r0 = [r20 release];
            if (r19 != 0x0) {
                    asm { fcsel      d9, d0, d9, ne };
            }
    }
    else {
            r0 = [r20 release];
    }
    return r0;
}

-(double)callToActionWantedWidthAndMarginForSize:(struct CGSize)arg2 {
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r19 = self;
    r0 = [r19 ctaIsOnBottomForStyle:[self adDetailsAndCTAButtonContainerViewButtonStyle]];
    if ((r0 & 0x1) == 0x0) {
            r0 = [r19 callToActionButton];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r19 ctaLandscapeWidthForSize:r2];
                    [r19 textAndCtaHorizontalMargin];
            }
            r0 = [r20 release];
    }
    return r0;
}

-(double)ctaLandscapeWidthForSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v9 = v1;
    v8 = v0;
    r0 = [self callToActionButton];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 sizeThatFits:r2];
            d1 = 0x4008000000000000;
            asm { fdiv       d1, d8, d1 };
            if (d1 < d0) {
                    asm { fcsel      d8, d1, d0, mi };
            }
    }
    r0 = [r19 release];
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    CGRectGetWidth([FBAdScreen boundsInOrientation]);
    r0 = [self sizeThatFits:r2];
    return r0;
}

-(double)marginForStyle {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self ctaIsOnBottomForStyle:[self adDetailsAndCTAButtonContainerViewButtonStyle]];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(double)textAndCtaHorizontalMargin {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self ctaIsOnBottomForStyle:[self adDetailsAndCTAButtonContainerViewButtonStyle]];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(void)setAdDetailsAndCTAButtonContainerViewButtonStyle:(unsigned long long)arg2 {
    self->_adDetailsAndCTAButtonContainerViewButtonStyle = arg2;
    r20 = [self ctaButtonStyleForStyle:r2];
    r0 = [self callToActionButton];
    r0 = [r0 retain];
    [r0 setCtaButtonStyle:r20];
    [r0 release];
    return;
}

-(void)hideBodyAndDimButtonWithBodyAnimationDuration:(double)arg2 adDetailsViewAnimationDuration:(double)arg3 {
    [self toggleBodyAndButtonWithBodyAnimationDuration:0x1 adDetailsViewAnimationDuration:arg3 bodyTextAnimationDelay:r4 hide:r5];
    return;
}

-(void)setAlpha:(double)arg2 {
    [[&var_30 super] setAlpha:arg2];
    r0 = [self adDetailsView];
    r0 = [r0 retain];
    [r0 setAlpha:arg2];
    [r0 release];
    return;
}

-(void)showBodyAndDimButtonWithBodyAnimationDuration:(double)arg2 adDetailsViewAnimationDuration:(double)arg3 bodyTextAnimationDelay:(double)arg4 {
    [self toggleBodyAndButtonWithBodyAnimationDuration:0x0 adDetailsViewAnimationDuration:arg3 bodyTextAnimationDelay:arg4 hide:r5];
    return;
}

-(void)toggleBodyAndButtonWithBodyAnimationDuration:(double)arg2 adDetailsViewAnimationDuration:(double)arg3 bodyTextAnimationDelay:(double)arg4 hide:(bool)arg5 {
    r5 = arg5;
    r3 = arg3;
    r31 = r31 - 0xf0;
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
    r20 = arg2;
    v9 = v2;
    v8 = v1;
    v10 = v0;
    r19 = self;
    [self setHideBodyTextAndDimButton:r2];
    r0 = [r19 adDetailsView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    [r0 frame];
    [r21 release];
    [r19 adDetailsViewAnimationOffset];
    if (r20 != 0x0) {
            asm { cinc       x21, x8, ne };
    }
    r0 = [r19 callToActionButton];
    r0 = [r0 retain];
    [r0 setCtaButtonStyle:r21 animationDuration:r3];
    [r0 release];
    r0 = @class(UIView);
    [r0 animateKeyframesWithDuration:0x0 delay:&var_90 options:0x0 animations:r5 completion:r6];
    [UIView animateWithDuration:&var_D8 animations:&var_90];
    return;
}

-(double)adDetailsViewAnimationOffset {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self bodyTextLabel];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r20 marginForStyle];
            v8 = v0;
            CGRectGetHeight([r19 frame]);
            if ([r20 hideBodyTextAndDimButton] != 0x0) {
                    asm { fcsel      d8, d0, d1, ne };
            }
    }
    r0 = [r19 release];
    return r0;
}

-(bool)isDetailedLayout {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ([self adDetailsAndCTAButtonContainerViewButtonStyle] != 0x5) {
            asm { ccmp       x0, #0x2, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(unsigned long long)ctaButtonStyleForStyle:(unsigned long long)arg2 {
    r2 = arg2;
    r8 = self;
    if (r2 <= 0x2) {
            if (r2 != 0x0) {
                    if (r2 != 0x2) {
                            r0 = 0x1;
                    }
                    else {
                            var_10 = r29;
                            stack[-8] = r30;
                            r31 = r31 + 0xfffffffffffffff0;
                            r0 = [r8 hideBodyTextAndDimButton];
                            if (r0 != 0x0) {
                                    asm { cinc       x0, x8, ne };
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            if (r2 != 0x5) {
                    if (r2 == 0x3) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = 0x1;
                    }
            }
            else {
                    var_10 = r29;
                    stack[-8] = r30;
                    r31 = r31 + 0xfffffffffffffff0;
                    r0 = [r8 hideBodyTextAndDimButton];
                    if (r0 != 0x0) {
                            asm { cinc       x0, x8, ne };
                    }
            }
    }
    return r0;
}

-(unsigned long long)adDetailsViewStyleForStyle:(unsigned long long)arg2 {
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r2 != 0x5 && r2 != 0x2) {
            r0 = 0x0;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(bool)ctaIsOnBottomForStyle:(unsigned long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 < 0x3) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bodyTextLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_socialContextLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_adDetailsView, 0x0);
    objc_storeStrong((int64_t *)&self->_callToActionButton, 0x0);
    return;
}

-(unsigned long long)adDetailsAndCTAButtonContainerViewButtonStyle {
    r0 = self->_adDetailsAndCTAButtonContainerViewButtonStyle;
    return r0;
}

-(void *)callToActionButton {
    r0 = self->_callToActionButton;
    return r0;
}

-(void)setCallToActionButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callToActionButton, arg2);
    return;
}

-(void *)adDetailsView {
    r0 = self->_adDetailsView;
    return r0;
}

-(void)setAdDetailsView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adDetailsView, arg2);
    return;
}

-(void *)socialContextLabel {
    r0 = self->_socialContextLabel;
    return r0;
}

-(void)setSocialContextLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_socialContextLabel, arg2);
    return;
}

-(void *)bodyTextLabel {
    r0 = self->_bodyTextLabel;
    return r0;
}

-(void)setBodyTextLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bodyTextLabel, arg2);
    return;
}

-(bool)hideBodyTextAndDimButton {
    r0 = *(int8_t *)(int64_t *)&self->_hideBodyTextAndDimButton;
    return r0;
}

-(void)setHideBodyTextAndDimButton:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hideBodyTextAndDimButton = arg2;
    return;
}

@end