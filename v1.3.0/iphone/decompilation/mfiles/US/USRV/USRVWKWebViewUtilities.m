@implementation USRVWKWebViewUtilities

+(void *)initWebView:(char *)arg2 frame:(struct CGRect)arg3 configuration:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x90;
    var_60 = d11;
    stack[-104] = d10;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [r3 retain];
    r0 = objc_getClass(arg2);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1000d12e0;

loc_1000d11c4:
    r21 = [r20 alloc];
    r22 = NSSelectorFromString(@"initWithFrame:configuration:");
    r2 = r22;
    if ([r21 respondsToSelector:r2] == 0x0) goto loc_1000d12d8;

loc_1000d1200:
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WebView responds to init selector", r1, r2, r3);
    }
    r2 = r22;
    r24 = [r21 methodForSelector:r2];
    if (r24 == 0x0) goto loc_1000d12d8;

loc_1000d1264:
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Got init implementation", r1, r2, r3);
    }
    r22 = [(r24)(r21, r22, r19) retain];
    [r21 release];
    goto loc_1000d12e4;

loc_1000d12e4:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_1000d12d8:
    [r21 release];
    goto loc_1000d12e0;

loc_1000d12e0:
    r22 = 0x0;
    goto loc_1000d12e4;
}

+(void)removeUserContentControllerMessageHandler:(void *)arg2 handledMessages:(void *)arg3 {
    r3 = arg3;
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
    r21 = [arg2 retain];
    r19 = [r3 retain];
    r20 = [[r21 valueForKey:@"userContentController"] retain];
    [r21 release];
    if (r20 != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Got userContentController", r1, @"userContentController", r3);
            }
            r22 = NSSelectorFromString(@"removeScriptMessageHandlerForName:");
            r2 = r22;
            if ([r20 respondsToSelector:r2] != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Responds to selector", r1, r2, r3);
                    }
                    r2 = r22;
                    r23 = [r20 methodForSelector:r2];
                    if (r23 != 0x0) {
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Got addScriptHandler implementation", r1, r2, r3);
                            }
                            var_108 = q0;
                            var_128 = r19;
                            r0 = [r19 retain];
                            r24 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            r2 = &var_118;
                            r3 = &stack[-232];
                            var_120 = r1;
                            r26 = objc_msgSend(r0, r1);
                            if (r26 != 0x0) {
                                    r25 = *var_108;
                                    do {
                                            r19 = 0x0;
                                            do {
                                                    if (*var_108 != r25) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    r28 = *(var_110 + r19 * 0x8);
                                                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                                                            NSLog(@"%@/UnityAds: %s (line:%d) :: Removing handler for: %@", @selector(countByEnumeratingWithState:objects:count:), r2, r3, 0x10);
                                                    }
                                                    (r23)(r20, r22, r28);
                                                    r19 = r19 + 0x1;
                                            } while (r19 < r26);
                                            r2 = &var_118;
                                            r3 = &stack[-232];
                                            r26 = objc_msgSend(r24, var_120);
                                    } while (r26 != 0x0);
                            }
                            [r24 release];
                            r19 = var_128;
                    }
            }
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)loadUrl:(void *)arg2 url:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = NSSelectorFromString(@"loadRequest:");
    r2 = r21;
    if ([r19 respondsToSelector:r2] != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: WebView responds to loadFileURL selector", r1, r2, r3);
            }
            r2 = r21;
            r23 = [r19 methodForSelector:r2];
            if (r23 != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Got loadFileURL implementation: %@", r1, r2, r3, r4);
                    }
                    (r23)(r19, r21, r20);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)evaluateJavaScript:(void *)arg2 string:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = NSSelectorFromString(@"evaluateJavaScript:completionHandler:");
    r2 = r21;
    if ([r19 respondsToSelector:r2] != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: WebView responds to evaluateJavaScript selector", r1, r2, r3);
            }
            r2 = r21;
            r23 = [r19 methodForSelector:r2];
            if (r23 != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Got evaluateJavaScript implementation: %@", r1, r2, r3, r4);
                    }
                    (r23)(r19, r21, r20, 0x0);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(bool)loadFileUrl:(void *)arg2 url:(void *)arg3 allowReadAccess:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    r22 = NSSelectorFromString(@"loadFileURL:allowingReadAccessToURL:");
    r2 = r22;
    if ([r19 respondsToSelector:r2] != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: WebView responds to loadFileURL selector", r1, r2, r3);
            }
            r2 = r22;
            r24 = [r19 methodForSelector:r2];
            if (r24 != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Got loadFileURL implementation", r1, r2, r3);
                    }
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Trying to load fileURL: %@ and allowing readAccess to: %@", r1, r2, r3, r4, r5);
                    }
                    (r24)(r19, r22, r20, r21);
                    r22 = 0x1;
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void *)addUserContentControllerMessageHandlers:(void *)arg2 delegate:(void *)arg3 handledMessages:(void *)arg4 {
    r3 = arg3;
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
    r26 = [arg2 retain];
    r20 = [r3 retain];
    r19 = [arg4 retain];
    r22 = [[r26 valueForKey:@"userContentController"] retain];
    if (r22 != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Got userContentController", r1, @"userContentController", r3);
            }
            r24 = NSSelectorFromString(@"addScriptMessageHandler:name:");
            r2 = r24;
            if ([r22 respondsToSelector:r2] != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Responds to selector", r1, r2, r3);
                    }
                    r2 = r24;
                    r25 = [r22 methodForSelector:r2];
                    if (r25 != 0x0) {
                            var_128 = r26;
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Got addScriptHandler implementation", r1, r2, r3);
                            }
                            var_108 = q0;
                            var_130 = r19;
                            r0 = [r19 retain];
                            r26 = r0;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            r2 = &var_118;
                            r3 = &stack[-232];
                            var_120 = r1;
                            r28 = objc_msgSend(r0, r1);
                            if (r28 != 0x0) {
                                    r27 = *var_108;
                                    do {
                                            r21 = 0x0;
                                            do {
                                                    if (*var_108 != r27) {
                                                            objc_enumerationMutation(r26);
                                                    }
                                                    r19 = *(var_110 + r21 * 0x8);
                                                    r1 = @selector(getLogLevel);
                                                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                                            NSLog(@"%@/UnityAds: %s (line:%d) :: Setting handler for: %@", r1, r2, r3, 0x10);
                                                    }
                                                    r2 = r20;
                                                    r3 = r19;
                                                    (r25)(r22, r24, r2, r3, 0x10);
                                                    r21 = r21 + 0x1;
                                            } while (r21 < r28);
                                            r2 = &var_118;
                                            r3 = &stack[-232];
                                            r28 = objc_msgSend(r26, var_120);
                                    } while (r28 != 0x0);
                            }
                            [r26 release];
                            r26 = var_128;
                            [r26 setValue:r22 forKey:@"userContentController"];
                            r21 = [r26 retain];
                            r19 = var_130;
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r19 release];
    [r20 release];
    [r26 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)getObjectFromClass:(char *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [objc_getClass(arg2) retain];
    r2 = arg2;
    r20 = [[NSString stringWithCString:r2 encoding:0x4] retain];
    if (r19 != 0x0) {
            r21 = [[r19 alloc] init];
            if (r21 != 0x0) {
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Succesfully created object for %@", @selector(getLogLevel), r2, 0x4, r4);
                    }
            }
            else {
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Couldn't create object for %@", @selector(getLogLevel), r2, 0x4, r4);
                    }
                    r21 = 0x0;
            }
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Couldn't create object for %@", @selector(getLogLevel), r2, 0x4, r4);
            }
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)isFrameworkPresent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_getClass("WKWebView");
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

+(bool)loadData:(void *)arg2 data:(void *)arg3 mimeType:(void *)arg4 encoding:(void *)arg5 baseUrl:(void *)arg6 {
    r4 = arg4;
    r3 = arg3;
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
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = NSSelectorFromString(@"loadData:MIMEType:characterEncodingName:baseURL:");
    r2 = r24;
    if ([r19 respondsToSelector:r2] != 0x0) {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: WebView responds to loadFileURL selector", r1, r2, r3);
            }
            r2 = r24;
            r25 = [r19 methodForSelector:r2];
            if (r25 != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Got loadData implementation", r1, r2, r3);
                    }
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            [[r23 absoluteString] retain];
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Trying to load data with base url: %@", @selector(absoluteString), r2, r3, r4);
                            [r26 release];
                    }
                    (r25)(r19, r24, r20, r21, r22, r23);
                    r24 = 0x1;
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            r24 = 0x0;
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

@end