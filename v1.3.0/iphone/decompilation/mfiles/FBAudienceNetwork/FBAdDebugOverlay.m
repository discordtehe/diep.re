@implementation FBAdDebugOverlay

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void)dismissButtonClicked:(void *)arg2 {
    [self removeFromSuperview];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [[&var_40 super] initWithFrame:r2];
            r20 = r0;
            if (r0 != 0x0) {
                    r21 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
                    [r20 setBackgroundColor:r21];
                    [r21 release];
                    r0 = [r20 dateFormatter];
                    r0 = [r0 retain];
                    [r0 setDateFormat:@"hh:mm:ss aa"];
                    r22 = [[NSDate date] retain];
                    r23 = [[r0 stringFromDate:r22] retain];
                    [r20 setTimestamp:r23];
                    [r23 release];
                    [r22 release];
                    [r20 constructDebugContextLabel];
                    [r20 updateDebugContextLabel:r19];
                    [r20 constructDismissButton];
                    [r0 release];
            }
            r0 = [r20 retain];
            r20 = r0;
            r21 = r0;
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:@"FBAdDebugOverlay: placementID cannot be nil"];
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)pointInside:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self dismissButton];
    r0 = [r0 retain];
    r1 = @selector(frame);
    r20 = CGRectContainsPoint(objc_msgSend(r0, r1), r1);
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)updateDebugContextLabel:(void *)arg2 {
    r20 = [arg2 copy];
    [self setPlacementID:r20];
    [r20 release];
    r0 = [NSBundle bundleForClass:[self class]];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [[r0 bundleIdentifier] retain];
    r21 = [[NSString stringWithFormat:@"%@\n%@\nv%@\n%@"] retain];
    r0 = [self debugContextLabel];
    r0 = [r0 retain];
    [r0 setText:r21];
    [r0 release];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void *)dateFormatter {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100ea8da8);
    if (*qword_1011dcc58 != -0x1) {
            dispatch_once(0x1011dcc58, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcc60);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)constructDismissButton {
    r0 = [UIButton alloc];
    r0 = [r0 initWithFrame:r2];
    r19 = r0;
    [r0 setTitle:@"X" forState:0x0];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r19 setTintColor:r21];
    [r21 release];
    [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r19 addTarget:self action:@selector(dismissButtonClicked:) forControlEvents:0x40];
    [self addSubview:r19];
    [self setDismissButton:r19];
    r23 = @class(NSLayoutConstraint);
    r24 = [[self dismissButton] retain];
    r0 = [r23 constraintWithItem:r24 attribute:0xa relatedBy:0x0 toItem:self attribute:0xa multiplier:r7 constant:d9];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r24 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[self dismissButton] retain];
    r0 = [r24 constraintWithItem:r25 attribute:0x5 relatedBy:0x0 toItem:self attribute:0x5 multiplier:r7 constant:d9];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[self dismissButton] retain];
    r0 = [r24 constraintWithItem:r25 attribute:0x8 relatedBy:0x0 toItem:0x0 attribute:0x0 multiplier:r7 constant:d9];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r20 = [[self dismissButton] retain];
    r0 = [r24 constraintWithItem:r20 attribute:0x7 relatedBy:0x0 toItem:0x0 attribute:0x0 multiplier:r7 constant:d9];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_dismissButton, 0x0);
    objc_storeStrong((int64_t *)&self->_debugContextLabel, 0x0);
    return;
}

-(void)constructDebugContextLabel {
    r0 = [UILabel alloc];
    r20 = [r0 initWithFrame:r2];
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r22];
    [r22 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setTextColor:r21];
    [r21 release];
    [r20 setTextAlignment:0x1];
    [r20 setNumberOfLines:0x4];
    [r20 setAdjustsFontSizeToFitWidth:0x1];
    [r20 setBaselineAdjustment:0x1];
    [r20 setMinimumScaleFactor:0x1];
    [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [self addSubview:r20];
    [self setDebugContextLabel:r20];
    r23 = @class(NSLayoutConstraint);
    r24 = [[self debugContextLabel] retain];
    r0 = [r23 constraintWithItem:r24 attribute:0x5 relatedBy:0x0 toItem:self attribute:0x5 multiplier:r7 constant:var_50];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r24 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[self debugContextLabel] retain];
    r0 = [r24 constraintWithItem:r25 attribute:0x6 relatedBy:0x0 toItem:self attribute:0x6 multiplier:r7 constant:var_50];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[self debugContextLabel] retain];
    r0 = [r24 constraintWithItem:r25 attribute:0x3 relatedBy:0x0 toItem:self attribute:0x3 multiplier:r7 constant:var_50];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r22 = [[self debugContextLabel] retain];
    r0 = [r24 constraintWithItem:r22 attribute:0x4 relatedBy:0x0 toItem:self attribute:0x4 multiplier:r7 constant:var_50];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r22 release];
    [r20 release];
    return;
}

