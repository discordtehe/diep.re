@implementation USRVWebViewMethodInvokeQueue

+(void)addOperation:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = *0x1011d1b10;
    r19 = [arg2 retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011d1b10, 0x100e6a160);
    }
    [*0x1011d1b18 addOperation:r19];
    [r19 release];
    return;
}

@end