@implementation KeyboardInput

+(void *)sharedKeyboardInput {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d9448;
    if (r0 == 0x0) {
            r0 = [KeyboardInput alloc];
            r0 = [r0 init];
            *0x1011d9448 = r0;
    }
    return r0;
}

+(void)releaseSharedKeyboardInput {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d9448 != 0x0) {
            [*0x1011d9448 release];
            *0x1011d9448 = 0x0;
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(r0 + 0x80) = 0x1;
            *(int8_t *)(r0 + 0x75) = 0x1;
            *(int32_t *)(r0 + 0x84) = 0x9;
    }
    return r0;
}

-(void)setDismissButtonEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x80) = arg2;
    [*(self + 0x18) setEnabled:r2];
    return;
}

-(void)cleanUiKitElements:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r0 = [arg2 userInfo];
    r19 = r0;
    var_100 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) removeFromSuperview];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)cleanUp {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = self + 0x8;
    r0 = *r22;
    *(int8_t *)(r22 + 0x20) = 0x0;
    [r0 resignFirstResponder];
    [*r22 endEditing:0x1];
    [*r22 setEnabled:0x0];
    r20 = [NSMutableArray array];
    if (*r22 != 0x0) {
            [r20 addObject:r2];
    }
    if (*(r19 + 0x10) != 0x0) {
            [r20 addObject:r2];
    }
    if (*(r19 + 0x18) != 0x0) {
            [r20 addObject:r2];
    }
    if (*(r19 + 0x20) != 0x0) {
            [r20 addObject:r2];
    }
    if ([r20 count] != 0x0) {
            [NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(cleanUiKitElements:) selector:r20 userInfo:0x0 repeats:r6];
    }
    [[NSNotificationCenter defaultCenter] removeObserver:r19 name:**_UIKeyboardWillChangeFrameNotification object:0x0];
    [[NSNotificationCenter defaultCenter] removeObserver:r19 name:*0x1011c0680 object:0x0];
    [[NSNotificationCenter defaultCenter] removeObserver:r19 name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    *(int128_t *)r22 = q0;
    *(int128_t *)(r22 + 0x10) = q0;
    return;
}

-(void)dismissButtonPressed:(void *)arg2 {
    r0 = self;
    if (*(int8_t *)(r0 + 0x80) != 0x0) {
            [r0 dismiss];
    }
    return;
}

-(void)dismiss {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x50);
    if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
            [r0 performSelector:r2];
    }
    [r19 cleanUp];
    return;
}

-(void)showKeyboardInput:(void *)arg2 {
    [self showKeyboardInput:arg2 hideShortcutBar:0x0];
    return;
}

-(void)confirmButtonPressed:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 text];
    r20 = r0;
    if (r0 != 0x0) {
            sub_1005b9b14(r20);
            asm { sxtw       x8, w0 };
            if (*(r19 + 0x78) != 0x0) {
                    asm { ccmp       x3, x8, #0x2, ne };
            }
            if (!CPU_FLAGS & NB) {
                    r0 = [r19 capString:r20 ToLength:r3];
                    r20 = r0;
                    if (r0 != 0x0) {
                            if ([r20 isEqualToString:r2] != 0x0) {
                                    if (*(int8_t *)(r19 + 0x72) != 0x0) {
                                            r0 = *(r19 + 0x50);
                                            if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                                                    [r0 performSelector:r2];
                                            }
                                    }
                                    else {
                                            r0 = *(r19 + 0x40);
                                            if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                                                    [r0 performSelector:r2 withObject:r3];
                                            }
                                    }
                            }
                            else {
                                    r0 = *(r19 + 0x40);
                                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                                            [r0 performSelector:r2 withObject:r3];
                                    }
                            }
                    }
                    else {
                            if (*(int8_t *)(r19 + 0x72) != 0x0) {
                                    r0 = *(r19 + 0x50);
                                    if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                                            [r0 performSelector:r2];
                                    }
                            }
                            else {
                                    r0 = *(r19 + 0x40);
                                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                                            [r0 performSelector:r2 withObject:r3];
                                    }
                            }
                    }
            }
            else {
                    if ([r20 isEqualToString:r2] != 0x0) {
                            if (*(int8_t *)(r19 + 0x72) != 0x0) {
                                    r0 = *(r19 + 0x50);
                                    if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                                            [r0 performSelector:r2];
                                    }
                            }
                            else {
                                    r0 = *(r19 + 0x40);
                                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                                            [r0 performSelector:r2 withObject:r3];
                                    }
                            }
                    }
                    else {
                            r0 = *(r19 + 0x40);
                            if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                                    [r0 performSelector:r2 withObject:r3];
                            }
                    }
            }
    }
    else {
            if (*(int8_t *)(r19 + 0x72) != 0x0) {
                    r0 = *(r19 + 0x50);
                    if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                            [r0 performSelector:r2];
                    }
            }
            else {
                    r0 = *(r19 + 0x40);
                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                            [r0 performSelector:r2 withObject:r3];
                    }
            }
    }
    [r19 cleanUp];
    return;
}

