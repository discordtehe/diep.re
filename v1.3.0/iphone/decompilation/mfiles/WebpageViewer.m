@implementation WebpageViewer

-(void *)initWithId:(unsigned long long)arg2 {
    [[&var_20 super] init];
    *(self + 0x70) = arg2;
    r0 = self;
    return r0;
}

-(void)swapWaitForView {
    r0 = self;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x2c) == 0x0) {
            r19 = r0;
            if (*(int8_t *)(r0 + 0x28) != 0x0) {
                    if (*(int8_t *)(r19 + 0x2b) != 0x0) {
                            [*(r19 + 0x40) setHidden:0x0];
                            [*(r19 + 0x40) setAlpha:r2];
                            objc_msgSend(*(r19 + 0x48), r20);
                    }
                    else {
                            if (*(int8_t *)(r19 + 0x2a) != 0x0) {
                                    [*(r19 + 0x20) alpha];
                                    if (d0 == 0x0) {
                                            [*(r19 + 0x60) removeFromSuperview];
                                            [*(r19 + 0x8) addSubview:*(r19 + 0x60)];
                                            [[*(r19 + 0x18) view] addSubview:*(r19 + 0x20)];
                                            [*(r19 + 0x50) stopAnimating];
                                            [UIView animateWithDuration:r2 delay:r3 options:r4 animations:r5 completion:r6];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)setup {
    *(int8_t *)(self + 0x2b) = 0x0;
    *(int16_t *)(self + 0x29) = 0x0;
    [self prepareUI];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 delegate];
    r0 = [r0 window];
    r0 = [r0 rootViewController];
    *(self + 0x18) = r0;
    r0 = [r0 view];
    r2 = *(self + 0x10);
    [r0 addSubview:r2];
    [*(self + 0x10) frame];
    [[UIScreen mainScreen] bounds];
    [*(self + 0x10) frame];
    [*(self + 0x10) frame];
    [*(self + 0x10) frame];
    [*(self + 0x10) frame];
    [*(self + 0x10) setFrame:r2];
    [UIView animateWithDuration:0x2 delay:&var_98 options:&var_C0 animations:r5 completion:r6];
    *(int8_t *)(self + 0x2c) = 0x1;
    return;
}

-(void)scaleInFinished {
    *(int8_t *)(self + 0x2c) = 0x0;
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(void)dealloc {
    [*(self + 0x68) release];
    [*(self + 0x60) removeFromSuperview];
    [*(self + 0x60) release];
    [*(self + 0x40) removeFromSuperview];
    [*(self + 0x40) release];
    [*(self + 0x10) removeFromSuperview];
    [*(self + 0x10) release];
    [*(self + 0x20) removeFromSuperview];
    [*(self + 0x8) loadHTMLString:@"" baseURL:0x0];
    [*(self + 0x8) setNavigationDelegate:0x0];
    [*(self + 0x8) setUIDelegate:0x0];
    [*(self + 0x8) stopLoading];
    [*(self + 0x20) release];
    [*(self + 0x58) release];
    *(self + 0x58) = 0x0;
    [[&var_30 super] dealloc];
    return;
}

-(void)showWithSource:(void *)arg2 andBaseURL:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [arg3 retain];
    *(r20 + 0x68) = r0;
    if (r19 != 0x0) {
            [*(r20 + 0x8) loadHTMLString:r19 baseURL:[NSURL URLWithString:r0]];
    }
    return;
}

-(void)showWithURL:(void *)arg2 {
    [*(self + 0x8) loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:arg2]]];
    return;
}

-(bool)hideLoadingView {
    *(int8_t *)(self + 0x2c) = 0x0;
    [*(self + 0x60) removeFromSuperview];
    [*(self + 0x50) stopAnimating];
    [UIView animateWithDuration:r2 delay:r3 options:r4 animations:r5 completion:r6];
    return 0x1;
}

-(void)showLoadingView {
    [self setup];
    *(int8_t *)(self + 0x28) = 0x1;
    return;
}

-(void)hideComplete {
    [*(self + 0x58) release];
    *(self + 0x58) = 0x0;
    *(int32_t *)(self + 0x28) = 0x0;
    sub_1009838a8(*(self + 0x70));
    return;
}

-(void)hide {
    r0 = self;
    r31 = r31 - 0xb0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x29) == 0x0) {
            *(int8_t *)(r0 + 0x29) = 0x1;
            [[UIScreen mainScreen] bounds];
            [*(r0 + 0x8) frame];
            [*(r0 + 0x8) frame];
            [*(r0 + 0x8) frame];
            [UIView animateWithDuration:r2 delay:r3 options:r4 animations:r5 completion:r6];
    }
    return;
}

-(void)downloadFailed {
    [*(self + 0x50) stopAnimating];
    *(int8_t *)(self + 0x2b) = 0x1;
    [self swapWaitForView];
    return;
}

