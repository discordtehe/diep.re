@implementation GADBrowserViewController

-(void *)initWithAd:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_ad, r19);
            r0 = [r19 context];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)viewDidLoad {
    [[&var_30 super] viewDidLoad];
    r21 = [[self view] retain];
    r22 = [[UIColor whiteColor] retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    [r21 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setAutoresizingMask:0x12];
    [r0 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setOpaque:0x1];
    [r0 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setClipsToBounds:0x1];
    [r0 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)viewDidDisappear:(bool)arg2 {
    [[&var_20 super] viewDidDisappear:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void)didRotateFromInterfaceOrientation:(long long)arg2 {
    [[&var_20 super] didRotateFromInterfaceOrientation:arg2];
    [self updateWebViewOrientationWithNotificationChangeEvent:0x0];
    return;
}

-(void)updateWebViewOrientationWithNotificationChangeEvent:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 statusBarOrientation];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastOrientation));
    if (*(r19 + r8) != r21) {
            *(r19 + r8) = r21;
            r20 = [sub_10088ce6c(r21, r20) retain];
            [r19->_webViewController asyncEvaluateJavaScriptFromString:r20 completionBlock:0x0];
            [r20 release];
    }
    return;
}

-(void *)buttonWithImage:(void *)arg2 name:(void *)arg3 width:(double)arg4 enabled:(bool)arg5 action:(void *)arg6 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [[UIBarButtonItem alloc] initWithImage:r23 style:0x0 target:self action:arg5];
    [r23 release];
    [r19 setWidth:r23];
    [r19 setEnabled:arg4];
    [r19 setIsAccessibilityElement:0x1];
    [r19 setAccessibilityLabel:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x90;
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
    [[&var_80 super] viewWillAppear:arg2];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    if (*(r19 + r27) == 0x0) {
            r0 = [UIDevice currentDevice];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
                    r0 = [UIDevice currentDevice];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 userInterfaceIdiom];
                    [r0 release];
                    [r20 release];
                    if (r22 == 0x1) {
                            d8 = *0x100bf30f8;
                    }
                    else {
                            r0 = [GADDeviceOrientationSignals alloc];
                            r0 = [r0 init];
                            r21 = r0;
                            if ([r0 orientationLandscape] != 0x0) {
                                    asm { fcsel      d8, d1, d0, ne };
                            }
                            [r21 release];
                    }
            }
            else {
                    [r20 release];
                    r0 = [GADDeviceOrientationSignals alloc];
                    r0 = [r0 init];
                    r21 = r0;
                    if ([r0 orientationLandscape] != 0x0) {
                            asm { fcsel      d8, d1, d0, ne };
                    }
                    [r21 release];
            }
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 bounds];
            [r0 release];
            r0 = [GADWebViewConfiguration alloc];
            r0 = [r0 init];
            r20 = r0;
            [r0 setDataDetectorType:0xffffffffffffffff];
            [r20 setScalesPageToFit:0x1];
            r23 = [GADWebViewController alloc];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_ad);
            r24 = r0;
            r25 = [[r0 context] retain];
            r0 = [r23 initWithFrame:r25 eventContext:r20 configuration:r4];
            r8 = *(r19 + r27);
            *(r19 + r27) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
            r0 = *(r19 + r27);
            r0 = [r0 webView];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            r25 = [[r19 view] retain];
            r26 = [[*(r19 + r27) webView] retain];
            [r25 addSubview:r26];
            [r26 release];
            [r25 release];
            [*(r19 + r27) setDelegate:r19];
            r0 = [UIToolbar alloc];
            r0 = [r0 initWithFrame:r19];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_toolbar));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            [*(r19 + r25) setAutoresizingMask:0xa];
            [*(r19 + r25) setAutoresizesSubviews:0x1];
            r22 = *(r19 + r25);
            r24 = [[UIColor blackColor] retain];
            [r22 setTintColor:r24];
            [r24 release];
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 addSubview:*(r19 + r25)];
            [r0 release];
            [r19 createToolbarButtons];
            [r19 refreshToolbar];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_URLToLoad));
            if (*(r19 + r21) != 0x0) {
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_referringURLToLoad));
                    [r19 loadURL:@selector(userInterfaceIdiom) referringURL:*(r19 + r22)];
                    r0 = *(r19 + r21);
                    *(r19 + r21) = 0x0;
                    [r0 release];
                    r0 = *(r19 + r22);
                    *(r19 + r22) = 0x0;
                    [r0 release];
            }
            [r20 release];
    }
    return;
}

-(void)doneButtonPressed:(void *)arg2 {
    sub_1008b4218();
    return;
}