-(void)keyboardWillChange:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (*(int8_t *)(r0 + 0x77) == 0x0) {
            r19 = r0;
            r0 = [r2 userInfo];
            r23 = [r0 objectForKey:**_UIKeyboardFrameEndUserInfoKey];
            r20 = [r0 objectForKey:**_UIKeyboardAnimationDurationUserInfoKey];
            r21 = [r0 objectForKey:**_UIKeyboardAnimationCurveUserInfoKey];
            [r23 CGRectValue];
            [[CCDirector sharedDirector] winSize];
            if (d8 != d1) {
                    [*(r19 + 0x10) frame];
            }
            asm { fcvt       s10, d0 };
            [r20 floatValue];
            v11 = v0;
            [r21 intValue];
            asm { sxtw       x20, w0 };
            [r19 animateInputBarToY:r20 withDuration:r3 andAnimationCurve:r4];
            if (d8 == d9) {
                    asm { fcsel      s0, s1, s0, eq };
            }
            [r19 fadeDismissButtonToAlpha:r20 withDuration:r3 andAnimationCurve:r4];
            if (d8 == d9) {
                    [r19 dismiss];
            }
    }
    return;
}

-(void)fadeDismissButtonToAlpha:(float)arg2 withDuration:(float)arg3 andAnimationCurve:(long long)arg4 {
    r19 = arg2;
    r20 = self;
    r21 = &@class(MCConfigurationData);
    r2 = 0x0;
    [*(r21 + 0xe0) beginAnimations:r2 context:0x0];
    r0 = *(r21 + 0xe0);
    asm { fcvt       d0, s8 };
    [r0 setAnimationDuration:r2];
    r2 = r19;
    [*(r21 + 0xe0) setAnimationCurve:r2];
    asm { fcvt       d0, s9 };
    [*(r20 + 0x18) setAlpha:r2];
    [*(r21 + 0xe0) commitAnimations];
    return;
}

-(void)animateInputBarToY:(float)arg2 withDuration:(float)arg3 andAnimationCurve:(long long)arg4 {
    r20 = arg2;
    r19 = self;
    r21 = &@class(MCConfigurationData);
    r2 = 0x0;
    [*(r21 + 0xe0) beginAnimations:r2 context:0x0];
    r0 = *(r21 + 0xe0);
    asm { fcvt       d0, s9 };
    [r0 setAnimationDuration:r2];
    r2 = r20;
    [*(r21 + 0xe0) setAnimationCurve:r2];
    [*(r19 + 0x8) frame];
    [*(r19 + 0x10) frame];
    [*(r19 + 0x20) frame];
    asm { fcvt       s0, d0 };
    asm { fcvt       d10, s0 };
    asm { fcvt       d14, s1 };
    [*(r19 + 0x8) setFrame:r2];
    [*(r19 + 0x10) setFrame:r2];
    [*(r19 + 0x20) setFrame:r2];
    [*(r21 + 0xe0) commitAnimations];
    return;
}

