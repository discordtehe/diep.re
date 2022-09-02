@implementation UADSPurchasing

+(void)initialize:(void *)arg2 {
    [UADSApiPurchasing setPurchasingDelegate:arg2];
    return;
}

+(void)dispatchReturnEvent:(long long)arg2 withPayload:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[USRVWebViewApp getCurrentApp] retain];
            r20 = [sub_1000be738() retain];
            [r21 sendEvent:r20 category:@"PURCHASING" param1:r19];
            [r20 release];
            [r21 release];
    }
    [r19 release];
    return;
}

@end