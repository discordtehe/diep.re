@implementation TRWebviewController

-(void)setNavigationItems:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (arg2 != 0x0) {
            r21 = [[r19 closeButton] retain];
            r0 = [r19 navigationItem];
            r29 = r29;
    }
    else {
            r21 = [[r19 abandonButton] retain];
            r0 = [r19 navigationItem];
            r29 = r29;
    }
    r0 = [r0 retain];
    [r0 setLeftBarButtonItem:r21];
    [r0 release];
    [r21 release];
    r21 = [[r19 refreshButton] retain];
    r0 = [r19 navigationItem];
    r0 = [r0 retain];
    [r0 setRightBarButtonItem:r21];
    [r0 release];
    [r21 release];
    return;
}

-(void *)initWithOffer:(void *)arg2 surveyDelegate:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r0 = [[&var_70 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r25 = [[r0 player] retain];
            [r21 setPlayer:r25];
            [r25 release];
            [r0 release];
            [r21 setOffer:r19];
            [r21 setSurveyDelegate:r20];
            [r21 updateTitle];
            r0 = [r21 player];
            r0 = [r0 retain];
            r26 = [[r0 messageForKey:*0x100e7d698] retain];
            var_78 = r26;
            [r0 release];
            r26 = [[UIBarButtonItem alloc] initWithTitle:r26 style:0x0 target:r21 action:@selector(barButtonTouched:)];
            [r21 setCloseButton:r26];
            [r26 release];
            r0 = [r21 closeButton];
            r0 = [r0 retain];
            [r0 setAccessibilityIdentifier:@"closeButton"];
            [r0 release];
            r26 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0xd target:r21 action:@selector(barButtonTouched:)];
            [r21 setRefreshButton:r26];
            [r26 release];
            r0 = [r21 refreshButton];
            r0 = [r0 retain];
            [r0 setAccessibilityIdentifier:@"refreshButton"];
            [r0 release];
            r25 = [[TRBackButtonItem alloc] initWithTarget:r21 action:@selector(barButtonTouched:)];
            [r21 setAbandonButton:r25];
            [r25 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            CGRectGetWidth([r0 frame]);
            r0 = [r21 view];
            r0 = [r0 retain];
            CGRectGetHeight([r0 frame]);
            [r28 release];
            [r26 release];
            r26 = [[r21 initializeWebView] retain];
            [r21 setWebView:r26];
            [r26 release];
            r27 = [[r21 view] retain];
            r28 = [[r21 webView] retain];
            [r27 addSubview:r28];
            [r28 release];
            [r27 release];
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 appSession];
            r0 = [r0 retain];
            [r0 appSessionID];
            [r0 release];
            [r24 release];
            r0 = [r21 offer];
            r0 = [r0 retain];
            r22 = [[r0 offerURL] retain];
            r24 = [[NSString stringWithFormat:r2] retain];
            [r22 release];
            [r0 release];
            [r21 loadRequestWithURLString:r24];
            r22 = [[TRActivityIndicatorView alloc] initWithFrame:r24];
            [r21 setIndicatorView:r22];
            [r22 release];
            r22 = [[r21 view] retain];
            r25 = [[r21 indicatorView] retain];
            [r22 addSubview:r25];
            [r25 release];
            [r22 release];
            r0 = [r21 indicatorView];
            r0 = [r0 retain];
            [r0 show:0x1];
            [r0 release];
            [r21 setNavigationItems:0x1];
            [r24 release];
            [var_78 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)barButtonTouched:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 closeButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100406ed8;

loc_100406dbc:
    r0 = [r20 refreshButton];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100406ff8;

loc_100406de4:
    if (([r20 abandoningSurvey] & 0x1) != 0x0) goto loc_1004073b4;

loc_100406df8:
    r0 = [r20 view];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 subviews];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    [r23 release];
    if (r25 >= 0x3) {
            r0 = [r20 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 subviews];
            r0 = [r0 retain];
            r23 = [[r0 lastObject] retain];
            [r0 release];
            [r21 release];
            [r23 removeFromSuperview];
            [r20 updateTitle];
            r0 = r23;
    }
    else {
            r0 = [r20 navigationItem];
            r0 = [r0 retain];
            [r0 setRightBarButtonItem:0x0];
            [r0 release];
            r0 = [r20 player];
            r0 = [r0 retain];
            var_E0 = [[r0 messageForKey:*0x100e7d6a0] retain];
            [r0 release];
            r0 = [r20 player];
            r0 = [r0 retain];
            var_E8 = [[r0 messageForKey:*0x100e7d688] retain];
            [r0 release];
            r0 = [r20 player];
            r0 = [r0 retain];
            r23 = [[r0 messageForKey:*0x100e7d6a8] retain];
            [r0 release];
            r0 = [r20 player];
            r0 = [r0 retain];
            r24 = [[r0 messageForKey:*0x100e7d6b0] retain];
            [r0 release];
            r25 = [[NSArray arrayWithObjects:&var_78 count:0x2] retain];
            r0 = objc_retainBlock(&var_B0);
            r26 = r0;
            r0 = objc_retainBlock(&var_D8);
            r20 = r0;
            r28 = objc_retainBlock(r26);
            r21 = objc_retainBlock(r20);
            r0 = @class(NSArray);
            r0 = [r0 arrayWithObjects:&var_88 count:0x2];
            r27 = [r0 retain];
            [r21 release];
            [r28 release];
            r0 = [TRAlertHandler alloc];
            r0 = [r0 init];
            [r0 showAlertWithTitle:var_E0 message:var_E8 buttonTitles:r25 handlers:r27];
            [r0 release];
            [r27 release];
            [r20 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [var_E8 release];
            r0 = var_E0;
    }
    goto loc_1004073b0;

loc_1004073b0:
    [r0 release];
    goto loc_1004073b4;

loc_1004073b4:
    var_68 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100406ff8:
    r0 = [r20 webView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 URL];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r20 isTapResearchDomain:r23];
    [r23 release];
    [r22 release];
    if (r24 != 0x0) {
            r0 = [r20 indicatorView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 show:0x1];
            [r0 release];
    }
    r0 = [r20 navigationItem];
    r0 = [r0 retain];
    [r0 setRightBarButtonItem:0x0];
    [r0 release];
    r0 = [r20 webView];
    r0 = [r0 retain];
    [[[r0 reload] retain] release];
    r0 = r0;
    goto loc_1004073b0;