-(void)keyboardWillRotate:(void *)arg2 {
    *(int8_t *)(self + 0x77) = 0x1;
    return;
}

-(void)keyboardDidRotate:(void *)arg2 {
    *(int8_t *)(self + 0x77) = 0x0;
    return;
}

-(void)hideKeyboardInput {
    [self cleanUp];
    return;
}

-(void)showKeyboardInput:(void *)arg2 hideShortcutBar:(bool)arg3 {
    r31 = r31 - 0xa0;
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
    r22 = arg3;
    r20 = arg2;
    r19 = self;
    [[CCDirector sharedDirector] winSize];
    v9 = v0;
    v8 = v1;
    r0 = [MCTextField alloc];
    v2 = v12;
    r0 = [r0 initWithFrame:r2];
    *(r19 + 0x8) = r0;
    [r0 setDelegate:r19];
    r21 = *(r19 + 0x8);
    if (r20 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
            r20 = @"";
    }
    [r21 setText:[NSString stringWithString:r20]];
    [*(r19 + 0x8) setTextColor:[UIColor blackColor]];
    [*(r19 + 0x8) setBackgroundColor:[UIColor whiteColor]];
    [*(r19 + 0x8) setTextAlignment:0x0];
    [*(r19 + 0x8) setAutocorrectionType:*(int8_t *)(r19 + 0x75)];
    [*(r19 + 0x8) setAutocapitalizationType:0x0];
    [*(r19 + 0x8) setClearButtonMode:0x3];
    [*(r19 + 0x8) setKeyboardType:0x0];
    [*(r19 + 0x8) setReturnKeyType:*(int32_t *)(r19 + 0x84)];
    r2 = [r19 secureTextEntry];
    [*(r19 + 0x8) setSecureTextEntry:r2];
    if (*(int8_t *)(r19 + 0x74) == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [*(r19 + 0x8) setHidden:r2];
    [*(r19 + 0x8) setBorderStyle:0x3];
    [*(r19 + 0x8) setContentVerticalAlignment:0x0];
    [*(r19 + 0x8) setDisablePaste:*(int8_t *)(r19 + 0x76)];
    [*(r19 + 0x8) setDisableCursorChangedCallbacks:*(int8_t *)(r19 + 0x74)];
    *(int8_t *)(r19 + 0x81) = r22;
    *(int16_t *)(r19 + 0x70) = 0x0;
    r0 = sub_100434fb4();
    r22 = r0;
    [r0 addSubview:*(r19 + 0x8)];
    if (*(int8_t *)(r19 + 0x74) != 0x0) {
            r0 = @class(UIButton);
            r0 = [r0 buttonWithType:0x0];
            *(r19 + 0x20) = r0;
            [r0 setTitle:0x100ee8190 forState:0x0];
            [*(r19 + 0x20) addTarget:r19 action:@selector(confirmButtonPressed:) forControlEvents:0x40];
            [*(r19 + 0x20) setFrame:r19];
            r2 = *(r19 + 0x20);
            r3 = *(r19 + 0x8);
            [r22 insertSubview:r2 belowSubview:r3];
            r0 = @class(UIButton);
            r0 = [r0 buttonWithType:0x0];
            *(r19 + 0x10) = r0;
            [r0 setFrame:0x0];
            [*(r19 + 0x10) setBackgroundColor:[UIColor colorWithRed:0x0 green:r3 blue:0x40 alpha:r5]];
            [r22 addSubview:*(r19 + 0x10)];
            [r22 sendSubviewToBack:r2];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(keyboardWillChange:) name:**_UIKeyboardWillChangeFrameNotification object:0x0];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(keyboardWillRotate:) name:*0x1011c0680 object:0x0];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(keyboardDidRotate:) name:**_UIDeviceOrientationDidChangeNotification object:0x0];
    }
    *(r19 + 0x18) = [UIButton buttonWithType:0x0];
    [UIColor blackColor];
    [*(r19 + 0x18) setBackgroundColor:r2];
    [*(r19 + 0x18) setAlpha:r2];
    [*(r19 + 0x18) addTarget:r2 action:r3 forControlEvents:r4];
    [*(r19 + 0x18) setFrame:r2];
    [r22 addSubview:r2];
    [r22 sendSubviewToBack:r2];
    [*(r19 + 0x8) becomeFirstResponder];
    [*(r19 + 0x8) release];
    [*(r19 + 0x8) becomeFirstResponder];
    *(int8_t *)(r19 + 0x28) = 0x1;
    return;
}