-(void)webView:(void *)arg2 didStartProvisionalNavigation:(void *)arg3 {
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    [arg2 dismissViewControllerAnimated:0x1 completion:0x0];
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    r0 = self;
    if (*(int8_t *)(r0 + 0x2a) == 0x0) {
            [r0 downloadFailed];
    }
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r0 = self;
    if (*(int8_t *)(r0 + 0x2a) == 0x0) {
            *(int8_t *)(r0 + 0x2a) = 0x1;
            [r0 swapWaitForView];
    }
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([arg4 code] != 0x66 && *(int8_t *)(r19 + 0x2a) == 0x0) {
            [r19 downloadFailed];
    }
    return;
}

-(void)prepareUI {
    r31 = r31 - 0x120;
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
    r19 = self;
    [[UIScreen mainScreen] bounds];
    v8 = v2;
    v9 = v3;
    r0 = [WKWebView alloc];
    r0 = [r0 initWithFrame:r2];
    r0 = [r0 autorelease];
    *(r19 + 0x8) = r0;
    [r0 setNavigationDelegate:r19];
    [*(r19 + 0x8) setUIDelegate:r19];
    [*(r19 + 0x8) setOpaque:0x1];
    r2 = [UIColor blackColor];
    [*(r19 + 0x8) setBackgroundColor:r2];
    *(r19 + 0x20) = [[UIView alloc] initWithFrame:r2];
    [*(r19 + 0x20) setBackgroundColor:[UIColor blackColor]];
    [*(r19 + 0x20) setOpaque:0x1];
    [*(r19 + 0x20) setAlpha:0x1];
    [*(r19 + 0x20) addSubview:*(r19 + 0x8)];
    r0 = [UIButton buttonWithType:0x1];
    r0 = [r0 retain];
    *(r19 + 0x60) = r0;
    [r0 addTarget:r19 action:@selector(hide) forControlEvents:0x1];
    [*(r19 + 0x60) setTitle:@"Close" forState:0x0];
    r22 = [[UIDevice currentDevice] orientation] - 0x1;
    r8 = [[UIDevice currentDevice] orientation] - 0x1;
    if (r8 < 0x2) {
            if (CPU_FLAGS & B) {
                    r8 = 0x1;
            }
    }
    if (r22 < 0x2) {
            asm { fcsel      d0, d1, d0, lo };
    }
    d10 = d8 * *0x100b9b050;
    d0 = *(0x100bf5cf0 + r8 * 0x8);
    d11 = d9 * d0;
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) != 0x0) {
            r0 = *(&@class(MCConfigurationData) + 0x48);
            r0 = [r0 sharedApplication];
            r0 = [r0 delegate];
            r0 = [r0 window];
            r0 = [r0 rootViewController];
            r0 = [r0 view];
            [r0 safeAreaInsets];
            asm { fcvt       s12, d3 };
            r0 = *(r28 + 0x48);
            r0 = objc_msgSend(r0, r21);
            r0 = objc_msgSend(r0, r22);
            r0 = objc_msgSend(r0, r23);
            r0 = objc_msgSend(r0, r24);
            r0 = objc_msgSend(r0, r25);
            r1 = r26;
            r26 = r27;
            objc_msgSend(r0, r1);
            asm { fcvt       s1, d2 };
            asm { fcvt       d0, s12 };
            asm { fcvt       d12, s1 };
    }
    else {
            r26 = @selector(setBackgroundColor:);
            d0 = 0x0;
    }
    r20 = @selector(currentDevice);
    r24 = &@class(MCConfigurationData);
    r2 = 0x0;
    asm { fcvt       s0, d0 };
    asm { fcvt       d0, s0 };
    [*(r19 + 0x60) setFrame:r2];
    [[objc_msgSend(*(r24 + 0x1d8), r20) systemVersion] floatValue];
    if (s0 >= 0x401c000000000000) {
            r2 = [UIColor darkTextColor];
            [*(r19 + 0x60) setTintColor:r2];
            [[*(r19 + 0x60) layer] setCornerRadius:r2];
            [[*(r19 + 0x60) layer] setBorderWidth:r2];
            [[*(r19 + 0x60) layer] setBorderColor:[[UIColor grayColor] CGColor]];
            [[UIColor whiteColor] CGColor];
            objc_msgSend([*(r19 + 0x60) layer], r26);
    }
    [UILabel alloc];
    [[UIScreen mainScreen] bounds];
    [[UIScreen mainScreen] bounds];
    r0 = [r20 initWithFrame:r2];
    *(r19 + 0x40) = r0;
    [r0 setTextAlignment:0x1];
    [UIColor clearColor];
    objc_msgSend(*(r19 + 0x40), r26);
    [*(r19 + 0x40) setTextColor:[UIColor whiteColor]];
    [*(r19 + 0x40) setNumberOfLines:0x0];
    [*(r19 + 0x8) center];
    [*(r19 + 0x8) center];
    [*(r19 + 0x40) setCenter:0x0];
    [*(r19 + 0x40) setFont:[UIFont fontWithName:@"Arial Rounded MT Bold" size:0x0]];
    [*(r19 + 0x40) setText:@"Could not retrieve data.\nPlease check your internet connection."];
    [*(r19 + 0x40) setAlpha:r2];
    [*(r19 + 0x40) setOpaque:r2];
    r0 = [UIViewTouchStub alloc];
    r0 = [r0 initWithFrame:r2];
    *(r19 + 0x10) = r0;
    [r0 setOpaque:r2];
    [UIColor darkGrayColor];
    objc_msgSend(*(r19 + 0x10), r26);
    [*(r19 + 0x10) setAlpha:r2];
    [*(r19 + 0x10) setExclusiveTouch:0x1];
    [*(r19 + 0x10) setUserInteractionEnabled:0x1];
    [*(r19 + 0x10) addSubview:r2];
    [*(r19 + 0x10) addSubview:r2];
    r0 = [UIActivityIndicatorView alloc];
    r0 = [r0 initWithActivityIndicatorStyle:0x1];
    *(r19 + 0x50) = r0;
    [r0 setFrame:r2];
    [*(r19 + 0x10) center];
    [*(r19 + 0x50) setCenter:0x1];
    [*(r19 + 0x50) setHidden:0x1];
    [*(r19 + 0x10) addSubview:r2];
    [UILabel alloc];
    [[UIScreen mainScreen] bounds];
    [*(r19 + 0x10) frame];
    r0 = [r28 initWithFrame:r2];
    *(r19 + 0x48) = r0;
    [r0 setTextAlignment:0x1];
    [*(r19 + 0x48) setTextColor:[UIColor whiteColor]];
    [UIColor clearColor];
    objc_msgSend(*(r19 + 0x48), r26);
    [*(r19 + 0x48) setOpaque:r2];
    [*(r19 + 0x48) setFont:[UIFont fontWithName:@"Arial Rounded MT Bold" size:0x0]];
    [*(r19 + 0x48) setText:@"Fetching data . . ."];
    [*(r19 + 0x48) setAlpha:r2];
    [*(r19 + 0x10) center];
    [*(r19 + 0x10) center];
    [*(r19 + 0x48) setCenter:@"Fetching data . . ."];
    [*(r19 + 0x48) setHidden:0x1];
    [*(r19 + 0x10) addSubview:r2];
    [*(r19 + 0x50) setHidden:0x0];
    [*(r19 + 0x48) setHidden:0x0];
    [*(r19 + 0x50) startAnimating];
    return;
}

