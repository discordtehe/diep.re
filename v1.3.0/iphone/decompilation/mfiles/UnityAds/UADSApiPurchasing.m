@implementation UADSApiPurchasing

+(void *)getPurchasingDelegate {
    r0 = *0x1011d1a40;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setPurchasingDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1a40, arg2);
    return;
}

+(void)WebViewExposed_getPromoVersion:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    dispatch_async(*__dispatch_main_q, 0x100e69a60);
    r0 = [UADSApiPurchasing getPurchasingDelegate];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"PURCHASE_INTERFACE_NULL");
            [r19 error:@"PURCHASE_INTERFACE_NULL" arg1:0x0];
    }
    [r19 release];
    return;
}

+(void)WebViewExposed_getPromoCatalog:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    dispatch_async(*__dispatch_main_q, 0x100e69aa0);
    r0 = [UADSApiPurchasing getPurchasingDelegate];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"PURCHASE_INTERFACE_NULL");
            [r19 error:@"PURCHASE_INTERFACE_NULL" arg1:0x0];
    }
    [r19 release];
    return;
}

+(void)WebViewExposed_initiatePurchasingCommand:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [r20 retain];
    var_28 = r20;
    dispatch_async(*__dispatch_main_q, &var_48);
    r0 = [UADSApiPurchasing getPurchasingDelegate];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"PURCHASE_INTERFACE_NULL");
            [r19 error:@"PURCHASE_INTERFACE_NULL" arg1:0x0];
    }
    [var_28 release];
    [r19 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_initializePurchasing:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    dispatch_async(*__dispatch_main_q, 0x100e69b10);
    r0 = [UADSApiPurchasing getPurchasingDelegate];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 invoke:0x0];
    }
    else {
            objc_retainAutorelease(@"PURCHASE_INTERFACE_NULL");
            [r19 error:@"PURCHASE_INTERFACE_NULL" arg1:0x0];
    }
    [r19 release];
    return;
}

@end