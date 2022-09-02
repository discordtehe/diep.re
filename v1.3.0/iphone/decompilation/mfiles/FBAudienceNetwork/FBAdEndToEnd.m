@implementation FBAdEndToEnd

+(bool)isRunningEndToEndTest {
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 environment];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"IS_TESTING"] retain];
    [r0 release];
    [r19 release];
    r19 = [r21 boolValue];
    [r21 release];
    r0 = r19;
    return r0;
}

+(void *)getArg:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([self isRunningEndToEndTest] != 0x0) {
            r0 = [r19 uppercaseString];
            r0 = [r0 retain];
            r22 = [[NSString stringWithFormat:@"%@%@"] retain];
            [r0 release];
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 environment];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:r22] retain];
            [r0 release];
            [r21 release];
            [r22 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)isEnabled:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getArg:arg2];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

@end