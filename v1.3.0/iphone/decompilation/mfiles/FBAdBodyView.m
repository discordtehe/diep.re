@implementation FBAdBodyView

-(void *)initWithCoder:(void *)arg2 {
    r20 = [[FBNativeAdBase fakeNativeAdBase] retain];
    r21 = [FBNativeAdViewAttributes new];
    r19 = [self initWithFrame:r20 nativeAd:r21 attributes:r4];
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r20 = [[FBNativeAdBase fakeNativeAdBase] retain];
    r21 = [FBNativeAdViewAttributes new];
    r19 = [self initWithFrame:r20 nativeAd:r21 attributes:r4];
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)calculateValues {
    r19 = self;
    [self bounds];
    r1 = @selector(setTitleHeight:);
    asm { fdiv       d0, d3, d0 };
    objc_msgSend(r19, r1);
    [r19 setMiscMargin:r2];
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)setAdditionalYSpacing:(double)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_additionalYSpacing));
    d1 = *(r0 + r8);
    *(r0 + r8) = d0;
    if (d1 != d0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r0 updateView:r2];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 nativeAd:(void *)arg3 attributes:(void *)arg4 {
    r4 = arg4;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r19 = [r2 retain];
    r20 = [r3 retain];
    v0 = v0;
    v2 = v2;
    v3 = v3;
    r0 = [[&var_80 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setClipsToBounds:0x1];
            objc_storeWeak((int64_t *)&r21->_nativeAdBase, r19);
            objc_storeWeak((int64_t *)&r21->_attributes, r20);
            [r21 calculateValues];
            r22 = [UIView alloc];
            [r21 normalFrame];
            r22 = objc_msgSend(r22, r26);
            r23 = [UIView alloc];
            [r21 offscreenFrame];
            r23 = objc_msgSend(r23, r26);
            [r21 addSubview:r22];
            [r21 addSubview:r23];
            objc_storeWeak((int64_t *)&r21->_firstContainerView, r22);
            objc_storeWeak((int64_t *)&r21->_secondContainerView, r23);
            r28 = [UILabel alloc];
            [r21 bounds];
            r26 = objc_msgSend(r28, r26);
            r28 = [[r19 bodyText] retain];
            [r26 setText:r28];
            [r28 release];
            r28 = [[UIFont systemFontOfSize:r28] retain];
            [r26 setFont:r28];
            [r28 release];
            [r26 setAdjustsFontSizeToFitWidth:0x1];
            [r26 setMinimumScaleFactor:0x1];
            [r26 setNumberOfLines:0x3];
            [r21 setDescriptionLabel:r26];
            [r23 addSubview:r26];
            [r21 miscMargin];
            [r21 bounds];
            [r21 bounds];
            r24 = [FBCombinedSecondaryView alloc];
            r27 = [r19 retain];
            r24 = [r24 initWithFrame:r27 nativeAdBase:r20 attributes:r4];
            [r27 release];
            r0 = [r21 firstContainerView];
            r0 = [r0 retain];
            [r0 addSubview:r24];
            [r0 release];
            [r21 setSecondaryCombinedView:r24];
            objc_storeWeak((int64_t *)&r21->_adOptionsView, [[r24 adOptionsView] retain]);
            [r25 release];
            [r24 release];
            [r26 release];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)updateView:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_70 = d11;
            stack[-104] = d10;
            r31 = r31 + 0xffffffffffffff90;
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
            r20 = r0;
            [r0 calculateValues];
            r19 = [[r20 firstContainerView] retain];
            r21 = [[r20 secondContainerView] retain];
            r22 = [[r20 secondaryCombinedView] retain];
            [r20 normalFrame];
            [r19 setFrame:r2];
            [r20 offscreenFrame];
            [r21 setFrame:r2];
            [r20 bounds];
            r0 = [r20 descriptionLabel];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            r25 = [[r20 titleLabel] retain];
            [r20 miscMargin];
            v8 = v0;
            [r20 bounds];
            [r20 titleHeight];
            [r25 setFrame:r2];
            [r25 sizeToFit];
            [r25 frame];
            objc_msgSend(r25, r26);
            d0 = d9 + d1 - d8 + d10;
            if (d8 + d10 > d9 + d1) {
                    asm { fcsel      d0, d2, d0, gt };
            }
            r26 = @selector(frame);
            CGRectOffset(objc_msgSend(r25, r26), r26, r2);
            [r25 setFrame:r2];
            [r19 bounds];
            [r22 setFrame:r2];
            [r20 additionalYSpacing];
            [r22 setAdditionalYSpacing:r2];
            [r22 setFullRatingView:[r20 isFullRatingView]];
            [r25 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)setFullRatingView:(bool)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fullRatingView));
    r9 = *(int8_t *)(r0 + r8);
    *(int8_t *)(r0 + r8) = arg2;
    if (r9 != arg2) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r0 updateView:r2];
    return;
}

-(struct CGRect)normalFrame {
    r0 = [self bounds];
    return r0;
}

-(struct CGRect)animationFrame {
    [self bounds];
    r0 = [self bounds];
    r0 = CGRectOffset(r0, @selector(bounds), r2);
    return r0;
}

-(struct CGRect)offscreenFrame {
    [self bounds];
    r0 = [self bounds];
    r0 = CGRectOffset(r0, @selector(bounds), r2);
    return r0;
}

