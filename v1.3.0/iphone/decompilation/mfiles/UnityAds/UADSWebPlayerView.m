@implementation UADSWebPlayerView

-(void *)initWithFrame:(struct CGRect)arg2 viewId:(void *)arg3 webPlayerSettings:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [r3 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setAccessibilityElementsHidden:0x1];
            [r21 setWebPlayerSettings:r20];
            [r21 setViewId:r19];
            [r21 createInternalWebView];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)destroy {
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
    r0 = [USRVDevice getOsVersion];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 componentsSeparatedByString:@"."];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r22 = r0;
    r25 = [r0 intValue];
    r0 = [r19 internalWebView];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r25 < 0x9) goto loc_1000bb430;

loc_1000bb330:
    [r24 setValue:0x0 forKeyPath:@"navigationDelegate"];
    [r24 release];
    r0 = [r19 internalWebView];
    r0 = [r0 retain];
    [r0 setValue:0x0 forKeyPath:@"UIDelegate"];
    [r0 release];
    r0 = [r19 wkConfiguration];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000bb44c;

loc_1000bb3b4:
    r23 = [[r19 wkConfiguration] retain];
    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
    r25 = [r0 retain];
    [USRVWKWebViewUtilities removeUserContentControllerMessageHandler:r23 handledMessages:r25];
    [r25 release];
    r0 = r23;
    goto loc_1000bb448;

loc_1000bb448:
    [r0 release];
    goto loc_1000bb44c;

loc_1000bb44c:
    var_48 = **___stack_chk_guard;
    [r19 setInternalWebView:0x0];
    [r19 setWkConfiguration:0x0];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1000bb430:
    [r24 setDelegate:0x0];
    r0 = r24;
    goto loc_1000bb448;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_30 super] setFrame:r2];
    r21 = self->_internalWebView;
    [[&var_40 super] bounds];
    [r21 setFrame:r2];
    return;
}

-(void)loadData:(void *)arg2 mimeType:(void *)arg3 encoding:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self loadData:r22 mimeType:r20 encoding:arg4 baseUrl:@""];
    [r20 release];
    [r22 release];
    return;
}

-(void)loadUrl:(void *)arg2 {
    r20 = self->_internalWebView;
    r22 = [[NSURL URLWithString:arg2] retain];
    r21 = [[NSURLRequest requestWithURL:r22] retain];
    [USRVWKWebViewUtilities loadUrl:r20 url:r21];
    [r21 release];
    [r22 release];
    return;
}

-(void)loadData:(void *)arg2 mimeType:(void *)arg3 encoding:(void *)arg4 baseUrl:(void *)arg5 {
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
    r29 = &saved_fp;
    r23 = arg2;
    r24 = self;
    r22 = [r23 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_internalWebView));
    r25 = *(r24 + r28);
    r21 = [arg5 retain];
    [UIWebView class];
    if ([r25 isKindOfClass:r2] != 0x0) {
            r24 = *(r24 + r28);
            r23 = [[r23 dataUsingEncoding:0x4] retain];
            [r22 release];
            r22 = [[NSURL URLWithString:r21] retain];
            [r21 release];
            [r24 loadData:r23 MIMEType:r19 textEncodingName:r20 baseURL:r22];
    }
    else {
            r24 = *(r24 + r28);
            r23 = [[r23 dataUsingEncoding:0x4] retain];
            [r22 release];
            r22 = [[NSURL URLWithString:r21] retain];
            [r21 release];
            [USRVWKWebViewUtilities loadData:r24 data:r23 mimeType:r19 encoding:r20 baseUrl:r22];
    }
    [r20 release];
    [r19 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)setWebPlayerSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webPlayerSettings, arg2);
    return;
}

-(void)setEventSettings:(void *)arg2 {
    [self setWebPlayerEventSettings:arg2];
    return;
}

