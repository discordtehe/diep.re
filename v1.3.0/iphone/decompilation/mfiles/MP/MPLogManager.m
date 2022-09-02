@implementation MPLogManager

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d84a8 != -0x1) {
            dispatch_once(0x1011d84a8, &var_28);
    }
    r0 = *0x1011d84b0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            r0 = [NSMutableArray arrayWithObject:*(r19 + 0x8)];
            r0 = [r0 retain];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.mopub-ios-sdk.queue", 0x0);
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(unsigned long long)consoleLogLevel {
    r0 = [self consoleLogger];
    r0 = [r0 retain];
    r20 = [r0 logLevel];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setConsoleLogLevel:(unsigned long long)arg2 {
    r0 = [self consoleLogger];
    r0 = [r0 retain];
    [r0 setLogLevel:arg2];
    [r0 release];
    return;
}

-(void)addLogger:(void *)arg2 {
    [arg2 retain];
    r0 = [self loggers];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)removeLogger:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self loggers];
    r0 = [r0 retain];
    [r0 removeObject:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)logMessage:(void *)arg2 atLogLevel:(unsigned long long)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (*0x1011d84b8 == 0x0) {
            r0 = [MPIdentityProvider identifier];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 copy];
            r8 = *0x1011d84b8;
            *0x1011d84b8 = r0;
            [r8 release];
            [r22 release];
    }
    if (*0x1011d84c0 == 0x0) {
            r0 = [MPIdentityProvider obfuscatedIdentifier];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 copy];
            r8 = *0x1011d84c0;
            *0x1011d84c0 = r0;
            [r8 release];
            [r22 release];
            r3 = *0x1011d84c0;
    }
    [[r19 stringByReplacingOccurrencesOfString:*0x1011d84b8 withString:r3] retain];
    objc_initWeak(&stack[-72], r21);
    [[r21 queue] retain];
    objc_copyWeak(&var_70 + 0x28, &stack[-72]);
    [r22 retain];
    dispatch_async(r23, &var_70);
    [r23 release];
    [r22 release];
    [r20 release];
    objc_destroyWeak(&var_70 + 0x28);
    objc_destroyWeak(&stack[-72]);
    [r19 release];
    return;
}

-(void)logEvent:(void *)arg2 source:(void *)arg3 fromClass:(void *)arg4 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r23 = [r0 retain];
    }
    else {
            r23 = [r21 retain];
    }
    r24 = @selector(stringWithFormat:);
    r26 = [[r22 message] retain];
    r24 = [objc_msgSend(@class(NSString), r24) retain];
    [r26 release];
    r25 = [r22 logLevel];
    [r22 release];
    [r20 logMessage:r24 atLogLevel:r25];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)consoleLogger {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)loggers {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setConsoleLogger:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)setLoggers:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)queue {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end