-(void)willMoveToWindow:(void *)arg2 {
    r31 = r31 - 0x60;
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
            r0 = [r20 rotationTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            objc_initWeak(&stack[-56], r20);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_50 block:r4];
            r22 = [r0 retain];
            [r20 setRotationTimer:r22];
            [r22 release];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    [r19 release];
    return;
}

-(void)rotate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self firstContainerView] retain];
    r21 = [[r19 secondContainerView] retain];
    if ([r19 isRotated] == 0x0) goto loc_100a08c7c;

loc_100a08c64:
    r22 = 0x0;
    goto loc_100a08ca4;

loc_100a08ca4:
    [r19 animateRotationWithCurrentView:r2 otherView:r3];
    [r19 setRotated:r22];
    goto loc_100a08cc0;

loc_100a08cc0:
    [r21 release];
    [r20 release];
    return;

loc_100a08c7c:
    if ([r19 isAnimationEnabled] == 0x0) goto loc_100a08cc0;

loc_100a08c90:
    r22 = 0x1;
    goto loc_100a08ca4;
}

-(void)animateRotationWithCurrentView:(void *)arg2 otherView:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r21 retain];
    var_48 = r19;
    [r19 retain];
    r20 = @selector(animateWithDuration:delay:options:animations:completion:);
    [r0 retain];
    objc_msgSend(@class(UIView), r20);
    [r0 release];
    [var_48 release];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)isRatingEnabled {
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    r20 = [r0 isRatingEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setRatingEnabled:(bool)arg2 {
    r20 = [[NSNumber numberWithBool:arg2] retain];
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    [r0 setRatingEnabledInternal:r20];
    [r0 release];
    [r20 release];
    return;
}

-(bool)socialContextEnabled {
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    r20 = [r0 isSocialContextEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setSocialContextEnabled:(bool)arg2 {
    r20 = [[NSNumber numberWithBool:arg2] retain];
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    [r0 setSocialContextEnabledInternal:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)updateBodyTitle:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self nativeAdBase];
    r0 = [r0 retain];
    r20 = [[r0 bodyText] retain];
    [r21 setText:r20];
    [r21 release];
    [r20 release];
    [r0 release];
    return;
}

-(void *)titleLabel {
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    r20 = [[r0 titleLabel] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)socialContextLabel {
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    r20 = [[r0 socialContextLabel] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setNativeAdBase:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r21 = (int64_t *)&self->_nativeAdBase;
    r19 = [arg2 retain];
    r0 = objc_loadWeakRetained(r21);
    if (r0 != r19) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    [r0 release];
    objc_storeWeak(r21, r19);
    [r20 updateView:r22];
    r21 = [[r20 descriptionLabel] retain];
    [r20 updateBodyTitle:r21];
    [r21 release];
    r0 = [r20 secondaryCombinedView];
    r0 = [r0 retain];
    [r0 setNativeAdBase:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)dealloc {
    r0 = [self rotationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setRotationTimer:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)sizeToFit {
    [self frame];
    [self frame];
    r0 = [self titleLabel];
    r0 = [r0 retain];
    [r0 bounds];
    r0 = [self socialContextLabel];
    r0 = [r0 retain];
    [r0 bounds];
    [self setFrame:r2];
    [r22 release];
    [r20 release];
    return;
}

-(struct CGRect)spareSpace {
    r0 = [self secondaryCombinedView];
    r0 = [r0 retain];
    [r0 spareSpace];
    r0 = [r0 release];
    return r0;
}

-(void *)nativeAdBase {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdBase);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_secondaryCombinedView);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_secondContainerView);
    objc_destroyWeak((int64_t *)&self->_firstContainerView);
    objc_storeStrong((int64_t *)&self->_rotationTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_descriptionLabel);
    objc_destroyWeak((int64_t *)&self->_adOptionsView);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
}

-(void *)adOptionsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adOptionsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdOptionsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adOptionsView, arg2);
    return;
}

-(void *)descriptionLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_descriptionLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDescriptionLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_descriptionLabel, arg2);
    return;
}

-(bool)isAnimationEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_animationEnabled;
    return r0;
}

-(void)setAnimationEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animationEnabled = arg2;
    return;
}

-(double)additionalYSpacing {
    r0 = self;
    return r0;
}

-(bool)isFullRatingView {
    r0 = *(int8_t *)(int64_t *)&self->_fullRatingView;
    return r0;
}

-(void *)rotationTimer {
    r0 = self->_rotationTimer;
    return r0;
}

-(void)setRotationTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rotationTimer, arg2);
    return;
}

-(bool)isRotated {
    r0 = *(int8_t *)(int64_t *)&self->_rotated;
    return r0;
}

-(void)setRotated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_rotated = arg2;
    return;
}

-(void *)firstContainerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_firstContainerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFirstContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_firstContainerView, arg2);
    return;
}

-(void *)secondContainerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_secondContainerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSecondContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_secondContainerView, arg2);
    return;
}

-(double)miscMargin {
    r0 = self;
    return r0;
}

-(void)setMiscMargin:(double)arg2 {
    self->_miscMargin = d0;
    return;
}

-(double)titleHeight {
    r0 = self;
    return r0;
}

-(void)setTitleHeight:(double)arg2 {
    self->_titleHeight = d0;
    return;
}

-(void *)attributes {
    r0 = objc_loadWeakRetained((int64_t *)&self->_attributes);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAttributes:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_attributes, arg2);
    return;
}

-(void *)secondaryCombinedView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_secondaryCombinedView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSecondaryCombinedView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_secondaryCombinedView, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdBodyView");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end