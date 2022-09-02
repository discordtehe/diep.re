@implementation VungleCoreTelephonyProvider

+(void *)sharedNetworkInfoInstance {
    if (*qword_1011da908 != -0x1) {
            dispatch_once(0x1011da908, 0x100e89548);
    }
    r0 = *0x1011da900;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end