@implementation USRVWKWebViewApp

+(void)create:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0xd0;
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
    r19 = [r2 retain];
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: CREATING WKWEBVIEWAPP", r1, r2, r3);
    }
    r0 = [USRVWKWebViewApp alloc];
    r2 = r19;
    r20 = [r0 initWithConfiguration:r2];
    r23 = [USRVWKWebViewUtilities isFrameworkPresent];
    r1 = @selector(getLogLevel);
    CMP(objc_msgSend(@class(USRVDeviceLog), r1), 0x4);
    if ((r23 & 0x1) == 0x0) goto loc_1000d21b4;

loc_1000d2180:
    if (!CPU_FLAGS & L) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WebKit framework already present", r1, r2, r3);
    }
    r23 = 0x0;
    goto loc_1000d2384;

loc_1000d2384:
    var_80 = [r20 retain];
    var_78 = [r19 retain];
    dispatch_sync(*__dispatch_main_q, &var_A0);
    [var_78 release];
    [var_80 release];
    goto loc_1000d23ec;

loc_1000d23ec:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1000d21b4:
    if (!CPU_FLAGS & L) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WebKit framework not present, trying to load it", r1, r2, r3);
    }
    if ([USRVDevice isSimulator] != 0x0) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 environment];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:@"DYLD_FALLBACK_FRAMEWORK_PATH"];
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
            [r24 release];
            if (r23 != 0x0) {
                    r3 = 0x3;
                    r25 = [[NSArray arrayWithObjects:&var_70 count:r3] retain];
                    r24 = [[NSString pathWithComponents:r25] retain];
                    [r25 release];
            }
            else {
                    r24 = 0x0;
            }
            [r23 release];
    }
    else {
            r24 = [[NSString stringWithFormat:r2] retain];
    }
    r0 = objc_retainAutorelease(r24);
    r23 = r0;
    dlopen([r0 cStringUsingEncoding:0x4], 0x1);
    r22 = [USRVWKWebViewUtilities isFrameworkPresent];
    r0 = @class(USRVDeviceLog);
    r1 = @selector(getLogLevel);
    r0 = objc_msgSend(r0, r1);
    if ((r22 & 0x1) == 0x0) goto loc_1000d243c;

loc_1000d2354:
    if (r0 >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Succesfully loaded WKWebKit framework", r1, 0x4, r3);
    }
    goto loc_1000d2384;

loc_1000d243c:
    if (r0 >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: WKWebKit still not present!", r1, 0x4, r3);
    }
    goto loc_1000d23ec;
}

-(void)invokeJavascriptString:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void *)evaluateJavaScriptSelector {
    r0 = self->_evaluateJavaScriptSelector;
    return r0;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg3 retain];
    r21 = r0;
    r19 = [[r0 valueForKey:@"name"] retain];
    r0 = [r21 valueForKey:@"body"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r21 = [[r20 dataUsingEncoding:0x4] retain];
            if (r21 != 0x0) {
                    r0 = [USRVWebViewMethodInvokeHandler alloc];
                    r0 = [r0 init];
                    [r0 handleData:r21 invocationType:r19];
                    [r0 release];
                    [r21 release];
            }
    }
    else {
            r22 = @selector(isKindOfClass:);
            [NSDictionary class];
            if (objc_msgSend(r20, r22) != 0x0) {
                    r0 = [NSJSONSerialization dataWithJSONObject:r20 options:0x0 error:&var_28];
                    r21 = [r0 retain];
                    if (var_28 != 0x0) {
                            [r21 release];
                            r21 = 0x0;
                    }
                    if (r21 != 0x0) {
                            r0 = [USRVWebViewMethodInvokeHandler alloc];
                            r0 = [r0 init];
                            [r0 handleData:r21 invocationType:r19];
                            [r0 release];
                            [r21 release];
                    }
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setEvaluateJavaScriptSelector:(void *)arg2 {
    self->_evaluateJavaScriptSelector = arg2;
    return;
}

-(void * *)evaluateJavaScriptFunc {
    r0 = self->_evaluateJavaScriptFunc;
    return r0;
}

-(void)setEvaluateJavaScriptFunc:(void * *)arg2 {
    self->_evaluateJavaScriptFunc = arg2;
    return;
}

@end