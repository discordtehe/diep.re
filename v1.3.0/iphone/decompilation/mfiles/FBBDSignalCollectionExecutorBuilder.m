@implementation FBBDSignalCollectionExecutorBuilder

+(void *)signalExecutors {
    [self createSignalExecutors];
    r0 = *0x1011de8a8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)signalsDelegate {
    r0 = *0x1011de8a0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setSignalExecutors:(void *)arg2 {
    objc_storeStrong(0x1011de8a8, arg2);
    return;
}

+(void)setSignalsDelegate:(void *)arg2 {
    objc_storeStrong(0x1011de8a0, arg2);
    return;
}

+(void)createSignalExecutors {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011de898 != -0x1) {
            dispatch_once(0x1011de898, 0x100eb09e0);
    }
    return;
}

@end