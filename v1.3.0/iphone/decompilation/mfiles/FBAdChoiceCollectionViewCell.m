@implementation FBAdChoiceCollectionViewCell

-(void)prepareForReuse {
    [[&var_40 super] prepareForReuse];
    r0 = [self optionTitleLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self optionSubtitleLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self optionIconView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self optionTitleLabel];
    r0 = [r0 retain];
    [r0 setText:0x0];
    [r0 release];
    r0 = [self optionSubtitleLabel];
    r0 = [r0 retain];
    [r0 setText:0x0];
    [r0 release];
    [self setOptionTitle:0x0];
    [self setOptionSubtitle:0x0];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x80;
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
    r19 = self;
    [[&var_70 super] layoutSubviews];
    [r19 bounds];
    v11 = v0;
    v10 = v1;
    v9 = v2;
    v8 = v3;
    r20 = [[r19 optionTitleLabel] retain];
    r21 = [[r19 optionSubtitleLabel] retain];
    r0 = [r19 optionIconView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    CGRectGetMidY(r0);
    [r22 setFrame:r2];
    CGRectGetMaxX([r22 frame]);
    r0 = [r19 style];
    if (r0 == 0x1) {
            CGRectGetWidth(r0);
            [r20 setFrame:r2];
            CGRectGetMaxY([r20 frame]);
            v13 = v12;
            CGRectGetWidth([r20 frame]);
            r0 = r21;
    }
    else {
            CGRectGetWidth(CGRectGetMidY(r0));
            r0 = r20;
    }
    [r0 setFrame:r2];
    r23 = [[r19 optionTitle] retain];
    [r20 setText:r23];
    [r23 release];
    r19 = [[r19 optionSubtitle] retain];
    [r21 setText:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)configureForFlowType:(long long)arg2 layoutType:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [FBAdReportingConfig sharedConfig];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (arg3 != 0x2) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    if (r20 == 0x0) goto loc_100a152d0;

loc_100a15248:
    if (r20 == 0x1) goto loc_100a15374;

loc_100a15250:
    if (r20 != 0x2) goto loc_100a15438;

loc_100a15258:
    [r19 setStyle:0x0];
    r22 = [FBAdChoicesIcon new];
    [r19 setOptionIconView:r22];
    [r22 release];
    r0 = [r21 objectForKeyedSubscript:@"why_am_i_seeing_this"];
    r29 = r29;
    r22 = [r0 retain];
    r1 = @selector(setOptionTitle:);
    goto loc_100a15424;

loc_100a15424:
    objc_msgSend(r19, r1);
    [r22 release];
    goto loc_100a15438;

loc_100a15438:
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    r0 = [r19 optionIconView];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r22];
    [r0 release];
    [r22 release];
    [r19 setFlowType:r20];
    [r19 setNeedsLayout];
    [r21 release];
    return;

loc_100a15374:
    [r19 setStyle:r2];
    r22 = [FBAdReportIcon new];
    [r19 setOptionIconView:r22];
    [r22 release];
    r23 = [[r21 objectForKeyedSubscript:@"report_ad"] retain];
    [r19 setOptionTitle:r23];
    [r23 release];
    r0 = [r21 objectForKeyedSubscript:@"report_ad_description"];
    r29 = r29;
    goto loc_100a15414;

loc_100a15414:
    r22 = [r0 retain];
    r1 = @selector(setOptionSubtitle:);
    goto loc_100a15424;

loc_100a152d0:
    [r19 setStyle:r2];
    r22 = [FBAdHideIcon new];
    [r19 setOptionIconView:r22];
    [r22 release];
    r23 = [[r21 objectForKeyedSubscript:@"hide_ad"] retain];
    [r19 setOptionTitle:r23];
    [r23 release];
    r0 = [r21 objectForKeyedSubscript:@"hide_ad_description"];
    r29 = r29;
    goto loc_100a15414;
}

-(struct CGSize)preferredSize {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = [[self optionTitle] retain];
    r0 = [self optionTitleLabel];
    r0 = [r0 retain];
    [r0 setText:r21];
    [r0 release];
    [r21 release];
    r21 = [[self optionSubtitle] retain];
    r0 = [self optionSubtitleLabel];
    r0 = [r0 retain];
    [r0 setText:r21];
    [r0 release];
    [r21 release];
    r0 = [self optionTitleLabel];
    r0 = [r0 retain];
    [r0 sizeThatFits:r21];
    [r0 release];
    r0 = [self optionSubtitleLabel];
    r0 = [r0 retain];
    [r0 sizeThatFits:r21];
    r0 = [r0 release];
    if (d0 + 0x4038000000000000 < d0 + 0x4038000000000000) {
            asm { fcsel      d0, d8, d11, mi };
    }
    return r0;
}

-(void *)optionIconView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_optionIconView));
    r0 = *(self + r21);
    r0 = [r0 superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 contentView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
    }
    r0 = *(r19 + r21);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)optionTitleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = (int64_t *)&self->_optionTitleLabel;
    r0 = *r20;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [UILabel new];
            [r22 release];
            r22 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
            [r21 setFont:r22];
            [r22 release];
            r0 = [UIColor colorWithUInt:0x1c1e21 withAlpha:r3];
            r29 = r29;
            [r0 retain];
            [r21 setTextColor:r2];
            [r22 release];
            objc_storeStrong(r20, r21);
            r22 = r21;
    }
    r0 = [r22 superview];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 contentView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r19 release];
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_optionIconView, 0x0);
    objc_storeStrong((int64_t *)&self->_optionSubtitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_optionTitleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_optionSubtitle, 0x0);
    objc_storeStrong((int64_t *)&self->_optionTitle, 0x0);
    return;
}

-(long long)style {
    r0 = self->_style;
    return r0;
}

-(void)setStyle:(long long)arg2 {
    self->_style = arg2;
    return;
}

-(void *)optionSubtitleLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self style] == 0x1) {
            r20 = (int64_t *)&r19->_optionSubtitleLabel;
            r0 = *r20;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    r22 = [UILabel new];
                    [r21 release];
                    r21 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
                    [r22 setFont:r21];
                    [r21 release];
                    r0 = [UIColor colorWithUInt:0x616671 withAlpha:r3];
                    r29 = r29;
                    [r0 retain];
                    [r22 setTextColor:r2];
                    [r21 release];
                    objc_storeStrong(r20, r22);
                    r21 = r22;
            }
            r0 = [r21 superview];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [r19 contentView];
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    [r19 release];
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)optionTitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_optionTitle)), 0x0);
    return r0;
}

-(void)setOptionTitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOptionSubtitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)optionSubtitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_optionSubtitle)), 0x0);
    return r0;
}

-(void)setOptionSubtitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_optionSubtitleLabel, arg2);
    return;
}

-(long long)flowType {
    r0 = self->_flowType;
    return r0;
}

-(void)setOptionTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_optionTitleLabel, arg2);
    return;
}

-(void)setOptionIconView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_optionIconView, arg2);
    return;
}

-(void)setFlowType:(long long)arg2 {
    self->_flowType = arg2;
    return;
}

+(void *)reuseId {
    objc_retainAutorelease(@"fb_ad_reporting_option_collection_cell");
    return @"fb_ad_reporting_option_collection_cell";
}

@end