loc_100406ed8:
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 getRewards];
    [r0 release];
    r0 = [r20 surveyDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(tapResearchSurveyWallDismissedWithPlacement:)];
    [r0 release];
    if (r24 != 0x0) {
            r23 = [TRPlacement alloc];
            r24 = [[r20 offer] retain];
            r23 = [r23 initWithOffer:r24];
            [r24 release];
            r0 = [r20 surveyDelegate];
            r0 = [r0 retain];
            [r0 tapResearchSurveyWallDismissedWithPlacement:r23];
            [r0 release];
            [r23 release];
    }
    [r20 dismissViewControllerAnimated:0x1 completion:0x0];
    goto loc_1004073b4;
}

-(void)resetViewForRequest:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setNetworkActivityIndicatorVisible:0x0];
    [r0 release];
    if ([r20 abandoningSurvey] == 0x0 || [r20 isTapResearchDomain:r2] != 0x0) {
            [r20 setNavigationItems:[r20 isTapResearchDomain:r2]];
            r0 = [r20 indicatorView];
            r0 = [r0 retain];
            [r0 show:0x0];
            [r0 release];
            if ([r20 abandoningSurvey] != 0x0) {
                    [r20 setAbandoningSurvey:0x0];
            }
    }
    [r19 release];
    return;
}

-(void)handleAbandon {
    r31 = r31 - 0x150;
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
    r0 = [self webView];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    r0 = [r19 indicatorView];
    r0 = [r0 retain];
    [r0 show:0x1];
    [r0 release];
    r20 = @selector(cpIdentifier);
    r0 = objc_msgSend(r19, r20);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_10040767c;

loc_1004074fc:
    var_120 = @selector(cpIdentifier);
    var_130 = r19;
    r0 = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    r0 = [r0 retain];
    var_128 = r0;
    r0 = [r0 cookies];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_10040761c;

loc_100407588:
    r19 = 0x0;
    goto loc_100407594;

loc_100407594:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r22);
    }
    r27 = @selector(isEqualToString:);
    r28 = *(0x0 + r19 * 0x8);
    r0 = [r28 name];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r27);
    [r0 release];
    if (r23 != 0x0) goto loc_10040762c;

