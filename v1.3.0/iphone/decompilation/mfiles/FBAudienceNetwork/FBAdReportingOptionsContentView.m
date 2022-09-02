@implementation FBAdReportingOptionsContentView

-(void *)initWithTitle:(void *)arg2 heading:(void *)arg3 items:(void *)arg4 {
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
    r20 = arg4;
    r22 = arg3;
    r25 = arg2;
    r19 = [arg2 retain];
    r21 = [r22 retain];
    r23 = [r20 retain];
    r0 = [[&var_50 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_title, r25);
            objc_storeStrong((int64_t *)&r24->_heading, r22);
            objc_storeStrong((int64_t *)&r24->_items, r20);
    }
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] layoutSubviews];
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setBackgroundColor:r20];
    [r20 release];
    r0 = [r19 layoutType];
    if (r0 == 0x0) goto loc_100a827d4;

loc_100a827b8:
    if (r0 == 0x2) goto loc_100a827e0;

loc_100a827c0:
    if (r0 != 0x1) goto .l1;

loc_100a827c8:
    r8 = &@selector(layoutMultiline);
    goto loc_100a827e8;

loc_100a827e8:
    objc_msgSend(r19, *r8);
    return;

.l1:
    return;

loc_100a827e0:
    r8 = &@selector(layoutOneline);
    goto loc_100a827e8;

loc_100a827d4:
    r8 = &@selector(layoutFullscreen);
    goto loc_100a827e8;
}

-(void *)backButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_backButton;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [FBAdBackButton new];
            [r21 release];
            [r22 addTarget:r20 action:@selector(handleBackButtonTap) forControlEvents:0x40];
            r0 = [r20 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r20 release];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)layoutOneline {
    [self bounds];
    r0 = [self containerView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    r2 = r23;
    [r0 setBackgroundColor:r2];
    [r23 release];
    r0 = [self backButton];
    r0 = [r0 retain];
    CGRectGetHeight([r0 setContentEdgeInsets:r2]);
    [r23 setFrame:r2];
    r0 = [self layout];
    r0 = [r0 retain];
    [r0 setScrollDirection:0x1];
    [r0 release];
    r0 = [self layout];
    r0 = [r0 retain];
    [r0 setMinimumInteritemSpacing:0x1];
    [r0 release];
    [[self collectionView] retain];
    CGRectGetMaxX([r23 frame]);
    CGRectGetMaxX(objc_msgSend(r23, r25));
    [r24 setFrame:0x1];
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r24 setBackgroundColor:r20];
    [r20 release];
    [r24 release];
    [r23 release];
    [r19 release];
    return;
}

-(void *)prototypeCell {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_prototypeCell;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdReportingOptionCollectionViewCell new];
            [r20 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)layoutMultiline {
    [self bounds];
    r0 = [self containerView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r0 setBackgroundColor:r21];
    [r21 release];
    r0 = [self backButton];
    r0 = [r0 retain];
    [r0 setContentEdgeInsets:r21];
    [r0 setFrame:r21];
    r0 = [self descriptionLabel];
    r0 = [r0 retain];
    CGRectGetWidth(r0);
    CGRectGetMaxY([r21 frame]);
    [r22 sizeThatFits:r2];
    [r22 setFrame:r2];
    [[self reportIcon] retain];
    CGRectGetMidY([r22 frame]);
    [r27 setFrame:r2];
    r23 = [[self collectionView] retain];
    r24 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r23 setBackgroundColor:r24];
    [r24 release];
    [r23 setShowsVerticalScrollIndicator:0x0];
    CGRectGetHeight(CGRectGetWidth(CGRectGetMaxY([r22 frame])));
    CGRectGetMaxY([r22 frame]);
    [r23 setFrame:0x0];
    [r23 release];
    [r27 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)reportIcon {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_reportIcon;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [FBAdReportIcon new];
            [r22 release];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            r0 = [r21 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            objc_storeStrong(r19, r20);
            r22 = r20;
    }
    r0 = [r22 autorelease];
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
    r21 = self;
    r19 = (int64_t *)&self->_titleLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r22 release];
            r22 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
            [r20 setFont:r22];
            [r22 release];
            r22 = [[UIColor colorWithUInt:0x1c1e21 withAlpha:r3] retain];
            [r20 setTextColor:r22];
            [r22 release];
            r22 = [[r21 title] retain];
            [r20 setText:r22];
            [r22 release];
            [r20 setTextAlignment:0x1];
            r0 = [r21 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            objc_storeStrong(r19, r20);
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)descriptionLabel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_descriptionLabel;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UILabel new];
            [r22 release];
            r22 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
            [r20 setFont:r22];
            [r22 release];
            r22 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
            [r20 setTextColor:r22];
            [r22 release];
            [r20 setNumberOfLines:0x3];
            r22 = [[r21 heading] retain];
            [r20 setText:r22];
            [r22 release];
            r0 = [r21 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            objc_storeStrong(r19, r20);
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)separatorView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = (int64_t *)&self->_separatorView;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [UIView new];
            [r22 release];
            r22 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            r0 = [r21 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            objc_storeStrong(r19, r20);
            r22 = r20;
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void *)layout {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_layout;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdCollectionViewFlowLayout new];
            [r20 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)containerView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_containerView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [UIView new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setBackgroundColor:r21];
            [r21 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)collectionView {
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
    r19 = (int64_t *)&self->_collectionView;
    r0 = *r19;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            r0 = [r21 layout];
            r29 = r29;
            r20 = [r0 retain];
            if ([r21 layoutType] == 0x2) {
                    [r20 setMinimumLineSpacing:r2];
            }
            r0 = [UICollectionView alloc];
            r22 = [r0 initWithFrame:r20 collectionViewLayout:r3];
            [r23 release];
            [r22 setDelegate:r21];
            [r22 setDataSource:r21];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setBackgroundColor:r23];
            [r23 release];
            [r22 setShowsHorizontalScrollIndicator:0x0];
            [r22 setBounces:0x1];
            r23 = [FBAdReportingOptionCollectionViewCell class];
            r24 = [[FBAdReportingOptionCollectionViewCell reuseId] retain];
            [r22 registerClass:r23 forCellWithReuseIdentifier:r24];
            [r24 release];
            r0 = [r21 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r2];
            [r21 release];
            objc_storeStrong(r19, r22);
            [r20 release];
            r23 = r22;
    }
    r0 = [r23 autorelease];
    return r0;
}

