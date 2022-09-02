@implementation FBNativeAdBaseView

-(void *)nativeAdBase {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self class] == [FBNativeAdBaseView class]) {
            r22 = **_NSInternalInconsistencyException;
            r19 = [NSStringFromClass([r19 class]) retain];
            [NSException raise:r22 format:@"%@ is being instantiated directly, not by a subclass."];
            [r19 release];
    }
    r0 = [FBNativeAdBase fakeNativeAdBase];
    return r0;
}

-(void)registerView {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self class] == [FBNativeAdBaseView class]) {
            r22 = **_NSInternalInconsistencyException;
            r19 = [NSStringFromClass([r19 class]) retain];
            [NSException raise:r22 format:@"%@ is being instantiated directly, not by a subclass."];
            [r19 release];
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self class] == [FBNativeAdBaseView class]) {
            r22 = **_NSInternalInconsistencyException;
            r20 = [NSStringFromClass([r19 class]) retain];
            [NSException raise:r22 format:@"%@ is being instantiated directly, not by a subclass."];
            [r20 release];
    }
    r0 = [[&var_30 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self class] == [FBNativeAdBaseView class]) {
            r22 = **_NSInternalInconsistencyException;
            r20 = [NSStringFromClass([r19 class]) retain];
            [NSException raise:r22 format:@"%@ is being instantiated directly, not by a subclass."];
            [r20 release];
    }
    r0 = [[&var_30 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self class] == [FBNativeAdBaseView class]) {
            r22 = **_NSInternalInconsistencyException;
            r20 = [NSStringFromClass([r19 class]) retain];
            [NSException raise:r22 format:@"%@ is being instantiated directly, not by a subclass."];
            [r20 release];
    }
    r0 = [[&var_30 super] initWithFrame:r2];
    return r0;
}

-(void)setAttributes:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    objc_storeStrong((int64_t *)&r20->_attributes, arg2);
    if (r19 != 0x0) {
            [r20 updateAttributes:r19];
    }
    [r19 release];
    return;
}

-(void)populate:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r21 containerView];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 == 0x0) {
                    [r21 initializeView];
                    r0 = [r21 containerView];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 release];
                    r20 = r22;
            }
            r0 = [r19 dataModel];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r21 adOptionsView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setNativeAd:r19];
                    [r0 release];
            }
            [r20 setAlpha:r2];
            r23 = [[r19 advertiserName] retain];
            r0 = [r21 titleLabel];
            r0 = [r0 retain];
            [r0 setText:r23];
            [r0 release];
            [r23 release];
            r23 = [[r19 bodyText] retain];
            r0 = [r21 descriptionLabel];
            r0 = [r0 retain];
            [r0 setText:r23];
            [r0 release];
            [r23 release];
            r23 = [[r21 callToActionButton] retain];
            r24 = [[r19 callToAction] retain];
            [r23 setTitle:r24 forState:0x0];
            [r24 release];
            [r23 release];
            r23 = [[r19 socialContext] retain];
            r0 = [r21 socialContextLabel];
            r0 = [r0 retain];
            [r0 setText:r23];
            [r0 release];
            [r23 release];
            [r21 updateView:0x1];
            [r21 updateClickableViews];
            r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
            r22 = [r0 retain];
            [FBAdUtility animateWithFadeIn:r22 completion:0x0];
            [r22 release];
            [r20 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)constructCallToActionButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self implementsSelector:_cmd] & 0x1) == 0x0) {
            r20 = [[UIButton buttonWithType:0x1] retain];
            r0 = [r19 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            r0 = [r20 titleForState:0x0];
            r0 = [r0 retain];
            r22 = [r0 length];
            [r0 release];
            if (r22 == 0x0) {
                    [r20 setTitle:@"Loading..." forState:0x0];
            }
            [r19 setCallToActionButton:r20];
            [r20 release];
    }
    return;
}