-(void)receiveEvent:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSJSONSerialization dataWithJSONObject:arg2 options:0x0 error:0x0] retain];
    r21 = [[NSString alloc] initWithData:r19 encoding:0x4];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:@"javascript:window.nativebridge.receiveEvent(%@)"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_internalWebView));
    r23 = *(r20 + r24);
    [UIWebView class];
    if ([r23 isKindOfClass:r2] != 0x0) {
            [[[*(r20 + r24) stringByEvaluatingJavaScriptFromString:r22] retain] release];
    }
    else {
            [USRVWKWebViewUtilities evaluateJavaScript:*(r20 + r24) string:r22];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)createInternalWebView {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [USRVDevice getOsVersion];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 componentsSeparatedByString:@"."];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [r0 intValue];
    r0 = [USRVDeviceLog getLogLevel];
    if (r23 >= 0x9) {
            if (r0 >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Using WKWebView for WebPlayer", @selector(getLogLevel), 0x0, r3);
            }
            r1 = @selector(createWKWebPlayer);
    }
    else {
            if (r0 >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Using UIWebView for WebPlayer", @selector(getLogLevel), 0x0, r3);
            }
            r1 = @selector(createUIWebPlayer);
    }
    objc_msgSend(r20, r1);
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)webViewDidStartLoad:(void *)arg2 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if ([r21 shouldSendEvent:@"onPageStarted"] != 0x0) {
            r20 = [[USRVWebViewApp getCurrentApp] retain];
            r22 = [sub_1000be55c() retain];
            r23 = [sub_1000d1038() retain];
            r0 = [r19 request];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 mainDocumentURL];
            r0 = [r0 retain];
            r26 = [[r0 absoluteString] retain];
            r21 = [[r21 viewId] retain];
            [r20 sendEvent:r22 category:r23 param1:r26];
            [r21 release];
            [r26 release];
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if ([r21 shouldSendEvent:@"onPageFinished"] != 0x0) {
            r20 = [[USRVWebViewApp getCurrentApp] retain];
            r22 = [sub_1000be55c() retain];
            r23 = [sub_1000d1038() retain];
            r0 = [r19 request];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 mainDocumentURL];
            r0 = [r0 retain];
            r26 = [[r0 absoluteString] retain];
            r21 = [[r21 viewId] retain];
            [r20 sendEvent:r22 category:r23 param1:r26];
            [r21 release];
            [r26 release];
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r22 shouldSendEvent:@"onReceivedError"] != 0x0) {
            r21 = [[USRVWebViewApp getCurrentApp] retain];
            r23 = [sub_1000be55c() retain];
            r24 = [sub_1000d1038() retain];
            r0 = [r19 request];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 mainDocumentURL];
            r0 = [r0 retain];
            r27 = [[r0 absoluteString] retain];
            r28 = [[r20 localizedDescription] retain];
            r22 = [[r22 viewId] retain];
            [r21 sendEvent:r23 category:r24 param1:r27];
            [r22 release];
            [r28 release];
            [r27 release];
            [r0 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)createUIWebPlayer {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[UIWebView alloc] initWithFrame:r2];
    r0 = [r19 webPlayerSettings];
    r29 = &saved_fp;
    [r0 retain];
    NSLog(@"WebPlayerSettings: %@", @selector(webPlayerSettings));
    [r21 release];
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = [r19 boolValueForWebPlayerSetting:0x1];
            [r20 setMediaPlaybackRequiresUserAction:r2];
            [r20 mediaPlaybackRequiresUserAction];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(mediaPlaybackRequiresUserAction), r2);
    }
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = [r19 boolValueForWebPlayerSetting:0x0];
            [r20 setAllowsInlineMediaPlayback:r2];
            [r20 allowsInlineMediaPlayback];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(allowsInlineMediaPlayback), r2);
    }
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = [r19 boolValueForWebPlayerSetting:0x3];
            [r20 setScalesPageToFit:r2];
            [r20 scalesPageToFit];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(scalesPageToFit), r2);
    }
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = [r19 boolValueForWebPlayerSetting:0x6];
            [r20 setMediaPlaybackAllowsAirPlay:r2];
            [r20 mediaPlaybackAllowsAirPlay];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(mediaPlaybackAllowsAirPlay), r2);
    }
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = [r19 boolValueForWebPlayerSetting:0x7];
            [r20 setSuppressesIncrementalRendering:r2];
            [r20 suppressesIncrementalRendering];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(suppressesIncrementalRendering), r2);
    }
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = [r19 boolValueForWebPlayerSetting:0x8];
            [r20 setKeyboardDisplayRequiresUserAction:r2];
            [r20 keyboardDisplayRequiresUserAction];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(keyboardDisplayRequiresUserAction), r2);
    }
    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
            r2 = 0xa;
            [r19 intValueForWebPlayerSetting:r2];
            asm { sxtw       x2, w0 };
            [r20 setDataDetectorTypes:r2];
            [r20 dataDetectorTypes];
            NSLog(@"WebPlayer: setting %@ to %d", @selector(dataDetectorTypes), r2);
    }
    r21 = [[UIColor clearColor] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    [r20 setOpaque:0x0];
    r0 = [r20 scrollView];
    r0 = [r0 retain];
    [r0 setBounces:0x0];
    [r0 release];
    [r20 setDelegate:r19];
    [r19 setInternalWebView:r20];
    [r19 addSubview:r2];
    [r20 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r20 = self;
    r0 = [arg3 URL];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 absoluteString];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    NSLog(@"Got event: %@", @selector(absoluteString));
    if ([r19 hasPrefix:@"umsg:"] == 0x0) goto loc_1000bc554;

loc_1000bc418:
    r0 = [r19 componentsSeparatedByString:@"umsg:"];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 lastObject];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    [r22 release];
    r22 = [[USRVWebViewApp getCurrentApp] retain];
    r23 = [sub_1000be55c() retain];
    r24 = [sub_1000d1038() retain];
    r20 = [[r20 viewId] retain];
    [r22 sendEvent:r23 category:r24 param1:r21];
    [r20 release];
    r0 = r24;
    goto loc_1000bc510;

