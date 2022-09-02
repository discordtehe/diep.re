@implementation TJCLog

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    *(int8_t *)(int64_t *)&r0->_internalLogging = 0x0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->_logThreshold = 0x2;
    }
    return r0;
}

+(void)logWithBaseURL:(void *)arg2 path:(void *)arg3 params:(void *)arg4 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r24 = [[r0 createQueryStringFromDict:r25] retain];
    [r25 release];
    r22 = [[NSString stringWithFormat:@"%@%@?%@"] retain];
    [r20 release];
    [r19 release];
    [r24 release];
    [r0 release];
    [r21 release];
    [TJCLog logWithLevel:0x4 format:@"Tapjoy Request: %@"];
    [r22 release];
    return;
}

+(void)setLogThreshold:(int)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 log];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 internalLogging];
    [r0 release];
    [r22 release];
    if ((r24 & 0x1) == 0x0) {
            r0 = [Tapjoy sharedTapjoyConnect];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 log];
            r0 = [r0 retain];
            [r0 setLogThreshold:r19];
            [r0 release];
            [r20 release];
    }
    return;
}

+(void)setPublisherDidEnableLogging:(bool)arg2 {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 log];
    r0 = [r0 retain];
    [r0 setPublisherDidEnableLogging:arg2];
    [r0 release];
    [r20 release];
    return;
}

+(void)enableLogging:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 log] retain];
    [r20 setLogThreshold:r2];
    [r20 release];
    [r19 release];
    return;
}

+(void)logWithLevel:(int)arg2 format:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 log];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 logThreshold];
    [r0 release];
    [r21 release];
    if (r23 >= r20) {
            r0 = [NSString stringWithFormat:r2];
            r0 = [r0 retain];
            NSLogv(r0, r29 + 0x10);
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)clearServerLoggingLevel {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:@"TJC_SERVER_DEBUG_STATE"];
    [r0 release];
    [TJCLog logWithLevel:0x4 format:@"Tapjoy remote device debugging is disabled."];
    return;
}

+(void)setServerLoggingLevel:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[NSMutableString alloc] init];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 log];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 publisherDidEnableLogging];
    [r0 release];
    [r21 release];
    [r20 setString:r2];
    if (r19 == 0x0) goto loc_1009013ac;

loc_10090132c:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == r19) goto loc_1009013a4;

loc_100901354:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
            r22 = [r19 length];
            [r21 release];
            if (r22 == 0x0) {
                    r0 = @class(TJCLog);
            }
            else {
                    r0 = [NSUserDefaults standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 setObject:r19 forKey:@"TJC_SERVER_DEBUG_STATE"];
                    [r0 release];
                    if ([r19 isEqualToString:r2] != 0x0) {
                            [TJCLog setLogThreshold:0x6];
                            r0 = @class(TJCLog);
                    }
                    else {
                            if ([r19 isEqualToString:r2] != 0x0) {
                                    [TJCLog setLogThreshold:0x4];
                                    r0 = @class(TJCLog);
                            }
                            else {
                                    [TJCLog enableLogging:0x0];
                                    r0 = @class(TJCLog);
                            }
                    }
            }
    }
    else {
            [r21 release];
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            [r0 setObject:r19 forKey:@"TJC_SERVER_DEBUG_STATE"];
            [r0 release];
            if ([r19 isEqualToString:r2] != 0x0) {
                    [TJCLog setLogThreshold:0x6];
                    r0 = @class(TJCLog);
            }
            else {
                    if ([r19 isEqualToString:r2] != 0x0) {
                            [TJCLog setLogThreshold:0x4];
                            r0 = @class(TJCLog);
                    }
                    else {
                            [TJCLog enableLogging:0x0];
                            r0 = @class(TJCLog);
                    }
            }
    }
    goto loc_1009014e4;

loc_1009014e4:
    [r0 logWithLevel:r2 format:r3];
    [r20 release];
    [r19 release];
    return;

loc_1009013a4:
    [r21 release];
    goto loc_1009013ac;

loc_1009013ac:
    r0 = @class(TJCLog);
    goto loc_1009014e4;
}

-(int)logThreshold {
    r0 = *(int32_t *)(int64_t *)&self->_logThreshold;
    return r0;
}

-(void)setLogThreshold:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_logThreshold = arg2;
    return;
}

-(bool)internalLogging {
    r0 = *(int8_t *)(int64_t *)&self->_internalLogging;
    return r0;
}

-(void)setInternalLogging:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_internalLogging = arg2;
    return;
}

-(bool)publisherDidEnableLogging {
    r0 = *(int8_t *)(int64_t *)&self->_publisherDidEnableLogging;
    return r0;
}

-(void)setPublisherDidEnableLogging:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_publisherDidEnableLogging = arg2;
    return;
}

@end