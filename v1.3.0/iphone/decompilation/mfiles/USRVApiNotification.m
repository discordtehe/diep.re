@implementation USRVApiNotification

+(void)WebViewExposed_addNotificationObserver:(void *)arg2 userInfoKeys:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    [USRVNotificationObserver addObserver:r21 userInfoKeys:r20 targetObject:0x0];
    [r20 release];
    [r21 release];
    [arg4 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_removeNotificationObserver:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    [USRVNotificationObserver removeObserver:r20 targetObject:0x0];
    [r20 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_addAVNotificationObserver:(void *)arg2 userInfoKeys:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r23 = [[AVAudioSession sharedInstance] retain];
    [USRVNotificationObserver addObserver:r21 userInfoKeys:r20 targetObject:r23];
    [r20 release];
    [r21 release];
    [r23 release];
    [arg4 invoke:0x0];
    [r25 release];
    return;
}

+(void)WebViewExposed_removeAVNotificationObserver:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    r22 = [[AVAudioSession sharedInstance] retain];
    [USRVNotificationObserver removeObserver:r20 targetObject:r22];
    [r20 release];
    [r22 release];
    [arg3 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_removeAllNotificationObservers:(void *)arg2 {
    r22 = [arg2 retain];
    [USRVNotificationObserver unregisterNotificationObserver];
    [arg2 invoke:0x0];
    [r22 release];
    return;
}

@end