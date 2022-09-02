@implementation FBAdUIWebViewBrowserController

-(void *)initWithNibName:(void *)arg2 bundle:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithNibName:r21 bundle:arg3];
    [r21 release];
    r0 = r0;
    return r0;
}

-(void)viewWillAppear:(bool)arg2 {
    [[&var_20 super] viewWillAppear:arg2];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [self setStatusBarHidden:[r0 isStatusBarHidden]];
    [r0 release];
    [FBAdUtility setApplicationStatusBarHidden:0x1];
    return;
}

-(void)viewWillLayoutSubviews {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    CGRectDivide(&var_80, &var_60, 0x3, r3, r4);
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self toolBar];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] viewWillDisappear:arg2];
    r0 = [r19 webView];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isLoading] != 0x0) {
            [r20 stopLoading];
    }
    [FBAdUtility setApplicationStatusBarHidden:[r19 isStatusBarHidden]];
    [r20 release];
    return;
}

-(void)loadURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if ([r19 loadStartMs] == 0x0) {
            [r19 setLoadStartMs:[FBAdSafariViewController currentTimeMs]];
    }
    [r19 setUrl:r20];
    r21 = [[NSURLRequest requestWithURL:r20] retain];
    [r20 release];
    r0 = [r19 webView];
    r0 = [r0 retain];
    [r0 loadRequest:r21];
    [r0 release];
    [r19 updateButtons];
    [r21 release];
    return;
}

-(void)clearContent {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)dealloc {
    [self->_webView setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(long long)preferredInterfaceOrientationForPresentation {
    return 0x1;
}

-(void)startDOMContentLoadedTimer {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self domContentLoadedMs] == 0x0) {
            objc_initWeak(&stack[-56], r19);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_50 block:r4];
            r21 = [r0 retain];
            [r19 setDomContentLoadedTimer:r21];
            [r21 release];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    return;
}

-(void)stopDOMContentLoadedTimer {
    r0 = [self domContentLoadedTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setDomContentLoadedTimer:0x0];
    return;
}

-(void)backButtonClicked:(void *)arg2 {
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 goBack];
    [r0 release];
    return;
}

-(void)forwardButtonClicked:(void *)arg2 {
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 goForward];
    [r0 release];
    return;
}

-(void)refreshButtonClicked:(void *)arg2 {
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 reload];
    [r0 release];
    return;
}

-(void)doneButtonClicked:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-56], self);
    sub_100a87884();
    objc_unsafeClaimAutoreleasedReturnValue();
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [self dismissViewControllerAnimated:0x1 completion:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r19 release];
    return;
}

