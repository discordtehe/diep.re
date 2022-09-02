@implementation USRVApiUrlScheme

+(void)WebViewExposed_open:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    [USRVApiUrlScheme openUrlScheme:r20];
    [r20 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)openUrlScheme:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[UIApplication sharedApplication] retain];
    [[NSURL URLWithString:r21] retain];
    [r21 release];
    [r19 openURL:r2];
    [r20 release];
    [r19 release];
    return;
}

@end