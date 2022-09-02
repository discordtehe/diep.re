@implementation ADCLoggingAPI

-(void)logPublicError:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPublicWarn:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPublicInfo:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x2 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPrivateError:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPublicTrace:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x3 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPrivateWarn:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x1 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPrivateInfo:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logPrivateTrace:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"message"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:@"message"] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x3 withFormat:@"%@"];
            [r23 release];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCLoggingAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPublicError:) forMessageType:@"Log.public.error"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPublicWarn:) forMessageType:@"Log.public.warning"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPublicInfo:) forMessageType:@"Log.public.info"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPublicTrace:) forMessageType:@"Log.public.trace"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPrivateError:) forMessageType:@"Log.private.error"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPrivateWarn:) forMessageType:@"Log.private.warning"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPrivateInfo:) forMessageType:@"Log.private.info"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(logPrivateTrace:) forMessageType:@"Log.private.trace"];
    [r0 release];
    [r19 release];
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

@end