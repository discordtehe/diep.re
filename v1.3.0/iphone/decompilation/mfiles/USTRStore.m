@implementation USTRStore

+(void *)appSheet {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d1d48 == 0x0) {
            r0 = [USTRAppSheet alloc];
            r0 = [r0 init];
            r8 = *0x1011d1d48;
            *0x1011d1d48 = r0;
            [r8 release];
    }
    r0 = *0x1011d1d48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)startTransactionObserver {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1d40 == 0x0) {
            r0 = [USTRTransactionObserver alloc];
            r0 = [r0 init];
            r8 = *0x1011d1d40;
            *0x1011d1d40 = r0;
            [r8 release];
            r0 = [SKPaymentQueue defaultQueue];
            r0 = [r0 retain];
            [r0 addTransactionObserver:*0x1011d1d40];
            [r0 release];
    }
    return;
}

+(void)stopTransactionObserver {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1d40 != 0x0) {
            r0 = [SKPaymentQueue defaultQueue];
            r0 = [r0 retain];
            [r0 removeTransactionObserver:*0x1011d1d40];
            [r0 release];
            r0 = *0x1011d1d40;
            *0x1011d1d40 = 0x0;
            [r0 release];
    }
    return;
}

+(void)requestProductInfos:(void *)arg2 requestId:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[USTRProductRequest alloc] initWithProductIds:r20 requestId:r19];
    [r19 release];
    [r20 release];
    [r21 requestProducts];
    [r21 release];
    return;
}

+(void *)getReceipt {
    r0 = [NSBundle bundleForClass:[self class]];
    r0 = [r0 retain];
    r20 = [[r0 appStoreReceiptURL] retain];
    [r0 release];
    r19 = [[NSData dataWithContentsOfURL:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end