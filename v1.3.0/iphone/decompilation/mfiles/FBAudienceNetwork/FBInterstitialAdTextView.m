@implementation FBInterstitialAdTextView

-(void *)subtitleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self hasSubtitle];
    r20 = (int64_t *)&r19->_subtitleLabel;
    r0 = *r20;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            asm { ccmp       w22, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            [UILabel new];
            [r21 release];
            [r19 addSubview:r2];
            objc_storeStrong(r20, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
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
    r20 = self;
    r19 = (int64_t *)&self->_titleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            [UILabel new];
            [r21 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = @class(UIColor);
            r0 = [r0 blackColor];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_titleTextColor));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(UIColor);
            r0 = [r0 grayColor];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_subtitleTextColor));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_textAlignment = 0x0;
            r19->_maxLinesForTitle = 0x2;
            r19->_maxLinesForSubtitle = 0x2;
            r19->_titleFontSize = 0x12;
            r19->_subtitleFontSize = 0x10;
            r19->_verticalTextSpacing = 0x4020000000000000;
    }
    r0 = r19;
    return r0;
}

-(void)setAlignment:(long long)arg2 {
    [self setTextAlignment:r2];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 setTextAlignment:arg2];
    [r0 release];
    r0 = [self subtitleLabel];
    r0 = [r0 retain];
    [r0 setTextAlignment:arg2];
    [r0 release];
    return;
}

-(bool)hasSubtitle {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self subtitle] retain];
    r20 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r21 = [[r19 stringByTrimmingCharactersInSet:r20] retain];
    [r20 release];
    [r19 release];
    if ([r21 length] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)setTitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_title, arg2);
    r19 = [arg2 retain];
    [self setNeedsLayout];
    [r19 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0xc0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r19 = self;
    [self bounds];
    v8 = v2;
    r20 = [[r19 titleLabel] retain];
    [r20 setTextAlignment:[r19 textAlignment]];
    r2 = **_UIFontTextStyleHeadline;
    r0 = [UIFont preferredFontForTextStyle:r2];
    r21 = [r0 retain];
    [r19 titleFontSize];
    asm { scvtf      d0, x0 };
    r23 = [[r21 fontWithSize:r2] retain];
    [r20 setFont:r23];
    [r23 release];
    [r21 release];
    [r20 setNumberOfLines:[r19 maxLinesForTitle]];
    r23 = [NSAttributedString alloc];
    r25 = [[r19 title] retain];
    r23 = [r23 initWithString:r25];
    [r20 setAttributedText:r23];
    [r23 release];
    [r25 release];
    r23 = [[r19 titleTextColor] retain];
    [r20 setTextColor:r23];
    [r23 release];
    r0 = [r20 sizeThatFits:r23];
    v9 = v9;
    v3 = v9;
    CGRectIntegral(r0);
    [r20 setFrame:r23];
    r0 = [r19 subtitleLabel];
    r29 = r29;
    r23 = [r0 retain];
    if ([r19 hasSubtitle] != 0x0) {
            var_A8 = @selector(alloc);
            var_88 = @selector(setFrame:);
            var_98 = @selector(setNumberOfLines:);
            [r19 textAlignment];
            [r23 setTextAlignment:r2];
            r0 = [UIFont preferredFontForTextStyle:r2];
            r27 = [r0 retain];
            [r19 subtitleFontSize];
            asm { scvtf      d0, x0 };
            [objc_msgSend(r27, r28) retain];
            objc_msgSend(r23, r22);
            [r28 release];
            [r27 release];
            [r23 setMinimumScaleFactor:r28];
            [r19 maxLinesForSubtitle];
            objc_msgSend(r23, var_98);
            r22 = objc_msgSend(@class(NSAttributedString), var_A8);
            [[r19 subtitle] retain];
            objc_msgSend(r22, r21);
            objc_msgSend(r23, r24);
            [r21 release];
            [r27 release];
            [[r19 subtitleTextColor] retain];
            objc_msgSend(r23, r25);
            [r21 release];
            objc_msgSend(r23, r26);
            [r20 frame];
            CGRectIntegral([r19 verticalTextSpacing]);
            objc_msgSend(r23, var_88);
    }
    [[&var_80 super] layoutSubviews];
    [r23 release];
    [r20 release];
    return;
}

