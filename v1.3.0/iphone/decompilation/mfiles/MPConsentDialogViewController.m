@implementation MPConsentDialogViewController

-(void *)initWithDialogHTML:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithNibName:0x0 bundle:0x0];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_dialogHTML, r21);
            [r20 setUpWebView];
            [r20 setModalPresentationStyle:0x0];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r20 = [[UIColor blackColor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r20];
    [r0 release];
    [r20 release];
    [self layoutWebView];
    [self setUpCloseButton];
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    [[&saved_fp - 0x20 super] viewDidAppear:arg2];
    objc_initWeak(&stack[-56], self);
    dispatch_time(0x0, 0x2540be400);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    dispatch_after(r20, *__dispatch_main_q, &var_50);
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] viewWillDisappear:arg2];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(consentDialogViewControllerWillDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 consentDialogViewControllerWillDisappear:r19];
            [r0 release];
    }
    return;
}

-(void)closeConsentDialog {
    [self dismissViewControllerAnimated:0x1 completion:&var_28];
    return;
}

-(void)setUpWebView {
    r0 = objc_alloc();
    r20 = [r0 initWithFrame:0x0 forceUIWebView:r3];
    [self setWebView:r20];
    [r20 release];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self webView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setBounces:0x0];
    [r0 release];
    [r21 release];
    r21 = [[UIColor whiteColor] retain];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r21];
    [r0 release];
    [r21 release];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)closeButtonAction:(void *)arg2 {
    [self closeConsentDialog];
    return;
}

-(void)fadeInCloseButton {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self closeButtonHasBeenShown] & 0x1) == 0x0) {
            [r19 setCloseButtonHasBeenShown:0x1];
            [UIView animateWithDuration:&var_38 animations:r3];
    }
    return;
}

-(void)loadConsentPageWithCompletion:(void *)arg2 {
    r21 = [arg2 retain];
    [self setFinishedInitialLoad:0x0];
    [self setDidLoadCompletionBlock:r21];
    [r21 release];
    r19 = [[self webView] retain];
    r20 = [[self dialogHTML] retain];
    r22 = [[MPAPIEndpoints baseURL] retain];
    r21 = [[NSURL URLWithString:r22] retain];
    [r19 loadHTMLString:r20 baseURL:r21];
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    if (([r20 finishedInitialLoad] & 0x1) == 0x0) {
            [r20 setFinishedInitialLoad:0x1];
            r0 = [r20 didLoadCompletionBlock];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 didLoadCompletionBlock];
                    r0 = [r0 retain];
                    (*(r0 + 0x10))();
                    [r21 release];
                    [r20 setDidLoadCompletionBlock:0x0];
            }
    }
    [r19 release];
    return;
}

