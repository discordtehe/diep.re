@implementation GADOMIDJSExecutorFactory

+(void *)JSExecutorForContext:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_10 = self;
    objc_storeStrong(r29 - 0x20, r2);
    r0 = [0x0 type];
    var_30 = r0;
    if (r0 != 0x0) {
            if (r9 != 0x0) {
                    var_24 = 0x0;
            }
            else {
                    var_58 = [[0x0 resources] retain];
                    var_60 = [[0x0 script] retain];
                    r2 = var_58;
                    r0 = [var_10 JSExecutorWithResources:r2 script:var_60];
                    r29 = r29;
                    var_8 = [r0 retain];
                    [var_60 release];
                    [var_58 release];
                    var_24 = 0x1;
            }
    }
    else {
            var_48 = [[0x0 webView] retain];
            r2 = var_48;
            r0 = [var_10 JSExecutorWithWebView:r2];
            r29 = r29;
            var_8 = [r0 retain];
            [var_48 release];
            var_24 = 0x1;
    }
    r0 = objc_storeStrong(r29 - 0x20, 0x0);
    r8 = var_24 - 0x1;
    if (r8 <= 0x0) {
            r0 = [var_8 autorelease];
    }
    else {
            r31 = r31 - 0x60;
            var_80 = r29;
            stack[-136] = r30;
            r29 = &var_80;
            objc_storeStrong(r29 - 0x20, r2);
            if (([0x0 isKindOfClass:[UIWebView class]] & 0x1) != 0x0) {
                    var_8 = [[GADOMIDUIWebViewJSExecutor alloc] initWithWebView:0x0];
            }
            else {
                    if (([0x0 isKindOfClass:[WKWebView class]] & 0x1) != 0x0) {
                            var_8 = [[GADOMIDWKWebViewJSExecutor alloc] initWithWebView:0x0];
                    }
                    else {
                            var_8 = 0x0;
                    }
            }
            objc_storeStrong(r29 - 0x20, 0x0);
            r0 = [var_8 autorelease];
    }
    return r0;
}

+(void *)JSExecutorWithResources:(void *)arg2 script:(void *)arg3 {
    r31 = r31 - 0x190;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    objc_storeStrong(&saved_fp - 0xb0, arg2);
    objc_storeStrong(&saved_fp - 0xb8, arg3);
    r0 = [GADOMIDLightJSExecutor lightJSExecutor];
    r29 = &saved_fp;
    var_C0 = [r0 retain];
    [var_C0 injectJavaScriptFromString:0x0];
    memset(&stack[-280], zero_extend_64(0x0), 0x40);
    r0 = [0x0 retain];
    var_120 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-280] objects:r29 - 0x98 count:0x10];
    var_128 = r0;
    if (r0 != 0x0) {
            var_130 = *var_F8;
            var_138 = &stack[-280] + 0x10;
            var_140 = 0x0;
            var_148 = var_128;
            do {
                    do {
                            var_150 = var_148;
                            var_158 = var_140;
                            if (**var_138 != var_130) {
                                    objc_enumerationMutation(var_120);
                            }
                            var_C8 = *(var_100 + var_158 * 0x8);
                            var_160 = [[var_C0 networkBridge] retain];
                            r0 = [var_C8 URL];
                            r29 = r29;
                            var_168 = [r0 retain];
                            [var_160 injectJavaScriptFromURL:var_168];
                            [var_168 release];
                            [var_160 release];
                            var_148 = var_150;
                            var_140 = var_158 + 0x1;
                    } while (var_158 + 0x1 < var_150);
                    r0 = [var_120 countByEnumeratingWithState:&stack[-280] objects:r29 - 0x98 count:0x10];
                    var_148 = r0;
                    var_140 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_120 release];
    var_170 = [var_C0 retain];
    objc_storeStrong(&var_C0, 0x0);
    objc_storeStrong(r29 - 0xb8, 0x0);
    objc_storeStrong(r29 - 0xb0, 0x0);
    var_178 = [var_170 autorelease];
    if (**___stack_chk_guard == var_18) {
            r0 = var_178;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end