-(void)setSubtitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_subtitle, arg2);
    r19 = [arg2 retain];
    [self setNeedsLayout];
    [r19 release];
    return;
}

-(void)setTitleTextColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleTextColor, arg2);
    [arg2 retain];
    [[self titleTextColor] retain];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 setTextColor:r2];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)setSubtitleTextColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_subtitleTextColor, arg2);
    [arg2 retain];
    [[self subtitleTextColor] retain];
    r0 = [self subtitleLabel];
    r0 = [r0 retain];
    [r0 setTextColor:r2];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)setTitleFontSize:(long long)arg2 {
    r19 = self;
    self->_titleFontSize = arg2;
    r21 = [[self titleLabel] retain];
    r2 = **_UIFontTextStyleHeadline;
    r0 = [UIFont preferredFontForTextStyle:r2];
    r0 = [r0 retain];
    r22 = r0;
    asm { scvtf      d0, x20 };
    r20 = [[r0 fontWithSize:r2] retain];
    [r21 setFont:r20];
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 setNeedsLayout];
    return;
}

-(void)setSubtitleFontSize:(long long)arg2 {
    r19 = self;
    self->_subtitleFontSize = arg2;
    r21 = [[self subtitleLabel] retain];
    r2 = **_UIFontTextStyleBody;
    r0 = [UIFont preferredFontForTextStyle:r2];
    r0 = [r0 retain];
    r22 = r0;
    asm { scvtf      d0, x20 };
    r20 = [[r0 fontWithSize:r2] retain];
    [r21 setFont:r20];
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 setNeedsLayout];
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
    v8 = v0;
    r19 = self;
    [self layoutSubviews];
    r0 = [r19 titleLabel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 sizeThatFits:r2];
    [r0 release];
    d11 = *(*_CGSizeZero + 0x8);
    r0 = [r19 hasSubtitle];
    if (r0 != 0x0) {
            r0 = [r19 subtitleLabel];
            r0 = [r0 retain];
            [r0 sizeThatFits:r2];
            [r0 release];
            r0 = [r19 verticalTextSpacing];
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_subtitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitle, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitleTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_titleTextColor, 0x0);
    return;
}

-(void *)titleTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleTextColor)), 0x0);
    return r0;
}

-(void *)subtitleTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitleTextColor)), 0x0);
    return r0;
}

-(void *)subtitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitle)), 0x0);
    return r0;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(long long)maxLinesForTitle {
    r0 = self->_maxLinesForTitle;
    return r0;
}

-(void)setMaxLinesForTitle:(long long)arg2 {
    self->_maxLinesForTitle = arg2;
    return;
}

-(void)setMaxLinesForSubtitle:(long long)arg2 {
    self->_maxLinesForSubtitle = arg2;
    return;
}

-(long long)maxLinesForSubtitle {
    r0 = self->_maxLinesForSubtitle;
    return r0;
}

-(long long)titleFontSize {
    r0 = self->_titleFontSize;
    return r0;
}

-(long long)subtitleFontSize {
    r0 = self->_subtitleFontSize;
    return r0;
}

-(double)verticalTextSpacing {
    r0 = self;
    return r0;
}

-(void)setVerticalTextSpacing:(double)arg2 {
    self->_verticalTextSpacing = d0;
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void)setSubtitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_subtitleLabel, arg2);
    return;
}

-(long long)textAlignment {
    r0 = self->_textAlignment;
    return r0;
}

-(void)setTextAlignment:(long long)arg2 {
    self->_textAlignment = arg2;
    return;
}

@end