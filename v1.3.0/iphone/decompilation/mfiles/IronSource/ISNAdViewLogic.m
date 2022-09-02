@implementation ISNAdViewLogic

-(void)loadUrlIntoWebView:(void *)arg2 withDelegate:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 objectForKeyedSubscript:@"params"];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"urlForWebView"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (([r21 containsString:r2] & 0x1) != 0x0 || [r21 containsString:r2] != 0x0) {
            r24 = [[NSURL URLWithString:r21] retain];
            r0 = [NSURLRequest requestWithURL:r24];
            r29 = r29;
            r25 = [r0 retain];
            if ([NSURLConnection canHandleRequest:r25] != 0x0) {
                    var_48 = [r25 retain];
                    dispatch_async(*__dispatch_main_q, &var_70);
                    r0 = var_48;
            }
            else {
                    r0 = r22->_configs;
                    r0 = [r0 mutableCopy];
                    [r0 setObject:@"brokenUrl" forKeyedSubscript:@"errMsg"];
                    r23 = [[r19 objectForKeyedSubscript:@"fail"] retain];
                    [r20 didReceiveMessageFromAdView:r23 params:r0];
                    [r23 release];
                    r0 = r0;
            }
            [r0 release];
            [r25 release];
            [r24 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendMessageToAdunit:(void *)arg2 {
    [[[NSString stringWithFormat:@"window.ssa.onMessageReceived(%@)"] retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)checkStatusOfWebView:(void *)arg2 {
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
    r0 = [self webView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 URL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 != 0x0) {
            r22 = 0x1;
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
            r20 = [r0 retain];
            r23 = 0x0;
    }
    else {
            r0 = [NSNumber numberWithBool:r2];
            r29 = r29;
            r20 = [r0 retain];
            r22 = 0x0;
            r23 = 0x1;
    }
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r21 = [r0 retain];
    [r19 didReceiveMessageFromAdView:@"containerAdViewStatus" params:r21];
    [r19 release];
    [r21 release];
    if (r23 != 0x0) {
            [r20 release];
    }
    if (r22 != 0x0) {
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)messageHandlerFromAdContainer:(void *)arg2 params:(void *)arg3 withDelegate:(void *)arg4 {
    r20 = [arg3 retain];
    [arg4 didReceiveMessageFromAdView:@"containerSendMessage" params:r20];
    [r20 release];
    return;
}

-(void)messageHandlerFromController:(void *)arg2 params:(void *)arg3 withDelegate:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    if ([r19 isEqualToString:r2] != 0x0) {
            [r22 loadUrlIntoWebView:r20 withDelegate:r21];
    }
    else {
            if ([r19 isEqualToString:r2] != 0x0) {
                    [r22 checkStatusOfWebView:r21];
            }
            else {
                    r0 = [r20 objectForKeyedSubscript:@"params"];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKeyedSubscript:@"params"] retain];
                    [r22 sendMessageToAdunit:r23];
                    [r23 release];
                    [r0 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)extendConfigurationWithVisibilityParams:(void *)arg2 {
    [arg2 retain];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 initWithDictionary:self->_configs];
    [r0 setObject:r2 forKey:r3];
    [r23 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)reportAdContainerIsVisible:(void *)arg2 withDelegate:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [NSDictionary alloc];
    r23 = [[NSString stringWithFormat:@"%@%@"] retain];
    r25 = [[NSString stringWithFormat:@"%@%@"] retain];
    r24 = [[self extendConfigurationWithVisibilityParams:r22] retain];
    [r22 release];
    r21 = [r21 initWithObjectsAndKeys:r23];
    [r24 release];
    [r25 release];
    [r23 release];
    [r19 didReceiveMessageFromAdView:@"containerIsVisible" params:r21];
    [r19 release];
    [r21 release];
    return;
}

-(bool)shouldHandeleMessageInContainer:(void *)arg2 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r19 = [[NSArray arrayWithObjects:&saved_fp - 0x30 count:0x1] retain];
    r20 = [r20 retain];
    [r19 enumerateObjectsUsingBlock:&var_80];
    r21 = *(int8_t *)(&var_50 + 0x18);
    [r20 release];
    _Block_object_dispose(&var_50, 0x8);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)reportAdContainerWasRemoved:(void *)arg2 withDelegate:(void *)arg3 {
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [NSDictionary alloc];
    r24 = [[NSString stringWithFormat:@"%@%@"] retain];
    r25 = [[NSString stringWithFormat:@"%@%@"] retain];
    r26 = [[self extendConfigurationWithVisibilityParams:r23] retain];
    [r23 release];
    r22 = [r22 initWithObjectsAndKeys:r24];
    [r26 release];
    [r25 release];
    [r24 release];
    [r20 didReceiveMessageFromAdView:@"containerWasRemoved" params:r22];
    [r20 release];
    [self perfromCleanup];
    [r22 release];
    return;
}

-(void)perfromCleanup {
    r0 = [self webView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 userContentController];
    r0 = [r0 retain];
    [r0 removeScriptMessageHandlerForName:@"containerMsgHandler"];
    [r0 release];
    [r21 release];
    [r20 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_configs));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_urlForWebView));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void *)urlForWebView {
    r0 = self->_urlForWebView;
    return r0;
}

-(void)setUrlForWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_urlForWebView, arg2);
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)configs {
    r0 = self->_configs;
    return r0;
}

-(void)setConfigs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configs, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configs, 0x0);
    objc_storeStrong((int64_t *)&self->_urlForWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end