-(void)layoutWebView {
    r31 = r31 - 0x130;
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
    r21 = self;
    r0 = [self view];
    r0 = [r0 retain];
    r19 = r0;
    [r0 bounds];
    r0 = [r21 webView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r19 release];
    r19 = [[r21 view] retain];
    r0 = [r21 webView];
    r29 = &saved_fp;
    [r0 retain];
    [r19 addSubview:r2];
    [r20 release];
    [r19 release];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
            r0 = [r21 webView];
            r0 = [r0 retain];
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r0 release];
            r0 = [r21 webView];
            r0 = [r0 retain];
            var_A8 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            r20 = r0;
            var_C0 = r0;
            r0 = [r21 view];
            r0 = [r0 retain];
            var_B0 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            var_B8 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            var_C8 = r0;
            var_D0 = [[r20 constraintEqualToAnchor:r0] retain];
            r0 = [r21 webView];
            r0 = [r0 retain];
            var_E0 = r0;
            r0 = [r0 leadingAnchor];
            r0 = [r0 retain];
            r20 = r0;
            var_F8 = r0;
            r0 = [r21 view];
            r0 = [r0 retain];
            var_E8 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            var_F0 = r0;
            r0 = [r0 leadingAnchor];
            r0 = [r0 retain];
            var_100 = r0;
            var_108 = [[r20 constraintEqualToAnchor:r0] retain];
            r0 = [r21 webView];
            r0 = [r0 retain];
            var_110 = r0;
            r0 = [r0 trailingAnchor];
            r0 = [r0 retain];
            r20 = r0;
            var_120 = r0;
            r0 = [r21 view];
            r0 = [r0 retain];
            var_118 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r25 = [[r0 trailingAnchor] retain];
            r19 = [[r20 constraintEqualToAnchor:r25] retain];
            r0 = [r21 webView];
            r0 = [r0 retain];
            r26 = r0;
            r20 = [[r0 bottomAnchor] retain];
            r0 = [r21 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 bottomAnchor] retain];
            r27 = [[r20 constraintEqualToAnchor:r23] retain];
            r0 = [NSArray arrayWithObjects:&var_A0 count:0x4];
            r28 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r28];
            [r28 release];
            [r27 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
            [r26 release];
            [r19 release];
            [r25 release];
            [r24 release];
            [var_118 release];
            [var_120 release];
            [var_110 release];
            [var_108 release];
            [var_100 release];
            [var_F0 release];
            [var_E8 release];
            [var_F8 release];
            [var_E0 release];
            [var_D0 release];
            [var_C8 release];
            [var_B8 release];
            [var_B0 release];
            [var_C0 release];
            [var_A8 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self finishedInitialLoad] & 0x1) == 0x0) {
            [r19 setFinishedInitialLoad:0x1];
            r0 = [r19 didLoadCompletionBlock];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 didLoadCompletionBlock];
                    r0 = [r0 retain];
                    (*(r0 + 0x10))();
                    [r20 release];
                    [r19 setDidLoadCompletionBlock:0x0];
            }
    }
    return;
}

-(void)setUpCloseButton {
    r31 = r31 - 0x100;
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
    r19 = self;
    r20 = [[UIButton buttonWithType:0x0] retain];
    [r19 setCloseButton:r20];
    [r20 release];
    r0 = [r19 view];
    r0 = [r0 retain];
    CGRectGetMaxX([r0 bounds]);
    r0 = [r19 view];
    r0 = [r0 retain];
    CGRectGetMinY([r0 bounds]);
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setFrame:r20];
    [r0 release];
    [r23 release];
    [r22 release];
    r22 = [[UIColor clearColor] retain];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r22];
    [r0 release];
    [r22 release];
    r22 = [[r19 closeButton] retain];
    r24 = [sub_1004af7bc() retain];
    r23 = [[UIImage imageWithContentsOfFile:r24] retain];
    [r22 setImage:r23 forState:0x0];
    [r23 release];
    [r24 release];
    [r22 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 addTarget:r19 action:@selector(closeButtonAction:) forControlEvents:0x40];
    [r0 release];
    r22 = [[r19 view] retain];
    r0 = [r19 closeButton];
    r29 = &saved_fp;
    r2 = [r0 retain];
    [r22 addSubview:r2];
    [r23 release];
    [r22 release];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
            r2 = 0x0;
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r0 release];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            var_98 = r0;
            r0 = [r0 widthAnchor];
            r0 = [r0 retain];
            var_A0 = r0;
            var_A8 = [[r0 constraintEqualToConstant:0x0] retain];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            var_B0 = r0;
            r0 = [r0 heightAnchor];
            r0 = [r0 retain];
            var_C0 = r0;
            var_C8 = [[r0 constraintEqualToConstant:0x0] retain];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            var_D0 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            r24 = r0;
            var_E8 = r0;
            r0 = [r19 view];
            r0 = [r0 retain];
            var_D8 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            var_E0 = r0;
            r0 = [r0 topAnchor];
            r0 = [r0 retain];
            var_F0 = r0;
            r27 = [[r24 constraintEqualToAnchor:r0 constant:0x0] retain];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            r28 = r0;
            r26 = [[r0 trailingAnchor] retain];
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r22 = r0;
            r24 = [[r0 trailingAnchor] retain];
            r23 = [[r26 constraintEqualToAnchor:r24 constant:0x0] retain];
            r0 = [NSArray arrayWithObjects:&var_90 count:0x4];
            r29 = r29;
            r25 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r25];
            [r25 release];
            [r23 release];
            [r24 release];
            [r22 release];
            [r21 release];
            [r26 release];
            [r28 release];
            [r27 release];
            [var_F0 release];
            [var_E0 release];
            [var_D8 release];
            [var_E8 release];
            [var_D0 release];
            [var_C8 release];
            [var_C0 release];
            [var_B0 release];
            [var_A8 release];
            [var_A0 release];
            [var_98 release];
    }
    var_70 = **___stack_chk_guard;
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
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

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r20 = self;
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 scheme];
    r0 = [r0 retain];
    r24 = [r0 isEqualToString:@"mopub"];
    [r0 release];
    [r23 release];
    r0 = [r19 URL];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 host] retain];
    r0 = [MPAPIEndpoints baseHostname];
    r29 = &saved_fp;
    r28 = [r0 retain];
    r25 = [r27 isEqualToString:r28];
    [r28 release];
    [r27 release];
    [r26 release];
    if ((r24 & 0x1) != 0x0 || (r25 & 0x1) != 0x0) goto loc_1004f5c2c;

