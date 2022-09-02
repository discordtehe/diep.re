@implementation APMNumericUtil

+(long long)randomInt64 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = **_kSecRandomDefault;
    r0 = SecRandomCopyBytes(r0, 0x8, &var_18);
    if (r0 != 0x0) {
            r19 = [[APMMeasurement monitor] retain];
            r20 = [[NSString stringWithUTF8String:strerror(*(int32_t *)__error())] retain];
            [r19 logWithLevel:0x4 messageCode:0x6594 message:@"Unable to generate random integer" context:r20];
            [r20 release];
            [r19 release];
    }
    r0 = var_18;
    return r0;
}

@end