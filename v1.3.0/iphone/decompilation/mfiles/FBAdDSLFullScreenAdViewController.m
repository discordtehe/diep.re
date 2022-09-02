@implementation FBAdDSLFullScreenAdViewController

-(void)viewDidLoad {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    [[&var_30 super] viewDidLoad];
    [r20 setupWebView];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adModel));
    if (([*(r20 + r22) isModelReadyToPresent] & 0x1) != 0x0) {
            r19 = [[r20 webview] retain];
            [r19 loadFileURL:[[*(r20 + r22) htmlFileURL] retain] allowingReadAccessToURL:[[*(r20 + r22) commonAssetsDirectoriesURL] retain]];
            objc_unsafeClaimAutoreleasedReturnValue();
            [r20 release];
            [r21 release];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            r19 = r0;
            [r0 didFailToLoadAssets];
    }
    [r19 release];
    return;
}

-(void)dealloc {
    r0 = [self webview];
    r0 = [r0 retain];
    [r0 stopLoading];
    [r0 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 userContentController];
    r0 = [r0 retain];
    [r0 removeAllUserScripts];
    [r0 release];
    [r21 release];
    [r20 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)setupWithDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adModel, arg2);
    return;
}

-(void)receivedJSScriptEvent:(unsigned long long)arg2 withExtraData:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r21 > 0x2) goto loc_100b89a98;

loc_100b89a60:
    if (r21 == 0x0) goto loc_100b89abc;

loc_100b89a64:
    if (r21 == 0x1) goto loc_100b89ae0;

loc_100b89a6c:
    if (r21 != 0x2) goto loc_100b89b48;

loc_100b89a74:
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r20 = r0;
    r1 = @selector(handleEvent:);
    goto loc_100b89b24;

loc_100b89b24:
    objc_msgSend(r0, r1);
    [r20 release];
    goto loc_100b89b48;

loc_100b89b48:
    [r19 release];
    return;

loc_100b89ae0:
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r20 = r0;
    r1 = @selector(handleEvent:);
    goto loc_100b89b24;

loc_100b89abc:
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r20 = r0;
    r1 = @selector(handleEvent:);
    goto loc_100b89b24;

loc_100b89a98:
    if (r21 == 0x3) goto loc_100b89b04;

loc_100b89aa0:
    if (r21 == 0x4) goto loc_100b89b34;

loc_100b89aa8:
    if (r21 != 0x5) goto loc_100b89b48;

loc_100b89ab0:
    r1 = @selector(webViewRequestedData:);
    goto loc_100b89b3c;

loc_100b89b3c:
    objc_msgSend(r20, r1);
    goto loc_100b89b48;

loc_100b89b34:
    r1 = @selector(sendLogEventWithJSONString:);
    goto loc_100b89b3c;

loc_100b89b04:
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r20 = r0;
    r1 = @selector(printDebugWithInfo:);
    goto loc_100b89b24;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    [self setAuthKeyInWebView];
    return;
}

-(void)setAuthKeyInWebView {
    r0 = [self authKey];
    r0 = [r0 retain];
    r20 = [[NSString stringWithFormat:@"setAuthKey('%@')"] retain];
    [r0 release];
    r21 = [[self webview] retain];
    [self sendMessage:r20 ToWebView:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)generateAuthKey {
    r20 = CFUUIDCreate(0x0);
    CFUUIDCreateString(0x0, r20);
    CFRelease(r20);
    [self setAuthKey:r21];
    [r21 release];
    return;
}

-(void)sendMessage:(void *)arg2 ToWebView:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r20 evaluateJavaScript:r19 completionHandler:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    [r20 release];
    [r19 release];
    return;
}

