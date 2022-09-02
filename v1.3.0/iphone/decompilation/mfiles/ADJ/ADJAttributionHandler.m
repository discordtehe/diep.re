@implementation ADJAttributionHandler

+(void *)handlerWithActivityHandler:(void *)arg2 withAttributionPackage:(void *)arg3 startsSending:(bool)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[ADJAttributionHandler alloc] initWithActivityHandler:r21 withAttributionPackage:r20 startsSending:arg4];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithActivityHandler:(void *)arg2 withAttributionPackage:(void *)arg3 startsSending:(bool)arg4 {
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
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r23 = dispatch_queue_create("com.adjust.AttributionQueue", 0x0);
            [r21 setInternalQueue:r23];
            [r23 release];
            [r21 setActivityHandler:r19];
            r23 = [[ADJAdjustFactory logger] retain];
            [r21 setLogger:r23];
            [r23 release];
            [r21 setAttributionPackage:r20];
            [r21 setPaused:r22 ^ 0x1];
            objc_initWeak(&stack[-88], r21);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            r24 = [[r21 internalQueue] retain];
            r0 = [ADJTimerOnce timerWithBlock:&var_70 queue:r24 name:@"Attribution timer"];
            r23 = [r0 retain];
            [r21 setAttributionTimer:r23];
            [r23 release];
            [r24 release];
            r23 = [r21 retain];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    else {
            r23 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r23;
    return r0;
}

-(void)checkSessionResponse:(void *)arg2 {
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

-(void)checkSdkClickResponse:(void *)arg2 {
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

-(void)checkAttributionResponse:(void *)arg2 {
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

-(void)getAttribution {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8afd0];
    [r21 release];
    return;
}

-(void)resumeSending {
    [self setPaused:0x0];
    return;
}

-(void)pauseSending {
    [self setPaused:0x1];
    return;
}

-(void)checkSdkClickResponseI:(void *)arg2 sdkClickResponseData:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    [arg2 checkAttributionI:r21 responseData:arg3];
    r19 = [arg2 activityHandler];
    [r21 release];
    r0 = [r19 retain];
    [r0 launchSdkClickResponseTasks:r23];
    [r23 release];
    [r0 release];
    return;
}

-(void)checkSessionResponseI:(void *)arg2 sessionResponseData:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    [arg2 checkAttributionI:r21 responseData:arg3];
    r19 = [arg2 activityHandler];
    [r21 release];
    r0 = [r19 retain];
    [r0 launchSessionResponseTasks:r23];
    [r23 release];
    [r0 release];
    return;
}

-(void)checkAttributionResponseI:(void *)arg2 attributionResponseData:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    [arg2 checkAttributionI:r21 responseData:arg3];
    [arg2 checkDeeplinkI:r21 attributionResponseData:r23];
    r19 = [arg2 activityHandler];
    [r21 release];
    r0 = [r19 retain];
    [r0 launchAttributionResponseTasks:r23];
    [r23 release];
    [r0 release];
    return;
}