-(void *)debugContextLabel {
    r0 = self->_debugContextLabel;
    return r0;
}

-(void *)dismissButton {
    r0 = self->_dismissButton;
    return r0;
}

-(void)setDebugContextLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_debugContextLabel, arg2);
    return;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDismissButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dismissButton, arg2);
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void *)timestamp {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timestamp)), 0x0);
    return r0;
}

-(void)setTimestamp:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void)updatePlacementID:(void *)arg2 inView:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isDebugOverlayEnabled];
            [r0 release];
            if (r22 != 0x0) {
                    var_110 = q0;
                    var_130 = r20;
                    r0 = [r20 subviews];
                    r0 = [r0 retain];
                    r21 = r0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_128 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r23 = r0;
                            r28 = *var_110;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            r27 = *(var_118 + r22 * 0x8);
                                            if ([r27 isKindOfClass:[FBAdDebugOverlay class]] != 0x0) {
                                                    [r27 updateDebugContextLabel:r2];
                                            }
                                            r22 = r22 + 0x1;
                                    } while (r22 < r23);
                                    r0 = objc_msgSend(r21, var_128);
                                    r23 = r0;
                            } while (r0 != 0x0);
                    }
                    [r21 release];
                    r20 = var_130;
            }
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

+(void)addToSuperview:(void *)arg2 withPlacementID:(void *)arg3 {
    r31 = r31 - 0x150;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            var_140 = r20;
            stack[-328] = r19;
            var_120 = q0;
            r0 = [r19 subviews];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r23 = r0;
                    r20 = *var_120;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_120 != r20) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r24 = @selector(class);
                                    r27 = *(var_128 + r19 * 0x8);
                                    objc_msgSend(@class(FBAdDebugOverlay), r24);
                                    if (objc_msgSend(r27, r25) != 0x0) {
                                            [r27 removeFromSuperview];
                                    }
                                    r19 = r19 + 0x1;
                            } while (r19 < r23);
                            r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [r21 release];
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isDebugOverlayEnabled];
            [r0 release];
            r20 = var_140;
            r19 = stack[-328];
            if (r22 != 0x0) {
                    r21 = [[FBAdDebugOverlay alloc] initWithPlacementID:r20];
                    [r19 addSubview:r21];
                    [r21 setTranslatesAutoresizingMaskIntoConstraints:0x0];
                    r0 = @class(NSLayoutConstraint);
                    r0 = [r0 constraintWithItem:r21 attribute:0x5 relatedBy:0x0 toItem:r19 attribute:0x5 multiplier:r7 constant:var_140];
                    r0 = [r0 retain];
                    [r0 setActive:0x1];
                    [r0 release];
                    r0 = @class(NSLayoutConstraint);
                    r0 = [r0 constraintWithItem:r21 attribute:0x6 relatedBy:0x0 toItem:r19 attribute:0x6 multiplier:r7 constant:var_140];
                    r0 = [r0 retain];
                    [r0 setActive:0x1];
                    [r0 release];
                    r0 = @class(NSLayoutConstraint);
                    r0 = [r0 constraintWithItem:r21 attribute:0x3 relatedBy:0x0 toItem:r19 attribute:0x3 multiplier:r7 constant:var_140];
                    r0 = [r0 retain];
                    [r0 setActive:0x1];
                    [r0 release];
                    r0 = @class(NSLayoutConstraint);
                    r0 = [r0 constraintWithItem:r21 attribute:0x4 relatedBy:0x0 toItem:r19 attribute:0x4 multiplier:r7 constant:var_140];
                    r0 = [r0 retain];
                    [r0 setActive:0x1];
                    [r0 release];
                    [r21 release];
            }
    }
    var_70 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

@end