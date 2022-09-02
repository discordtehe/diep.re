@implementation IROMoatUIWebViewBridge

-(void *)initWithWebView:(void *)arg2 forNativeAds:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffd0 - 0x20;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithWebView:r19 forNativeAds:arg3];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setWebView:r19];
            var_38 = *0x101167f40;
            r0 = [[&var_40 super] markMoatActive];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)checkAndSendJS:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 webView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 stringByEvaluatingJavaScriptFromString:r19];
            r29 = r29;
            [[r0 retain] release];
            [r20 release];
    }
    else {
            var_30 = r19;
            [IROMoatLogging reportDevLogWithObject:r20 format:@"Unable to send command |%@| WebView is nil"];
    }
    [r19 release];
    return;
}

-(void)handleJSResponse:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffc0 - 0x20;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 webView];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 stringByEvaluatingJavaScriptFromString:r19];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 isEqualToString:r2] != 0x0) {
                    r23 = [r20 webViewLoaded];
                    [r22 release];
                    [r21 release];
                    if ((r23 & 0x1) == 0x0) {
                            [IROMoatLogging reportDevLogWithObject:r20 format:@"WebView loaded ad"];
                            [r20 webViewFinishedLoading];
                    }
            }
            else {
                    [r22 release];
                    [r21 release];
            }
    }
    else {
            var_50 = r19;
            [IROMoatLogging reportDevLogWithObject:r20 format:@"Unable to send command |%@| WebView became nil"];
            var_38 = *0x101167f40;
            r0 = [[&var_40 super] stopJSLoopNotifications];
    }
    [r19 release];
    return;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

@end