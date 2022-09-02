@implementation GADNativeAdContext

+(void)loadWithAdConfiguration:(struct NSDictionary *)arg2 eventContext:(void *)arg3 completionHandler:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = @"webview";
    [r22 retain];
    if (sub_100818968(0xa, 0x0, 0x0) != 0x0) {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r22 = [[r0 stringForKey:*0x100e9b920] retain];
            [@"webview" release];
            [r0 release];
    }
    if ([r22 isEqual:r2] != 0x0) {
            [GADNativeAdContext JSCoreNativeAdContextWithEventContext:r20 completionHandler:r21];
    }
    else {
            if ([r22 isEqual:r2] != 0x0) {
                    [GADNativeAdContext webViewNativeAdContextWithAdConfiguration:r19 eventContext:r20 completionHandler:r21];
            }
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)webViewNativeAdContextWithAdConfiguration:(struct NSDictionary *)arg2 eventContext:(void *)arg3 completionHandler:(void *)arg4 {
    var_80 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 stringForKey:*0x100e9b918] retain];
    r23 = [[NSURL URLWithString:r21] retain];
    r25 = [[NSURLRequest alloc] initWithURL:r23];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r27 = [[r0 dictionaryForKey:*0x100e9b4c0] retain];
    [r0 release];
    r28 = [[GADWebViewConfiguration alloc] initWithConfiguration:r27];
    r24 = [arg2 objectForKeyedSubscript:*0x100e95958];
    [var_80 release];
    r0 = [r24 retain];
    [r28 setNetworkNotificationsEnabled:[r0 boolValue]];
    [r0 release];
    var_58 = r22;
    r22 = [r22 retain];
    [GADWebViewJSContext loadWithRequest:r25 webViewConfiguration:r28 eventContext:r20 completionHandler:&var_78];
    [r20 release];
    [var_58 release];
    [r22 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

+(void)JSCoreNativeAdContextWithEventContext:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r19 = [[GADURLSession alloc] init];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r23 = [[r0 stringForKey:*0x100e9b930] retain];
    r24 = [[NSURL URLWithString:r23] retain];
    [r0 doubleForKey:*0x100e9b928];
    r25 = [[NSURLRequest alloc] initWithURL:r24 cachePolicy:0x1 timeoutInterval:r4];
    var_60 = r22;
    r22 = [r22 retain];
    var_58 = r21;
    r21 = [r21 retain];
    [r19 sendRequest:r25 withContext:r21 notificationPolicy:0x2 completionHandler:&var_80];
    [var_58 release];
    [var_60 release];
    [r21 release];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r19 release];
    return;
}

-(void)setJSContext:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_context, arg2);
    return;
}

-(void)preprocessNativeAdDictionary:(void *)arg2 completionHandler:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = [r21 retain];
            r23 = [@(YES) retain];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2] retain];
            [r23 release];
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-136] forKeys:&var_88 count:0x2] retain];
            r0 = r20->_context;
            r0 = [r0 functionWithName:@"google.afma.nativeAds.preProcessJson"];
            r0 = [r0 retain];
            [r0 callWithArguments:r23 completionHandler:r21];
            [r21 release];
            [r0 release];
            r0 = r23;
    }
    else {
            [r21 retain];
            sub_1007ce06c(0x0, @"Parameters passed for preprocessing native ad JSON must not be nil");
            r22 = [sub_100809600(0xb, @"Empty native ad JSON.") retain];
            (*(r20 + 0x10))(r21, 0x0, r22);
            r0 = r20;
    }
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleImpression:(void *)arg2 completionHandler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = r21->_context;
            r20 = [r20 retain];
            r0 = [r21 functionWithName:@"google.afma.nativeAds.handleImpression"];
            r0 = [r0 retain];
            [r0 callWithArguments:r19 completionHandler:r20];
            [r20 release];
            r0 = r0;
    }
    else {
            [r20 retain];
            sub_1007ce06c(0x0, @"Parameters passed for handle impression must not be nil.");
            (*(r21 + 0x10))(r20, 0x0, [sub_100809600(0xb, @"Empty impression info.") retain]);
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)handleClick:(void *)arg2 completionHandler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = r21->_context;
            r20 = [r20 retain];
            r0 = [r21 functionWithName:@"google.afma.nativeAds.handleClick"];
            r0 = [r0 retain];
            [r0 callWithArguments:r19 completionHandler:r20];
            [r20 release];
            r0 = r0;
    }
    else {
            [r20 retain];
            sub_1007ce06c(0x0, @"Parameters passed for handle click must not be nil.");
            (*(r21 + 0x10))(r20, 0x0, [sub_100809600(0xb, @"Empty click info.") retain]);
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)handleOnePointFiveClick:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSMutableDictionary alloc] initWithDictionary:r22];
    [r22 release];
    sub_100822058(r20, @"messageType", @"onePointFiveClick");
    [self->_context asyncEvaluateFunction:@"sendMessageToNativeJs" parameters:r20];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

@end