-(void)viewDidLoad {
    r31 = r31 - 0xf0;
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
    [[&var_A8 super] viewDidLoad];
    r0 = [UIView new];
    var_B8 = r0;
    r20 = [NSClassFromString(@"UIWebView") new];
    [self setWebView:r20];
    [r20 release];
    r0 = [self webView];
    r0 = [r0 retain];
    sub_100a3f1b4(r0);
    [r22 release];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 setScalesPageToFit:0x1];
    [r0 release];
    r20 = [[self webView] retain];
    [r23 addSubview:r20];
    [r20 release];
    r20 = [UIToolbar new];
    [self setToolBar:r20];
    [r20 release];
    r20 = [[UIColor colorWithRed:r20 green:r3 blue:r4 alpha:r5] retain];
    r0 = [self toolBar];
    r0 = [r0 retain];
    [r0 setTintColor:r20];
    [r0 release];
    [r20 release];
    r20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x65 target:self action:@selector(backButtonClicked:)];
    [self setBackButton:r20];
    [r20 release];
    r20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x66 target:self action:@selector(forwardButtonClicked:)];
    [self setForwardButton:r20];
    [r20 release];
    r20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0xd target:self action:@selector(refreshButtonClicked:)];
    [self setRefreshButton:r20];
    [r20 release];
    r0 = [UIActivityIndicatorView alloc];
    r0 = [r0 initWithActivityIndicatorStyle:0x2];
    [r0 startAnimating];
    var_C0 = r0;
    [r0 setHidesWhenStopped:0x0];
    r20 = [[UIBarButtonItem alloc] initWithCustomView:r0];
    [self setSpinnerButton:r20];
    [r20 release];
    r0 = @class(UIBarButtonItem);
    r0 = [r0 alloc];
    r0 = [r0 initWithBarButtonSystemItem:0x0 target:self action:@selector(doneButtonClicked:)];
    var_D8 = r0;
    var_D0 = [[self backButton] retain];
    r28 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x5 target:0x0 action:0x0];
    r21 = [[self forwardButton] retain];
    r20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x5 target:0x0 action:0x0];
    r22 = [[self refreshButton] retain];
    r26 = [[self spinnerButton] retain];
    r24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0x5 target:0x0 action:0x0];
    r25 = [[NSArray arrayWithObjects:&var_98 count:0x8] retain];
    r0 = [self toolBar];
    r0 = [r0 retain];
    [r0 setItems:r25];
    [r0 release];
    [r25 release];
    [r24 release];
    [r26 release];
    [r22 release];
    [r20 release];
    [r21 release];
    [r28 release];
    [var_D0 release];
    r20 = [[self toolBar] retain];
    [var_B8 addSubview:r20];
    [r20 release];
    [self setView:var_B8];
    [var_D8 release];
    [var_C0 release];
    [var_B8 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_100a9ec2c(self, 0x1);
    if ([r19 responseEndMs] == 0x0) {
            [r19 setResponseEndMs:[FBAdSafariViewController currentTimeMs]];
    }
    [r19 startDOMContentLoadedTimer];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isEqual:r2] != 0x0) {
            [r23 release];
            r22 = 0x1;
    }
    else {
            r25 = @selector(isEqual:);
            r0 = [r21 scheme];
            r29 = r29;
            r0 = [r0 retain];
            r25 = objc_msgSend(r0, r25);
            [r0 release];
            [r23 release];
            if ((r25 & 0x1) != 0x0) {
                    r22 = 0x1;
            }
            else {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r24 = [r0 openURL:r2];
                    [r0 release];
                    if (r24 != 0x0) {
                            objc_initWeak(&stack[-88], r22);
                            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
                            [r22 dismissViewControllerAnimated:0x1 completion:&var_70];
                            objc_destroyWeak(&var_70 + 0x20);
                            objc_destroyWeak(&stack[-88]);
                    }
                    r22 = 0x0;
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 domain];
            r0 = [r0 retain];
            [r0 release];
    }
    [FBAdLogger logAtLevel:r2 file:r3 lineNumber:r4 format:r5];
    sub_100a9ec2c(r19, 0x0);
    [r19 stopDOMContentLoadedTimer];
    [r20 release];
    return;
}