loc_1004075e8:
    r19 = r19 + 0x1;
    if (r19 < r24) goto loc_100407594;

loc_1004075f4:
    r24 = objc_msgSend(r22, var_138);
    if (r24 != 0x0) goto loc_100407588;

loc_10040761c:
    [r22 release];
    r19 = var_130;
    goto loc_100407670;

loc_100407670:
    [var_128 release];
    r20 = var_120;
    goto loc_10040767c;

loc_10040767c:
    var_58 = **___stack_chk_guard;
    r0 = [r19 offer];
    r0 = [r0 retain];
    r22 = [[r0 abandonURL] retain];
    r20 = [objc_msgSend(r19, r20) retain];
    r23 = [[r22 stringByReplacingOccurrencesOfString:*0x100e7d660 withString:r20] retain];
    [r20 release];
    [r22 release];
    [r0 release];
    [r19 loadRequestWithURLString:r23];
    [r23 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10040762c:
    r0 = [r28 value];
    r29 = r29;
    r21 = [r0 retain];
    r19 = var_130;
    [r19 setCpIdentifier:r21];
    [r21 release];
    [r22 release];
    goto loc_100407670;
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [arg4 retain];
    r20 = r0;
    r0 = [r0 targetFrame];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isMainFrame];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            r21 = r21->_webView;
            r22 = [[r20 request] retain];
            [[[r21 loadRequest:r22] retain] release];
            [r22 release];
            r22 = 0x0;
    }
    else {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            [r0 setNetworkActivityIndicatorVisible:0x1];
            [r0 release];
            r22 = [[r21 initializeWebViewWithConfiguration:r19] retain];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 addSubview:r22];
            [r0 release];
            [r21 updateTitle];
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x90;
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
    r19 = self;
    [[&var_78 super] viewWillAppear:arg2];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 navigationBarColor];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (r20 != 0x0) {
            asm { frintm     d8, d0 };
            r0 = [r19 navigationController];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 navigationBar];
            r29 = r29;
            r25 = [r0 retain];
            if (d8 >= *0x100be0110) {
                    [r25 setBarTintColor:r20];
                    [r25 release];
                    [r23 release];
                    r0 = [r19 navigationController];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 navigationBar];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setTranslucent:0x0];
                    [r0 release];
                    r0 = r22;
            }
            else {
                    [r25 setTintColor:r20];
                    [r25 release];
                    r0 = r23;
            }
            [r0 release];
    }
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 navigationBarTextColor];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0) {
            r0 = [r19 navigationController];
            r0 = [r0 retain];
            r23 = [[r0 navigationBar] retain];
            r24 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            [r23 setTitleTextAttributes:r24];
            [r24 release];
            [r23 release];
            [r0 release];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            [r0 setTintColor:r21];
            [r0 release];
            r0 = [r19 refreshButton];
            r0 = [r0 retain];
            [r0 setTintColor:r21];
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ((*0x100be01b0 & 0x8) != 0x0) {
            [TR_DDLog log:0x1 level:r3 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/TRWebviewController.m" function:"-[TRWebviewController webView:didFinishNavigation:]" line:0x12a tag:0x0 format:@"WebView Did Finish Load"];
    }
    r21 = [[r19 URL] retain];
    [r20 resetViewForRequest:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r24 = [[arg3 request] retain];
    [r21 release];
    r20 = [[r24 URL] retain];
    [r24 release];
    r0 = [NSURLComponents alloc];
    r0 = [r0 initWithURL:r20 resolvingAgainstBaseURL:0x0];
    r21 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:r2];
    [r0 release];
    if (r26 != 0x0) {
            NSLog(@"Changing Scheme");
            [r21 setScheme:@"https"];
            r0 = [r21 URL];
            r29 = r29;
            r0 = [r0 retain];
    }
    else {
            r0 = [r20 retain];
    }
    r23 = r0;
    r0 = [r0 absoluteString];
    r29 = r29;
    r24 = [r0 retain];
    if ((*0x100be01b0 & 0x4) != 0x0) {
            [TR_DDLog log:0x1 level:0x0 flag:0x4 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/TRWebviewController.m" function:"-[TRWebviewController webView:decidePolicyForNavigationAction:decisionHandler:]" line:0xf8 tag:0x0 format:@"WebView Start Load: %@"];
    }
    if ([r22 isTapResearchDomain:r23] == 0x0) goto loc_100407df0;

loc_100407d60:
    if ([r24 rangeOfString:r2] != 0x7fffffffffffffff) goto loc_100407ebc;

loc_100407d88:
    if ([r24 rangeOfString:r2] != 0x7fffffffffffffff) {
            r0 = [r22 indicatorView];
            r0 = [r0 retain];
            [r0 show:0x1];
            [r0 release];
    }
    [r22 setCpIdentifier:0x0];
    goto loc_100407ea8;

loc_100407ea8:
    (*(r19 + 0x10))(r19, 0x1);
    goto loc_100407f70;

loc_100407f70:
    [r24 release];
    [r21 release];
    [r20 release];
    [r23 release];
    [r19 release];
    return;

loc_100407ebc:
    r0 = [r22 queryParameters:r23];
    r0 = [r0 retain];
    r27 = [[r0 objectForKey:@"cp_identifier"] retain];
    [r22 setCpIdentifier:r27];
    [r27 release];
    [r22 loadRequestWithURLString:[[r0 objectForKey:@"entry_url"] retain]];
    (*(r19 + 0x10))(r19, 0x0);
    [r26 release];
    [r25 release];
    goto loc_100407f70;

loc_100407df0:
    r0 = [r22 cpIdentifier];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r25 = [TRSurveyURLRequest alloc];
            r22 = [[r22 cpIdentifier] retain];
            r25 = [r25 initWithSurveyURL:r24 andCPIdentifier:r22];
            [r22 release];
            r0 = [TRNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 addRequest:r25];
            [r0 release];
            [r25 release];
    }
    goto loc_100407ea8;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg4;
    r20 = self;
    r19 = [arg2 retain];
    if ((*0x100be01b0 & 0x8) != 0x0) {
            r0 = [r22 localizedDescription];
            r29 = r29;
            r22 = [r0 retain];
            [TR_DDLog log:0x1 level:*0x100be01b0 flag:0x8 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/TRWebviewController.m" function:"-[TRWebviewController webView:didFailNavigation:withError:]" line:0x130 tag:0x0 format:@"WebView Failed to Load: %@"];
            [r22 release];
    }
    r21 = [[r19 URL] retain];
    [r20 resetViewForRequest:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void *)initializeWebView {
    r0 = [self initializeWebViewWithConfiguration:0x0];
    return r0;
}

-(void)updateTitle {
    r31 = r31 - 0x60;
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
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 navigationBarText];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r0 = [r20 release];
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r21;
            }
            else {
                    r0 = @"TapResearch";
            }
    }
    r20 = [r0 retain];
    [r21 release];
    r0 = [r19 view];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 subviews];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 count];
    [r0 release];
    [r24 release];
    if (r26 >= 0x3) {
            r23 = @selector(count);
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 subviews];
            r0 = [r0 retain];
            r22 = r0;
            objc_msgSend(r0, r23);
            r23 = [[NSString stringWithFormat:r2] retain];
            [r20 release];
            [r22 release];
            [r21 release];
            r20 = r23;
    }
    [r19 setTitle:r20];
    [r20 release];
    return;
}