loc_1000bc510:
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_1000bc52c;

loc_1000bc52c:
    r21 = 0x0;
    goto loc_1000bc530;

loc_1000bc530:
    [r19 release];
    r0 = r21;
    return r0;

loc_1000bc554:
    if ([r20 shouldProvideReturnValue:@"shouldOverrideUrlLoading"] != 0x0) {
            r21 = [r20 boolValueForEventReturnValue:@"shouldOverrideUrlLoading"];
    }
    else {
            r21 = 0x1;
    }
    if (r22 == 0x0) goto loc_1000bc65c;

loc_1000bc5a0:
    if ([r20 shouldSendEvent:r2] != 0x0) {
            r22 = [[USRVWebViewApp getCurrentApp] retain];
            r23 = [sub_1000be55c() retain];
            r24 = [sub_1000d1038() retain];
            r20 = [[r20 viewId] retain];
            [r22 sendEvent:r23 category:r24 param1:r19];
            [r20 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    goto loc_1000bc530;

loc_1000bc65c:
    if ([r20 shouldSendEvent:r2] == 0x0) goto loc_1000bc52c;

loc_1000bc670:
    r21 = [[USRVWebViewApp getCurrentApp] retain];
    r22 = [sub_1000be55c() retain];
    r23 = [sub_1000d1038() retain];
    r20 = [[r20 viewId] retain];
    [r21 sendEvent:r22 category:r23 param1:r19];
    r0 = r20;
    goto loc_1000bc510;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if ([r21 shouldSendEvent:@"onPageFinished"] != 0x0) {
            r20 = [[USRVWebViewApp getCurrentApp] retain];
            r22 = [sub_1000be55c() retain];
            r23 = [sub_1000d1038() retain];
            r0 = [r19 valueForKeyPath:@"URL"];
            r0 = [r0 retain];
            r25 = [[r0 absoluteString] retain];
            r21 = [[r21 viewId] retain];
            [r20 sendEvent:r22 category:r23 param1:r25];
            [r21 release];
            [r25 release];
            [r0 release];
            [r23 release];
            [r22 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 didStartProvisionalNavigation:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if ([r21 shouldSendEvent:@"onPageStarted"] != 0x0) {
            r20 = [[USRVWebViewApp getCurrentApp] retain];
            r22 = [sub_1000be55c() retain];
            r23 = [sub_1000d1038() retain];
            r0 = [r19 valueForKeyPath:@"URL"];
            r0 = [r0 retain];
            r25 = [[r0 absoluteString] retain];
            r21 = [[r21 viewId] retain];
            [r20 sendEvent:r22 category:r23 param1:r25];
            [r21 release];
            [r25 release];
            [r0 release];
            [r23 release];
            [r22 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(long long)decideNavigationAction:(bool)arg2 {
    r0 = arg2;
    return r0;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if ([r22 shouldSendEvent:@"onReceivedError"] != 0x0) {
            r21 = [[USRVWebViewApp getCurrentApp] retain];
            r23 = [sub_1000be55c() retain];
            r24 = [sub_1000d1038() retain];
            r0 = [r19 valueForKeyPath:@"URL"];
            r0 = [r0 retain];
            r26 = [[r0 absoluteString] retain];
            r27 = [[r20 localizedDescription] retain];
            r22 = [[r22 viewId] retain];
            [r21 sendEvent:r23 category:r24 param1:r26];
            [r22 release];
            [r27 release];
            [r26 release];
            [r0 release];
            [r24 release];
            [r23 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
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
    r20 = self;
    r0 = [arg3 valueForKey:@"body"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 dataUsingEncoding:0x4];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = [[USRVWebViewApp getCurrentApp] retain];
                    r23 = [sub_1000be55c() retain];
                    r26 = [sub_1000d1038() retain];
                    r27 = [[NSString alloc] initWithData:r21 encoding:0x4];
                    r20 = [[r20 viewId] retain];
                    [r22 sendEvent:r23 category:r26 param1:r27];
                    [r20 release];
                    [r27 release];
                    [r26 release];
                    [r23 release];
                    [r22 release];
                    [[NSString alloc] initWithData:r21 encoding:0x4];
                    NSLog(@"datadesc: %@", @selector(initWithData:encoding:));
                    [r20 release];
                    [r21 release];
            }
    }
    else {
            r22 = @selector(isKindOfClass:);
            [NSDictionary class];
            if (objc_msgSend(r19, r22) != 0x0) {
                    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_58];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (var_58 != 0x0) {
                            [r21 release];
                            r21 = 0x0;
                    }
                    if (r21 != 0x0) {
                            r22 = [[USRVWebViewApp getCurrentApp] retain];
                            r23 = [sub_1000be55c() retain];
                            r26 = [sub_1000d1038() retain];
                            r27 = [[NSString alloc] initWithData:r21 encoding:0x4];
                            r20 = [[r20 viewId] retain];
                            [r22 sendEvent:r23 category:r26 param1:r27];
                            [r20 release];
                            [r27 release];
                            [r26 release];
                            [r23 release];
                            [r22 release];
                            [[NSString alloc] initWithData:r21 encoding:0x4];
                            NSLog(@"datadesc: %@", @selector(initWithData:encoding:));
                            [r20 release];
                            [r21 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(bool)isNavigationActionRequestInIFrame:(void *)arg2 {
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
    r0 = [arg2 retain];
    r22 = r0;
    r19 = [[r0 valueForKey:r2] retain];
    r0 = [r22 valueForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r19 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r20 = 0x0;
    }
    else {
            r0 = [r19 valueForKey:r2];
            r0 = [r0 retain];
            r25 = [r0 boolValue];
            [r0 release];
            r0 = [r21 valueForKey:r2];
            r0 = [r0 retain];
            r22 = r25 & [r0 boolValue];
            [r0 release];
            r20 = r22 ^ 0x1;
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
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
    r29 = &saved_fp;
    r21 = arg4;
    r20 = self;
    r19 = [arg3 retain];
    r22 = [r21 retain];
    if ([r20 shouldProvideReturnValue:@"shouldOverrideUrlLoading"] != 0x0) {
            r23 = [r20 boolValueForEventReturnValue:@"shouldOverrideUrlLoading"];
    }
    else {
            r23 = 0x1;
    }
    [r20 isNavigationActionRequestInIFrame:r19];
    (*(r22 + 0x10))(r21, [r20 decideNavigationAction:r23]);
    [r22 release];
    if ((r24 & 0x1) == 0x0) {
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r21 valueForKey:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0 && [r20 shouldSendEvent:@"onCreateWindow"] != 0x0) {
                            r23 = [[USRVWebViewApp getCurrentApp] retain];
                            r24 = [sub_1000be55c() retain];
                            r25 = [sub_1000d1038() retain];
                            r26 = [[r22 absoluteString] retain];
                            r20 = [[r20 viewId] retain];
                            [r23 sendEvent:r24 category:r25 param1:r26];
                            [r20 release];
                            [r26 release];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                    }
                    [r22 release];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(bool)shouldSendEvent:(void *)arg2 {
    r0 = self->_webPlayerEventSettings;
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:@"sendEvent"] retain];
    r21 = [@(YES) retain];
    r22 = [r19 isEqualToValue:r21];
    [r21 release];
    [r19 release];
    [r0 release];
    r0 = r22;
    return r0;
}

-(void *)webView:(void *)arg2 createWebViewWithConfiguration:(void *)arg3 forNavigationAction:(void *)arg4 windowFeatures:(void *)arg5 {
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
    r21 = self;
    r0 = [arg4 retain];
    r22 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    if (r19 != 0x0) {
            r0 = [r19 valueForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    if ([r21 shouldProvideReturnValue:@"onCreateWindow"] != 0x0 && [r21 boolValueForEventReturnValue:@"onCreateWindow"] != 0x0) {
                            r23 = r21->_internalWebView;
                            r0 = [NSURLRequest requestWithURL:r20];
                            r29 = r29;
                            r24 = [r0 retain];
                            [USRVWKWebViewUtilities loadUrl:r23 url:r24];
                            [r24 release];
                    }
                    if ([r21 shouldSendEvent:@"onCreateWindow"] != 0x0) {
                            r22 = [[USRVWebViewApp getCurrentApp] retain];
                            r23 = [sub_1000be55c() retain];
                            r24 = [sub_1000d1038() retain];
                            r25 = [[r20 absoluteString] retain];
                            r21 = [[r21 viewId] retain];
                            [r22 sendEvent:r23 category:r24 param1:r25];
                            [r21 release];
                            [r25 release];
                            [r24 release];
                            [r23 release];
                            [r22 release];
                    }
            }
            [r20 release];
    }
    [r19 release];
    return 0x0;
}

-(bool)shouldProvideReturnValue:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_webPlayerEventSettings;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r20 = r0;
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)boolValueForEventReturnValue:(void *)arg2 {
    r0 = self->_webPlayerEventSettings;
    r0 = [r0 objectForKey:arg2];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:@"returnValue"] retain];
    r21 = [@(YES) retain];
    r22 = [r19 isEqualToValue:r21];
    [r21 release];
    [r19 release];
    [r0 release];
    r0 = r22;
    return r0;
}

-(bool)shouldSetWebPlayerSetting:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self->_webPlayerSettings;
    r20 = [sub_1000be638() retain];
    r0 = [r19 objectForKey:r2];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)boolValueForWebPlayerSetting:(long long)arg2 {
    r19 = self->_webPlayerSettings;
    r20 = [sub_1000be638() retain];
    r0 = [r19 objectForKey:r20];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(int)intValueForWebPlayerSetting:(long long)arg2 {
    r19 = self->_webPlayerSettings;
    r20 = [sub_1000be638() retain];
    r0 = [r19 objectForKey:r20];
    r0 = [r0 retain];
    r21 = [r0 intValue];
    [r0 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)internalWebView {
    r0 = self->_internalWebView;
    return r0;
}

-(void)setInternalWebView:(void *)arg2 {
    self->_internalWebView = arg2;
    return;
}

-(void *)wkConfiguration {
    r0 = self->_wkConfiguration;
    return r0;
}

-(void *)webPlayerSettings {
    r0 = self->_webPlayerSettings;
    return r0;
}

-(void)setWkConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_wkConfiguration, arg2);
    return;
}

-(void *)webPlayerEventSettings {
    r0 = self->_webPlayerEventSettings;
    return r0;
}

-(void)setWebPlayerEventSettings:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webPlayerEventSettings, arg2);
    return;
}

-(void *)viewId {
    r0 = self->_viewId;
    return r0;
}

-(void)setViewId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewId, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_viewId, 0x0);
    objc_storeStrong((int64_t *)&self->_webPlayerEventSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_webPlayerSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_wkConfiguration, 0x0);
    return;
}

-(void)createWKWebPlayer {
    r31 = r31 - 0xb0;
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
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: CREATING WKWEBVIEWAPP", r1, r2, r3);
    }
    r20 = [USRVWKWebViewUtilities isFrameworkPresent];
    r1 = @selector(getLogLevel);
    CMP(objc_msgSend(@class(USRVDeviceLog), r1), 0x4);
    if ((r20 & 0x1) == 0x0) goto loc_1000bc7dc;

loc_1000bc7a8:
    if (!CPU_FLAGS & L) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WebKit framework already present", r1, r2, r3);
    }
    r20 = 0x0;
    goto loc_1000bc9ac;

loc_1000bc9ac:
    r0 = [USRVWKWebViewUtilities getObjectFromClass:r2];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r25 = [[NSArray arrayWithObjects:&var_78 count:0x1] retain];
            r3 = r19;
            r0 = [USRVWKWebViewUtilities addUserContentControllerMessageHandlers:r23 delegate:r3 handledMessages:r25];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            [r25 release];
            if (r22 != 0x0) {
                    [r19 setWkConfiguration:r22];
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setAllowsInlineMediaPlayback:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 boolValueForWebPlayerSetting:0x0];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setAllowsInlineMediaPlayback", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setAllowsAirPlayForMediaPlayback:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 boolValueForWebPlayerSetting:0x6];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setAllowsAirPlayForMediaPlayback", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setMediaPlaybackRequiresUserAction:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 boolValueForWebPlayerSetting:0x1];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setMediaPlaybackRequiresUserAction", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setSuppressesIncrementalRendering:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 boolValueForWebPlayerSetting:0x7];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setSuppressesIncrementalRendering", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setMediaTypesRequiringUserActionForPlayback:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 intValueForWebPlayerSetting:0x2];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setMediaTypesRequiringUserActionForPlayback", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setDataDetectorTypes:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 intValueForWebPlayerSetting:0xa];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setDataDetectorTypes", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setIgnoresViewportScaleLimits:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 boolValueForWebPlayerSetting:0x9];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setIgnoresViewportScaleLimits", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                            r25 = NSSelectorFromString(@"setIgnoresViewportScaleLimits:");
                            if ([r22 respondsToSelector:r2] != 0x0) {
                                    r26 = [r22 methodForSelector:r25];
                                    if (r26 != 0x0) {
                                            r2 = [r19 boolValueForWebPlayerSetting:0x9];
                                            (r26)(r22, r25, r2);
                                            r1 = r21;
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Called setIgnoresViewportScaleLimits", r1, r2, r3);
                                            }
                                    }
                            }
                    }
                    r0 = NSClassFromString(@"WKWebsiteDataStore");
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r25 != 0x0) {
                            r26 = NSSelectorFromString(@"nonPersistentDataStore");
                            if ([r25 respondsToSelector:r2] != 0x0) {
                                    r0 = [r25 methodForSelector:r26];
                                    r0 = (r0)();
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    [r22 setValue:r26 forKey:@"websiteDataStore"];
                                    [r26 release];
                            }
                            r0 = [USRVWKWebViewUtilities getObjectFromClass:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r27 = &@class(MCConfigurationData);
                                    var_80 = r24;
                                    if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                                            r26 = [[NSNumber numberWithBool:[r19 boolValueForWebPlayerSetting:0x4]] retain];
                                            r0 = sub_1000be638();
                                            r29 = r29;
                                            r27 = [r0 retain];
                                            [var_80 setValue:r26 forKey:r27];
                                            r0 = r27;
                                            r27 = &@class(MCConfigurationData);
                                            r20 = r20;
                                            [r0 release];
                                            [r26 release];
                                    }
                                    if (([r19 shouldSetWebPlayerSetting:r2] & 0x1) != 0x0) {
                                            [[NSNumber numberWithBool:[r19 boolValueForWebPlayerSetting:0x5]] retain];
                                            r0 = sub_1000be638();
                                            r29 = r29;
                                            [r0 retain];
                                            r24 = var_80;
                                            [r24 setValue:r2 forKey:r3];
                                            [r28 release];
                                            r0 = r27;
                                            r27 = &@class(MCConfigurationData);
                                            r20 = r20;
                                            [r0 release];
                                    }
                                    else {
                                            r24 = var_80;
                                    }
                                    [r22 setValue:r2 forKey:r3];
                                    r0 = *(r27 + 0x6f0);
                                    r3 = r22;
                                    r0 = [r0 initWebView:"WKWebView" frame:r3 configuration:r4];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            r1 = @selector(getLogLevel);
                                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Got WebView", r1, "WKWebView", r3);
                                            }
                                            r21 = [[UIColor clearColor] retain];
                                            [r26 setBackgroundColor:r21];
                                            [r21 release];
                                            [r26 setOpaque:0x0];
                                            r0 = @(NO);
                                            r29 = r29;
                                            r28 = [r0 retain];
                                            [r26 setValue:r28 forKeyPath:@"scrollView.bounces"];
                                            [r28 release];
                                            [r26 setValue:r19 forKeyPath:@"navigationDelegate"];
                                            [r26 setValue:r19 forKeyPath:@"UIDelegate"];
                                            if ([r19 shouldSetWebPlayerSetting:r2] != 0x0) {
                                                    r0 = [NSNumber numberWithBool:[r19 boolValueForWebPlayerSetting:0xb]];
                                            }
                                            else {
                                                    r0 = @(NO);
                                            }
                                            r23 = [r0 retain];
                                            [r26 setValue:r23 forKeyPath:@"scrollView.scrollEnabled"];
                                            [r23 release];
                                            [r19 setInternalWebView:r26];
                                            [r19 addSubview:r2];
                                    }
                                    [r26 release];
                            }
                            [r24 release];
                    }
                    [r25 release];
                    [r22 release];
            }
    }
    goto loc_1000bd498;

