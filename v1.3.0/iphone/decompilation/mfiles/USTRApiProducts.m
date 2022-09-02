@implementation USTRApiProducts

+(void)WebViewExposed_requestProductInfos:(void *)arg2 requestId:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    [USTRStore requestProductInfos:r21 requestId:r20];
    [r20 release];
    [r21 release];
    [arg4 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_stopTransactionObserver:(void *)arg2 {
    r22 = [arg2 retain];
    [USTRStore stopTransactionObserver];
    [arg2 invoke:0x0];
    [r22 release];
    return;
}

+(void)WebViewExposed_startTransactionObserver:(void *)arg2 {
    r22 = [arg2 retain];
    [USTRStore startTransactionObserver];
    [arg2 invoke:0x0];
    [r22 release];
    return;
}

+(void)WebViewExposed_getReceipt:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [USTRStore getReceipt];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r20 base64EncodedStringWithOptions:0x0] retain];
            [r19 invoke:r21];
            [r21 release];
    }
    else {
            [r19 error:@"NO_RECEIPT" arg1:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

@end