@implementation USRVDeviceLog

+(void)setLogLevel:(int)arg2 {
    *(int32_t *)0x1011a93c8 = arg2;
    return;
}

+(int)getLogLevel {
    return *(int32_t *)0x1011a93c8;
}

@end