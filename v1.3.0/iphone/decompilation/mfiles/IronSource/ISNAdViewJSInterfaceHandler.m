@implementation ISNAdViewJSInterfaceHandler

-(void *)initWithPublisherAgent:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_publisherAgent, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)methodNameFromParams:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"functionName"];
    return r0;
}

-(void *)methodParamsFromParams:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [[arg2 objectForKeyedSubscript:@"functionParams"] retain];
    r22 = [[SSAHelperMethods decodeFromPercentEscapeString:r21] retain];
    r0 = [SSAHelperMethods dictionaryFromJsonString:r22 error:&var_30];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_30 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)invokeAPIWithJSParams:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 methodNameFromParams:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10070755c;

loc_10070742c:
    r0 = [r21 isnAdView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1007075bc;

loc_100707454:
    r23 = [[r21 methodParamsFromParams:r19] retain];
    r25 = [[r19 objectForKeyedSubscript:r2] retain];
    r24 = [[r19 objectForKeyedSubscript:r2] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_98 count:0x3] retain];
    [r24 release];
    [r25 release];
    [r23 release];
    r0 = [r21 isnAdView];
    r0 = [r0 retain];
    [r0 sendMessage:r20 params:r26];
    [r0 release];
    r0 = r26;
    goto loc_100707644;

loc_100707644:
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1007075bc:
    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_100707618;

loc_100707618:
    r23 = [r0 retain];
    [r21 sendCallbackToController:r22 withParams:r23];
    [r23 release];
    r0 = r22;
    goto loc_100707644;

loc_10070755c:
    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_100707618;
}

-(void)sendCallbackToController:(void *)arg2 withParams:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)didReceiveMessageFromAdView:(void *)arg2 params:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)isnAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_isnAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)didReceiveMessageFromAdViewWithArray:(void *)arg2 params:(void *)arg3 {
    return;
}

-(void)setIsnAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_isnAdView, arg2);
    return;
}

-(void *)publisherAgent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_publisherAgent);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_publisherAgent);
    objc_destroyWeak((int64_t *)&self->_isnAdView);
    return;
}

@end