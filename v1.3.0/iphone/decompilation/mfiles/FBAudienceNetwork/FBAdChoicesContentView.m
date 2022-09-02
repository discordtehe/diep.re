@implementation FBAdChoicesContentView

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
            r0 = [FBAdReportingConfig sharedConfig];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adReportingConfig));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
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
    if (r0 == 0x2) goto loc_100a1821c;

loc_100a18204:
    if (r0 == 0x1) goto loc_100a18228;

loc_100a1820c:
    if (r0 != 0x0) goto .l1;

loc_100a18210:
    r8 = &@selector(layoutFullscreen);
    goto loc_100a18230;

loc_100a18230:
    objc_msgSend(r19, *r8);
    return;

.l1:
    return;

loc_100a18228:
    r8 = &@selector(layoutMultiline);
    goto loc_100a18230;

loc_100a1821c:
    r8 = &@selector(layoutOneline);
    goto loc_100a18230;
}

-(void)layoutMultiline {
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
    r0 = [self backgroundView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setFrame:r2];
    r21 = [[self collectionView] retain];
    CGRectGetMaxY([r19 frame]);
    CGRectGetMaxY([r19 frame]);
    d0 = d0 + 0x8040000000000000;
    [r21 setFrame:r2];
    r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r21 setBackgroundColor:r23];
    [r23 release];
    r0 = [self layout];
    r0 = [r0 retain];
    [r0 collectionViewContentSize];
    [r0 release];
    CGRectGetHeight([r21 frame]);
    if (d8 < d0) {
            CGRectGetHeight([r21 frame]);
            [r21 setContentInset:r2];
    }
    [r21 release];
    [r19 release];
    return;
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

-(void)layoutOneline {
    [self bounds];
    r0 = [self backgroundView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    CGRectGetHeight(r0);
    [r20 setFrame:r2];
    [[self collectionView] retain];
    CGRectGetMaxX([r20 frame]);
    CGRectGetMaxX([r20 frame]);
    [r21 setFrame:r2];
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    r0 = [self layout];
    r0 = [r0 retain];
    [r0 setScrollDirection:0x1];
    [r0 release];
    r0 = [self layout];
    r0 = [r0 retain];
    [r0 setMinimumInteritemSpacing:0x1];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)backgroundView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundView));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = [UIView new];
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [*(r19 + r21) setBackgroundColor:r20];
            [r20 release];
            [r19 addSubview:r2];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)layoutFullscreen {
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
    r21 = self;
    r0 = [self collectionView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 setContentInset:r2];
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setBackgroundColor:r20];
    [r20 release];
    [r21 bounds];
    v10 = v2;
    v11 = v3;
    r0 = [r21 lineView];
    r29 = &var_10;
    r20 = [r0 retain];
    r0 = sub_100aabe74();
    v14 = v1;
    v15 = v3;
    CGRectGetHeight(r0);
    v12 = v0;
    r0 = [r21 preferredCollectionViewHeight];
    var_A0 = d9;
    stack[-152] = d8;
    v0 = v0;
    v1 = v9;
    v2 = v10;
    CGRectGetWidth(r0);
    CGRectGetHeight([r21 bounds]);
    objc_msgSend(r21, r23);
    if (d9 > 0x4020000000000000) {
            [r21 preferredCollectionViewHeight];
    }
    else {
            [r21 bounds];
            v14 = v0;
            v12 = v1;
            v15 = v2;
    }
    [r19 setFrame:r2];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r0 = [r21 transparentDismissButton];
    r0 = [r0 retain];
    CGRectGetWidth(r0);
    CGRectGetMinY([r19 frame]);
    [r21 setFrame:0x1];
    CGRectGetMidX([r19 frame]);
    CGRectGetMinY([r19 frame]);
    [r20 setFrame:0x1];
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)closeButton {
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
    r19 = (int64_t *)&self->_closeButton;
    r0 = *r19;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdCloseButton alloc] init];
            [r23 release];
            [r21 setContentPadding:r2];
            r23 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
            [r21 setProgressColor:r23];
            [r23 release];
            [r20 addSubview:r21];
            [r21 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:r20 action:@selector(handleCloseButtonTap)]];
            objc_storeStrong(r19, r21);
            [r20 release];
            r23 = r21;
    }
    r0 = [r23 autorelease];
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