loc_1000bd498:
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1000bc7dc:
    if (!CPU_FLAGS & L) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WebKit framework not present, trying to load it", r1, r2, r3);
    }
    if ([USRVDevice isSimulator] != 0x0) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 environment];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:@"DYLD_FALLBACK_FRAMEWORK_PATH"];
            r29 = r29;
            r20 = [r0 retain];
            [r24 release];
            [r23 release];
            if (r20 != 0x0) {
                    r3 = 0x3;
                    r24 = [[NSArray arrayWithObjects:&var_70 count:r3] retain];
                    r0 = [NSString pathWithComponents:r24];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r24 release];
            }
            else {
                    r23 = 0x0;
            }
            [r20 release];
    }
    else {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r23 = [r0 retain];
    }
    r0 = objc_retainAutorelease(r23);
    r20 = r0;
    dlopen([r0 cStringUsingEncoding:0x4], 0x1);
    r22 = [USRVWKWebViewUtilities isFrameworkPresent];
    r0 = @class(USRVDeviceLog);
    r1 = r21;
    r0 = objc_msgSend(r0, r1);
    if ((r22 & 0x1) == 0x0) goto loc_1000bd224;

loc_1000bc97c:
    if (r0 >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Succesfully loaded WKWebKit framework", r1, 0x4, r3);
    }
    goto loc_1000bc9ac;

loc_1000bd224:
    if (r0 >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WKWebKit still not present!", r1, 0x4, r3);
    }
    goto loc_1000bd498;
}

@end