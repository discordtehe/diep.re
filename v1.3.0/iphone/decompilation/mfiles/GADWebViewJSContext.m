@implementation GADWebViewJSContext

+(void)loadWithRequest:(void *)arg2 webViewConfiguration:(void *)arg3 eventContext:(void *)arg4 completionHandler:(void *)arg5 {
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
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r25 = [arg4 retain];
    r20 = [arg5 retain];
    r21 = [self alloc];
    r22 = [arg3 copy];
    [r24 release];
    r21 = [r21 initBareContextWithConfiguration:r22 eventContext:r25];
    [r25 release];
    [r22 release];
    if (r21 == 0x0) {
            var_58 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_78);
            [var_58 release];
    }
    var_88 = r20;
    [r20 retain];
    r21 = [r21 retain];
    var_80 = r21;
    r0 = objc_retainBlock(&var_A8);
    var_C0 = r21;
    [r21 retain];
    var_B8 = r19;
    [r19 retain];
    [r0 retain];
    sub_100860a80();
    [r0 release];
    [var_B8 release];
    [var_C0 release];
    [r22 release];
    [var_80 release];
    [var_88 release];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)initBareContextWithConfiguration:(void *)arg2 eventContext:(void *)arg3 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r29 - 0x30 super] initWithEventContext:r20];
    if (r21 != 0x0) {
            [[[GADGMSGMonitor sharedInstance] retain] release];
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bufferedScripts));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            var_48 = [r21 retain];
            var_40 = [r20 retain];
            var_38 = [r19 retain];
            sub_100860a80();
            [var_38 release];
            [var_40 release];
            [var_48 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithEventContext:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [[GADWebViewConfiguration alloc] init];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r23 = [[r0 stringForKey:*0x100e9b498] retain];
    [r19 setWebViewClassKey:r23];
    [r23 release];
    r21 = [self initBareContextWithConfiguration:r19 eventContext:r22];
    [r22 release];
    if (r21 != 0x0) {
            var_38 = [r21 retain];
            sub_100860a80();
            [var_38 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_webViewController));
    [*(self + r21) setDelegate:0x0];
    r0 = [GADWebViewControllerMap sharedInstance];
    r0 = [r0 retain];
    [r0 removeWebViewController:*(self + r21)];
    [r0 release];
    r0 = *(self + r21);
    r0 = [r0 retain];
    *(self + r21) = 0x0;
    [r0 release];
    sub_100860a80();
    _Block_object_dispose(&var_50, 0x8);
    [r0 release];
    [[&var_88 super] dealloc];
    return;
}

-(void)loadRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = objc_retainBlock(arg3);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadHTMLURLCompletionHandler));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [self->_webViewController loadRequest:r21];
    [r21 release];
    return;
}

-(void *)functionWithName:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[GADWebViewJSFunction alloc] initWithFunctionName:r22 context:self];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)evaluateScript:(void *)arg2 {
    r20 = [arg2 copy];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void)asyncEvaluateFunction:(void *)arg2 parameters:(void *)arg3 {
    r0 = [arg2 retain];
    r19 = sub_1008762a4(r0, arg3);
    [r0 release];
    r19 = [r19 retain];
    [self evaluateScript:r19];
    [r19 release];
    return;
}

-(void)webViewControllerDidStartLoad:(void *)arg2 {
    return;
}

-(bool)webViewController:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 scheme];
            r0 = [r0 retain];
            r22 = [[r0 lowercaseString] retain];
            [r0 release];
            if ([r22 isEqual:r2] != 0x0) {
                    [r21->_actionURLHandler handleActionURLRequest:r19];
                    r21 = 0x0;
            }
            else {
                    r21 = 0x1;
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)webViewControllerDidFinishLoad:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loadHTMLURLCompletionHandler));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bufferedScripts));
    r0 = *(r19 + r21);
    r0 = [r0 retain];
    *(r19 + r21) = 0x0;
    [r0 release];
    [r0 retain];
    var_28 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [var_28 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)webViewDidFailWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bufferedScripts));
    sub_1007ce06c(0x0, @"Failed to load. Buffered scripts will not be run.\nerror: %@\nbuffered scripts: %@");
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_loadHTMLURLCompletionHandler));
    r0 = *(r20 + r22);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r20 + r22);
            *(r20 + r22) = 0x0;
            [r0 release];
    }
    r0 = *(r20 + r21);
    *(r20 + r21) = 0x0;
    [r0 release];
    [r19 release];
    return;
}

-(void)webViewController:(void *)arg2 didFailLoadWithError:(void *)arg3 {
    [self webViewDidFailWithError:arg3];
    return;
}

-(void)webViewControllerWebContentProcessDidTerminate:(void *)arg2 {
    sub_1008833e8(*0x100e9c488, self, 0x0);
    r20 = [sub_100809600(0xb, @"Web content process terminated.") retain];
    [self webViewDidFailWithError:r20];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_actionURLHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_loadHTMLURLCompletionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_bufferedScripts, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewController, 0x0);
    return;
}

@end