-(bool)isAttached {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    r31 = r31 - 0x160;
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
    r19 = arg4;
    r21 = arg3;
    r20 = self;
    if ([[[[arg3 request] URL] scheme] isEqualToString:r2] == 0x0) goto loc_10098c2c0;

loc_10098c19c:
    var_150 = r20;
    r24 = [UIApplication sharedApplication];
    [[r21 request] URL];
    if (([r24 openURL:r2] & 0x1) != 0x0) goto loc_10098c3f4;

loc_10098c1e4:
    var_110 = q0;
    r0 = [r21 request];
    r0 = [r0 URL];
    r0 = [r0 pathComponents];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_10098c3f4;

loc_10098c234:
    r23 = r0;
    r27 = *var_110;
    r8 = &@selector(alloc);
    goto loc_10098c24c;

loc_10098c24c:
    r28 = 0x0;
    r20 = r8;
    r25 = *(r8 + 0x800);
    goto loc_10098c258;

loc_10098c258:
    if (*var_110 != r27) {
            objc_enumerationMutation(r21);
    }
    r26 = *(var_118 + r28 * 0x8);
    if (objc_msgSend(r26, r25) != 0x0) goto loc_10098c304;

loc_10098c28c:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_10098c258;

loc_10098c298:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    r8 = r20;
    if (r0 != 0x0) goto loc_10098c24c;

loc_10098c3f4:
    var_60 = **___stack_chk_guard;
    (*(r19 + 0x10))(r19, 0x0);
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_10098c304:
    r0 = [r26 substringFromIndex:[@"id" length]];
    if (r0 != 0x0) {
            r21 = r0;
            if ([r0 length] != 0x0) {
                    r0 = [SKStoreProductViewController alloc];
                    r0 = [r0 init];
                    [r0 setDelegate:var_150];
                    [r0 loadProductWithParameters:[NSDictionary dictionaryWithObject:r21 forKey:**_SKStoreProductParameterITunesItemIdentifier] completionBlock:&var_148];
                    [r0 release];
            }
    }
    goto loc_10098c3f4;

loc_10098c2c0:
    var_60 = **___stack_chk_guard;
    r1 = *(int8_t *)(r20 + 0x28);
    r2 = *(r19 + 0x10);
    if (**___stack_chk_guard == var_60) {
            (r2)(r19, r1, r2);
    }
    else {
            __stack_chk_fail();
    }
    return;
}

@end