-(void *)capString:(void *)arg2 ToLength:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    if (arg3 != 0x0) {
            asm { csinc      x2, x3, xzr, ne };
    }
    r20 = [NSMutableArray arrayWithCapacity:r2];
    [r19 enumerateSubstringsInRange:0x0 options:[r19 length] usingBlock:0x2];
    [r20 componentsJoinedByString:r2];
    _Block_object_dispose(&var_40, 0x8);
    r0 = r19;
    return r0;
}

-(void)setMaxCharLength:(unsigned long long)arg2 {
    *(self + 0x78) = arg2;
    return;
}

-(void)clearText {
    [*(self + 0x8) setText:@""];
    return;
}

-(bool)textField:(void *)arg2 shouldChangeCharactersInRange:(struct _NSRange)arg3 replacementString:(void *)arg4 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 == arg2) goto loc_1005c232c;

loc_1005c2314:
    r0 = 0x0;
    return r0;

loc_1005c232c:
    if (*(int8_t *)(r19 + 0x28) == 0x0) goto loc_1005c2314;

loc_1005c2334:
    r20 = r5;
    r22 = r4;
    r23 = r3;
    if (r4 + r3 > [[r0 text] length]) goto loc_1005c2314;

loc_1005c2368:
    r0 = *(r19 + 0x8);
    r0 = [r0 text];
    r21 = r0;
    r0 = [r0 stringByReplacingCharactersInRange:r23 withString:r22];
    r20 = r0;
    if (r0 == 0x0) goto loc_1005c23f8;

loc_1005c2398:
    sub_1005b9b14(r20);
    r3 = *(r19 + 0x78);
    if (r3 == 0x0) goto loc_1005c23f8;

loc_1005c23a8:
    r8 = &@selector(setTitle:forState:);
    asm { sxtw       x8, w0 };
    if (r3 >= r8) goto loc_1005c23f8;

loc_1005c23b4:
    r0 = [r19 capString:r20 ToLength:r3];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
            [*(r19 + 0x8) setText:r20];
    }
    goto loc_1005c2314;

loc_1005c23f8:
    r0 = *(r19 + 0x30);
    if (r0 != 0x0 && *(r19 + 0x38) != 0x0) {
            [r0 performSelector:r2 withObject:r3];
    }
    r0 = 0x1;
    return r0;
}

-(void)setCaretPosition:(unsigned long long)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            r20 = r2;
            r0 = [r0 text];
            if (r0 != 0x0) {
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                            [r21 length];
                            asm { ucvtf      s0, x20 };
                            sub_10035d730();
                            asm { ucvtf      s1, x21 };
                            sub_10035d724();
                            asm { fcvtzu     x20, s0 };
                            r21 = *(r19 + 0x8);
                            r20 = [r21 positionFromPosition:[r21 beginningOfDocument] offset:r20];
                            [*(r19 + 0x8) setSelectedTextRange:[*(r19 + 0x8) textRangeFromPosition:r20 toPosition:[*(r19 + 0x8) positionFromPosition:r20 offset:0x0]]];
                    }
            }
    }
    return;
}

-(unsigned long long)getCaretPosition {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            r20 = [r0 selectedTextRange];
            r19 = *(r19 + 0x8);
            r0 = [r19 offsetFromPosition:[r19 beginningOfDocument] toPosition:[r20 start]];
    }
    return r0;
}