-(void)constructIconView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self implementsSelector:_cmd] & 0x1) == 0x0) {
            r0 = [FBAdIconView new];
            r20 = r0;
            [r0 setClipsToBounds:0x1];
            [r20 setUserInteractionEnabled:0x1];
            r0 = [r19 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            [r19 setIconView:r20];
            [r20 release];
    }
    return;
}

-(void)initializeView {
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
    r19 = self;
    r0 = [self containerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [UIView alloc];
            [r19 bounds];
            v8 = v1;
            v9 = v3;
            if (d2 > *double_value_360) {
                    asm { fcsel      d10, d1, d0, gt };
            }
            asm { fmin       d11, d2, d3 };
            r22 = [[r19 fixedHeight] retain];
            r0 = [r19 attributes];
            r0 = [r0 retain];
            r0 = [r0 shouldClip];
            r29 = r29;
            sub_100aab58c(r22, [r0 retain]);
            r21 = [r21 initWithFrame:r2];
            [r20 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 setClipsToBounds:0x1];
            [r19 addSubview:r21];
            [r19 setContainerView:r21];
            r20 = r21;
    }
    [r19 constructView];
    [r19 updateView:0x1];
    if (([r19 isLoaded] & 0x1) == 0x0) {
            r0 = [r19 attributes];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 skipRegistration];
            r0 = [r0 retain];
            r23 = [r0 boolValue];
            [r0 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    [r19 registerView];
            }
    }
    [r19 setLoaded:0x1];
    [r20 release];
    return;
}

-(void)constructAdOptionsView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self implementsSelector:_cmd] & 0x1) == 0x0) {
            r20 = [FBAdOptionsView new];
            r21 = [[r19 nativeAdBase] retain];
            [r20 setNativeAd:r21];
            [r21 release];
            r0 = [r19 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            [r19 setAdOptionsView:r20];
            [r20 release];
    }
    return;
}

-(bool)implementsSelector:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self respondsToSelector:r2];
    if (r0 != 0x0) {
            r0 = [[&var_40 super] respondsToSelector:r2];
            if (r0 != 0x0) {
                    r22 = [r20 methodForSelector:r19];
                    r0 = [[&var_50 super] methodForSelector:r19];
                    if (r22 != r0) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)constructBodyView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self implementsSelector:_cmd] & 0x1) == 0x0) {
            r20 = [FBAdBodyView alloc];
            r21 = [[r19 nativeAdBase] retain];
            r22 = [[r19 attributes] retain];
            r20 = [r20 initWithFrame:r21 nativeAd:r22 attributes:r4];
            [r22 release];
            [r21 release];
            [r20 setAnimationEnabled:0x1];
            r0 = [r19 containerView];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            r21 = [[r20 titleLabel] retain];
            [r19 setTitleLabel:r21];
            [r21 release];
            r21 = [[r20 descriptionLabel] retain];
            [r19 setDescriptionLabel:r21];
            [r21 release];
            r21 = [[r20 socialContextLabel] retain];
            [r19 setSocialContextLabel:r21];
            [r21 release];
            r21 = [[r20 adOptionsView] retain];
            [r19 setAdOptionsView:r21];
            [r21 release];
            [r19 setBodyView:r20];
            [r20 release];
    }
    return;
}

