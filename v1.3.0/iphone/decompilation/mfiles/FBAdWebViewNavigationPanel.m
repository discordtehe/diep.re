@implementation FBAdWebViewNavigationPanel

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_delegate, r19);
            [r20 setupViews];
    }
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [r20 setTranslatesAutoresizingMaskIntoConstraints:0x1];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setupViews {
    [self setupBackButton];
    [self setupForwardButton];
    [self setupOpenInExternalBrowserButton];
    return;
}

-(void)setupBackButton {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r0 = [self backButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [[r19 layoutMarginsGuide] retain];
            r21 = [[FBAdIconButton alloc] initWithIconStyle:0x0];
            [r22 release];
            [r21 addTarget:r19 action:@selector(backButtonTap:) forControlEvents:0x40];
            [r19 addSubview:r21];
            [r21 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r23 = [[r21 leadingAnchor] retain];
            r24 = [[r20 leadingAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r24 constant:@selector(backButtonTap:)];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r23 release];
            r0 = [r21 widthAnchor];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            r0 = [r21 heightAnchor];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            r24 = [[r21 centerYAnchor] retain];
            r23 = [[r20 centerYAnchor] retain];
            r0 = [r24 constraintEqualToAnchor:r23];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            [r24 release];
            objc_storeWeak((int64_t *)&r19->_backButton, r21);
            [r20 release];
            r22 = r21;
    }
    [r22 release];
    return;
}

-(void)setGoBackButtonEnabled:(bool)arg2 {
    r0 = [self backButton];
    r0 = [r0 retain];
    [r0 setEnabled:arg2];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_goBackButtonEnabled = arg2;
    return;
}

-(void)setupForwardButton {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r0 = [self forwardButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [[r19 layoutMarginsGuide] retain];
            r21 = [[FBAdIconButton alloc] initWithIconStyle:0x1];
            [r22 release];
            [r21 addTarget:r19 action:@selector(forwardButtonTap:) forControlEvents:0x40];
            [r19 addSubview:r21];
            [r21 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r23 = [[r21 leadingAnchor] retain];
            r24 = [[r20 leadingAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r24 constant:@selector(forwardButtonTap:)];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r23 release];
            r0 = [r21 widthAnchor];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            r0 = [r21 heightAnchor];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            r24 = [[r21 centerYAnchor] retain];
            r23 = [[r20 centerYAnchor] retain];
            r0 = [r24 constraintEqualToAnchor:r23];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            [r24 release];
            objc_storeWeak((int64_t *)&r19->_forwardButton, r21);
            [r20 release];
            r22 = r21;
    }
    [r22 release];
    return;
}

-(void)setupOpenInExternalBrowserButton {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r0 = [self openInExternalBrowserButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            r20 = [[r19 layoutMarginsGuide] retain];
            r21 = [[FBAdIconButton alloc] initWithIconStyle:0x2];
            [r22 release];
            [r21 addTarget:r19 action:@selector(openInExternalBrowserButtonTap:) forControlEvents:0x40];
            [r19 addSubview:r21];
            [r21 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r24 = [[r21 trailingAnchor] retain];
            r25 = [[r20 trailingAnchor] retain];
            r0 = [r24 constraintEqualToAnchor:r25];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r25 release];
            [r24 release];
            r0 = [r21 widthAnchor];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            r0 = [r21 heightAnchor];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            r25 = [[r21 centerYAnchor] retain];
            r24 = [[r20 centerYAnchor] retain];
            r0 = [r25 constraintEqualToAnchor:r24];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r25 release];
            objc_storeWeak((int64_t *)&r19->_openInExternalBrowserButton, r21);
            [r20 release];
            r22 = r21;
    }
    [r22 release];
    return;
}

-(void)setGoForwardButtonEnabled:(bool)arg2 {
    r0 = [self forwardButton];
    r0 = [r0 retain];
    [r0 setEnabled:arg2];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_goForwardButtonEnabled = arg2;
    return;
}

-(void)backButtonTap:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 goBack];
    [r0 release];
    return;
}

-(void)openInExternalBrowserButtonTap:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 openInExternalBrowser];
    [r0 release];
    return;
}

-(void)forwardButtonTap:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 goForward];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_openInExternalBrowserButton);
    objc_destroyWeak((int64_t *)&self->_forwardButton);
    objc_destroyWeak((int64_t *)&self->_backButton);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isGoBackButtonEnabeld {
    r0 = *(int8_t *)(int64_t *)&self->_goBackButtonEnabled;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)isGoForwardButtonEnabeld {
    r0 = *(int8_t *)(int64_t *)&self->_goForwardButtonEnabled;
    return r0;
}

-(void *)backButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_backButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBackButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_backButton, arg2);
    return;
}

-(void *)forwardButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_forwardButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setForwardButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_forwardButton, arg2);
    return;
}

-(void *)openInExternalBrowserButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_openInExternalBrowserButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOpenInExternalBrowserButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_openInExternalBrowserButton, arg2);
    return;
}

@end