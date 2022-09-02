@implementation GULLoggerWrapper

+(void)logWithLevel:(long long)arg2 withService:(void *)arg3 withCode:(void *)arg4 withMessage:(void *)arg5 withArgs:(char *)arg6 {
    sub_1000abf34(arg2, [arg3 retain], 0x0, [arg4 retain], arg5, arg6);
    [r21 release];
    [r23 release];
    return;
}

@end