@implementation MenuSettingsNodeView

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_rightItems));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)hideAll {
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
    r20 = self->_rightItems;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_118 + r26 * 0x8) setVisible:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19->_titleLabel setVisible:r2];
    objc_msgSend(r19->_firstTitleLabel, r20);
    objc_msgSend(r19->_whiteNode, r20);
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setupTitle:(void *)arg2 {
    [self setupTitle:arg2 isFirst:0x0];
    return;
}

-(void)setupTitle:(void *)arg2 isFirst:(bool)arg3 {
    [self hideAll];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_titleLabel))) setString:arg2];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_firstTitleLabel))) setString:arg2];
    [self->_whiteNode setVisible:r2];
    objc_msgSend(*(self + r23), r20);
    objc_msgSend(*(self + r24), r20);
    return;
}

-(void)setupLayoutFacebook {
    [self setupLayoutFacebook:[[[Application sharedApplication] localizationManager] textForKey:@"menu_login_facebook"] buttonText:[[[Application sharedApplication] localizationManager] textForKey:@"menu_login"]];
    return;
}

-(void)setupLayoutFacebook:(void *)arg2 buttonText:(void *)arg3 {
    [self setupButtonLayout:self->_facebookButton leftText:arg2 buttonText:arg3];
    return;
}

-(void)setupLayoutGoogle {
    [self setupLayoutGoogle:[[[Application sharedApplication] localizationManager] textForKey:@"menu_login_google"] buttonText:[[[Application sharedApplication] localizationManager] textForKey:@"menu_login"]];
    return;
}

-(void)setupLayoutGoogle:(void *)arg2 buttonText:(void *)arg3 {
    [self setupButtonLayout:self->_googleButton leftText:arg2 buttonText:arg3];
    return;
}

-(void)setupLayoutGreen:(void *)arg2 buttonText:(void *)arg3 {
    [self setupButtonLayout:self->_greenButton leftText:arg2 buttonText:arg3];
    return;
}

-(void)setupLayoutBlue:(void *)arg2 buttonText:(void *)arg3 {
    [self->_leftLabel setString:r2];
    [self setupButtonLayout:self->_blueButton leftText:arg2 buttonText:arg3];
    return;
}

-(void)setupLayoutOrange:(void *)arg2 buttonText:(void *)arg3 {
    [self setupButtonLayout:self->_orangeButton leftText:arg2 buttonText:arg3];
    return;
}

-(void)setupButtonLayout:(void *)arg2 leftText:(void *)arg3 buttonText:(void *)arg4 {
    [self->_leftLabel setString:arg3];
    [self hideAll];
    [arg2 setVisible:0x1];
    [[self getChildWithTag:0x17 forNode:arg2] setString:arg4];
    return;
}

-(void)setupToggleSwipe:(void *)arg2 {
    [self->_leftLabel setString:arg2];
    [self hideAll];
    [self->_toggleSwipe setVisible:r2];
    return;
}

-(void)setupLayout:(void *)arg2 rightText:(void *)arg3 {
    [self hideAll];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_rightLabel));
    [*(self + r22) setVisible:0x1];
    [*(self + r22) setString:arg3];
    [self->_leftLabel setString:arg2];
    return;
}

-(void)setupLayout:(void *)arg2 leftButtonText:(void *)arg3 centerButtonText:(void *)arg4 rightButtonText:(void *)arg5 {
    [self hideAll];
    [self->_leftLabel setString:arg2];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_leftToggle));
    [*(self + r27) setVisible:0x1];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_rightToggle));
    [*(self + r26) setVisible:0x1];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_centerToggle));
    [*(self + r25) setVisible:0x1];
    r0 = *(self + r27);
    r24 = @selector(getChildByTag:);
    [objc_msgSend(r0, r24) setString:arg3];
    [objc_msgSend(*(self + r27), r24) setString:arg3];
    [objc_msgSend(*(self + r26), r24) setString:arg4];
    [objc_msgSend(*(self + r26), r24) setString:arg4];
    [objc_msgSend(*(self + r25), r24) setString:arg5];
    [objc_msgSend(*(self + r25), r24) setString:arg5];
    return;
}

-(void)setupLayout:(void *)arg2 leftButtonText:(void *)arg3 rightButtonText:(void *)arg4 {
    [self hideAll];
    [self->_leftLabel setString:arg2];
    [self->_rightToggle setVisible:0x1];
    [self->_centerToggle setVisible:0x1];
    [self->_centerToggleOnText setString:arg3];
    [self->_centerToggleOffText setString:arg3];
    [self->_rightToggleOnText setString:arg4];
    [self->_rightToggleOffText setString:arg4];
    return;
}

