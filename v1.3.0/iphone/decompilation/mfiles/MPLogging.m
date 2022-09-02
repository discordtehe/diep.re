@implementation MPLogging

+(unsigned long long)consoleLogLevel {
    r0 = [MPLogManager sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 consoleLogLevel];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)setConsoleLogLevel:(unsigned long long)arg2 {
    r0 = [MPLogManager sharedInstance];
    r0 = [r0 retain];
    [r0 setConsoleLogLevel:arg2];
    [r0 release];
    return;
}

+(void)addLogger:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [MPLogManager sharedInstance];
    r0 = [r0 retain];
    [r0 addLogger:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)removeLogger:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [MPLogManager sharedInstance];
    r0 = [r0 retain];
    [r0 removeLogger:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)logEvent:(void *)arg2 source:(void *)arg3 fromClass:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    if (r21 != 0x0) {
            r0 = NSStringFromClass(r21);
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = @"";
    }
    r0 = [MPLogManager sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r20 source:r19 fromClass:r21];
    [r20 release];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

@end