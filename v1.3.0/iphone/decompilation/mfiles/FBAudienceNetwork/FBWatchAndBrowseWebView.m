@implementation FBWatchAndBrowseWebView

-(void)dealloc {
    [self stopWebViewObservation];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithURL:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setTargetURL:r19];
            [r20 setupViews];
            r0 = [FBAdKVOController controllerWithObserver:r20];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_webViewKVOController));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)load {
    r19 = [[self browseView] retain];
    [[self webViewKVOController] retain];
    [r19 loadRequest:[[NSURLRequest alloc] initWithURL:[[self targetURL] retain]]];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r22 release];
    [r21 release];
    [r20 observe:r19 keyPath:@"estimatedProgress" options:0x3 action:@selector(webPageLoadingProgessChanged)];
    [r20 observe:r19 keyPath:@"title" options:0x3 action:@selector(webPageTitleChanged)];
    [r20 observe:r19 keyPath:@"URL" options:0x3 action:@selector(webPageURLChanged)];
    [r20 observe:r19 keyPath:@"loading" options:0x3 action:@selector(webPageLoadingStateChanged)];
    [r20 release];
    [r19 release];
    return;
}

-(void)setupHeaderPanelView {
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
    r0 = [self headerPanelView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
    }
    r20 = [UIView new];
    [r21 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [r19 addSubview:r20];
    r21 = [[CALayer layer] retain];
    r0 = [UIColor grayColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r21 setBackgroundColor:[r0 CGColor]];
    [r0 release];
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 addSublayer:r21];
    [r0 release];
    objc_storeWeak((int64_t *)&r19->_bottomBorder, r21);
    objc_storeWeak((int64_t *)&r19->_headerPanelView, r20);
    [r21 release];
    [r20 release];
    return;
}

-(void)setupPageTitleView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self pageTitleView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
    }
    r20 = [UILabel new];
    [r21 release];
    r21 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
    [r20 setFont:r21];
    [r21 release];
    [r20 setTextAlignment:0x1];
    [r20 setNumberOfLines:0x1];
    r0 = [r19 headerPanelView];
    r0 = [r0 retain];
    [r0 addSubview:r20];
    [r0 release];
    objc_storeWeak((int64_t *)&r19->_pageTitleView, r20);
    [r20 release];
    return;
}

-(void)setupPageURLView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self pageURLView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
    }
    r20 = [UILabel new];
    [r21 release];
    r21 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
    [r20 setFont:r21];
    [r21 release];
    [r20 setTextAlignment:0x1];
    [r20 setNumberOfLines:0x1];
    r0 = [r19 headerPanelView];
    r0 = [r0 retain];
    [r0 addSubview:r20];
    [r0 release];
    objc_storeWeak((int64_t *)&r19->_pageURLView, r20);
    [r20 release];
    return;
}

-(void)setupLoadProgressView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self loadProgressView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 removeFromSuperview];
    }
    r21 = [[UIProgressView alloc] initWithProgressViewStyle:0x0];
    [r20 release];
    r0 = [r19 headerPanelView];
    r0 = [r0 retain];
    [r0 addSubview:r21];
    [r0 release];
    objc_storeWeak((int64_t *)&r19->_loadProgressView, r21);
    [r21 release];
    return;
}

-(void)setupWebView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self browseView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 stopWebViewObservation];
            [r20 removeFromSuperview];
    }
    if (*qword_1011dd858 != -0x1) {
            dispatch_once_f(0x1011dd858, 0x1011c6c28, 0x100a3d91c);
    }
    r0 = *0x1011dd860;
    r0 = [r0 alloc];
    r21 = [r0 initWithFrame:r2];
    [r20 release];
    [r21 setUIDelegate:r19];
    [r19 addSubview:r21];
    objc_storeWeak((int64_t *)&r19->_browseView, r21);
    [r21 release];
    return;
}

-(void)setupNavigationPanelView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self navigationPanelView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [[FBAdWebViewNavigationPanel alloc] initWithDelegate:r19];
            [r20 release];
            [r19 addSubview:r21];
            objc_storeWeak((int64_t *)&r19->_navigationPanelView, r21);
            [r19 setupNavigationPanelView];
            r20 = r21;
    }
    [r20 release];
    return;
}

-(void)setupViews {
    [self setupWebView];
    [self setupHeaderPanelView];
    [self setupPageTitleView];
    [self setupPageURLView];
    [self setupLoadProgressView];
    [self setupNavigationPanelView];
    return;
}

-(void)setTargetURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isURLLoaded] & 0x1) != 0x0 || [r19 isURLLoading] != 0x0) {
            [r19 setUrlLoaded:0x0];
            [r19 setupViews];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_targetURL));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    return;
}

-(bool)isURLLoading {
    r0 = [self browseView];
    r0 = [r0 retain];
    r20 = [r0 isLoading];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)webPageLoadingProgessChanged {
    r19 = self;
    r0 = [self browseView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 estimatedProgress];
    asm { fcvt       s8, d0 };
    r0 = [r19 loadProgressView];
    r0 = [r0 retain];
    [r0 setProgress:r2];
    [r0 release];
    [r20 release];
    return;
}