-(void)textFieldDidBeginEditing:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x81) != 0x0) {
            r19 = r2;
            if ((sub_1005ba6a0(sub_1005cb5ec(), @"9.0") & 0x1) == 0x0) {
                    r19 = [r19 inputAssistantItem];
                    [r19 setLeadingBarButtonGroups:[NSArray arrayWithObjects:&stack[-56] count:0x0]];
                    [r19 setTrailingBarButtonGroups:[NSArray arrayWithObjects:&stack[-56] count:0x0]];
            }
    }
    return;
}

-(bool)textFieldShouldClear:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != arg2) {
            r0 = 0x0;
    }
    else {
            [r0 setText:@""];
            r0 = *(r19 + 0x30);
            if (r0 != 0x0 && *(r19 + 0x38) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
            r0 = 0x1;
    }
    return r0;
}

-(void)textFieldDidEndEditing:(void *)arg2 {
    r0 = self;
    if (*(r0 + 0x8) == arg2) {
            *(int8_t *)(r0 + 0x28) = 0x0;
    }
    return;
}

-(bool)textFieldShouldReturn:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x0) goto loc_1005c25ec;

loc_1005c25dc:
    r19 = r0;
    r0 = *(r0 + 0x8);
    if (r0 == r2) goto loc_1005c2600;

loc_1005c25ec:
    r0 = 0x0;
    return r0;

.l1:
    return r0;

loc_1005c2600:
    r20 = [r0 text];
    r0 = [NSCharacterSet whitespaceCharacterSet];
    if (*(int8_t *)(r19 + 0x71) == 0x0) goto loc_1005c26b8;

loc_1005c262c:
    if (r20 == 0x0) goto loc_1005c2678;

loc_1005c2630:
    r22 = r0;
    if (([r20 isEqualToString:r2] & 0x1) != 0x0 || [[r20 stringByTrimmingCharactersInSet:r22] length] == 0x0) goto loc_1005c2678;

loc_1005c26c4:
    if ([r20 isEqualToString:r2] != 0x0) {
            if (*(int8_t *)(r19 + 0x72) != 0x0) {
                    r0 = *(r19 + 0x50);
                    if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                            [r0 performSelector:r2];
                    }
            }
            else {
                    r0 = *(r19 + 0x40);
                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                            [r0 performSelector:r2 withObject:r3];
                    }
            }
    }
    else {
            r0 = *(r19 + 0x40);
            if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                    [r0 performSelector:r2 withObject:r3];
            }
    }
    goto loc_1005c2724;

loc_1005c2724:
    [r19 cleanUp];
    r0 = 0x1;
    return r0;

loc_1005c2678:
    if (*(int8_t *)(r19 + 0x70) == 0x0) goto loc_1005c25ec;

loc_1005c2680:
    [r19 clearText];
    r0 = *(r19 + 0x30);
    if (r0 == 0x0) goto .l1;

loc_1005c2698:
    if (*(r19 + 0x38) != 0x0) {
            [r0 performSelector:r2 withObject:r3];
    }
    goto loc_1005c25ec;

loc_1005c26b8:
    if (r20 != 0x0) {
            if ([r20 isEqualToString:r2] != 0x0) {
                    if (*(int8_t *)(r19 + 0x72) != 0x0) {
                            r0 = *(r19 + 0x50);
                            if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                                    [r0 performSelector:r2];
                            }
                    }
                    else {
                            r0 = *(r19 + 0x40);
                            if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                                    [r0 performSelector:r2 withObject:r3];
                            }
                    }
            }
            else {
                    r0 = *(r19 + 0x40);
                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                            [r0 performSelector:r2 withObject:r3];
                    }
            }
    }
    else {
            if (*(int8_t *)(r19 + 0x72) != 0x0) {
                    r0 = *(r19 + 0x50);
                    if (r0 != 0x0 && *(r19 + 0x58) != 0x0) {
                            [r0 performSelector:r2];
                    }
            }
            else {
                    r0 = *(r19 + 0x40);
                    if (r0 != 0x0 && *(r19 + 0x48) != 0x0) {
                            [r0 performSelector:r2 withObject:r3];
                    }
            }
    }
    goto loc_1005c2724;
}

