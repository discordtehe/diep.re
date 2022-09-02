@implementation ISLoggerManager

+(void *)sharedInstance {
    if (*qword_1011dac80 != -0x1) {
            dispatch_once(0x1011dac80, 0x100e8cc70);
    }
    r0 = *0x1011dac78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)log:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [r20 logInternal:r19 level:arg3 tag:arg4];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [ISConsoleLogger alloc];
            r0 = [r0 initWithLevel:0x3];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_consoleLogger));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_publisherLogger));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)logFromError:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r23 = [[r19 description] retain];
    [r20 logInternal:r23 level:arg3 tag:arg4];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)logFromException:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r23 = [[r20 getStringFromException:r19 message:@""] retain];
    [r20 logInternal:r23 level:arg3 tag:arg4];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)logFromException:(void *)arg2 message:(void *)arg3 level:(int)arg4 tag:(int)arg5 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r24 = [[r21 getStringFromException:r19 message:r20] retain];
    [r21 logInternal:r24 level:arg4 tag:arg5];
    [r24 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addPublisherLogger:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [ISPublisherLogger alloc];
    r0 = [r0 initWithDelegate:r19 level:0x1];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_publisherLogger));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)addServerLogger:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0) {
            r0 = [ISServerLogger alloc];
            r0 = [r0 initWithLevel:0xffffffffffffffff queue:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serverLogger));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)setLoggingLevels:(long long)arg2 publisher:(long long)arg3 console:(long long)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = arg2;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19->_consoleLogger setLogLevel:arg4];
    r0 = r19->_publisherLogger;
    if (r0 != 0x0) {
            [r0 setLogLevel:r22];
    }
    r0 = r19->_serverLogger;
    if (r0 != 0x0) {
            [r0 setLogLevel:r20];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)logInternal:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    r19 = [arg2 retain];
    [self singleLoggerLog:self->_consoleLogger message:r19 level:arg3 tag:arg4];
    [self singleLoggerLog:self->_publisherLogger message:r19 level:arg3 tag:arg4];
    [self singleLoggerLog:self->_serverLogger message:r19 level:arg3 tag:arg4];
    [r19 release];
    return;
}

-(void)singleLoggerLog:(void *)arg2 message:(void *)arg3 level:(int)arg4 tag:(int)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r21 = arg4;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    if (r19 != 0x0 && [r19 getLogLevel] != -0x1) {
            if ([r19 getLogLevel] <= r21) {
                    [r19 log:r22 level:r21 tag:r20];
            }
    }
    [r22 release];
    [r19 release];
    return;
}

-(void *)getStringFromException:(void *)arg2 message:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[arg2 name] retain];
    r24 = [[arg2 reason] retain];
    r21 = [[arg2 userInfo] retain];
    [r22 release];
    r22 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r21 release];
    [r24 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_serverLogger, 0x0);
    objc_storeStrong((int64_t *)&self->_publisherLogger, 0x0);
    objc_storeStrong((int64_t *)&self->_consoleLogger, 0x0);
    return;
}

@end