-(void *)encodedURLString:(void *)arg2 {
    r0 = [NSMutableString stringWithString:arg2];
    r0 = [r0 retain];
    [r0 length];
    [r0 replaceOccurrencesOfString:@" " withString:@"+" options:0x1 range:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initializeWebViewWithConfiguration:(void *)arg2 {
    var_40 = d9;
    stack[-72] = d8;
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
    r20 = [arg2 retain];
    r0 = [r19 view];
    r0 = [r0 retain];
    CGRectGetWidth([r0 frame]);
    v8 = v0;
    r0 = [r19 view];
    r0 = [r0 retain];
    CGRectGetHeight([r0 frame]);
    v9 = v0;
    [r21 release];
    [r22 release];
    r0 = [WKWebView alloc];
    if (r20 != 0x0) {
            r0 = [r0 initWithFrame:r20 configuration:r3];
    }
    else {
            r0 = [r0 initWithFrame:r2];
    }
    [r0 setAutoresizingMask:0x12];
    [r0 setNavigationDelegate:r19];
    [r0 setUIDelegate:r19];
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)loadRequestWithURLString:(void *)arg2 {
    r19 = [[self encodedURLString:arg2] retain];
    r20 = [[NSURL URLWithString:r19] retain];
    r0 = [NSMutableURLRequest requestWithURL:r20];
    r0 = [r0 retain];
    r22 = r0;
    [r0 addValue:*0x100e7d5f8 forHTTPHeaderField:@"Referer"];
    r0 = [self webView];
    r0 = [r0 retain];
    [[[r0 loadRequest:r22] retain] release];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(bool)isTapResearchDomain:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r19 = [[arg2 host] retain];
    r0 = [NSArray arrayWithObjects:&saved_fp - 0x68 count:0x2];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_1004088d0;

loc_10040882c:
    r8 = &@selector(alloc);
    goto loc_100408840;

loc_100408840:
    r28 = 0x0;
    r21 = r8;
    r24 = *(r8 + 0x800);
    goto loc_100408850;

loc_100408850:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r25 = *(0x0 + r28 * 0x8);
    if ([r19 rangeOfString:r2] == 0x7fffffffffffffff || (objc_msgSend(r19, r24) & 0x1) == 0x0) goto loc_10040889c;

loc_1004088e0:
    [r20 release];
    r21 = 0x1;
    goto loc_1004088ec;

loc_1004088ec:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10040889c:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100408850;

loc_1004088a8:
    r22 = objc_msgSend(r20, var_130);
    r8 = r21;
    if (r22 != 0x0) goto loc_100408840;

loc_1004088d0:
    [r20 release];
    r21 = 0x0;
    goto loc_1004088ec;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)queryParameters:(void *)arg2 {
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
    r21 = [arg2 retain];
    r19 = [[NSURLComponents alloc] initWithURL:r21 resolvingAgainstBaseURL:0x1];
    [r21 release];
    r20 = [[NSMutableDictionary alloc] init];
    var_128 = r19;
    r0 = [r19 queryItems];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = *(0x0 + r22 * 0x8);
                            [[r27 value] retain];
                            r0 = [r27 name];
                            r29 = r29;
                            [r0 retain];
                            [r20 setObject:r2 forKeyedSubscript:r3];
                            [r27 release];
                            [r28 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(r21, var_120);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [var_128 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void *)refreshButton {
    r0 = self->_refreshButton;
    return r0;
}

-(void)setRefreshButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_refreshButton, arg2);
    return;
}

-(void *)abandonButton {
    r0 = self->_abandonButton;
    return r0;
}

-(void)setAbandonButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_abandonButton, arg2);
    return;
}

-(void *)cpIdentifier {
    r0 = self->_cpIdentifier;
    return r0;
}

-(void)setCpIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cpIdentifier, arg2);
    return;
}

-(void *)indicatorView {
    r0 = self->_indicatorView;
    return r0;
}

-(void)setIndicatorView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_indicatorView, arg2);
    return;
}

-(void *)player {
    r0 = self->_player;
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_player, arg2);
    return;
}

-(void)setOffer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offer, arg2);
    return;
}

-(void *)offer {
    r0 = self->_offer;
    return r0;
}

-(void *)surveyDelegate {
    r0 = self->_surveyDelegate;
    return r0;
}

-(void)setSurveyDelegate:(void *)arg2 {
    self->_surveyDelegate = arg2;
    return;
}

-(void)setAbandoningSurvey:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_abandoningSurvey = arg2;
    return;
}

-(bool)abandoningSurvey {
    r0 = *(int8_t *)(int64_t *)&self->_abandoningSurvey;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_offer, 0x0);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    objc_storeStrong((int64_t *)&self->_indicatorView, 0x0);
    objc_storeStrong((int64_t *)&self->_cpIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_abandonButton, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshButton, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end