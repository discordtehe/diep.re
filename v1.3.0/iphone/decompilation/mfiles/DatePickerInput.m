@implementation DatePickerInput

+(void *)sharedDatePickerInput {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da178;
    if (r0 == 0x0) {
            r0 = [DatePickerInput alloc];
            r0 = [r0 init];
            *0x1011da178 = r0;
    }
    return r0;
}

+(bool)isDatePickerInputInitialized {
    r0 = self;
    if (*qword_1011da178 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(r0 + 0x38) = 0x1;
            *(r0 + 0x40) = 0x0;
    }
    return r0;
}

+(void)releaseSharedDatePickerInput {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da178 != 0x0) {
            [*0x1011da178 release];
            *0x1011da178 = 0x0;
    }
    return;
}

-(void)cleanUp {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x18) removeFromSuperview];
    objc_msgSend(*(r19 + 0x8), r20);
    objc_msgSend(*(r19 + 0x10), r20);
    *(int128_t *)(r19 + 0x8) = 0x0;
    *(int128_t *)(r19 + 0x10) = 0x0;
    *(r19 + 0x18) = 0x0;
    r0 = *(r19 + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    return;
}

-(void)hide {
    [self cleanUp];
    return;
}

-(void)setDismissButtonEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x38) = arg2;
    [*(self + 0x8) setEnabled:r2];
    return;
}

-(void)pickerChanged:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *(r0 + 0x20);
    if (r19 != 0x0) {
            r20 = *(r0 + 0x28);
            if (r20 != 0x0) {
                    [*(r0 + 0x18) date];
                    [r19 performSelector:r2 withObject:r3];
            }
    }
    return;
}

-(void)pickerClosedNotifcation:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x20);
    if (r0 != 0x0 && *(r19 + 0x30) != 0x0) {
            [r0 performSelector:r2 withObject:r3];
    }
    [r19 cleanUp];
    return;
}

-(void)pickerChangedNotifcation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r20 + 0x40) = 0x0;
    }
    r0 = [r19 object];
    *(r20 + 0x40) = r0;
    [r0 retain];
    r22 = *(r20 + 0x20);
    if (r22 != 0x0) {
            r20 = *(r20 + 0x28);
            if (r20 != 0x0) {
                    [r19 object];
                    [r22 performSelector:r2 withObject:r3];
            }
    }
    return;
}

-(void)dismissButtonPressed:(void *)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x38) != 0x0) {
            r19 = r0;
            r20 = *(r0 + 0x20);
            if (r20 != 0x0) {
                    r21 = *(r19 + 0x30);
                    if (r21 != 0x0) {
                            [*(r19 + 0x18) date];
                            [r20 performSelector:r2 withObject:r3];
                    }
            }
            [r19 cleanUp];
    }
    return;
}

-(void)show:(void *)arg2 minDate:(void *)arg3 maxDate:(void *)arg4 target:(void *)arg5 updatedCallback:(void *)arg6 enteredCallback:(void *)arg7 confirmButton:(void *)arg8 confirmButtonText:(void *)arg9 confirmButtonBMFont:(void *)arg10 {
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
    r26 = arg4;
    r25 = arg3;
    r24 = arg2;
    r19 = self;
    r8 = *(int128_t *)(&var_10 + 0x18);
    r22 = *(int128_t *)(&var_10 + 0x20);
    r20 = *(&var_10 + 0x10);
    var_98 = r8;
    *(int128_t *)(self + 0x20) = arg5;
    *(int128_t *)(self + 0x28) = arg6;
    *(self + 0x30) = arg7;
    r0 = *(self + 0x40);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x40) = 0x0;
    }
    *(r19 + 0x40) = [r24 retain];
    [[CCDirector sharedDirector] winSize];
    v9 = v0;
    v8 = v1;
    r0 = [UIDatePicker alloc];
    r0 = [r0 init];
    *(r19 + 0x18) = r0;
    [r0 bounds];
    [*(r19 + 0x18) setFrame:r2];
    [*(r19 + 0x18) center];
    v10 = v0;
    [*(r19 + 0x18) bounds];
    [*(r19 + 0x18) setCenter:r2];
    [*(r19 + 0x18) setMaximumDate:r26];
    [*(r19 + 0x18) setMinimumDate:r25];
    if (r24 != 0x0) {
            [*(r19 + 0x18) setDate:r24];
    }
    [*(r19 + 0x18) setDatePickerMode:0x1];
    d0 = *0x100bd9660;
    v1 = v0;
    [*(r19 + 0x18) setBackgroundColor:[UIColor colorWithRed:0x1 green:r3 blue:r4 alpha:r5]];
    [*(r19 + 0x18) addTarget:r19 action:@selector(pickerChanged:) forControlEvents:0x1000];
    r0 = [UIButton buttonWithType:0x0];
    *(r19 + 0x10) = r0;
    [r0 addTarget:r19 action:@selector(confirmButtonPressed:) forControlEvents:0x40];
    if (r20 == 0x0) {
            r20 = [CCNode node];
            sub_1005cb618();
            asm { fcvt       d10, s0 };
            sub_1005cb618();
            asm { fcvt       d1, s0 };
            v0 = v10;
            [r20 setContentSize:r2];
    }
    [r20 contentSize];
    v10 = v0;
    v11 = v1;
    if (r22 != 0x0 && ([r22 isEqualToString:r2] & 0x1) == 0x0) {
            if (var_98 == 0x0 || [var_98 isEqualToString:r2] != 0x0) {
                    var_98 = @"OK";
            }
            r0 = [MCAdjustableLabelBMFont labelWithString:var_98 fntFile:r22];
            d0 = d10 * 0x3fe0000000000000;
            [r0 setPosition:var_98];
            [r20 addChild:r0];
            [r0 setScale:r0];
    }
    [*(r19 + 0x10) setBackgroundImage:sub_1005d7aa8() forState:0x0];
    sub_1005cb618();
    asm { fcvt       d0, s0 };
    objc_msgSend(*(r19 + 0x10), r21);
    r0 = objc_msgSend(@class(UIButton), r26);
    *(r19 + 0x8) = r0;
    objc_msgSend(r0, r21);
    [*(r19 + 0x8) setTitle:@"" forState:0x0];
    [*(r27 + 0x700) blackColor];
    objc_msgSend(*(r19 + 0x8), r25);
    [*(r19 + 0x8) setAlpha:r2];
    objc_msgSend(*(r19 + 0x8), r24);
    r0 = sub_100434fb4();
    [r0 addSubview:*(r19 + 0x18)];
    [*(r19 + 0x18) release];
    [r0 insertSubview:*(r19 + 0x8) belowSubview:*(r19 + 0x18)];
    [r0 insertSubview:*(int128_t *)(r19 + 0x10) aboveSubview:*(int128_t *)(r19 + 0x18)];
    return;
}

-(void)dealloc {
    [self cleanUp];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)confirmButtonPressed:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = *(self + 0x20);
    if (r20 != 0x0) {
            r21 = *(r19 + 0x30);
            if (r21 != 0x0) {
                    [*(r19 + 0x18) date];
                    [r20 performSelector:r2 withObject:r3];
            }
    }
    [r19 cleanUp];
    return;
}

-(bool)dismissButtonEnabled {
    r0 = *(int8_t *)(self + 0x38);
    return r0;
}

@end