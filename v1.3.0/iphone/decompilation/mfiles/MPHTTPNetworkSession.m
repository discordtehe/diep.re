@implementation MPHTTPNetworkSession

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8420 != -0x1) {
            dispatch_once(0x1011d8420, &var_28);
    }
    r0 = *0x1011d8428;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setSessionData:(void *)arg2 forTask:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self sessionsQueue] retain];
    var_30 = r19;
    [r19 retain];
    [r21 retain];
    dispatch_barrier_sync(r22, &var_58);
    [r22 release];
    [r21 release];
    [var_30 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[NSURLSessionConfiguration defaultSessionConfiguration] retain];
            r0 = [NSURLSession sessionWithConfiguration:r21 delegate:r19 delegateQueue:0x0];
            r0 = [r0 retain];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            [r21 release];
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.mopub.mopub-ios-sdk.mphttpnetworksession.queue", *__dispatch_queue_attr_concurrent);
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)sessionDataForTask:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self sessionsQueue] retain];
    var_60 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_88);
    [r21 release];
    [*(&var_50 + 0x28) retain];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)startTaskWithHttpRequest:(void *)arg2 {
    r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:arg2 responseHandler:0x0 errorHandler:0x0 shouldRedirectWithNewRequest:0x0];
    return r0;
}

