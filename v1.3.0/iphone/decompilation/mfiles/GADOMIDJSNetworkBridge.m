@implementation GADOMIDJSNetworkBridge

-(void)setupMethodsForJSObject:(void *)arg2 {
    r31 = r31 - 0x110;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x28, arg2);
    objc_initWeak(r29 - 0x30, self);
    var_B0 = (r29 - 0x58) + 0x20;
    objc_copyWeak((r29 - 0x58) + 0x20, r29 - 0x30);
    r0 = objc_retainBlock(r29 - 0x58);
    var_C8 = r0;
    [0x0 setObject:r0 forKeyedSubscript:@"sendUrl"];
    [var_C8 release];
    var_D8 = &var_90 + 0x20;
    objc_copyWeak(&var_90 + 0x20, r29 - 0x30);
    r0 = objc_retainBlock(&var_90);
    var_F0 = r0;
    [0x0 setObject:r0 forKeyedSubscript:@"downloadJavaScriptResource"];
    [var_F0 release];
    objc_destroyWeak(var_D8);
    objc_destroyWeak(var_B0);
    objc_destroyWeak(r29 - 0x30);
    objc_storeStrong(r29 - 0x28, 0x0);
    return;
}

-(void)downloadJavaScriptResourceWithURL:(void *)arg2 successCallback:(void *)arg3 failureCallback:(void *)arg4 {
    r2 = arg2;
    r31 = r31 - 0x150;
    var_10 = r28;
    var_8 = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    *(r29 - 0x18) = self;
    var_A8 = r29 - 0x18;
    objc_storeStrong(r29 - 0x28, r2);
    objc_storeStrong(r29 - 0x30, arg3);
    objc_storeStrong(r29 - 0x38, arg4);
    if (0x0 == 0x0) {
            var_3C = 0x1;
    }
    else {
            objc_initWeak(r29 - 0x48, *var_A8);
            var_C8 = (r29 - 0x90) + 0x38;
            var_D0 = (r29 - 0x90) + 0x28;
            var_D8 = 0x0;
            var_E0 = (r29 - 0x90) + 0x20;
            var_E8 = (r29 - 0x90) + 0x30;
            var_F8 = [*var_A8 jsInvoker];
            r29 = r29;
            r0 = [var_F8 retain];
            var_100 = r0;
            var_108 = [r0 dispatchQueue];
            r29 = r29;
            var_120 = [var_108 retain];
            objc_copyWeak((r29 - 0x90) + 0x38, r29 - 0x48);
            [*var_A8 retain];
            [0x0 retain];
            [0x0 retain];
            r2 = var_D8;
            var_130 = [GADOMIDLoadTask taskToLoadStringFromURL:r2 attemptsCount:0x1 completionQueue:r0 completionHandler:r29 - 0x90];
            r29 = r29;
            var_50 = [var_130 retain];
            [var_120 release];
            [var_100 release];
            [var_50 start];
            r30 = &@selector(menu);
            objc_storeStrong(r29 - 0x50, 0x0);
            objc_storeStrong(var_E8, 0x0);
            objc_storeStrong(var_D0, 0x0);
            objc_storeStrong(var_E0, 0x0);
            objc_destroyWeak(var_C8);
            objc_destroyWeak(r29 - 0x48);
            var_3C = 0x0;
    }
    objc_storeStrong(r29 - 0x38, 0x0);
    objc_storeStrong(r29 - 0x30, 0x0);
    r0 = objc_storeStrong(r29 - 0x28, 0x0);
    r8 = var_3C - 0x1;
    if (r8 > 0x0) {
            r31 = r31 - 0xc0;
            var_150 = r29;
            stack[-344] = r30;
            r29 = &var_150;
            var_48 = r0;
            objc_storeStrong(r29 - 0x10, 0x0);
            objc_storeStrong(r29 - 0x18, r2);
            objc_copyWeak(r29 - 0x28, var_48 + 0x38);
            if (0x0 != 0x0) {
                    var_1B0 = [*(var_48 + 0x20) getGADOMIDError:0x0];
                    var_30 = var_1B0;
                    r0 = objc_loadWeakRetained(r29 - 0x28);
                    var_1B8 = r0;
                    var_1C0 = [r0 jsInvoker];
                    r29 = r29;
                    var_1C8 = [var_1C0 retain];
                    var_1D0 = *(var_48 + 0x28);
                    var_1D8 = [NSNumber numberWithUnsignedInteger:var_30];
                    r29 = r29;
                    r0 = [var_1D8 retain];
                    var_1E8 = r0;
                    [var_1C8 invokeCallback:var_1D0 argument:r0];
                    [var_1E8 release];
                    [var_1C8 release];
                    [var_1B8 release];
            }
            else {
                    r0 = objc_loadWeakRetained(r29 - 0x28);
                    var_1F0 = r0;
                    var_1F8 = [r0 jsInvoker];
                    r29 = r29;
                    r0 = [var_1F8 retain];
                    var_200 = r0;
                    [r0 invokeCallback:*(var_48 + 0x30) argument:0x0];
                    [var_200 release];
                    [var_1F0 release];
            }
            objc_destroyWeak(r29 - 0x28);
            objc_storeStrong(r29 - 0x18, 0x0);
            objc_storeStrong(r29 - 0x10, 0x0);
    }
    return;
}

