@implementation ADJRequestHandler

+(void *)handlerWithPackageHandler:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[ADJRequestHandler alloc] initWithPackageHandler:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)sendPackage:(void *)arg2 queueSize:(unsigned long long)arg3 {
    r21 = [arg2 retain];
    r23 = [[self internalQueue] retain];
    var_40 = r21;
    r21 = [r21 retain];
    [ADJUtil launchInQueue:r23 selfInject:self block:&var_60];
    [r23 release];
    [var_40 release];
    [r21 release];
    return;
}

-(void *)initWithPackageHandler:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = dispatch_queue_create("io.adjust.RequestQueue", 0x0);
            [r20 setInternalQueue:r21];
            [r21 release];
            [r20 setPackageHandler:r19];
            r21 = [[ADJAdjustFactory logger] retain];
            [r20 setLogger:r21];
            [r21 release];
            r22 = [[ADJUtil baseUrl] retain];
            r21 = [[NSURL URLWithString:r22] retain];
            [r20 setBaseUrl:r21];
            [r21 release];
            [r22 release];
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)sendI:(void *)arg2 activityPackage:(void *)arg3 queueSize:(unsigned long long)arg4 {
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r24 = [[r22 baseUrl] retain];
    r25 = [[r23 failureMessage] retain];
    var_60 = r23;
    r23 = [r23 retain];
    var_58 = [self retain];
    var_50 = r22;
    r22 = [r22 retain];
    [ADJUtil sendPostRequest:r24 queueSize:arg4 prefixErrorMessage:r25 suffixErrorMessage:@"Will retry later" activityPackage:r23 responseDataHandler:&var_80];
    [r25 release];
    [r24 release];
    [var_50 release];
    [var_58 release];
    [var_60 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)teardown {
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 verbose:@"ADJRequestHandler teardown"];
    [r0 release];
    [self setLogger:0x0];
    [self setBaseUrl:0x0];
    [self setInternalQueue:0x0];
    [self setPackageHandler:0x0];
    return;
}

-(void *)baseUrl {
    r0 = self->_baseUrl;
    return r0;
}

-(void)setBaseUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_baseUrl, arg2);
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)internalQueue {
    r0 = self->_internalQueue;
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void)setInternalQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalQueue, arg2);
    return;
}

-(void *)packageHandler {
    r0 = objc_loadWeakRetained((int64_t *)&self->_packageHandler);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPackageHandler:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_packageHandler, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_packageHandler);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_baseUrl, 0x0);
    return;
}

@end