@implementation OMIDtapjoyJSNetworkBridge

-(void)setupMethodsForJSObject:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    r0 = objc_retainBlock(&var_70);
    [r20 setObject:r0 forKeyedSubscript:@"sendUrl"];
    [r0 release];
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    r0 = objc_retainBlock(&var_98);
    [r20 setObject:r0 forKeyedSubscript:@"downloadJavaScriptResource"];
    [r0 release];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    [r20 release];
    return;
}

-(void)downloadJavaScriptResourceWithURL:(void *)arg2 successCallback:(void *)arg3 failureCallback:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            objc_initWeak(&stack[-88], r23);
            r0 = [r23 jsInvoker];
            r0 = [r0 retain];
            [[r0 dispatchQueue] retain];
            objc_copyWeak(&var_88 + 0x38, &stack[-88]);
            var_60 = [r21 retain];
            var_58 = [r20 retain];
            r0 = [OMIDtapjoyLoadTask taskToLoadStringFromURL:r19 attemptsCount:0x1 completionQueue:r26 completionHandler:&var_88];
            r23 = [r0 retain];
            [r26 release];
            [r24 release];
            [r23 start];
            [r23 release];
            [var_58 release];
            [var_60 release];
            objc_destroyWeak(&var_88 + 0x38);
            objc_destroyWeak(&stack[-88]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendURL:(void *)arg2 successCallback:(void *)arg3 failureCallback:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            objc_initWeak(&stack[-88], r22);
            r0 = [r22 jsInvoker];
            r0 = [r0 retain];
            [[r0 dispatchQueue] retain];
            objc_copyWeak(&var_80 + 0x30, &stack[-88]);
            var_60 = [r21 retain];
            var_58 = [r20 retain];
            r0 = [OMIDtapjoyLoadTask taskToSendPingToURL:r19 completionQueue:r25 completionHandler:&var_80];
            r24 = [r0 retain];
            [r25 release];
            [r23 release];
            [r24 start];
            [r24 release];
            [var_58 release];
            [var_60 release];
            objc_destroyWeak(&var_80 + 0x30);
            objc_destroyWeak(&stack[-88]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)injectJavaScriptFromURL:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            objc_initWeak(&stack[-72], r20);
            r0 = [r20 jsInvoker];
            r0 = [r0 retain];
            [[r0 dispatchQueue] retain];
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            r0 = [OMIDtapjoyLoadTask taskToLoadStringFromURL:r19 attemptsCount:0x1 completionQueue:r23 completionHandler:&var_60];
            r22 = [r0 retain];
            [r23 release];
            [r21 release];
            [r22 start];
            [r22 release];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    [r19 release];
    return;
}

-(void *)jsInvoker {
    r0 = objc_loadWeakRetained((int64_t *)&self->_jsInvoker);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setJsInvoker:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_jsInvoker, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_jsInvoker);
    return;
}

-(unsigned long long)getOMIDError:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [arg2 code];
    if (r0 != -0x3f1) {
            if (r0 != 0x7fffffffffffffff) {
                    if (r0 != -0x3f0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                            else {
                                    r0 = 0x3;
                            }
                    }
            }
            else {
                    r0 = 0x2;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

@end