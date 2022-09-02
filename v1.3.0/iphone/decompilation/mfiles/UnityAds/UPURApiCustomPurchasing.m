@implementation UPURApiCustomPurchasing

+(void)WebViewExposed_available:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r22 = [r19 retain];
    r0 = [UPURClientProperties getDelegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    r21 = [[NSNumber numberWithInt:r2] retain];
    [r19 invoke:r21];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_refreshCatalog:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UPURClientProperties getDelegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r20 loadProducts:0x100e6a410];
            [r19 invoke:0x0];
    }
    else {
            r21 = [sub_1000e743c() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_purchaseItem:(void *)arg2 withExtras:(void *)arg3 withCallBack:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [UPURClientProperties getDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = objc_retainBlock(0x100e6a450);
            r24 = objc_retainBlock(0x100e6a490);
            if ([r22 respondsToSelector:@selector(purchaseProduct:completionHandler:errorHandler:userInfo:), r3, r4, r5] != 0x0) {
                    [r22 purchaseProduct:r19 completionHandler:r23 errorHandler:r24 userInfo:r20];
            }
            [r24 release];
    }
    else {
            r23 = [sub_1000e743c() retain];
            [r21 error:r23 arg1:0x0];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end