-(void)updateClickableViews {
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
    if (([self implementsSelector:_cmd] & 0x1) == 0x0) {
            r0 = [r19 nativeAdBase];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 dataModel];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 fullyClickable];
            [r0 release];
            [r20 release];
            if (r22 != 0x0) {
                    [r19 setClickableViews:0x0];
            }
            else {
                    r21 = [[NSHashTable weakObjectsHashTable] retain];
                    r0 = [r19 callToActionButton];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            [r21 addObject:r2];
                    }
                    r0 = [r19 iconView];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 != 0x0) {
                            [r21 addObject:r2];
                    }
                    r0 = [r19 bodyView];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 titleLabel];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            [r21 addObject:r2];
                    }
                    r0 = [r24 descriptionLabel];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            [r21 addObject:r2];
                    }
                    r0 = [r24 socialContextLabel];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if (r0 != 0x0) {
                            [r21 addObject:r2];
                    }
                    [r19 setClickableViews:r21];
                    [r27 release];
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    [r21 release];
            }
            r20 = [[NSHashTable weakObjectsHashTable] retain];
            r0 = [r19 adOptionsView];
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    [r20 addObject:r2];
            }
            [r19 setExcludedClickableViews:r20];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)constructView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isLoaded] & 0x1) == 0x0) {
            [r19 constructCallToActionButton];
            [r19 constructIconView];
            [r19 constructBodyView];
    }
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            var_A0 = d15;
            stack[-152] = d14;
            r31 = r31 + 0xffffffffffffff60;
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
            r20 = r0;
            r0 = [r0 containerView];
            r29 = &var_10;
            r19 = [r0 retain];
            [r20 bounds];
            v8 = v1;
            v9 = v3;
            if (d2 > *double_value_360) {
                    asm { fcsel      d10, d1, d0, gt };
            }
            asm { fmin       d11, d2, d14 };
            r26 = [[r20 fixedHeight] retain];
            r0 = [r20 attributes];
            r0 = [r0 retain];
            sub_100aab58c(r26, [[r0 shouldClip] retain]);
            [r19 setFrame:r2];
            [r28 release];
            [r27 release];
            [r26 release];
            r0 = [r20 attributes];
            r29 = r29;
            r26 = [r0 retain];
            [r20 updateAttributes:r26];
            [r26 release];
            objc_msgSend(r20, r21);
            v8 = v8;
            v9 = v9;
            if (d2 > d14) {
                    asm { fcsel      d10, d1, d0, gt };
            }
            r24 = @selector(shouldClip);
            r23 = @selector(attributes);
            r22 = @selector(fixedHeight);
            asm { fmin       d11, d2, d14 };
            r21 = [objc_msgSend(r20, r22) retain];
            r0 = objc_msgSend(r20, r23);
            r0 = [r0 retain];
            sub_100aab58c(r21, [objc_msgSend(r0, r24) retain]);
            objc_msgSend(r19, r25);
            [r23 release];
            [r22 release];
            [r21 release];
            r21 = [[r20 nativeAdBase] retain];
            r0 = [r20 iconView];
            r0 = [r0 retain];
            [r0 setNativeAdBase:r21];
            [r0 release];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)reset {
    r31 = r31 - 0x130;
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
    var_110 = q0;
    r0 = [self containerView];
    r0 = [r0 retain];
    r20 = [[r0 subviews] retain];
    [r0 release];
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r26 * 0x8) removeFromSuperview];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 setTitleLabel:0x0];
    [r19 setAdOptionsView:0x0];
    [r19 setCallToActionButton:0x0];
    [r19 setIconView:0x0];
    [r19 setLoaded:0x0];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)willMoveToWindow:(void *)arg2 {
    [[&var_10 super] willMoveToWindow:arg2];
    return;
}