-(void *)lineView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_lineView;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r22 = [UIView new];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setBackgroundColor:r21];
            [r21 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r22;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)transparentDismissButton {
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
    r20 = self;
    r19 = (int64_t *)&self->_transparentDismissButton;
    r0 = *r19;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r0 = [UIButton buttonWithType:0x0];
            r23 = [r0 retain];
            [r21 release];
            [r23 addTarget:r20 action:@selector(dismissView) forControlEvents:0x40];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            r21 = r23;
    }
    r0 = [r21 autorelease];
    return r0;
}

-(struct CGSize)collectionViewContentSize {
    r0 = [self layout];
    r0 = [r0 retain];
    [r0 collectionViewContentSize];
    r0 = [r0 release];
    return r0;
}

-(void)layoutFullscreen {
    r31 = r31 - 0x110;
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
    r23 = self;
    [FBAdScreen boundsInOrientation];
    v13 = v0;
    v15 = v3;
    sub_100aabe74();
    var_B0 = d3;
    r0 = [r23 containerView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    r0 = [r0 release];
    var_E0 = d8 + 0x4020000000000000;
    var_D8 = d8;
    var_B8 = d15;
    r0 = CGRectGetHeight(r0);
    var_108 = d11;
    CGRectGetWidth(r0);
    v10 = v14;
    [r19 setFrame:0x1];
    r24 = [[r23 titleLabel] retain];
    CGRectGetWidth([r19 frame]);
    [r24 setFrame:0x1];
    r0 = [r23 backButton];
    r0 = [r0 retain];
    r25 = r0;
    [r0 setContentEdgeInsets:0x1];
    CGRectGetMidY([r24 frame]);
    [r25 setFrame:0x1];
    CGRectGetMaxX([r25 frame]);
    v14 = v13;
    CGRectGetWidth([r19 frame]);
    CGRectGetMaxX([r25 frame]);
    [r24 setFrame:0x1];
    r28 = [[r23 separatorView] retain];
    CGRectGetMaxY([r24 frame]);
    CGRectGetWidth([r19 frame]);
    [r28 setFrame:0x1];
    r21 = [[r23 descriptionLabel] retain];
    CGRectGetWidth([r28 frame]);
    CGRectGetMaxY([r28 frame]);
    [r21 sizeThatFits:0x1];
    [r21 setFrame:0x1];
    r0 = [r23 reportIcon];
    r0 = [r0 retain];
    var_F0 = r0;
    CGRectGetMidY([r21 frame]);
    [r20 setFrame:0x1];
    r0 = [r23 collectionView];
    r29 = &var_10;
    r0 = [r0 retain];
    r20 = r0;
    CGRectGetHeight(r0);
    v8 = v14;
    CGRectGetMaxY([r21 frame]);
    d11 = d2;
    d0 = d11 + 0xe9000000000000;
    CGRectGetMaxY([r21 frame]);
    CGRectGetWidth([r28 frame]);
    [r20 setFrame:0x1];
    CGRectGetMaxY([r21 frame]);
    CGRectGetWidth([r28 frame]);
    v12 = v13;
    [r23 collectionViewContentSize];
    if (0x4028000000000000 < d9) {
            asm { fcsel      d3, d1, d9, mi };
    }
    [r20 setFrame:0x1];
    CGRectGetMaxY([r21 frame]);
    CGRectGetWidth(CGRectGetHeight(CGRectGetHeight([r20 frame])));
    [r19 setFrame:0x1];
    r0 = [r23 transparentDismissButton];
    r0 = [r0 retain];
    CGRectGetWidth(r0);
    CGRectGetMinY([r19 frame]);
    [r22 setFrame:0x1];
    [[r23 lineView] retain];
    CGRectGetMidX([r19 frame]);
    CGRectGetMinY([r19 frame]);
    [r23 setFrame:0x1];
    r0 = [r23 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r26 release];
    r0 = [r23 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:r2];
    [r26 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [var_F0 release];
    [r21 release];
    [r28 release];
    [r25 release];
    [r24 release];
    [r19 release];
    return;
}

-(void)dismissView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self onDismiss];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onDismiss];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)handleBackButtonTap {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self onBack];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onBack];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)collectionView:(void *)arg2 cellForItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r22 = [[FBAdReportingOptionCollectionViewCell reuseId] retain];
    r19 = [[r21 dequeueReusableCellWithReuseIdentifier:r22 forIndexPath:r24] retain];
    [r21 release];
    [r22 release];
    r20 = [[self items] retain];
    r21 = [r24 row];
    [r24 release];
    r0 = [r20 objectAtIndexedSubscript:r21];
    r0 = [r0 retain];
    r22 = [[r0 title] retain];
    [r19 setOptionTitle:r22];
    [r22 release];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(struct CGSize)collectionView:(void *)arg2 layout:(void *)arg3 sizeForItemAtIndexPath:(void *)arg4 {
    r19 = [arg2 retain];
    r23 = [arg4 retain];
    r21 = [[self items] retain];
    r22 = [r23 row];
    [r23 release];
    r0 = [r21 objectAtIndexedSubscript:r22];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 title] retain];
    r0 = [self prototypeCell];
    r0 = [r0 retain];
    [r0 setOptionTitle:r23];
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    r20 = [[self prototypeCell] retain];
    [r19 frame];
    [r19 release];
    [r20 sizeThatFits:r23];
    r0 = [r20 release];
    return r0;
}

