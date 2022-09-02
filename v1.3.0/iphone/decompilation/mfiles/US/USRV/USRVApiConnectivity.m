@implementation USRVApiConnectivity

+(void)WebViewExposed_setConnectionMonitoring:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg2 boolValue];
    [r21 release];
    [USRVConnectivityMonitor setConnectionMonitoring:r20];
    [arg3 invoke:0x0];
    [r24 release];
    return;
}

@end