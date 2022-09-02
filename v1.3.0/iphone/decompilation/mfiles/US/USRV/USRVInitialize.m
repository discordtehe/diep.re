@implementation USRVInitialize

+(void)initialize:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    if (*qword_1011d1a70 != -0x1) {
            dispatch_once(0x1011d1a70, 0x100e69cb0);
    }
    if (*0x1011d1a78 != 0x0 && [*0x1011d1a78 operationCount] == 0x0) {
            objc_storeStrong(0x1011d1a80, r20);
            r20 = [[USRVInitializeStateReset alloc] initWithConfiguration:*0x1011d1a80];
            [*0x1011d1a78 addOperation:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)reset {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d1a78 != 0x0) {
            r19 = [[USRVInitializeStateForceReset alloc] initWithConfiguration:*0x1011d1a80];
            [*0x1011d1a78 addOperation:r19];
            [r19 release];
    }
    return;
}

@end