@implementation APMASLLogger

+(long long)GULLoggerLevelFromLogLevel:(long long)arg2 {
    r2 = arg2;
    if (r2 <= 0x7) {
            r0 = *(0x100ba2100 + r2 * 0x8);
    }
    else {
            r0 = 0x4;
    }
    return r0;
}

-(void)logMessage:(void *)arg2 logTag:(void *)arg3 messageCode:(long long)arg4 withLogLevel:(long long)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [[arg2 stringByReplacingOccurrencesOfString:@"%" withString:@"%%"] retain];
    [r23 release];
    r23 = [APMASLLogger GULLoggerLevelFromLogLevel:arg5];
    r2 = @"I-ACS%06ld";
    r20 = [[NSString stringWithFormat:r2] retain];
    if (arg5 == 0x7) {
            r2 = @"I-ACS%06ld";
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    sub_1000abf34(r23, r21, r2, r20, r22, 0x0);
    [r21 release];
    [r20 release];
    [r22 release];
    return;
}

@end