-(void)updateButtons {
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
    r19 = self;
    r0 = [self webView];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 canGoBack];
    r0 = [r19 backButton];
    r0 = [r0 retain];
    [r0 setEnabled:r22];
    [r0 release];
    [r20 release];
    r0 = [r19 webView];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 canGoForward];
    r0 = [r19 forwardButton];
    r0 = [r0 retain];
    [r0 setEnabled:r22];
    [r0 release];
    [r20 release];
    r0 = [r19 toolBar];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 webView];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isLoading];
            [r0 release];
            if ((r22 & 0x1) != 0x0) {
                    r21 = [[r19 spinnerButton] retain];
                    r0 = [r19 refreshButton];
                    r29 = r29;
            }
            else {
                    r21 = [[r19 refreshButton] retain];
                    r0 = [r19 spinnerButton];
                    r29 = r29;
            }
            r22 = [r0 retain];
            r0 = [r19 toolBar];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 items];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            r8 = *___NSArray0__;
            r8 = *r8;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r0;
                    }
                    else {
                            r0 = r8;
                    }
            }
            r23 = [r0 retain];
            [r25 release];
            [r24 release];
            r0 = [r23 mutableCopy];
            r24 = r0;
            if ([r0 containsObject:r2] != 0x0) {
                    [r24 removeObject:r22];
                    r26 = 0x1;
            }
            else {
                    r26 = 0x0;
            }
            if (([r24 containsObject:r2] & 0x1) != 0x0) {
                    if (r26 != 0x0) {
                            r0 = [r19 toolBar];
                            r0 = [r0 retain];
                            [r0 setItems:r24 animated:0x1];
                            [r0 release];
                    }
            }
            else {
                    [r24 insertObject:r21 atIndex:0x4];
                    r0 = [r19 toolBar];
                    r0 = [r0 retain];
                    [r0 setItems:r24 animated:0x1];
                    [r0 release];
            }
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_100a9ec2c(self, 0x0);
    if ([r19 loadFinishMs] == 0x0) {
            [r19 setLoadFinishMs:[FBAdSafariViewController currentTimeMs]];
    }
    [r19 stopDOMContentLoadedTimer];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_domContentLoadedTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_toolBar, 0x0);
    objc_storeStrong((int64_t *)&self->_spinnerButton, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshButton, 0x0);
    objc_storeStrong((int64_t *)&self->_forwardButton, 0x0);
    objc_storeStrong((int64_t *)&self->_backButton, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void *)backButton {
    r0 = self->_backButton;
    return r0;
}

-(void)setBackButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backButton, arg2);
    return;
}

-(void)setForwardButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_forwardButton, arg2);
    return;
}

-(void *)forwardButton {
    r0 = self->_forwardButton;
    return r0;
}

-(void *)refreshButton {
    r0 = self->_refreshButton;
    return r0;
}

-(void)setRefreshButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_refreshButton, arg2);
    return;
}

-(void *)spinnerButton {
    r0 = self->_spinnerButton;
    return r0;
}

-(void)setSpinnerButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_spinnerButton, arg2);
    return;
}

-(void *)toolBar {
    r0 = self->_toolBar;
    return r0;
}

-(void)setToolBar:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_toolBar, arg2);
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

-(void)setStatusBarHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_statusBarHidden = arg2;
    return;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isStatusBarHidden {
    r0 = *(int8_t *)(int64_t *)&self->_statusBarHidden;
    return r0;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
    return r0;
}

-(void)setHandlerTimeMs:(unsigned long long)arg2 {
    self->_handlerTimeMs = arg2;
    return;
}

-(void)setInlineClientToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)loadStartMs {
    r0 = self->_loadStartMs;
    return r0;
}

-(unsigned long long)handlerTimeMs {
    r0 = self->_handlerTimeMs;
    return r0;
}

-(void)setLoadStartMs:(unsigned long long)arg2 {
    self->_loadStartMs = arg2;
    return;
}

-(unsigned long long)responseEndMs {
    r0 = self->_responseEndMs;
    return r0;
}

-(void)setResponseEndMs:(unsigned long long)arg2 {
    self->_responseEndMs = arg2;
    return;
}

-(unsigned long long)domContentLoadedMs {
    r0 = self->_domContentLoadedMs;
    return r0;
}

-(void)setDomContentLoadedMs:(unsigned long long)arg2 {
    self->_domContentLoadedMs = arg2;
    return;
}

-(unsigned long long)scrollReadyMs {
    r0 = self->_scrollReadyMs;
    return r0;
}

-(void)setLoadFinishMs:(unsigned long long)arg2 {
    self->_loadFinishMs = arg2;
    return;
}

-(void)setScrollReadyMs:(unsigned long long)arg2 {
    self->_scrollReadyMs = arg2;
    return;
}

-(unsigned long long)loadFinishMs {
    r0 = self->_loadFinishMs;
    return r0;
}

-(void *)domContentLoadedTimer {
    r0 = self->_domContentLoadedTimer;
    return r0;
}

-(void)setDomContentLoadedTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_domContentLoadedTimer, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdUIWebViewBrowserController");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end