-(void)cursorChangedToPosition:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = *(self + 0x8);
    [r19 setCaretPosition:[r21 offsetFromPosition:[r21 beginningOfDocument] toPosition:arg2]];
    r0 = *(r19 + 0x60);
    if (r0 != 0x0 && *(r19 + 0x68) != 0x0) {
            [r0 performSelector:r2];
    }
    return;
}

-(void)setTextUpdatedCallback:(void *)arg2 target:(void *)arg3 {
    *(int128_t *)(self + 0x30) = arg3;
    *(int128_t *)(self + 0x38) = arg2;
    return;
}

-(void)setTextEnteredCallback:(void *)arg2 target:(void *)arg3 {
    *(int128_t *)(self + 0x40) = arg3;
    *(int128_t *)(self + 0x48) = arg2;
    return;
}

-(void)setTextCancelledCallback:(void *)arg2 target:(void *)arg3 {
    *(int128_t *)(self + 0x50) = arg3;
    *(int128_t *)(self + 0x58) = arg2;
    return;
}

-(void)setCursorChangedCallback:(void *)arg2 target:(void *)arg3 {
    *(int128_t *)(self + 0x60) = arg3;
    *(int128_t *)(self + 0x68) = arg2;
    return;
}

-(void *)textUpdatedCallbackTarget {
    r0 = *(self + 0x30);
    return r0;
}

-(void)cleanCallbacks {
    *(int128_t *)(self + 0x50) = q0;
    *(int128_t *)(self + 0x60) = q0;
    *(int128_t *)(self + 0x30) = q0;
    *(int128_t *)(self + 0x40) = q0;
    return;
}

-(void *)textUpdatedCallbackSelector {
    r0 = *(self + 0x38);
    return r0;
}

-(bool)disablePaste {
    r0 = *(int8_t *)(self + 0x76);
    return r0;
}

-(void)showKeyboardInput {
    [self showKeyboardInput:0x0];
    return;
}

-(void)setDisablePaste:(bool)arg2 {
    *(int8_t *)(self + 0x76) = arg2;
    return;
}

-(bool)disableAutocorrection {
    r0 = *(int8_t *)(self + 0x75);
    return r0;
}

-(void)setDisableAutocorrection:(bool)arg2 {
    *(int8_t *)(self + 0x75) = arg2;
    return;
}

-(bool)showInputBar {
    r0 = *(int8_t *)(self + 0x74);
    return r0;
}

-(bool)cancelOnEmptyText {
    r0 = *(int8_t *)(self + 0x72);
    return r0;
}

-(void)setShowInputBar:(bool)arg2 {
    *(int8_t *)(self + 0x74) = arg2;
    return;
}

-(void)setCancelOnEmptyText:(bool)arg2 {
    *(int8_t *)(self + 0x72) = arg2;
    return;
}

-(void)setSecureTextEntry:(bool)arg2 {
    *(int8_t *)(self + 0x73) = arg2;
    return;
}

-(int)returnKeyType {
    r0 = *(int32_t *)(self + 0x84);
    return r0;
}

-(bool)secureTextEntry {
    r0 = *(int8_t *)(self + 0x73);
    return r0;
}

-(bool)dismissButtonEnabled {
    r0 = *(int8_t *)(self + 0x80);
    return r0;
}

-(bool)isActive {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(bool)keepShowingOnEmptyText {
    r0 = *(int8_t *)(self + 0x71);
    return r0;
}

-(void)setKeepShowingOnEmptyText:(bool)arg2 {
    *(int8_t *)(self + 0x71) = arg2;
    return;
}

-(void)setReturnKeyType:(int)arg2 {
    *(int32_t *)(self + 0x84) = arg2;
    return;
}

-(bool)clearOnSendingEmptyText {
    r0 = *(int8_t *)(self + 0x70);
    return r0;
}

-(void)setClearOnSendingEmptyText:(bool)arg2 {
    *(int8_t *)(self + 0x70) = arg2;
    return;
}

@end