-(void)webPageURLChanged {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self browseView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 host];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0 && ([r19 isLoading] & 0x1) == 0x0) {
            r0 = [r20 pageURLView];
            r0 = [r0 retain];
            [r0 setText:r21];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)webPageTitleChanged {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self browseView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 title];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            if ([r19 length] <= 0x31) {
                    r2 = [r19 length];
            }
            else {
                    r2 = 0x32;
            }
            r21 = [[r19 substringToIndex:r2] retain];
            r0 = [r20 pageTitleView];
            r0 = [r0 retain];
            [r0 setText:r21];
            [r0 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)webPageLoadingStateChanged {
    r0 = [self browseView];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [r0 isLoading] ^ 0x1;
    r0 = [self loadProgressView];
    r0 = [r0 retain];
    [r0 setHidden:r21];
    [r0 release];
    [r20 release];
    [self setupNavigationButtons];
    [self webPageURLChanged];
    return;
}

-(void)stopWebViewObservation {
    r0 = [self webViewKVOController];
    r0 = [r0 retain];
    [r0 unobserveAll];
    [r0 release];
    return;
}

-(void)setupNavigationButtons {
    r20 = [[self navigationPanelView] retain];
    r0 = [self browseView];
    r0 = [r0 retain];
    [r20 setGoBackButtonEnabled:[r0 canGoBack]];
    [r20 setGoForwardButtonEnabled:[r0 canGoForward]];
    [r0 release];
    [r20 release];
    return;
}

-(double)getLabelHeight:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[r0 font] retain];
    [r0 release];
    [@"test" sizeWithFont:r20];
    r0 = [r20 release];
    return r0;
}

-(void)layoutSubviews {
    [self frame];
    sub_100aabe74();
    [self bounds];
    CGRectDivide(&var_80, &var_A0, 0x1, r3, r4);
    CGRectDivide(&var_C0, &var_A0, 0x3, r3, r4);
    r0 = [self headerPanelView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self browseView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self navigationPanelView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r21 = [[self pageTitleView] retain];
    [self getLabelHeight:r21];
    [r21 setFrame:r21];
    r0 = [self pageURLView];
    r0 = [r0 retain];
    CGRectGetMaxY(r0);
    [self getLabelHeight:r22];
    [r22 setFrame:r22];
    r0 = [self bottomBorder];
    r0 = [r0 retain];
    [r0 setFrame:r22];
    [r0 release];
    r0 = [self loadProgressView];
    r0 = [r0 retain];
    [r0 setFrame:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)webViewDidClose:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 webViewDidClose];
    [r0 release];
    return;
}

-(void)goForward {
    r0 = [self browseView];
    r0 = [r0 retain];
    [r0 goForward];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r19 release];
    return;
}

-(void)goBack {
    r0 = [self browseView];
    r0 = [r0 retain];
    [r0 goBack];
    objc_unsafeClaimAutoreleasedReturnValue();
    [r19 release];
    return;
}

-(void)openInExternalBrowser {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self browseView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r0 openURL:r2];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewKVOController, 0x0);
    objc_destroyWeak((int64_t *)&self->_bottomBorder);
    objc_destroyWeak((int64_t *)&self->_navigationPanelView);
    objc_destroyWeak((int64_t *)&self->_loadProgressView);
    objc_storeStrong((int64_t *)&self->_targetURL, 0x0);
    objc_destroyWeak((int64_t *)&self->_pageURLView);
    objc_destroyWeak((int64_t *)&self->_pageTitleView);
    objc_destroyWeak((int64_t *)&self->_headerPanelView);
    objc_destroyWeak((int64_t *)&self->_browseView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)browseView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_browseView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setBrowseView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_browseView, arg2);
    return;
}

-(void *)headerPanelView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerPanelView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderPanelView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerPanelView, arg2);
    return;
}

-(void *)pageTitleView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_pageTitleView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPageTitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_pageTitleView, arg2);
    return;
}

-(void *)pageURLView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_pageURLView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)targetURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_targetURL)), 0x0);
    return r0;
}

-(void *)loadProgressView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_loadProgressView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLoadProgressView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_loadProgressView, arg2);
    return;
}

-(void)setPageURLView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_pageURLView, arg2);
    return;
}

-(void)setUrlLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_urlLoaded = arg2;
    return;
}

-(void)setNavigationPanelView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_navigationPanelView, arg2);
    return;
}

-(void *)navigationPanelView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_navigationPanelView);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isURLLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_urlLoaded;
    return r0;
}

-(void *)webViewKVOController {
    r0 = self->_webViewKVOController;
    return r0;
}

-(void *)bottomBorder {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bottomBorder);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBottomBorder:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bottomBorder, arg2);
    return;
}

-(void)setWebViewKVOController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewKVOController, arg2);
    return;
}

@end