-(void)appendData:(void *)arg2 toSessionDataForTask:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r22 = [[r21 sessionsQueue] retain];
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_barrier_sync(r22, &var_58);
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)taskWithHttpRequest:(void *)arg2 responseHandler:(void *)arg3 errorHandler:(void *)arg4 shouldRedirectWithNewRequest:(void *)arg5 {
    r24 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = @class(MPHTTPNetworkSession);
    r22 = [arg5 retain];
    r0 = [r23 sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 sharedSession];
    r0 = [r0 retain];
    r23 = [[r0 dataTaskWithRequest:r24] retain];
    [r24 release];
    [r0 release];
    [r25 release];
    r24 = [objc_alloc() initWithResponseHandler:r19 errorHandler:r21 shouldRedirectWithNewRequest:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = @class(MPHTTPNetworkSession);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 setSessionData:r24 forTask:r23];
    [r0 release];
    [r24 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)startTaskWithHttpRequest:(void *)arg2 responseHandler:(void *)arg3 errorHandler:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[MPHTTPNetworkSession startTaskWithHttpRequest:r21 responseHandler:r20 errorHandler:arg4 shouldRedirectWithNewRequest:0x0] retain];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)startTaskWithHttpRequest:(void *)arg2 responseHandler:(void *)arg3 errorHandler:(void *)arg4 shouldRedirectWithNewRequest:(void *)arg5 {
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    var_48 = r22;
    r22 = [r22 retain];
    var_70 = r21;
    r21 = [r21 retain];
    r0 = [MPHTTPNetworkSession taskWithHttpRequest:r19 responseHandler:&var_68 errorHandler:&var_90 shouldRedirectWithNewRequest:r20];
    r23 = [r0 retain];
    [r20 release];
    [r19 release];
    [r23 resume];
    [var_70 release];
    [var_48 release];
    [r21 release];
    [r22 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveResponse:(void *)arg4 completionHandler:(void *)arg5 {
    r2 = *(arg5 + 0x10);
    (r2)(arg5, 0x1, r2, arg3, arg4, arg5);
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
    r21 = [arg3 retain];
    [self appendData:arg4 toSessionDataForTask:r21];
    [r21 release];
    return;
}

-(void *)sharedSession {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setSharedSession:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 willPerformHTTPRedirection:(void *)arg4 newRequest:(void *)arg5 completionHandler:(void *)arg6 {
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
    r19 = [arg3 retain];
    r20 = [arg5 retain];
    r21 = [arg6 retain];
    r0 = [self sessionDataForTask:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_1004e15e8;

loc_1004e154c:
    r23 = [r20 retain];
    r0 = [r22 shouldRedirectWithNewRequest];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_1004e15c4;

loc_1004e157c:
    r0 = [r22 shouldRedirectWithNewRequest];
    r0 = [r0 retain];
    r26 = (*(r0 + 0x10))();
    [r0 release];
    [r24 release];
    if ((r26 & 0x1) != 0x0) goto loc_1004e15cc;

loc_1004e15bc:
    r24 = r23;
    r23 = 0x0;
    goto loc_1004e15c4;

loc_1004e15c4:
    [r24 release];
    goto loc_1004e15cc;

loc_1004e15cc:
    (*(r21 + 0x10))(r21, r23);
    [r23 release];
    goto loc_1004e15f8;

loc_1004e15f8:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1004e15e8:
    (*(r21 + 0x10))(r21, r20);
    goto loc_1004e15f8;
}

-(void *)sessions {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)sessionsQueue {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setSessions:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r24 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r24 sessionDataForTask:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1004e19a8;

loc_1004e168c:
    [r24 setSessionData:0x0 forTask:r19];
    if (r20 == 0x0) goto loc_1004e1758;

loc_1004e16a8:
    r23 = [[MPLogEvent error:r20 message:0x0] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r24 class]];
    [r23 release];
    r0 = [r21 errorHandler];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_1004e19a0;

loc_1004e1730:
    r0 = [r21 errorHandler];
    r0 = [r0 retain];
    r23 = r0;
    (*(r0 + 0x10))();
    goto loc_1004e1998;

loc_1004e1998:
    [r23 release];
    goto loc_1004e19a0;

loc_1004e19a0:
    [r22 release];
    goto loc_1004e19a8;

loc_1004e19a8:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1004e1758:
    r0 = [r19 response];
    r29 = r29;
    r23 = [r0 retain];
    [NSHTTPURLResponse class];
    if (([r23 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1004e18b4;

loc_1004e17a8:
    r0 = [r19 response];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) goto loc_1004e18c0;

loc_1004e17cc:
    if ([r22 statusCode] < 0x190) goto loc_1004e19d8;

loc_1004e17e8:
    r23 = [[NSError networkErrorWithHTTPStatusCode:[r22 statusCode]] retain];
    r27 = [[MPLogEvent error:r23 message:0x0] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r24 class]];
    [r27 release];
    r0 = [r21 errorHandler];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_1004e1990;

loc_1004e18a0:
    r0 = [r21 errorHandler];
    goto loc_1004e1974;

loc_1004e1974:
    r0 = [r0 retain];
    r25 = r0;
    (*(r0 + 0x10))();
    goto loc_1004e1988;

loc_1004e1988:
    [r25 release];
    goto loc_1004e1990;

loc_1004e1990:
    [r24 release];
    goto loc_1004e1998;

loc_1004e19d8:
    r0 = [r21 responseData];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004e1a6c;

loc_1004e1a00:
    r0 = [r21 responseHandler];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_1004e1998;

loc_1004e1a24:
    r24 = [[r21 responseHandler] retain];
    r25 = [[r21 responseData] retain];
    (*(r24 + 0x10))(r24, r25, r22);
    goto loc_1004e1988;

loc_1004e1a6c:
    r23 = [[NSError networkResponseContainedNoData] retain];
    r27 = [[MPLogEvent error:r23 message:0x0] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r24 class]];
    [r27 release];
    r0 = [r21 errorHandler];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_1004e1990;

loc_1004e1b10:
    r0 = [r21 errorHandler];
    goto loc_1004e1974;

loc_1004e18c0:
    r23 = [[NSError networkResponseIsNotHTTP] retain];
    r27 = [[MPLogEvent error:r23 message:0x0] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r24 class]];
    [r27 release];
    r0 = [r21 errorHandler];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_1004e1990;

loc_1004e1964:
    r0 = [r21 errorHandler];
    goto loc_1004e1974;

loc_1004e18b4:
    [r23 release];
    r22 = 0x0;
    goto loc_1004e18c0;
}

-(void)setSessionsQueue:(void *)arg2 {
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