-(void)setupWebView {
    [self generateAuthKey];
    r0 = [WKWebViewConfiguration new];
    r19 = r0;
    var_58 = r0;
    [r0 setAllowsInlineMediaPlayback:0x1];
    r0 = [WKWebView alloc];
    r21 = [r0 initWithFrame:r19 configuration:r3];
    [self setWebview:r21];
    [r21 release];
    r0 = [self webview];
    r0 = [r0 retain];
    [r0 setUIDelegate:self];
    [r0 release];
    r0 = [self webview];
    r0 = [r0 retain];
    [r0 setNavigationDelegate:self];
    [r0 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    [r23 release];
    r0 = [self webview];
    r0 = [r0 retain];
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r0 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r25 = [[r0 userContentController] retain];
    r22 = [FBAdDSLJSScriptMessageHandler alloc];
    r26 = [[self authKey] retain];
    r22 = [r22 initWithAuthKey:r26 delegate:self];
    [r25 addScriptMessageHandler:r22 name:@"iOSInterface"];
    [r22 release];
    [r26 release];
    [r25 release];
    [r0 release];
    [r23 release];
    r23 = [[self view] retain];
    r24 = [[self webview] retain];
    [r23 addSubview:r24];
    [r24 release];
    [r23 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 rightAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 rightAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r28];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 leftAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r19 = [[r0 leftAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r19];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r19 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 bottomAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r27 = r0;
    r19 = [[r0 bottomAnchor] retain];
    r0 = [r26 constraintEqualToAnchor:r19];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r19 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [self webview];
    r0 = [r0 retain];
    r21 = r0;
    r25 = [[r0 topAnchor] retain];
    r0 = [self view];
    r0 = [r0 retain];
    r20 = r0;
    r19 = [[r0 topAnchor] retain];
    r0 = [r25 constraintEqualToAnchor:r19];
    r0 = [r0 retain];
    [r0 setActive:0x1];
    [r0 release];
    [r19 release];
    [r20 release];
    [r25 release];
    [r21 release];
    [var_58 release];
    return;
}

-(void)sendEvent:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    [@"" retain];
    if (r20 <= 0x2) goto loc_100b89e0c;

loc_100b89dac:
    if (r20 > 0x4) goto loc_100b89e68;

loc_100b89db4:
    if (r20 == 0x3) goto loc_100b89ec0;

loc_100b89dbc:
    if (r20 != 0x4) goto loc_100b89f98;

loc_100b89dc4:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;

loc_100b89fe8:
    r20 = [r0 retain];
    [@"" release];
    [r21 release];
    goto loc_100b8a004;

loc_100b8a004:
    [r19 sendMessage:r20 ToWebView:r19->_webview];
    [r20 release];
    return;

loc_100b89f98:
    r20 = @"";
    goto loc_100b8a004;

loc_100b89ec0:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;

loc_100b89e68:
    if (r20 == 0x5) goto loc_100b89f50;

loc_100b89e70:
    if (r20 != 0x6) goto loc_100b89f98;

loc_100b89e78:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;

loc_100b89f50:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;

loc_100b89e0c:
    if (r20 == 0x0) goto loc_100b89f08;

loc_100b89e10:
    if (r20 == 0x1) goto loc_100b89fa4;

loc_100b89e18:
    if (r20 != 0x2) goto loc_100b89f98;

loc_100b89e20:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;

loc_100b89fa4:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;

loc_100b89f08:
    r21 = [[r19 authKey] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100b89fe8;
}

-(void)sendLogEventWithJSONString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self getDictionaryFromExtraData:arg2];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
            [r0 logWithData:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adModel, 0x0);
    objc_storeStrong((int64_t *)&self->_authKey, 0x0);
    objc_storeStrong((int64_t *)&self->_webview, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)getDictionaryFromExtraData:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100b8a530;

loc_100b8a4bc:
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100b8a538;

loc_100b8a4f0:
    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_28];
    r29 = r29;
    r20 = [r0 retain];
    r22 = [var_28 retain];
    goto loc_100b8a580;

