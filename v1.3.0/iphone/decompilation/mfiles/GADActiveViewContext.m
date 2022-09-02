@implementation GADActiveViewContext

+(void)loadWithEventContext:(void *)arg2 completionHandler:(void *)arg3 {
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 stringForKey:*0x100e9b560] retain];
    r23 = [[NSURL URLWithString:r21] retain];
    r0 = @class(GADSettings);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r24 = [[r0 dictionaryForKey:*0x100e9b4a8] retain];
    [r0 release];
    r26 = [[GADWebViewConfiguration alloc] initWithConfiguration:r24];
    r25 = [[NSURLRequest alloc] initWithURL:r23];
    var_58 = r22;
    r22 = [r22 retain];
    [GADWebViewJSContext loadWithRequest:r25 webViewConfiguration:r26 eventContext:r20 completionHandler:&var_78];
    [r20 release];
    [var_58 release];
    [r22 release];
    [r25 release];
    [r26 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

-(void)setJSContext:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_context, arg2);
    return;
}

-(void)updateActiveViewWithSignals:(void *)arg2 completionHandler:(void *)arg3 {
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
            r0 = [r21 functionWithName:@"google.afma.activeview.getActiveViewResponseUsingUpdate"];
            r0 = [r0 retain];
            r21 = r0;
            [r0 callWithArguments:r19 completionHandler:r20];
            [r20 release];
    }
    else {
            r21 = [r20 retain];
            sub_1007ce06c(0x0, @"Parameters passed for reporting Active View status must not be nil");
            (*(r21 + 0x10))(r20, 0x0, 0x0);
    }
    [r21 release];
    [r19 release];
    return;
}

@end