-(void)checkAttributionI:(void *)arg2 responseData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 jsonResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 jsonResponse];
            r0 = [r0 retain];
            r21 = [[r0 objectForKey:@"ask_in"] retain];
            [r0 release];
            r0 = [r19 activityHandler];
            r29 = r29;
            r24 = [r0 retain];
            if (r21 != 0x0) {
                    [r24 setAskingAttribution:r2];
                    [r24 release];
                    [r19 waitRequestAttributionWithDelayI:r19 milliSecondsDelay:[r21 intValue]];
            }
            else {
                    [r24 setAskingAttribution:r2];
                    [r24 release];
                    r0 = [r20 jsonResponse];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKey:@"attribution"] retain];
                    [r0 release];
                    r24 = [[r20 adid] retain];
                    r22 = [[ADJAttribution dataWithJsonDict:r23 adid:r24] retain];
                    [r20 setAttribution:r22];
                    [r22 release];
                    [r24 release];
                    [r23 release];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)checkDeeplinkI:(void *)arg2 attributionResponseData:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 jsonResponse];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 jsonResponse];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r22 release];
            if (r20 != 0x0) {
                    r0 = [r20 objectForKey:r2];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r22 = [[NSURL URLWithString:r21] retain];
                            [r19 setDeeplink:r22];
                            [r22 release];
                    }
                    [r21 release];
            }
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)requestAttributionI:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [r0 paused];
    r0 = [r19 logger];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            [r21 debug:@"Attribution handler is paused"];
            r0 = r21;
    }
    else {
            r0 = [r19 attributionPackage];
            r0 = [r0 retain];
            r23 = [[r0 extendedString] retain];
            [r21 verbose:@"%@"];
            [r23 release];
            [r0 release];
            [r21 release];
            r22 = [[r19 requestI:r19] retain];
            r20 = [[r19 attributionPackage] retain];
            var_38 = [r19 retain];
            [ADJUtil sendRequest:r22 prefixErrorMessage:@"Failed to get attribution" activityPackage:r20 responseDataHandler:&var_58];
            [r20 release];
            [r22 release];
            r0 = var_38;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)requestI:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[arg2 urlI:r22] retain];
    r19 = [[NSMutableURLRequest requestWithURL:r21] retain];
    [r21 release];
    [r19 setTimeoutInterval:r21];
    [r19 setHTTPMethod:@"GET"];
    r20 = [arg2 attributionPackage];
    [r22 release];
    r0 = [r20 retain];
    r21 = [[r0 clientSdk] retain];
    [r19 setValue:r21 forHTTPHeaderField:@"Client-Sdk"];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)waitRequestAttributionWithDelayI:(void *)arg2 milliSecondsDelay:(int)arg3 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    asm { smull      x8, w20, w8 };
    asm { scvtf      d8, w8 };
    r0 = [r0 attributionTimer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 fireIn];
    [r0 release];
    if (d9 <= d8) {
            if (r20 >= 0x1) {
                    r0 = [r19 logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 debug:@"Waiting to query attribution in %d milliseconds"];
                    [r0 release];
            }
            r0 = [r19 attributionTimer];
            r0 = [r0 retain];
            [r0 startIn:r2];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)urlI:(void *)arg2 {
    r19 = @class(ADJUtil);
    r22 = [arg2 retain];
    r0 = [arg2 attributionPackage];
    r0 = [r0 retain];
    r24 = [[r0 parameters] retain];
    r19 = [[r19 queryString:r24] retain];
    [r24 release];
    [r0 release];
    r20 = [arg2 attributionPackage];
    [r22 release];
    r0 = [r20 retain];
    r22 = [[r0 path] retain];
    r20 = [[NSString stringWithFormat:@"%@?%@"] retain];
    [r22 release];
    [r0 release];
    r21 = @class(NSURL);
    r22 = [[ADJUtil baseUrl] retain];
    r21 = [[r21 URLWithString:r22] retain];
    [r22 release];
    r22 = [[NSURL URLWithString:r20 relativeToURL:r21] retain];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
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
    [r0 verbose:@"ADJAttributionHandler teardown"];
    [r0 release];
    r0 = [r19 attributionTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 attributionTimer];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
    }
    [r19 setInternalQueue:0x0];
    [r19 setActivityHandler:0x0];
    [r19 setLogger:0x0];
    [r19 setAttributionTimer:0x0];
    [r19 setAttributionPackage:0x0];
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

-(void *)activityHandler {
    r0 = objc_loadWeakRetained((int64_t *)&self->_activityHandler);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setActivityHandler:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_activityHandler, arg2);
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void *)attributionTimer {
    r0 = self->_attributionTimer;
    return r0;
}

-(void)setAttributionTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attributionTimer, arg2);
    return;
}

-(void *)attributionPackage {
    r0 = self->_attributionPackage;
    return r0;
}

-(void)setAttributionPackage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attributionPackage, arg2);
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_attributionPackage, 0x0);
    objc_storeStrong((int64_t *)&self->_attributionTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_destroyWeak((int64_t *)&self->_activityHandler);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    return;
}

@end