@implementation ADJSdkClickHandler

+(void *)handlerWithActivityHandler:(void *)arg2 startsSending:(bool)arg3 {
    r22 = [arg2 retain];
    r19 = [[ADJSdkClickHandler alloc] initWithActivityHandler:r22 startsSending:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithActivityHandler:(void *)arg2 startsSending:(bool)arg3 {
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
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = dispatch_queue_create("com.adjust.SdkClickQueue", 0x0);
            [r20 setInternalQueue:r22];
            [r22 release];
            r22 = [[ADJAdjustFactory logger] retain];
            [r20 setLogger:r22];
            [r22 release];
            r23 = [[r20 internalQueue] retain];
            var_50 = [r19 retain];
            [ADJUtil launchInQueue:r23 selfInject:r20 block:&var_70];
            [r23 release];
            r21 = [r20 retain];
            [var_50 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)pauseSending {
    [self setPaused:0x1];
    return;
}

-(void)resumeSending {
    [self setPaused:0x0];
    [self sendNextSdkClick];
    return;
}

-(void)sendSdkClick:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)sendNextSdkClick {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8b100];
    [r21 release];
    return;
}

-(void)initI:(void *)arg2 activityHandler:(void *)arg3 startsSending:(bool)arg4 {
    r19 = [arg2 retain];
    [arg2 setActivityHandler:arg3];
    [arg2 setPaused:arg4 ^ 0x1];
    r21 = [[ADJAdjustFactory sdkClickHandlerBackoffStrategy] retain];
    [arg2 setBackoffStrategy:r21];
    [r21 release];
    r21 = [[NSMutableArray array] retain];
    [arg2 setPackageQueue:r21];
    [r21 release];
    r22 = [[ADJUtil baseUrl] retain];
    r21 = [[NSURL URLWithString:r22] retain];
    [arg2 setBaseUrl:r21];
    [r19 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)teardown {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 verbose:@"ADJSdkClickHandler teardown"];
    [r0 release];
    r0 = [r19 packageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 packageQueue];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r20 release];
    }
    [r19 setInternalQueue:0x0];
    [r19 setLogger:0x0];
    [r19 setBackoffStrategy:0x0];
    [r19 setPackageQueue:0x0];
    [r19 setBaseUrl:0x0];
    [r19 setActivityHandler:0x0];
    return;
}

-(void)sendSdkClickI:(void *)arg2 sdkClickPackage:(void *)arg3 {
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [arg2 packageQueue];
    r0 = [r0 retain];
    [r0 addObject:arg3];
    [r0 release];
    r25 = [[arg2 logger] retain];
    r0 = [arg2 packageQueue];
    r0 = [r0 retain];
    [r0 count];
    [r25 debug:@"Added sdk_click %d"];
    [r0 release];
    [r25 release];
    r23 = [[arg2 logger] retain];
    r21 = [arg3 extendedString];
    [r22 release];
    r21 = [r21 retain];
    [r23 verbose:@"%@"];
    [r21 release];
    [r23 release];
    [arg2 sendNextSdkClick];
    [r20 release];
    return;
}

-(void)sendNextSdkClickI:(void *)arg2 {
    r31 = r31 - 0xb0;
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 paused] & 0x1) == 0x0) {
            r0 = [r19 packageQueue];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 count];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r21 packageQueue];
                    r0 = [r0 retain];
                    r20 = [[r0 objectAtIndex:0x0] retain];
                    [r0 release];
                    r0 = [r21 packageQueue];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 removeObjectAtIndex:0x0];
                    [r0 release];
                    [ADJActivityPackage class];
                    if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
                            var_68 = [r19 retain];
                            r23 = [r20 retain];
                            var_60 = r23;
                            r0 = objc_retainBlock(&var_88);
                            r22 = r0;
                            r23 = [r23 retries];
                            if (r23 > 0x0) {
                                    r24 = @class(ADJUtil);
                                    r25 = [[r21 backoffStrategy] retain];
                                    [r24 waitingTime:r23 backoffStrategy:r25];
                                    [r25 release];
                                    [[ADJUtil secondsNumberFormat:r23] retain];
                                    r0 = [r21 logger];
                                    r0 = [r0 retain];
                                    [r0 verbose:r2];
                                    [r25 release];
                                    asm { fcvtzs     x1, d0 };
                                    dispatch_after(dispatch_time(0x0, r1), [[r21 internalQueue] retain], r22);
                                    [r21 release];
                                    [r24 release];
                            }
                            else {
                                    (*(r22 + 0x10))(r22);
                            }
                            [r22 release];
                            [var_60 release];
                            [var_68 release];
                    }
                    else {
                            r0 = [r19 logger];
                            r0 = [r0 retain];
                            [r0 error:@"Failed to read sdk_click package"];
                            [r0 release];
                            [r19 sendNextSdkClick];
                    }
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void *)internalQueue {
    r0 = self->_internalQueue;
    return r0;
}

-(void)setInternalQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalQueue, arg2);
    return;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)backoffStrategy {
    r0 = self->_backoffStrategy;
    return r0;
}

-(void)setBackoffStrategy:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backoffStrategy, arg2);
    return;
}

-(bool)paused {
    r0 = *(int8_t *)(int64_t *)&self->_paused;
    return r0;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(void *)packageQueue {
    r0 = self->_packageQueue;
    return r0;
}

-(void)setPackageQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_packageQueue, arg2);
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

-(void *)activityHandler {
    r0 = objc_loadWeakRetained((int64_t *)&self->_activityHandler);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setActivityHandler:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_activityHandler, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_activityHandler);
    objc_storeStrong((int64_t *)&self->_baseUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_packageQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_backoffStrategy, 0x0);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    return;
}

@end