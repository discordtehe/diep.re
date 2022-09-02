@implementation OMIDtapjoyJSExecutorFactory

+(void *)JSExecutorForContext:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 type];
    if (r0 == 0x1) goto loc_100965c08;

loc_100965bc4:
    if (r0 != 0x0) goto loc_100965c74;

loc_100965bc8:
    r22 = [[r19 webView] retain];
    r21 = [[r20 JSExecutorWithWebView:r22] retain];
    goto loc_100965c6c;

loc_100965c6c:
    [r22 release];
    goto loc_100965c74;

loc_100965c74:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100965c08:
    r22 = [[r19 resources] retain];
    r23 = [[r19 script] retain];
    r21 = [[r20 JSExecutorWithResources:r22 script:r23] retain];
    [r23 release];
    goto loc_100965c6c;
}

+(void *)JSExecutorWithWebView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [UIWebView class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100965cf0;

loc_100965ce4:
    r0 = @class(OMIDtapjoyUIWebViewJSExecutor);
    goto loc_100965d1c;

loc_100965d1c:
    r20 = [[r0 alloc] initWithWebView:r19];
    goto loc_100965d44;

loc_100965d44:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100965cf0:
    r21 = @selector(isKindOfClass:);
    [WKWebView class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_100965d40;

loc_100965d14:
    r0 = @class(OMIDtapjoyWKWebViewJSExecutor);
    goto loc_100965d1c;

loc_100965d40:
    r20 = 0x0;
    goto loc_100965d44;
}

+(void *)JSExecutorWithResources:(void *)arg2 script:(void *)arg3 {
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
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [OMIDtapjoyLightJSExecutor lightJSExecutor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    [r0 injectJavaScriptFromString:r23];
    [r23 release];
    var_108 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r28 = *var_108;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_108 != r28) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_110 + r21 * 0x8);
                            r27 = [[r19 networkBridge] retain];
                            r0 = [r26 URL];
                            r29 = r29;
                            [r0 retain];
                            [r27 injectJavaScriptFromURL:r2];
                            [r26 release];
                            [r27 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = objc_msgSend(r20, var_120);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end