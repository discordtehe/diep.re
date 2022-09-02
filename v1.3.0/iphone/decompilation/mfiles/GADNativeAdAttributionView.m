@implementation GADNativeAdAttributionView

-(void *)initWithAttribution:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [self initWithFrame:r2];
    if (r20 != 0x0) {
            [r20 setAttribution:r19];
            r0 = [r19 icons];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 count] != 0x0) {
                    r22 = 0x0;
            }
            else {
                    r0 = [r19 text];
                    r0 = [r0 retain];
                    r23 = r0;
                    if ([r0 length] == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r22 = 0x1;
                            }
                    }
                    [r23 release];
            }
            [r21 release];
            [r20 setHidden:r22];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)iconView {
    r0 = self->_iconView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
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
    r0 = [[&var_70 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setClipsToBounds:0x1];
            r0 = [GADPushTransitionView alloc];
            r0 = [r0 init];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_iconView));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r0 = [UILabel alloc];
            r0 = [r0 init];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_textView));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r0 = @class(UIView);
            r0 = [r0 alloc];
            r0 = [r0 init];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_textPaddingLeft));
            r8 = *(r19 + r27);
            *(r19 + r27) = r0;
            [r8 release];
            r0 = @class(UIView);
            r0 = [r0 alloc];
            r0 = [r0 init];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_textPaddingRight));
            r8 = *(r19 + r26);
            *(r19 + r26) = r0;
            [r8 release];
            [r19 addSubview:*(r19 + r22)];
            [r19 addSubview:*(r19 + r25)];
            [r19 addSubview:*(r19 + r27)];
            [r19 addSubview:*(r19 + r26)];
            [*(r19 + r22) setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [*(r19 + r25) setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [*(r19 + r27) setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [*(r19 + r26) setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r1 = *(r19 + r22);
            r8 = *(r19 + r25);
            r20 = [_NSDictionaryOfVariableBindings(@"_iconView, _textView, _textPaddingLeft, _textPaddingRight", r1) retain];
            r22 = [[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_textPaddingLeft][_textView][_textPaddingRight][_iconView]|" options:0x400 metrics:0x0 views:r20] retain];
            [NSLayoutConstraint activateConstraints:r22];
            r24 = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_textPaddingLeft]|" options:0x0 metrics:0x0 views:r20] retain];
            [r22 release];
            [NSLayoutConstraint activateConstraints:r24];
            r21 = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_textPaddingLeft(>=_textView,>=_iconView)]" options:0x0 metrics:0x0 views:r20] retain];
            [r24 release];
            [NSLayoutConstraint activateConstraints:r21];
            r23 = [[NSLayoutConstraint constraintWithItem:*(r19 + r27) attribute:0x7 relatedBy:0x0 toItem:*(r19 + r25) attribute:0x8 multiplier:r7 constant:r8] retain];
            [r19 addConstraint:r23];
            [r23 release];
            r22 = [[NSLayoutConstraint constraintWithItem:*(r19 + r26) attribute:0x7 relatedBy:0x0 toItem:*(r19 + r25) attribute:0x8 multiplier:r7 constant:r8] retain];
            [r19 addConstraint:r22];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)textView {
    r0 = self->_textView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)layoutSubviews {
    [[&var_30 super] layoutSubviews];
    [self layoutIfNeeded];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:0x1];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dynamicConstraints, 0x0);
    objc_storeStrong((int64_t *)&self->_textPaddingRight, 0x0);
    objc_storeStrong((int64_t *)&self->_textPaddingLeft, 0x0);
    objc_storeStrong((int64_t *)&self->_textView, 0x0);
    objc_storeStrong((int64_t *)&self->_iconView, 0x0);
    return;
}

-(void)setAttribution:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r0 = [arg2 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_textView));
    r19 = *(self + r20);
    r21 = [[r0 text] retain];
    [r19 setText:r21];
    [r21 release];
    r19 = *(self + r20);
    r21 = [[r0 font] retain];
    [r19 setFont:r21];
    [r21 release];
    r19 = *(self + r20);
    r21 = [[r0 textColor] retain];
    [r19 setTextColor:r21];
    [r21 release];
    r19 = [[r0 backgroundColor] retain];
    var_158 = self;
    [self setBackgroundColor:r19];
    [r19 release];
    var_140 = [[NSMutableArray alloc] init];
    var_150 = r0;
    r0 = [r0 icons];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &stack[-328];
    var_148 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            r0 = *(0x0 + r21 * 0x8);
                            r0 = [r0 image];
                            r29 = r29;
                            r19 = [r0 retain];
                            if (r19 != 0x0) {
                                    r20 = [[UIImageView alloc] initWithImage:r19];
                                    sub_100822370(var_140, r20);
                                    objc_msgSend(r19, r28);
                                    if (d9 < d0) {
                                            asm { fcsel      d9, d0, d9, mi };
                                    }
                                    if (d8 < d1) {
                                            asm { fcsel      d8, d1, d8, mi };
                                    }
                                    [r20 release];
                            }
                            [r19 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r25);
                    r2 = &stack[-328];
                    r25 = objc_msgSend(r23, var_148);
            } while (r25 != 0x0);
    }
    [r23 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_iconView));
    r25 = var_158;
    r24 = var_150;
    r19 = *(r25 + r21);
    [r24 iconAnimationDuration];
    [r19 setAnimationDuration:r2];
    r19 = *(r25 + r21);
    [r24 iconPresentationDuration];
    [r19 setPresentationDuration:r2];
    [*(r25 + r21) setViews:var_140];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dynamicConstraints));
    if (*(r25 + r20) != 0x0) {
            [NSLayoutConstraint deactivateConstraints:r2];
    }
    var_68 = **___stack_chk_guard;
    r22 = [[NSLayoutConstraint constraintWithItem:*(r25 + r21) attribute:0x7 relatedBy:0x0 toItem:0x0 attribute:0x0 multiplier:r7 constant:stack[-368]] retain];
    r19 = [[NSLayoutConstraint constraintWithItem:*(r25 + r21) attribute:0x8 relatedBy:0x0 toItem:0x0 attribute:0x0 multiplier:r7 constant:stack[-368]] retain];
    r0 = [NSArray arrayWithObjects:&var_F8 count:0x2];
    r0 = [r0 retain];
    r8 = *(r25 + r20);
    *(r25 + r20) = r0;
    [r8 release];
    [NSLayoutConstraint activateConstraints:*(r25 + r20)];
    [r19 release];
    [r22 release];
    [var_140 release];
    [r24 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

@end