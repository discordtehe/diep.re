@implementation GADWebViewPinger

+(bool)isAvailable {
    r0 = sub_100818968(0x9, 0x0, 0x0);
    return r0;
}

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([GADWebViewPinger class] == self) {
            *0x1011dbd68 = NSClassFromString(@"WKWebsiteDataStore");
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
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
    if ([[self class] isAvailable] != 0x0) {
            r0 = [[&var_40 super] init];
            r19 = r0;
            if (r19 != 0x0) {
                    r20 = [[WKWebViewConfiguration alloc] init];
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 boolForKey:*0x100e9b6b8];
                    [r0 release];
                    if (r24 != 0x0) {
                            r0 = *0x1011dbd68;
                            r0 = [r0 nonPersistentDataStore];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r20 setWebsiteDataStore:r23];
                            [r23 release];
                    }
                    r21 = @selector(init);
                    r0 = [WKPreferences alloc];
                    r0 = objc_msgSend(r0, r21);
                    [r0 setJavaScriptEnabled:0x0];
                    [r20 setPreferences:r0];
                    r0 = [WKWebView alloc];
                    r0 = [r0 initWithFrame:r20 configuration:r3];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
                    r8 = *(r19 + r24);
                    *(r19 + r24) = r0;
                    [r8 release];
                    [*(r19 + r24) setNavigationDelegate:r19];
                    r0 = [NSMutableArray alloc];
                    r0 = objc_msgSend(r0, r21);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_webViewPingQueue));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
                    r0 = sub_10089f8b8();
                    r0 = [r0 retain];
                    [r0 addSubview:r2];
                    [r21 release];
                    [r23 release];
                    [r20 release];
            }
            r19 = [r19 retain];
            r20 = r19;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)pingRequest:(void *)arg2 queue:(void *)arg3 completionBlock:(void *)arg4 {
    r31 = r31 - 0xf0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 == 0x0) goto loc_100824108;

loc_100824018:
    var_88 = [r20 retain];
    var_80 = [r21 retain];
    r0 = objc_retainBlock(&var_A8);
    r24 = [[GADURLPingData alloc] initWithRequest:r19 completionBlock:r0];
    var_B8 = [r22 retain];
    [r24 retain];
    sub_100860a80();
    [r24 release];
    [var_B8 release];
    [r22 release];
    [r23 release];
    [var_80 release];
    r0 = var_88;
    goto loc_10082415c;

loc_10082415c:
    [r0 release];
    goto loc_100824160;

loc_100824160:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100824108:
    if (r20 == 0x0 || r21 == 0x0) goto loc_100824160;

loc_100824110:
    var_58 = [r21 retain];
    dispatch_async(r20, &var_78);
    r0 = var_58;
    goto loc_10082415c;
}

-(void)sendNextPing {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_webViewPingQueue;
    r0 = [r0 firstObject];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[r19 URLRequest] retain];
            *(int8_t *)(int64_t *)&r20->_receivedValidResponse = 0x0;
            [[[r20->_webView loadRequest:r21] retain] release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)loadFinishedWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_webViewPingQueue));
    r0 = *(r20 + r22);
    r0 = [r0 firstObject];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            [*(r20 + r22) removeObjectAtIndex:0x0];
            r22 = [[r21 completionBlock] retain];
            if (r22 != 0x0) {
                    (*(r22 + 0x10))(r22, r19);
            }
            [r20 sendNextPing];
            [r22 release];
    }
    else {
            sub_1007ce06c(0x0, @"Web view pinger load finished, but the ping queue is empty.");
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    r2 = *(arg4 + 0x10);
    (r2)(arg4, 0x1, r2, arg3, arg4);
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationResponse:(void *)arg3 decisionHandler:(void *)arg4 {
    r22 = [arg3 retain];
    r24 = [arg4 retain];
    r20 = [arg3 response];
    [r22 release];
    r20 = [r20 retain];
    *(int8_t *)(int64_t *)&self->_receivedValidResponse = sub_10084cd08();
    [r20 release];
    (*(r24 + 0x10))(arg4, 0x0);
    [r24 release];
    return;
}

-(void)webView:(void *)arg2 didFailProvisionalNavigation:(void *)arg3 withError:(void *)arg4 {
    r4 = arg4;
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_receivedValidResponse != 0x0) {
            [r0 loadFinishedWithError:r2];
    }
    else {
            [r0 loadFinishedWithError:r2];
    }
    return;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
    r4 = arg4;
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_receivedValidResponse != 0x0) {
            [r0 loadFinishedWithError:r2];
    }
    else {
            [r0 loadFinishedWithError:r2];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewPingQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end