-(void)sendURL:(void *)arg2 successCallback:(void *)arg3 failureCallback:(void *)arg4 {
    r2 = arg2;
    r31 = r31 - 0x130;
    var_10 = r28;
    var_8 = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = self;
    objc_storeStrong(r29 - 0x28, r2);
    objc_storeStrong(r29 - 0x30, arg3);
    objc_storeStrong(r29 - 0x38, arg4);
    if (0x0 == 0x0) {
            var_3C = 0x1;
    }
    else {
            objc_initWeak(r29 - 0x48, var_18);
            var_B8 = (r29 - 0x88) + 0x28;
            var_C8 = (r29 - 0x88) + 0x20;
            var_D0 = (r29 - 0x88) + 0x30;
            var_E0 = [var_18 jsInvoker];
            r29 = r29;
            r0 = [var_E0 retain];
            var_E8 = r0;
            var_F0 = [r0 dispatchQueue];
            r29 = r29;
            var_108 = [var_F0 retain];
            objc_copyWeak((r29 - 0x88) + 0x30, r29 - 0x48);
            [0x0 retain];
            [0x0 retain];
            r2 = 0x0;
            var_110 = [GADOMIDLoadTask taskToSendPingToURL:r2 completionQueue:r0 completionHandler:r29 - 0x88];
            r29 = r29;
            var_50 = [var_110 retain];
            [var_108 release];
            [var_E8 release];
            [var_50 start];
            r30 = &@selector(menu);
            objc_storeStrong(r29 - 0x50, 0x0);
            objc_storeStrong(var_B8, 0x0);
            objc_storeStrong(var_C8, 0x0);
            objc_destroyWeak(var_D0);
            objc_destroyWeak(r29 - 0x48);
            var_3C = 0x0;
    }
    objc_storeStrong(r29 - 0x38, 0x0);
    objc_storeStrong(r29 - 0x30, 0x0);
    r0 = objc_storeStrong(r29 - 0x28, 0x0);
    r8 = var_3C - 0x1;
    if (r8 > 0x0) {
            r31 = r31 - 0x90;
            var_130 = r29;
            stack[-312] = r30;
            r29 = &var_130;
            var_170 = r0;
            objc_storeStrong(r29 - 0x10, 0x0);
            objc_storeStrong(r29 - 0x18, r2);
            objc_copyWeak(r29 - 0x28, var_170 + 0x30);
            if (0x0 != 0x0) {
                    r0 = objc_loadWeakRetained(r29 - 0x28);
                    var_188 = r0;
                    var_190 = [r0 jsInvoker];
                    r29 = r29;
                    r0 = [var_190 retain];
                    var_198 = r0;
                    [r0 invokeCallback:*(var_170 + 0x20)];
                    [var_198 release];
                    [var_188 release];
            }
            else {
                    r0 = objc_loadWeakRetained(r29 - 0x28);
                    var_1A0 = r0;
                    var_1A8 = [r0 jsInvoker];
                    r29 = r29;
                    r0 = [var_1A8 retain];
                    var_1B0 = r0;
                    [r0 invokeCallback:*(var_170 + 0x28)];
                    [var_1B0 release];
                    [var_1A0 release];
            }
            objc_destroyWeak(r29 - 0x28);
            objc_storeStrong(r29 - 0x18, 0x0);
            objc_storeStrong(r29 - 0x10, 0x0);
    }
    return;
}

