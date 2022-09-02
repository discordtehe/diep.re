@implementation TJYMoatVideoUtil

+(float)getSystemVolume {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AVAudioSession sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 outputVolume];
            v8 = v0;
            [r0 release];
    }
    r0 = [r19 release];
    return r0;
}

+(bool)isFinalEvent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 eventType] != 0x0 && [r19 eventType] != 0x6) {
            r20 = @selector(eventType);
            if (objc_msgSend(r19, r20) == 0x5) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isSystemVersionLT:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 compare:r21 options:0x40];
    [r21 release];
    if (r22 == -0x1) {
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)isSystemVersionGTorEQ:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 compare:r21 options:0x40];
    [r21 release];
    if (r22 != -0x1) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)isValidOSVersion {
    r0 = [self isSystemVersionGTorEQ:@"6.0"];
    return r0;
}

+(void *)adIdsToJSONString:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = [NSString alloc];
    r21 = [[NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:0x0] retain];
    r20 = [r20 initWithData:r21 encoding:0x4];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end