-(void)showHint {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_hint))) setVisible:0x1];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_leftLabel))) position];
    [*(r19 + r23) contentSize];
    [*(r19 + r23) anchorPoint];
    [*(r19 + r22) contentSize];
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    objc_msgSend(*(r19 + r22), r20);
    [*(r19 + r22) setPosition:r2];
    return;
}

-(void *)hint {
    r0 = self->_hint;
    return r0;
}

-(void *)getChildWithTag:(long long)arg2 forNode:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if ([arg3 children] == 0x0 || **([r21 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) == 0x0) goto loc_100066e18;

loc_100066d74:
    r22 = @selector(children);
    r24 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
    r25 = *(*(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
    r25 = r25 + **(objc_msgSend(r21, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
    if (r24 > r25) goto loc_100066e18;

loc_100066ddc:
    r22 = *r24;
    if ([r22 tag] == r19) goto loc_100066e1c;

loc_100066df4:
    r0 = [r20 getChildWithTag:r2 forNode:r3];
    if (r0 != 0x0) goto loc_100066e38;

loc_100066e0c:
    r24 = r24 + 0x8;
    if (r24 < r25) goto loc_100066ddc;

loc_100066e18:
    r22 = 0x0;
    goto loc_100066e1c;

loc_100066e1c:
    r0 = r22;
    return r0;

loc_100066e38:
    r22 = r0;
    goto loc_100066e1c;
}

-(void)updateLeftButton:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_leftToggle));
    if ([[*(self + r21) subItems] count] != 0x0) {
            r20 = *(r20 + r21);
            [r19 intValue];
            asm { sxtw       x2, w0 };
            [r20 setSelectedIndex:r2];
    }
    else {
            [r20 performSelector:@selector(updateLeftButton:) withObject:r19 afterDelay:r4];
    }
    return;
}

-(void)updateCenterButton:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_centerToggle));
    if ([[*(self + r21) subItems] count] != 0x0) {
            r20 = *(r20 + r21);
            [r19 intValue];
            asm { sxtw       x2, w0 };
            [r20 setSelectedIndex:r2];
    }
    else {
            [r20 performSelector:@selector(updateCenterButton:) withObject:r19 afterDelay:r4];
    }
    return;
}

-(void)updateRightButton:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rightToggle));
    if ([[*(self + r21) subItems] count] != 0x0) {
            r20 = *(r20 + r21);
            [r19 intValue];
            asm { sxtw       x2, w0 };
            [r20 setSelectedIndex:r2];
    }
    else {
            [r20 performSelector:@selector(updateRightButton:) withObject:r19 afterDelay:r4];
    }
    return;
}

-(void)updateToggle:(int)arg2 {
    r2 = arg2;
    r0 = self->_toggleSwipe;
    asm { sxtw       x2, w2 };
    [r0 setSelectedIndex:r2];
    return;
}

-(void)loadData {
    r2 = self->_rightToggle;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_leftToggle));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_centerToggle));
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_toggleSwipe));
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_facebookButton));
    r12 = sign_extend_64(*(int32_t *)ivar_offset(_googleButton));
    r13 = sign_extend_64(*(int32_t *)ivar_offset(_orangeButton));
    r14 = sign_extend_64(*(int32_t *)ivar_offset(_blueButton));
    r15 = sign_extend_64(*(int32_t *)ivar_offset(_greenButton));
    r16 = sign_extend_64(*(int32_t *)ivar_offset(_rightLabel));
    self->_rightItems = [[NSArray arrayWithObjects:r2] retain];
    return;
}

-(void)unloadData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_rightItems));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    return;
}

-(void)hintButtonCallback {
    [self->_delegate hintButtonCallback];
    return;
}

-(void)buttonCallback {
    [self->_delegate buttonCallback];
    return;
}

-(void)leftButtonCallback:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_delegate;
    if ([arg2 selectedIndex] == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r19 leftButtonCallback:r2];
    return;
}

-(void)rightButtonCallback:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_delegate;
    if ([arg2 selectedIndex] == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r19 rightButtonCallback:r2];
    return;
}

-(void)centerButtonCallback:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_delegate;
    if ([arg2 selectedIndex] == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r19 centerButtonCallback:r2];
    return;
}

-(void)toggleSwipeCallback:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_delegate;
    if ([arg2 selectedIndex] == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r19 toggleSwipeCallback:r2];
    return;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    self->_delegate = arg2;
    return;
}

@end