-(void)injectJavaScriptFromURL:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0xe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, r2);
    if (0x0 == 0x0) {
            var_1C = 0x1;
    }
    else {
            objc_initWeak(r29 - 0x28, var_8);
            var_78 = (r29 - 0x58) + 0x20;
            var_80 = 0x0;
            var_90 = [var_8 jsInvoker];
            r29 = r29;
            r0 = [var_90 retain];
            var_98 = r0;
            var_A0 = [r0 dispatchQueue];
            r29 = r29;
            var_B8 = [var_A0 retain];
            objc_copyWeak((r29 - 0x58) + 0x20, r29 - 0x28);
            r2 = var_80;
            var_C0 = [GADOMIDLoadTask taskToLoadStringFromURL:r2 attemptsCount:0x1 completionQueue:r0 completionHandler:r29 - 0x58];
            r29 = r29;
            var_30 = [var_C0 retain];
            [var_B8 release];
            [var_98 release];
            [var_30 start];
            r30 = &@selector(menu);
            objc_storeStrong(r29 - 0x30, 0x0);
            objc_destroyWeak(var_78);
            objc_destroyWeak(r29 - 0x28);
            var_1C = 0x0;
    }
    r0 = objc_storeStrong(r29 - 0x18, 0x0);
    r8 = var_1C - 0x1;
    if (r8 > 0x0) {
            r31 = r31 - 0xa0;
            var_E0 = r29;
            stack[-232] = r30;
            r29 = &var_E0;
            objc_storeStrong(r29 - 0x10, 0x0);
            objc_storeStrong(r29 - 0x18, r2);
            objc_copyWeak(r29 - 0x28, r0 + 0x20);
            if (0x0 == 0x0) {
                    r0 = objc_loadWeakRetained(r29 - 0x28);
                    var_138 = r0;
                    var_140 = [r0 jsInvoker];
                    r29 = r29;
                    r0 = [var_140 retain];
                    stack[-384] = 0x0;
                    var_148 = r0;
                    var_150 = [NSString stringWithFormat:@"(function() { %@ }).call(this);"];
                    r29 = r29;
                    r0 = [var_150 retain];
                    var_160 = r0;
                    [var_148 invokeScript:r0];
                    [var_160 release];
                    [var_148 release];
                    [var_138 release];
            }
            objc_destroyWeak(r29 - 0x28);
            objc_storeStrong(r29 - 0x18, 0x0);
            objc_storeStrong(r29 - 0x10, 0x0);
    }
    return;
}

-(unsigned long long)getGADOMIDError:(void *)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    r0 = [0x0 code];
    r1 = r0;
    r0 = r0 + 0x3f1;
    var_30 = r1;
    if (r0 != 0x0) {
            if (r9 != 0x0) {
                    r8 = var_30 - 0x7fffffffffffffff;
                    if (r8 != 0x0) {
                            var_8 = 0x3;
                    }
                    else {
                            var_8 = 0x2;
                    }
            }
            else {
                    var_8 = 0x1;
            }
    }
    else {
            var_8 = 0x0;
    }
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = var_8;
    return r0;
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

@end