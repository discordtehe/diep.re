@implementation USRVCoreModuleConfiguration

-(void *)getWebAppApiClassList {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_70 count:0xd];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)resetState:(void *)arg2 {
    [USRVDevice initCarrierUpdates];
    [USRVConnectivityUtils initCarrierInfo];
    [USRVSdkProperties setInitialized:0x0];
    [USRVCacheQueue cancelAllDownloads];
    [USRVWebRequestQueue cancelAllOperations];
    dispatch_async(*__dispatch_main_q, 0x100e69c70);
    [USRVStorageManager init];
    [USRVNotificationObserver unregisterNotificationObserver];
    [USRVVolumeChange clearAllDelegates];
    return 0x1;
}

-(bool)initModuleState:(void *)arg2 {
    return 0x1;
}

-(bool)initErrorState:(void *)arg2 state:(void *)arg3 message:(void *)arg4 {
    return 0x1;
}

-(bool)initCompleteState:(void *)arg2 {
    return 0x1;
}

@end