-(void)resetViews {
    r31 = r31 - 0x130;
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
    var_110 = q0;
    r0 = [self subviews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r26 * 0x8) removeFromSuperview];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r0 = [r19 containerView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r20 release];
    [r19 setContainerView:0x0];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)allInteractableTargets {
    r31 = r31 - 0x150;
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
    var_128 = [[NSMutableArray array] retain];
    r0 = [r19 clickableViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    var_130 = r19;
    if (r0 == 0x0) {
            r0 = [NSHashTable weakObjectsHashTable];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            [r22 addObject:r2];
            r21 = r22;
    }
    var_110 = q0;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r19 = *var_110;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(var_138);
                            }
                            r0 = [FBAdUtility allInteractableTargets:*(var_118 + r20 * 0x8) excluding:[[var_130 excludedClickableViews] retain]];
                            r0 = [r0 retain];
                            r0 = [r0 allObjects];
                            r29 = r29;
                            [r0 retain];
                            [var_128 addObjectsFromArray:r2];
                            [r28 release];
                            [r22 release];
                            [r21 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r0 = objc_msgSend(var_138, var_140);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_138 release];
    [var_138 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_128 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dealloc {
    [self reset];
    [self resetViews];
    [self removeFromSuperview];
    [[&var_20 super] dealloc];
    return;
}

-(void *)rootViewController {
    r20 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r19 = [[FBAdViewControllerProxy proxyWithViewController:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)fixedHeight {
    r0 = [NSNumber numberWithInt:r2];
    return r0;
}

-(struct CGRect)bounds {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r19 = self;
    [[&var_50 super] bounds];
    v8 = v1;
    v9 = v3;
    if (d2 > *double_value_360) {
            asm { fcsel      d10, d1, d0, gt };
    }
    asm { fmin       d11, d2, d3 };
    r20 = [[r19 fixedHeight] retain];
    r0 = [r19 attributes];
    r0 = [r0 retain];
    sub_100aab58c(r20, [[r0 shouldClip] retain]);
    [r21 release];
    [r19 release];
    r0 = [r20 release];
    return r0;
}

-(void)updateAttributes:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r24 = self;
    r19 = [arg2 retain];
    r28 = [[r24 containerView] retain];
    var_E8 = [[r24 descriptionLabel] retain];
    var_F0 = [[r24 socialContextLabel] retain];
    var_F8 = [[r24 titleLabel] retain];
    var_108 = [[r24 advertiserNameLabel] retain];
    var_118 = [[r24 callToActionButton] retain];
    var_120 = [[r24 adOptionsView] retain];
    var_128 = [[r24 iconView] retain];
    r0 = [r19 backgroundColor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 backgroundColor];
            r29 = r29;
            [r0 retain];
            [r24 setBackgroundColor:r2];
            [r21 release];
            r21 = @class(FBAdUtility);
            var_70 = [r19 retain];
            [r21 traverseView:r2 withBlock:r3];
            [var_70 release];
    }
    var_100 = r28;
    r0 = [r19 descriptionColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [[r19 descriptionColor] retain];
            [var_E8 setTextColor:r2];
            [r21 release];
            r0 = [r19 descriptionColor];
            r29 = r29;
            [r0 retain];
            objc_msgSend(var_F0, r27);
            [r21 release];
            r21 = @class(FBAdUtility);
            var_98 = [r19 retain];
            [r21 traverseView:var_100 withBlock:&var_B8];
            [var_98 release];
    }
    r0 = [r19 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r25 = var_118;
    if (r0 != 0x0) {
            [[r19 descriptionFont] retain];
            [var_E8 setFont:r2];
            [r21 release];
            r0 = [r19 descriptionFont];
            r29 = r29;
            [r0 retain];
            objc_msgSend(var_F0, r27);
            [r21 release];
            r21 = @class(FBAdUtility);
            var_C0 = [r19 retain];
            [r21 traverseView:var_100 withBlock:&var_E0];
            [var_C0 release];
    }
    r0 = [r19 titleColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 titleColor];
            r29 = r29;
            [r0 retain];
            [var_F8 setTextColor:r2];
            [r21 release];
    }
    r0 = [r19 advertiserNameColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 advertiserNameColor];
            r29 = r29;
            [r0 retain];
            [var_108 setTextColor:r2];
            [r21 release];
    }
    r0 = [r19 titleFont];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 titleFont];
            r29 = r29;
            [r0 retain];
            [var_F8 setFont:r2];
            [r21 release];
    }
    r0 = [r19 buttonColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 buttonColor];
            r29 = r29;
            [r0 retain];
            [r25 setBackgroundColor:r2];
            [r21 release];
    }
    r0 = [r19 buttonTitleColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r20 = @selector(titleLabel);
    if (r0 != 0x0) {
            [[r19 buttonTitleColor] retain];
            r0 = objc_msgSend(r25, r20);
            r29 = r29;
            r0 = [r0 retain];
            [r0 setTextColor:r2];
            [r27 release];
            [r21 release];
    }
    r0 = [r19 buttonTitleColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 buttonTitleColor];
            r29 = r29;
            r21 = [r0 retain];
            [r25 setTintColor:r21];
            [r21 release];
    }
    r0 = [r19 buttonTitleFont];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [[r19 buttonTitleFont] retain];
            r0 = objc_msgSend(r25, r20);
            r29 = r29;
            r0 = [r0 retain];
            [r0 setFont:r2];
            [r24 release];
            [r21 release];
    }
    r0 = [r19 buttonBorderColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 buttonBorderColor];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r21 = r0;
            r24 = [r0 CGColor];
            r27 = @selector(layer);
            r0 = objc_msgSend(r25, r27);
            r0 = [r0 retain];
            [r0 setBorderColor:r24];
            [r0 release];
            [r21 release];
            r0 = objc_msgSend(r25, r27);
            r29 = r29;
            r0 = [r0 retain];
            [r0 setBorderWidth:r24];
            [r0 release];
    }
    r0 = [r19 buttonBorderRadius];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = &@selector(toggleAdDetailsForceShow:);
            r0 = [r19 buttonBorderRadius];
            r0 = [r0 retain];
            [r0 doubleValue];
            r0 = [r25 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r27 release];
            [r21 release];
            r0 = @class(UIScreen);
            r0 = [r0 mainScreen];
            r0 = [r0 retain];
            r27 = r0;
            [r0 scale];
            r0 = objc_msgSend(r25, r28);
            r29 = r29;
            r0 = [r0 retain];
            v0 = v0;
            objc_msgSend(r0, *(r22 + 0x308));
            [r21 release];
            r20 = var_100;
    }
    else {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r22 = [r0 useRedesignedTemplates];
            [r0 release];
            r0 = [r25 layer];
            r29 = r29;
            r27 = [r0 retain];
            r20 = var_100;
            [r27 setCornerRadius:r2];
            r22 = &@selector(toggleAdDetailsForceShow:);
    }
    [r27 release];
    r0 = [r19 borderRadius];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r28 = @selector(layer);
            r0 = [r19 borderRadius];
            r0 = [r0 retain];
            [r0 doubleValue];
            r0 = objc_msgSend(r20, r28);
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            r0 = r22;
            r22 = r26;
            [r0 release];
            [r21 release];
            r0 = objc_msgSend(@class(UIScreen), *(r23 + 0x730));
            r0 = [r0 retain];
            r27 = r0;
            [r0 scale];
            r0 = objc_msgSend(r20, r28);
            r29 = r29;
            r0 = [r0 retain];
            v0 = v0;
            objc_msgSend(r0, *(r26 + 0x308));
            [r21 release];
    }
    else {
            r0 = [r20 layer];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            [r0 setCornerRadius:r2];
    }
    [r27 release];
    r0 = [r19 iconBorderRadius];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r28 = @selector(layer);
            r0 = [r19 iconBorderRadius];
            r0 = [r0 retain];
            [r0 doubleValue];
            r23 = var_128;
            r0 = objc_msgSend(r23, r28);
            r0 = [r0 retain];
            [r0 setCornerRadius:r2];
            [r22 release];
            [r21 release];
            r25 = r25;
            r0 = objc_msgSend(@class(UIScreen), *(&@selector(menu) + 0x730));
            r0 = [r0 retain];
            r27 = r0;
            [r0 scale];
            r0 = objc_msgSend(r20, r28);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, *(r26 + 0x308));
            [r21 release];
    }
    else {
            r23 = var_128;
            r0 = [r23 layer];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            [r0 setCornerRadius:r2];
    }
    r22 = var_120;
    [r27 release];
    r0 = [r19 adChoicesForegroundColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adChoicesForegroundColor];
            r29 = r29;
            r21 = [r0 retain];
            [r22 setForegroundColor:r21];
            [r21 release];
    }
    r0 = [r19 adChoicesBackgroundColor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 adChoicesBackgroundColor] retain];
            [r22 setBackgroundColor:r21];
            [r21 release];
    }
    [r23 release];
    [r22 release];
    [r25 release];
    [var_108 release];
    [var_F8 release];
    [var_F0 release];
    [var_E8 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_excludedClickableViews, 0x0);
    objc_storeStrong((int64_t *)&self->_clickableViews, 0x0);
    objc_destroyWeak((int64_t *)&self->_containerView);
    objc_destroyWeak((int64_t *)&self->_bodyView);
    objc_destroyWeak((int64_t *)&self->_adOptionsView);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_advertiserNameLabel);
    objc_destroyWeak((int64_t *)&self->_socialContextLabel);
    objc_destroyWeak((int64_t *)&self->_descriptionLabel);
    objc_destroyWeak((int64_t *)&self->_titleLabel);
    objc_destroyWeak((int64_t *)&self->_callToActionButton);
    objc_storeStrong((int64_t *)&self->_attributes, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    return;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(long long)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

-(void *)attributes {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_attributes)), 0x0);
    return r0;
}

