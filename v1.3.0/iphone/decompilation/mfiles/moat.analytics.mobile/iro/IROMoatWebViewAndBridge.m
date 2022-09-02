@implementation IROMoatWebViewAndBridge

-(void)vivifyDisplayWebViewWithPartnerCode:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r20 = self;
    *(r31 + 0xffffffffffffffc0) = arg2;
    r19 = [[NSString stringWithFormat:@"<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n    <meta charset=\"UTF-8\">\n    <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/%@/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>"] retain];
    r0 = [r20 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 webView];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 loadHTMLString:r19 baseURL:0x0];
            r29 = r29;
            [[r0 retain] release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)init {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    *(r31 + 0xffffffffffffffb0) = self;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [WKWebView alloc];
            r0 = [r0 initWithFrame:r2];
            r20 = r0;
            [r0 setNavigationDelegate:r19];
            [r20 setUserInteractionEnabled:0x0];
            [r20 setUserInteractionEnabled:0x0];
            r0 = [r20 scrollView];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x0];
            [r0 release];
            r0 = [r20 scrollView];
            r0 = [r0 retain];
            [r0 setScrollEnabled:0x0];
            [r0 release];
            r0 = [r20 scrollView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setScrollsToTop:0x0];
            [r0 release];
            r21 = [[IROMoatWKWebViewBridge alloc] initWithWebView:r20 forNativeAd:0x1];
            [r19 setWebView:r20];
            [r19 setWebBridge:r21];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)destroy {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self amCleanedUp] & 0x1) == 0x0) {
            r0 = [r19 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 webView];
                    r0 = [r0 retain];
                    [r0 setNavigationDelegate:0x0];
                    [r0 release];
                    r0 = [r19 webView];
                    r0 = [r0 retain];
                    [r0 removeFromSuperview];
                    [r0 release];
                    [r19 setWebView:0x0];
            }
            [r19 setAmCleanedUp:0x1];
    }
    return;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Global Native Display WKWebView didFinishNavigation"];
    r0 = [r19 webBridge];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 webBridge];
            r0 = [r0 retain];
            [r0 webViewFinishedLoading];
            [r0 release];
            r0 = [r19 webBridge];
            r0 = [r0 retain];
            [r0 flushQueue];
            [r0 release];
    }
    return;
}

-(void *)webView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_webView)), 0x1);
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)vivifyVideoWebViewWithPartnerCode:(void *)arg2 withAdIds:(void *)arg3 withPlayerSize:(struct CGSize)arg4 withTracker:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
    v8 = v1;
    v9 = v0;
    r22 = self;
    var_78 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r4 retain];
    r0 = [r22 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r24 = @selector(webView);
            r0 = arc4random();
            asm { ucvtf      d0, w0 };
            d0 = *0x100bf3138 * d0 * *0x100bf3158;
            asm { fcvt       s0, d0 };
            var_80 = r21;
            r21 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r23 = *(r21 + 0xfa8);
            lroundf(r0);
            r26 = @selector(stringWithFormat:);
            r23 = [objc_msgSend(r23, r26) retain];
            [r22 setMoatTrackerName:r23];
            var_88 = @selector(webBridge);
            r0 = [r22 webBridge];
            r0 = [r0 retain];
            [r0 setVideoTrackerName:r23];
            [r0 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            d10 = d0 * *0x100b9b058;
            [r0 release];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r28 = [[r0 keyWindow] retain];
            r19 = [objc_msgSend(r22, r24) retain];
            [r28 addSubview:r19];
            [r19 release];
            [r28 release];
            [r0 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r19];
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r19];
            r29 = r29;
            r0 = [r0 retain];
            [r0 floatValue];
            [r0 release];
            r0 = *(r21 + 0xfa8);
            asm { fcvt       d0, s9 };
            asm { fcvt       d1, s8 };
            r27 = [objc_msgSend(r0, r26) retain];
            r19 = [*(r21 + 0xfa8) alloc];
            r25 = [[NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:0x0] retain];
            r28 = [r19 initWithData:r25 encoding:0x4];
            [r25 release];
            r19 = *(r21 + 0xfa8);
            r25 = [[r22 moatTrackerName] retain];
            r21 = [[r20 objectForKeyedSubscript:@"duration"] retain];
            var_A0 = r28;
            stack[-168] = r21;
            var_B0 = r25;
            stack[-184] = var_78;
            var_B8 = d10;
            var_C8 = r27;
            var_C0 = @"mianahwvc";
            var_D0 = @"mianahwvc";
            r26 = [objc_msgSend(r19, r26) retain];
            r0 = r21;
            r21 = var_80;
            [r0 release];
            [r25 release];
            r0 = objc_msgSend(r22, r24);
            r0 = [r0 retain];
            [[[r0 loadHTMLString:r26 baseURL:0x0] retain] release];
            [r0 release];
            r0 = objc_msgSend(r22, var_88);
            r29 = r29;
            r0 = [r0 retain];
            [r0 addTracker:r21];
            [r0 release];
            [r26 release];
            [r28 release];
            [r27 release];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [var_78 release];
    return;
}

-(void *)webBridge {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_webBridge)), 0x1);
    return r0;
}

-(void)setWebBridge:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)moatTrackerName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_moatTrackerName)), 0x1);
    return r0;
}

-(void)setMoatTrackerName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)amCleanedUp {
    r0 = *(int8_t *)(int64_t *)&self->_amCleanedUp & 0x1;
    return r0;
}

-(void)setAmCleanedUp:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_amCleanedUp = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_moatTrackerName, 0x0);
    objc_storeStrong((int64_t *)&self->_webBridge, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end