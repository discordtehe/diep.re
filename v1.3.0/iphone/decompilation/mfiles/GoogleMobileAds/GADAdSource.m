@implementation GADAdSource

-(void)invalidateAndCancel {
    asm { stlrb      w9, [x8] };
    return;
}

-(bool)invalidated {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_invalidated));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)renderServerTransactions:(void *)arg2 completionHandler:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r21 invalidated] != 0x0) {
            [r21 callCompletionHandlerWithInvalidatedError:r20];
    }
    else {
            r21 = [[NSMutableDictionary alloc] init];
            if ([r19 count] != 0x0) {
                    r0 = [r19 firstObject];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 serverResponse];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 common];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKeyedSubscript:*0x100e95a70] retain];
                    [r0 release];
                    [r24 release];
                    r0 = [r22 serverRequest];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 context];
                    r0 = [r0 retain];
                    [r0 setUserInfoObject:r23 forKey:*0x100e97410];
                    [r0 release];
                    [r25 release];
                    sub_1008833e8(*0x100e9c1c8, [[r22 serverRequest] retain], 0x0);
                    [r24 release];
                    var_60 = r22;
                    r22 = [r22 retain];
                    var_58 = [r20 retain];
                    sub_100854e3c(r22, &var_80);
                    [var_58 release];
                    [var_60 release];
                    [r22 release];
                    r0 = r23;
            }
            else {
                    [sub_100809600(0xb, @"No server transactions returned.") retain];
                    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
                    (*(r20 + 0x10))(r20, 0x0, [r0 retain], r21);
                    [r23 release];
                    r0 = r22;
            }
            [r0 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)callCompletionHandlerWithInvalidatedError:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r20 = [arg2 retain];
    [sub_100809600(0xb, @"Ad source invalidated. Ignoring request.") retain];
    r22 = [[NSArray arrayWithObjects:&var_40 count:0x1] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&stack[-88] count:0x0];
    (*(r20 + 0x10))(arg2, 0x0, r22, [r0 retain]);
    [r20 release];
    [r23 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadAdsWithTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xb0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r21 retain];
    var_48 = r21;
    if (*qword_1011dbf68 == -0x1) {
            r0 = r21;
    }
    else {
            dispatch_once(0x1011dbf68, &var_68);
            r0 = var_48;
    }
    [r0 release];
    r0 = [GADApplication sharedInstance];
    r0 = [r0 retain];
    [r0 runAdditionalEarlyActivities];
    [r0 release];
    var_80 = [r19 retain];
    var_78 = r20;
    [r20 retain];
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_A0);
    [r21 release];
    [var_78 release];
    [var_80 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)asyncLoadAdWithServerRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    if ([r23 invalidated] != 0x0) {
            [r23 callCompletionHandlerWithInvalidatedError:r20];
    }
    else {
            [r19 updateRTBAdapters];
            sub_1008833e8(*0x100e9c178, r19, 0x0);
            [r19 updateSignals];
            sub_1008833e8(*0x100e9c180, r19, 0x0);
            [r19 updateAdReferences:&var_60];
            r21 = [var_60 retain];
            if (r21 != 0x0) {
                    r22 = [[NSArray arrayWithObjects:&var_50 count:0x1] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&stack[-104] count:0x0];
                    (*(r20 + 0x10))(r20, 0x0, r22, [r0 retain]);
                    [r23 release];
                    r0 = r22;
            }
            else {
                    r22 = [r19 retain];
                    var_78 = r22;
                    var_70 = [r20 retain];
                    var_68 = [r23 retain];
                    r0 = objc_retainBlock(&var_98);
                    r23 = r0;
                    sub_1008833e8(*0x100e9c1a8, r22, 0x0);
                    r0 = sub_1007e62b4();
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            r25 = [[r22 context] retain];
                            r26 = [[r24 stringValue] retain];
                            [r25 setUserInfoObject:r26 forKey:*0x100e97458];
                            [r26 release];
                            [r25 release];
                    }
                    r0 = [GADNetworkAdLoader alloc];
                    r0 = [r0 init];
                    [r0 loadWithServerRequest:r22 completionHandler:r23];
                    sub_1008833e8(*0x100e9c048, r22, 0x0);
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    [var_68 release];
                    [var_70 release];
                    r0 = var_78;
            }
            [r0 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end