@implementation FBAdStoriesPageIndicator

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setup];
    }
    r0 = r19;
    return r0;
}

-(void)layoutSubviews {
    [[&var_30 super] layoutSubviews];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_stackView));
    [*(self + r20) bounds];
    r0 = *(self + r20);
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    return;
}

-(void *)stackView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_stackView));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = [UIStackView new];
            r20 = r0;
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r20 setAxis:0x0];
            [r20 setSpacing:0x0];
            [r20 setDistribution:0x1];
            [r20 setClipsToBounds:0x1];
            r0 = *(r19 + r21);
            *(r19 + r21) = r20;
            [r0 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_stackView, 0x0);
    objc_storeStrong((int64_t *)&self->_items, 0x0);
    return;
}

-(void)setup {
    r31 = r31 - 0xb0;
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
    var_58 = **___stack_chk_guard;
    [self setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r19 = [[self stackView] retain];
    [self addSubview:r19];
    r0 = [r19 heightAnchor];
    r0 = [r0 retain];
    var_80 = r0;
    var_88 = [[r0 constraintEqualToConstant:r19] retain];
    r0 = [r19 leadingAnchor];
    r0 = [r0 retain];
    var_98 = r0;
    r25 = [[self leadingAnchor] retain];
    r26 = [[r0 constraintEqualToAnchor:r25 constant:r3] retain];
    r27 = [[r19 trailingAnchor] retain];
    r28 = [[self trailingAnchor] retain];
    r22 = [[r27 constraintEqualToAnchor:r28 constant:r3] retain];
    r20 = [[r19 centerYAnchor] retain];
    r21 = [[self centerYAnchor] retain];
    r24 = [[r20 constraintEqualToAnchor:r21] retain];
    r0 = [NSArray arrayWithObjects:&var_78 count:0x4];
    r23 = [r0 retain];
    [NSLayoutConstraint activateConstraints:r23];
    [r23 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r22 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [var_98 release];
    [var_88 release];
    [var_80 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)configureWithProgress:(double)arg2 totalProgress:(double)arg3 {
    r0 = self;
    r31 = r31 - 0x170;
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
    *(r29 + 0xffffffffffffff70) = **___stack_chk_guard;
    if (d1 >= 0x0) {
            r19 = r0;
            r0 = [r0 stackView];
            r29 = r29;
            r22 = [r0 retain];
            asm { fcvtzu     x21, d8 };
            r28 = @selector(items);
            r0 = objc_msgSend(r19, r28);
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 count];
            [r0 release];
            if (r24 != r21) {
                    var_150 = q0;
                    r0 = [r19 items];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r25 = r0;
                            r27 = *var_150;
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*var_150 != r27) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            [*(var_158 + r20 * 0x8) removeFromSuperview];
                                            r20 = r20 + 0x1;
                                    } while (r20 < r25);
                                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r25 = r0;
                            } while (r0 != 0x0);
                    }
                    [r23 release];
                    r0 = [NSMutableArray arrayWithCapacity:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r21 != 0x0) {
                            r20 = r21;
                            do {
                                    [r23 addObject:[FBAdStoriesPageIndicatorItemView new]];
                                    [r22 addArrangedSubview:r2];
                                    [r27 release];
                                    r20 = r20 - 0x1;
                            } while (r20 != 0x0);
                    }
                    [r19 setItems:r23];
                    [r19 setNeedsLayout];
                    [r23 release];
                    r28 = @selector(items);
            }
            asm { fmaxnm     d0, d9, d10 };
            if (d0 > d8) {
                    asm { fcsel      d0, d8, d0, gt };
            }
            if (r21 != 0x0) {
                    r23 = 0x0;
                    asm { frintm     d8, d0 };
                    d11 = d8 + 0x3ff0000000000000;
                    do {
                            r0 = objc_msgSend(r19, r28);
                            r0 = [r0 retain];
                            r26 = r0;
                            r0 = [r0 objectAtIndexedSubscript:r23];
                            r29 = r29;
                            r27 = [r0 retain];
                            [r26 release];
                            asm { ucvtf      d0, x23 };
                            if (d11 > d0) {
                                    asm { fcsel      d1, d12, d10, gt };
                            }
                            if (d8 > d0) {
                                    asm { fcsel      d0, d9, d1, gt };
                            }
                            [r27 setProgress:r2];
                            [r27 release];
                            r23 = r23 + 0x1;
                    } while (r21 != r23);
            }
            [r22 release];
    }
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff70)) {
            __stack_chk_fail();
    }
    return;
}

-(void)setStackView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_stackView, arg2);
    return;
}

-(void *)items {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_items)), 0x0);
    return r0;
}

-(void)setItems:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)progress {
    r0 = self;
    return r0;
}

-(void)setProgress:(double)arg2 {
    self->_progress = d0;
    return;
}

@end