-(void)handleCloseButtonTap {
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

-(double)preferredCollectionViewHeight {
    r0 = self;
    return r0;
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
            r21 = [FBAdChoiceCollectionViewCell new];
            [r20 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
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
    r20 = self;
    r19 = (int64_t *)&self->_collectionView;
    r0 = *r19;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            r21 = [[r20 layout] retain];
            r0 = [UICollectionView alloc];
            r22 = [r0 initWithFrame:r21 collectionViewLayout:r3];
            [r23 release];
            [r22 setDelegate:r20];
            [r22 setDataSource:r20];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 setBackgroundColor:r23];
            [r23 release];
            [r22 setBounces:0x1];
            [r22 setShowsHorizontalScrollIndicator:0x0];
            r23 = [FBAdChoiceCollectionViewCell class];
            r24 = [[FBAdChoiceCollectionViewCell reuseId] retain];
            [r22 registerClass:r23 forCellWithReuseIdentifier:r24];
            [r24 release];
            [r20 addSubview:r2];
            objc_storeStrong(r19, r22);
            [r21 release];
            r23 = r22;
    }
    r0 = [r23 autorelease];
    return r0;
}

-(void *)collectionView:(void *)arg2 cellForItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[FBAdChoiceCollectionViewCell reuseId] retain];
    r23 = [[r21 dequeueReusableCellWithReuseIdentifier:r22 forIndexPath:r19] retain];
    [r21 release];
    [r22 release];
    [self configureCell:r23 forIndexPath:r19];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)configureCell:(void *)arg2 forIndexPath:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [arg3 row];
    if (r0 <= 0x2) {
            [r19 configureForFlowType:r0 layoutType:[r20 layoutType]];
    }
    [r19 release];
    return;
}

-(long long)collectionView:(void *)arg2 numberOfItemsInSection:(long long)arg3 {
    return 0x3;
}

-(struct CGSize)collectionView:(void *)arg2 layout:(void *)arg3 sizeForItemAtIndexPath:(void *)arg4 {
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
    r19 = [arg2 retain];
    r23 = [arg4 retain];
    r20 = [[self prototypeCell] retain];
    r22 = [[self prototypeCell] retain];
    [self configureCell:r22 forIndexPath:r23];
    [r23 release];
    [r22 release];
    if ([self layoutType] == 0x2) {
            [r20 preferredSize];
            v8 = v0;
            CGRectGetHeight([r19 frame]);
            v9 = v0;
    }
    else {
            CGRectGetWidth([r19 frame]);
            v8 = v0;
            [r20 preferredSize];
            v9 = v1;
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_prototypeCell, 0x0);
    objc_storeStrong((int64_t *)&self->_layout, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundView, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_adReportingConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_transparentDismissButton, 0x0);
    objc_storeStrong((int64_t *)&self->_lineView, 0x0);
    objc_storeStrong((int64_t *)&self->_collectionView, 0x0);
    objc_storeStrong((int64_t *)&self->_onDismiss, 0x0);
    objc_storeStrong((int64_t *)&self->_onOptionSelected, 0x0);
    return;
}

-(void)collectionView:(void *)arg2 didSelectItemAtIndexPath:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 onOptionSelected];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r21 onOptionSelected] retain];
            (*(r21 + 0x10))(r21, [r19 row]);
            [r21 release];
    }
    [r20 release];
    [r19 release];
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

-(void *)onOptionSelected {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onOptionSelected)), 0x0);
    return r0;
}

-(void)setOnOptionSelected:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
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

-(void)setCollectionView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_collectionView, arg2);
    return;
}

-(void)setLineView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lineView, arg2);
    return;
}

-(void *)adReportingConfig {
    r0 = self->_adReportingConfig;
    return r0;
}

-(void)setTransparentDismissButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_transparentDismissButton, arg2);
    return;
}

-(void)setAdReportingConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adReportingConfig, arg2);
    return;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void)setLayout:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_layout, arg2);
    return;
}

-(void)setBackgroundView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundView, arg2);
    return;
}

-(void)setPrototypeCell:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_prototypeCell, arg2);
    return;
}

@end