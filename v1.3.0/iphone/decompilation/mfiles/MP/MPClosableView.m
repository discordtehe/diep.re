@implementation MPClosableView

-(void)dealloc {
    [self->_userInteractionRecognizer setDelegate:0x0];
    r0 = [self userInteractionRecognizer];
    r0 = [r0 retain];
    [r0 removeTarget:self action:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 webView:(void *)arg3 delegate:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    r0 = [[&var_70 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            r24 = [[UIColor clearColor] retain];
            [r21 setBackgroundColor:r24];
            [r24 release];
            [r21 setOpaque:0x0];
            [r21 setClipsToBounds:0x1];
            objc_storeWeak((int64_t *)&r21->_delegate, r20);
            r21->_closeButtonLocation = 0x0;
            r0 = objc_alloc();
            r0 = [r0 initWithTarget:r21 action:@selector(handleInteraction:)];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_userInteractionRecognizer));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            [*(r21 + r24) setCancelsTouchesInView:0x0];
            [r21 addGestureRecognizer:*(r21 + r24)];
            [*(r21 + r24) setDelegate:r21];
            r25 = [sub_1004af7bc() retain];
            r0 = [UIImage imageNamed:r25];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_closeButtonImage));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r25 release];
            r0 = [UIButton buttonWithType:0x0];
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
            r8 = *(r21 + r24);
            *(r21 + r24) = r0;
            [r8 release];
            r22 = [[UIColor clearColor] retain];
            [*(r21 + r24) setBackgroundColor:r22];
            [r22 release];
            [*(r21 + r24) setAccessibilityLabel:@"Close Interstitial Ad"];
            [*(r21 + r24) addTarget:r21 action:@selector(closeButtonPressed) forControlEvents:0x40];
            [r21 setCloseButtonType:0x2];
            [r21 addSubview:*(r21 + r24)];
            [r21 bounds];
            [r19 setFrame:r2];
            [r21 addSubview:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)didMoveToWindow {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(closableView:didMoveToWindow:), r3];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r22 = [[r19 window] retain];
            [r21 closableView:r19 didMoveToWindow:r22];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)setCloseButtonLocation:(long long)arg2 {
    self->_closeButtonLocation = arg2;
    [self setNeedsLayout];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0xb0;
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
    r19 = self;
    [[&var_80 super] layoutSubviews];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) == 0x0) goto loc_1004c4e88;

loc_1004c4be0:
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r0 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 widthAnchor];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 constraintEqualToConstant:0x0] retain];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 heightAnchor];
    r0 = [r0 retain];
    r27 = r0;
    r25 = [[r0 constraintEqualToConstant:0x0] retain];
    r0 = [NSMutableArray arrayWithObjects:r24];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = [r19 closeButtonLocation];
    if (r0 > 0x6) goto loc_1004c4f0c;

loc_1004c4d2c:
    (0x1004c4d44 + *(int16_t *)(0x100be3f50 + r0 * 0x2) * 0x4)();
    return;

loc_1004c4f0c:
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r22 = r0;
    r25 = [[r0 trailingAnchor] retain];
    r0 = [r19 safeAreaLayoutGuide];
    r0 = [r0 retain];
    r23 = [[r0 trailingAnchor] retain];
    r24 = [[r25 constraintEqualToAnchor:r23] retain];
    [r21 addObject:r24];
    [r24 release];
    [r23 release];
    [r0 release];
    [r25 release];
    [r22 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 topAnchor] retain];
    r0 = [r19 safeAreaLayoutGuide];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 topAnchor] retain];
    r0 = [r23 constraintEqualToAnchor:r25];
    r29 = r29;
    r26 = [r0 retain];
    [r21 addObject:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [NSLayoutConstraint activateConstraints:r21];
    goto loc_1004c57ec;

loc_1004c57ec:
    [r21 release];
    r20 = [[r19 closeButton] retain];
    [r19 bringSubviewToFront:r20];
    [r20 release];
    return;

loc_1004c4e88:
    [r19 bounds];
    [r19 closeButtonLocation];
    sub_1004c470c();
    r0 = [r19 closeButton];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 setFrame:r2];
    goto loc_1004c57ec;
}

-(void)setCloseButtonType:(long long)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    self->_closeButtonType = r2;
    if (r2 == 0x2) goto loc_1004c598c;

loc_1004c5954:
    if (r2 == 0x1) goto loc_1004c59f0;

loc_1004c595c:
    if (r2 != 0x0) goto loc_1004c5a54;

loc_1004c5960:
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setHidden:0x1];
    goto loc_1004c5adc;

loc_1004c5adc:
    [r20 release];
    return;

loc_1004c5a54:
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    r20 = [[r19 closeButton] retain];
    r0 = [r19 closeButtonImage];
    goto loc_1004c5ab4;

loc_1004c5ab4:
    r19 = [r0 retain];
    [r20 setImage:r19 forState:0x0];
    [r19 release];
    goto loc_1004c5adc;

loc_1004c59f0:
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setImage:0x0 forState:0x0];
    goto loc_1004c5adc;

loc_1004c598c:
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    r20 = [[r19 closeButton] retain];
    r0 = [r19 closeButtonImage];
    goto loc_1004c5ab4;
}

-(void)handleInteraction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([arg2 state] == 0x3) {
            [r19 setWasTapped:0x1];
    }
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void)closeButtonPressed {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 closeButtonPressed:self];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(long long)closeButtonLocation {
    r0 = self->_closeButtonLocation;
    return r0;
}

-(long long)closeButtonType {
    r0 = self->_closeButtonType;
    return r0;
}

-(bool)wasTapped {
    r0 = *(int8_t *)(int64_t *)&self->_wasTapped;
    return r0;
}

-(void)setWasTapped:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_wasTapped = arg2;
    return;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void *)closeButtonImage {
    r0 = self->_closeButtonImage;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void)setCloseButtonImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButtonImage, arg2);
    return;
}

-(void *)userInteractionRecognizer {
    r0 = self->_userInteractionRecognizer;
    return r0;
}

-(void)setUserInteractionRecognizer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userInteractionRecognizer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userInteractionRecognizer, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButtonImage, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end