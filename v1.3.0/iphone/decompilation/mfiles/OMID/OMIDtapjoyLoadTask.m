@implementation OMIDtapjoyLoadTask

+(void *)sharedSession {
    if (*qword_1011dc288 != -0x1) {
            dispatch_once(0x1011dc288, 0x100ea3778);
    }
    r0 = *0x1011dc290;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)taskToLoadStringFromURL:(void *)arg2 attemptsCount:(unsigned long long)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [[self taskToLoadStringFromURL:r22 attemptsCount:arg3 completionQueue:*__dispatch_main_q completionHandler:r19] retain];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)taskToLoadStringFromURL:(void *)arg2 attemptsCount:(unsigned long long)arg3 completionQueue:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg2 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r21 = [[OMIDtapjoyLoadTask alloc] initWithURL:r22 attemptsCount:arg3 completionQueue:r20];
    [r20 release];
    [r22 release];
    [r21 setCompletionHandler:r19];
    [r19 release];
    [r21 setResponseParser:0x100ea37b8];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)taskToSendPingToURL:(void *)arg2 completionQueue:(void *)arg3 completionHandler:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[OMIDtapjoyLoadTask alloc] initWithURL:r21 attemptsCount:0x1 completionQueue:r20];
    [r20 release];
    [r21 release];
    [r22 setCompletionHandler:r19];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 attemptsCount:(unsigned long long)arg3 completionQueue:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r22 = [r20 retain];
    r0 = [[&var_40 super] init];
    r24 = r0;
    if (r24 != 0x0) {
            objc_storeStrong((int64_t *)&r24->_url, r23);
            r24->_attemptsCount = r21;
            objc_storeStrong((int64_t *)&r24->_completionQueue, r20);
    }
    [r22 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)start {
    r0 = [OMIDtapjoyLoadTask sharedSession];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 dataTaskWithURL:self->_url completionHandler:&var_38];
    r19 = [r0 retain];
    [r20 release];
    [r19 resume];
    [r19 release];
    return;
}

-(void)handleResponseWithData:(void *)arg2 error:(void *)arg3 {
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
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_attemptNumber));
    r8 = *(r21 + r9);
    r8 = r8 + 0x1;
    *(r21 + r9) = r8;
    if (r20 == 0x0) goto loc_100969db4;

loc_100969d8c:
    if (r8 >= r21->_attemptsCount) goto loc_100969de0;

loc_100969da0:
    [r21 start];
    goto loc_100969e64;

loc_100969e64:
    [r20 release];
    [r19 release];
    return;

loc_100969de0:
    r1 = 0x0;
    r0 = [r1 retain];
    goto loc_100969dec;

loc_100969dec:
    r22 = r21->_completionQueue;
    [r0 retain];
    var_28 = [r20 retain];
    dispatch_async(r22, &var_58);
    [var_28 release];
    [r0 release];
    [r21 release];
    goto loc_100969e64;

loc_100969db4:
    r0 = r21->_responseParser;
    r1 = r19;
    if (r0 != 0x0) {
            r0 = (*(r0 + 0x10))();
            r0 = [r0 retain];
    }
    else {
            r0 = [r1 retain];
    }
    goto loc_100969dec;
}

-(void *)url {
    r0 = self->_url;
    return r0;
}

-(unsigned long long)attemptsCount {
    r0 = self->_attemptsCount;
    return r0;
}

-(unsigned long long)attemptNumber {
    r0 = self->_attemptNumber;
    return r0;
}

-(void *)completionQueue {
    r0 = self->_completionQueue;
    return r0;
}

-(void *)responseParser {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_responseParser)), 0x0);
    return r0;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setResponseParser:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_responseParser, 0x0);
    objc_storeStrong((int64_t *)&self->_completionQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

@end