-(void)refreshToolbar {
    r31 = r31 - 0xa0;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_backButton));
    r22 = *(r19 + r24);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(r19 + r26);
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r22 setEnabled:[r0 canGoBack]];
    [r0 release];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_forwardButton));
    r22 = *(r19 + r25);
    r0 = *(r19 + r26);
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r22 setEnabled:[r0 canGoForward]];
    [r0 release];
    r0 = *(r19 + r26);
    r0 = [r0 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isLoading];
    [r0 release];
    if (r22 != 0x0) {
            r21 = [r19->_spinnerContainingButton retain];
            [r19->_spinner startAnimating];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_safariButton));
            r0 = *(r19 + r22);
    }
    else {
            r21 = [r19->_reloadButton retain];
            [r19->_spinner stopAnimating];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_safariButton));
            r0 = *(r19 + r22);
    }
    var_48 = **___stack_chk_guard;
    [r0 setEnabled:r2];
    r20 = r19->_toolbar;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_flexibleSpaceButton));
    r0 = [NSArray arrayWithObjects:&var_90 count:0x9];
    r19 = [r0 retain];
    [r20 setItems:r19];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadURL:(void *)arg2 referringURL:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
            if (*(r21 + r24) != 0x0) {
                    r0 = [NSMutableURLRequest requestWithURL:r19];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r20 != 0x0) {
                            r23 = [[r20 host] retain];
                            [r22 setValue:r23 forHTTPHeaderField:@"Referer"];
                            [r23 release];
                    }
                    [*(r21 + r24) loadRequest:r22];
                    r0 = r22;
            }
            else {
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_URLToLoad));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    r0 = [r20 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_referringURLToLoad));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    r0 = r8;
            }
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)back {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(r19 + r23);
    r0 = [r0 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 canGoBack];
    [r0 release];
    if (r22 != 0x0) {
            r0 = *(r19 + r23);
            r0 = [r0 webView];
            r0 = [r0 retain];
            [r0 goBack];
            [r0 release];
    }
    return;
}

-(void)createToolbarButtons {
    r0 = @class(UIBarButtonItem);
    r0 = [r0 alloc];
    r0 = [r0 initWithBarButtonSystemItem:0x5 target:0x0 action:0x0];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_flexibleSpaceButton));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = sub_1007cd780();
    r0 = [r0 retain];
    var_68 = r0;
    r0 = [self buttonWithImage:r0 name:@"Back" width:0x0 enabled:@selector(back) action:r6];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_backButton));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r23 = [sub_1007cd800() retain];
    r0 = [self buttonWithImage:r23 name:@"Forward" width:0x0 enabled:@selector(forward) action:r6];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forwardButton));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [UIActivityIndicatorView alloc];
    r0 = [r0 initWithActivityIndicatorStyle:0x1];
    [r0 setAutoresizingMask:0x5];
    [r0 setFrame:0x5];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_spinner));
    r25 = *(self + r26);
    *(self + r26) = r0;
    var_70 = [r0 retain];
    [r25 release];
    r0 = @class(UIBarButtonItem);
    r0 = [r0 alloc];
    r2 = *(self + r26);
    r0 = [r0 initWithCustomView:r2];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_spinnerContainingButton));
    r8 = *(self + r26);
    *(self + r26) = r0;
    [r8 release];
    [*(self + r26) setWidth:r2];
    [*(self + r26) setEnabled:0x1];
    [*(self + r26) setIsAccessibilityElement:0x1];
    [*(self + r26) setAccessibilityLabel:@"Spinner"];
    r0 = @class(UIBarButtonItem);
    r0 = [r0 alloc];
    r0 = [r0 initWithBarButtonSystemItem:0xd target:self action:@selector(reload)];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_reloadButton));
    r8 = *(self + r24);
    *(self + r24) = r0;
    [r8 release];
    [*(self + r24) setWidth:0xd];
    [*(self + r24) setEnabled:0x1];
    [*(self + r24) setIsAccessibilityElement:0x1];
    [*(self + r24) setAccessibilityLabel:@"Reload"];
    r0 = @class(UIBarButtonItem);
    r0 = [r0 alloc];
    r0 = [r0 initWithBarButtonSystemItem:0x9 target:self action:@selector(openMainDocumentURL)];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_safariButton));
    r8 = *(self + r24);
    *(self + r24) = r0;
    [r8 release];
    [*(self + r24) setWidth:0x9];
    [*(self + r24) setEnabled:0x0];
    [*(self + r24) setIsAccessibilityElement:0x1];
    [*(self + r24) setAccessibilityLabel:@"View in Safari"];
    r0 = @class(UIBarButtonItem);
    r0 = [r0 alloc];
    r0 = [r0 initWithBarButtonSystemItem:0x0 target:self action:@selector(doneButtonPressed:)];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_doneButton));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    [*(self + r20) setEnabled:0x1];
    [*(self + r20) setStyle:0x2];
    [*(self + r20) setIsAccessibilityElement:0x1];
    [*(self + r20) setAccessibilityLabel:@"Done"];
    [var_70 release];
    [r23 release];
    [var_68 release];
    return;
}