-(void *)callToActionButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_callToActionButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCallToActionButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_callToActionButton, arg2);
    return;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void *)titleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_titleLabel);
    r0 = [r0 autorelease];
    return r0;
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

-(void *)socialContextLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_socialContextLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setSocialContextLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_socialContextLabel, arg2);
    return;
}

-(void *)advertiserNameLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_advertiserNameLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdvertiserNameLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_advertiserNameLabel, arg2);
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

-(void *)adOptionsView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adOptionsView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdOptionsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adOptionsView, arg2);
    return;
}

-(void *)bodyView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bodyView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBodyView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bodyView, arg2);
    return;
}

-(void *)containerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_containerView);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_containerView, arg2);
    return;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

-(void *)clickableViews {
    r0 = self->_clickableViews;
    return r0;
}

-(void)setClickableViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_clickableViews, arg2);
    return;
}

-(void *)excludedClickableViews {
    r0 = self->_excludedClickableViews;
    return r0;
}

-(void)setExcludedClickableViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_excludedClickableViews, arg2);
    return;
}

+(double)defaultDescriptionFontSize {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self useRedesignedTemplates];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

+(void *)defaultTextColor {
    r0 = [UIColor colorWithUInt:0x616671 withAlpha:r3];
    return r0;
}

+(bool)useRedesignedTemplates {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 useRedesignedTemplates];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)defaultAttributes {
    r19 = [FBNativeAdViewAttributes new];
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setBackgroundColor:r22];
    [r22 release];
    r22 = [[self defaultTextColor] retain];
    r2 = r22;
    [r19 setDescriptionColor:r2];
    [r22 release];
    r22 = @class(FBAdFont);
    [self defaultDescriptionFontSize];
    r22 = [[r22 sfuiTextRegularWithSize:r2] retain];
    [r19 setDescriptionFont:r22];
    [r22 release];
    r24 = [[FBAdFont sfuiDisplaySemiboldWithSize:r22] retain];
    [r19 setTitleFont:r24];
    [r24 release];
    r21 = [[self defaultTextColor] retain];
    [r19 setTitleColor:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0x3c7cff withAlpha:r3] retain];
    [r19 setButtonColor:r21];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setButtonTitleColor:r21];
    [r21 release];
    r21 = [[FBAdFont sfuiDisplaySemiboldWithSize:r21] retain];
    [r19 setButtonTitleFont:r21];
    [r21 release];
    r20 = [[UIColor colorWithUInt:0x1c1e21 withAlpha:r3] retain];
    [r19 setAdvertiserNameColor:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end