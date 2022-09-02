@implementation GADWebViewJSFunction

-(void *)initWithFunctionName:(void *)arg2 context:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r24 = arg3;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_functionName));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_webViewJSContext, r24);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r23);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resultHandlers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-120], r21);
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            r0 = objc_retainBlock(&var_90);
            r25 = *(r21 + r25);
            r22 = r21->_webViewJSContext;
            r26 = [[NSOperationQueue mainQueue] retain];
            [r25 addObserverForName:*0x100e9c2d0 object:r22 queue:r26 usingBlock:r0];
            [r26 release];
            [r0 release];
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(&stack[-120]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)completeWithResultIdentifier:(void *)arg2 result:(void *)arg3 error:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_resultHandlers));
    r23 = [[*(r22 + r24) objectForKeyedSubscript:r19] retain];
    if (r23 != 0x0) {
            sub_1008220c0(*(r22 + r24), r19);
            (*(r23 + 0x10))(r23, r20, r21);
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)callWithArguments:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x190;
    var_60 = d9;
    stack[-104] = d8;
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
    r26 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[NSMutableDictionary alloc] init];
    if (r19 != 0x0) {
            sub_100822058(r21, *0x100e997b0, r19);
    }
    if (r20 != 0x0) {
            r24 = @selector(init);
            r0 = [NSUUID alloc];
            r0 = objc_msgSend(r0, r24);
            r25 = [[r0 UUIDString] retain];
            [r0 release];
            sub_100822058(r21, *0x100e99780, r25);
            var_70 = [r20 retain];
            r24 = [r26 retain];
            var_68 = r24;
            r0 = objc_retainBlock(r29 - 0x90);
            var_A8 = [r24 retain];
            var_A0 = [r25 retain];
            var_98 = r0;
            [r0 retain];
            dispatch_async(*__dispatch_main_q, &var_C8);
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b3a0];
            [r0 release];
            objc_initWeak(&stack[-224], r27);
            r27 = &var_100 + 0x28;
            asm { fcvtzs     x1, d0 };
            dispatch_time(0x0, r1);
            objc_copyWeak(r27, &stack[-224]);
            var_E0 = r25;
            [r25 retain];
            r1 = r26;
            r26 = r19;
            r19 = r22;
            dispatch_after(r28, r1, &var_100);
            [var_E0 release];
            objc_destroyWeak(r27);
            objc_destroyWeak(&stack[-224]);
            [var_98 release];
            [var_A0 release];
            [var_A8 release];
            [r24 release];
            [var_68 release];
            [var_70 release];
            [r25 release];
    }
    r0 = sub_10084aae0(r21, &var_108);
    r24 = [r0 retain];
    r25 = [var_108 retain];
    if (r25 == 0x0) goto loc_10080cce0;

loc_10080cc74:
    if (r20 == 0x0) goto loc_10080cd88;

loc_10080cc78:
    var_118 = [r20 retain];
    var_110 = [r25 retain];
    dispatch_async(*__dispatch_main_q, &var_138);
    [var_110 release];
    r0 = var_118;
    goto loc_10080cd84;

loc_10080cd84:
    [r0 release];
    goto loc_10080cd88;

loc_10080cd88:
    [r24 release];
    [r25 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10080cce0:
    r23 = [[NSString alloc] initWithFormat:@"setTimeout(function(){%@(%@);}, 1);"];
    var_148 = [r26 retain];
    [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_168);
    [r23 release];
    [var_148 release];
    r0 = r22;
    goto loc_10080cd84;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resultHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewJSContext, 0x0);
    objc_storeStrong((int64_t *)&self->_functionName, 0x0);
    return;
}

@end