-(void)forward {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    r0 = *(r19 + r23);
    r0 = [r0 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 canGoForward];
    [r0 release];
    if (r22 != 0x0) {
            r0 = *(r19 + r23);
            r0 = [r0 webView];
            r0 = [r0 retain];
            [r0 goForward];
            [r0 release];
    }
    return;
}

-(void)reload {
    r0 = self->_webViewController;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 reload];
    [r0 release];
    return;
}

-(void)openMainDocumentURL {
    r0 = self->_webViewController;
    r0 = [r0 mainDocumentURL];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [r0 release];
    sub_10081f360(r21, objc_loadWeakRetained((int64_t *)&self->_ad));
    [r19 release];
    [r21 release];
    return;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(bool)canPresent {
    return 0x1;
}

-(bool)shouldDismissOnApplicationEnteringForeground {
    r19 = [[self presentedViewController] retain];
    [UIAlertController class];
    r20 = [r19 isKindOfClass:r2];
    [r19 release];
    r0 = r20 ^ 0x1;
    return r0;
}

-(void)presentFromViewController:(void *)arg2 completion:(void *)arg3 {
    sub_1007fa8b0(self, [arg2 retain], arg3);
    [r21 release];
    return;
}

-(void)relinquishScreenWithCompletion:(void *)arg2 {
    sub_1007fab68(self, arg2);
    return;
}

-(bool)webViewController:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 boolForKey:*0x100e9b6a0];
    [r0 release];
    if (r22 == 0x0) goto loc_10081b79c;

loc_10081b6ec:
    r0 = [r19 URL];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 scheme];
    r0 = [r0 retain];
    r22 = [[r0 lowercaseString] retain];
    [r0 release];
    if (r22 == 0x0) goto loc_10081b820;

loc_10081b744:
    if (([r22 isEqual:r2] & 0x1) != 0x0 || ([r22 isEqual:r2] & 0x1) != 0x0 || ([r22 isEqual:r2] & 0x1) != 0x0) goto loc_10081b794;

loc_10081b7a4:
    [objc_loadWeakRetained((int64_t *)&r21->_ad) retain];
    var_38 = [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [var_38 release];
    [r0 release];
    [r21 release];
    goto loc_10081b820;

loc_10081b820:
    r21 = 0x0;
    goto loc_10081b824;

loc_10081b824:
    [r22 release];
    [r20 release];
    goto loc_10081b834;

loc_10081b834:
    [r19 release];
    r0 = r21;
    return r0;

loc_10081b794:
    r21 = 0x1;
    goto loc_10081b824;

loc_10081b79c:
    r21 = 0x1;
    goto loc_10081b834;
}

-(void)webViewControllerDidStartLoad:(void *)arg2 {
    [self refreshToolbar];
    return;
}

-(void)webViewControllerDidFinishLoad:(void *)arg2 {
    [self refreshToolbar];
    [self updateWebViewOrientationWithNotificationChangeEvent:0x1];
    return;
}

-(void)webViewController:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    [self refreshToolbar];
    return;
}

-(void)webViewControllerWebContentProcessDidTerminate:(void *)arg2 {
    [self relinquishScreenWithCompletion:0x0];
    return;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self->_supportedInterfaceOrientations;
    return r0;
}

-(void)setSupportedInterfaceOrientations:(unsigned long long)arg2 {
    self->_supportedInterfaceOrientations = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_spinner, 0x0);
    objc_storeStrong((int64_t *)&self->_spinnerContainingButton, 0x0);
    objc_storeStrong((int64_t *)&self->_doneButton, 0x0);
    objc_storeStrong((int64_t *)&self->_safariButton, 0x0);
    objc_storeStrong((int64_t *)&self->_reloadButton, 0x0);
    objc_storeStrong((int64_t *)&self->_forwardButton, 0x0);
    objc_storeStrong((int64_t *)&self->_backButton, 0x0);
    objc_storeStrong((int64_t *)&self->_flexibleSpaceButton, 0x0);
    objc_storeStrong((int64_t *)&self->_toolbar, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_referringURLToLoad, 0x0);
    objc_storeStrong((int64_t *)&self->_URLToLoad, 0x0);
    return;
}

@end