-(long long)collectionView:(void *)arg2 numberOfItemsInSection:(long long)arg3 {
    r0 = [self items];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)collectionView:(void *)arg2 didSelectItemAtIndexPath:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 onSelect];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = [[r21 onSelect] retain];
            (*(r22 + 0x10))(r22, [[[[r21 items] retain] objectAtIndexedSubscript:[r19 row]] retain]);
            [r23 release];
            [r21 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_items, 0x0);
    objc_storeStrong((int64_t *)&self->_heading, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_backButton, 0x0);
    objc_storeStrong((int64_t *)&self->_prototypeCell, 0x0);
    objc_storeStrong((int64_t *)&self->_reportIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_separatorView, 0x0);
    objc_storeStrong((int64_t *)&self->_sendButton, 0x0);
    objc_storeStrong((int64_t *)&self->_descriptionLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_transparentDismissButton, 0x0);
    objc_storeStrong((int64_t *)&self->_lineView, 0x0);
    objc_storeStrong((int64_t *)&self->_containerView, 0x0);
    objc_storeStrong((int64_t *)&self->_layout, 0x0);
    objc_storeStrong((int64_t *)&self->_collectionView, 0x0);
    objc_storeStrong((int64_t *)&self->_onSelect, 0x0);
    objc_storeStrong((int64_t *)&self->_onBack, 0x0);
    objc_storeStrong((int64_t *)&self->_onDismiss, 0x0);
    return;
}

-(long long)layoutType {
    r0 = self->_layoutType;
    return r0;
}

-(void)setLayoutType:(long long)arg2 {
    self->_layoutType = arg2;
    return;
}

-(void *)onDismiss {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onDismiss)), 0x0);
    return r0;
}

-(void)setOnDismiss:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOnBack:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onBack {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onBack)), 0x0);
    return r0;
}

-(void *)onSelect {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onSelect)), 0x0);
    return r0;
}

-(void)setOnSelect:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setLayout:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_layout, arg2);
    return;
}

-(void)setCollectionView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_collectionView, arg2);
    return;
}

-(void)setContainerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_containerView, arg2);
    return;
}

-(void)setLineView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lineView, arg2);
    return;
}

-(void)setTransparentDismissButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_transparentDismissButton, arg2);
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void)setDescriptionLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_descriptionLabel, arg2);
    return;
}

-(void *)sendButton {
    r0 = self->_sendButton;
    return r0;
}

-(void)setSeparatorView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_separatorView, arg2);
    return;
}

-(void)setSendButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sendButton, arg2);
    return;
}

-(void)setReportIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportIcon, arg2);
    return;
}

-(void)setPrototypeCell:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_prototypeCell, arg2);
    return;
}

-(void)setBackButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backButton, arg2);
    return;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(void)setTitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)heading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_heading)), 0x0);
    return r0;
}

-(void *)items {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_items)), 0x0);
    return r0;
}

-(void)setHeading:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setItems:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end