loc_1004f5bec:
    [[r19 URL] retain];
    [MoPub openURL:r2];
    [r21 release];
    goto loc_1004f5c9c;

loc_1004f5c9c:
    r25 = 0x0;
    goto loc_1004f5ca0;

loc_1004f5ca0:
    [r19 release];
    r0 = r25;
    return r0;

loc_1004f5c2c:
    if (((r25 | r24 ^ 0x1) & 0x1) != 0x0) goto loc_1004f5ca0;

loc_1004f5c38:
    r0 = [r19 URL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 host];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:@"close"];
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_1004f5cc8;

loc_1004f5c8c:
    r1 = @selector(closeConsentDialog);
    goto loc_1004f5c94;

loc_1004f5c94:
    objc_msgSend(r20, r1);
    goto loc_1004f5c9c;

loc_1004f5cc8:
    r0 = [r19 URL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 host];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:@"consent"];
    [r0 release];
    [r24 release];
    if (r25 == 0x0) goto loc_1004f5ca0;

loc_1004f5d1c:
    r0 = [r19 URL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 query];
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:@"yes"];
    [r0 release];
    [r24 release];
    r0 = [r19 URL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 query];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:@"no"];
    [r0 release];
    [r24 release];
    if ((r23 & 0x1) != 0x0 || r21 != 0x0) goto loc_1004f5dcc;
    goto loc_1004f5c9c;

loc_1004f5dcc:
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(consentDialogViewControllerDidReceiveConsentResponse:consentDialogViewController:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 consentDialogViewControllerDidReceiveConsentResponse:r23 consentDialogViewController:r20];
            [r0 release];
    }
    r1 = @selector(fadeInCloseButton);
    goto loc_1004f5c94;
}

-(void)setFinishedInitialLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finishedInitialLoad = arg2;
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(bool)finishedInitialLoad {
    r0 = *(int8_t *)(int64_t *)&self->_finishedInitialLoad;
    return r0;
}

-(bool)closeButtonHasBeenShown {
    r0 = *(int8_t *)(int64_t *)&self->_closeButtonHasBeenShown;
    return r0;
}

-(void *)didLoadCompletionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_didLoadCompletionBlock)), 0x0);
    return r0;
}

-(void)setCloseButtonHasBeenShown:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_closeButtonHasBeenShown = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dialogHTML, 0x0);
    objc_storeStrong((int64_t *)&self->_didLoadCompletionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)dialogHTML {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dialogHTML)), 0x0);
    return r0;
}

-(void)setDidLoadCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDialogHTML:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end