loc_100b8a580:
    r21 = 0x0;
    if (r22 == 0x0) {
            r21 = 0x0;
            if (r20 != 0x0) {
                    r0 = [NSJSONSerialization JSONObjectWithData:r20 options:0x0 error:&var_30];
                    r21 = [r0 retain];
                    r22 = [var_30 retain];
            }
    }
    goto loc_100b8a5d8;

loc_100b8a5d8:
    [r20 release];
    [r22 release];
    goto loc_100b8a5e8;

loc_100b8a5e8:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100b8a538:
    r21 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_100b8a5cc;

loc_100b8a55c:
    r0 = [r19 dataUsingEncoding:0x4];
    r29 = r29;
    r20 = [r0 retain];
    r22 = 0x0;
    goto loc_100b8a580;

loc_100b8a5cc:
    r21 = 0x0;
    r22 = 0x0;
    r20 = 0x0;
    goto loc_100b8a5d8;

loc_100b8a530:
    r21 = 0x0;
    goto loc_100b8a5e8;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)webViewRequestedData:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r0 = [self getDictionaryFromExtraData:arg2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 != 0x0) {
                            r0 = [NSArray arrayWithObject:r2];
                            r29 = r29;
                            r21 = [r0 retain];
                    }
                    [r23 release];
            }
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r21 != 0x0) {
                    asm { ccmp       x0, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E) {
                    var_148 = r23;
                    var_140 = r19;
                    var_130 = [NSMutableDictionary new];
                    var_110 = q0;
                    r0 = [r21 retain];
                    r21 = r0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_138 = r1;
                    r0 = objc_msgSend(r0, r1);
                    if (r0 != 0x0) {
                            r25 = r0;
                            r19 = *var_110;
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_adModel));
                            do {
                                    r23 = r21;
                                    r21 = 0x0;
                                    do {
                                            if (*var_110 != r19) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            r28 = *(var_118 + r21 * 0x8);
                                            r0 = *(r20 + r24);
                                            r0 = [r0 getAdJSONFieldForKey:r28];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            if (r0 != 0x0) {
                                                    [var_130 setObject:r2 forKeyedSubscript:r3];
                                            }
                                            [r22 release];
                                            r21 = r21 + 0x1;
                                    } while (r21 < r25);
                                    r21 = r23;
                                    r0 = objc_msgSend(r23, var_138);
                                    r25 = r0;
                            } while (r0 != 0x0);
                    }
                    [r21 release];
                    r0 = [NSJSONSerialization dataWithJSONObject:var_130 options:0x0 error:&var_128];
                    r29 = r29;
                    r24 = [r0 retain];
                    r25 = [var_128 retain];
                    r23 = var_148;
                    if (r24 != 0x0 && r25 == 0x0) {
                            r0 = [NSString alloc];
                            r0 = [r0 initWithData:r24 encoding:0x4];
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    r0 = [r0 stringByReplacingOccurrencesOfString:@"'" withString:@"\'"];
                                    r0 = [r0 retain];
                                    r26 = [[r0 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\""] retain];
                                    [r27 release];
                                    [r0 release];
                                    r22 = @class(NSString);
                                    r0 = [r20 authKey];
                                    r0 = [r0 retain];
                                    r22 = [[r22 stringWithFormat:@"%@('%@', '%@')"] retain];
                                    [r0 release];
                                    r27 = [[r20 webview] retain];
                                    [r20 sendMessage:r22 ToWebView:r27];
                                    [r27 release];
                                    [r22 release];
                                    [r26 release];
                            }
                    }
                    [r24 release];
                    [r25 release];
                    [var_130 release];
                    r19 = var_140;
            }
            [r23 release];
            [r21 release];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)webview {
    r0 = self->_webview;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setWebview:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webview, arg2);
    return;
}

-(void *)authKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_authKey)), 0x0);
    return r0;
}

-(void)setAuthKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adModel {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adModel)), 0x0);
    return r0;
}

-(void)setAdModel:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end