@implementation GADOMIDLoadTask

+(void *)sharedSession {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_storeStrong(&var_10, 0x100ea0470);
    if (*0x1011dc000 != -0x1) {
            dispatch_once(0x1011dc000, var_10);
    }
    objc_storeStrong(&var_10, 0x0);
    r0 = *qword_1011dc008;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)taskToLoadStringFromURL:(void *)arg2 attemptsCount:(unsigned long long)arg3 completionHandler:(void *)arg4 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x28, arg4);
    var_70 = [objc_retainAutoreleaseReturnValue(*__dispatch_main_q) retain];
    var_78 = [[self taskToLoadStringFromURL:0x0 attemptsCount:arg3 completionQueue:var_70 completionHandler:0x0] retain];
    [var_70 release];
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_78 autorelease];
    return r0;
}

+(void *)taskToLoadStringFromURL:(void *)arg2 attemptsCount:(unsigned long long)arg3 completionQueue:(void *)arg4 completionHandler:(void *)arg5 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x28, arg4);
    objc_storeStrong(&saved_fp - 0x30, arg5);
    var_38 = [[GADOMIDLoadTask alloc] initWithURL:0x0 attemptsCount:arg3 completionQueue:0x0];
    [var_38 setCompletionHandler:0x0];
    [var_38 setResponseParser:0x100ea04b0];
    var_78 = [var_38 retain];
    objc_storeStrong(&saved_fp - 0x38, 0x0);
    objc_storeStrong(&saved_fp - 0x30, 0x0);
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_78 autorelease];
    return r0;
}

+(void *)taskToSendPingToURL:(void *)arg2 completionQueue:(void *)arg3 completionHandler:(void *)arg4 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    objc_storeStrong(&saved_fp - 0x28, arg4);
    var_30 = [[GADOMIDLoadTask alloc] initWithURL:0x0 attemptsCount:0x1 completionQueue:0x0];
    [var_30 setCompletionHandler:0x0];
    var_68 = [var_30 retain];
    objc_storeStrong(&saved_fp - 0x30, 0x0);
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_68 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 attemptsCount:(unsigned long long)arg3 completionQueue:(void *)arg4 {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    var_20 = arg3;
    objc_storeStrong(r29 - 0x28, arg4);
    r0 = [[&var_38 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            objc_storeStrong((int64_t *)&var_8->_url, 0x0);
            var_8->_attemptsCount = var_20;
            objc_storeStrong((int64_t *)&var_8->_completionQueue, 0x0);
    }
    var_58 = [var_8 retain];
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_58;
    return r0;
}

-(void)start {
    r0 = [GADOMIDLoadTask sharedSession];
    r0 = [r0 retain];
    var_58 = self->_url;
    [self retain];
    var_18 = [[r0 dataTaskWithURL:var_58 completionHandler:&var_40] retain];
    [r0 release];
    [var_18 resume];
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    objc_storeStrong(&var_40 + 0x20, 0x0);
    return;
}

-(void)handleResponseWithData:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0xd0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, arg2);
    objc_storeStrong(r29 - 0x20, arg3);
    var_8->_attemptNumber = var_8->_attemptNumber + 0x1;
    if (0x0 != 0x0 && var_8->_attemptNumber < var_8->_attemptsCount) {
            [var_8 start];
            var_24 = 0x1;
    }
    else {
            var_39 = 0x0;
            if (0x0 != 0x0) {
                    var_88 = 0x0;
            }
            else {
                    if (var_8->_responseParser != 0x0) {
                            r8 = var_8->_responseParser;
                            r0 = (*(r8 + 0x10))(r8, 0x0);
                            r29 = r29;
                            r0 = [r0 retain];
                            var_38 = r0;
                            var_39 = 0x1;
                            var_90 = r0;
                    }
                    else {
                            var_90 = 0x0;
                    }
                    var_88 = var_90;
            }
            var_30 = [var_88 retain];
            if ((var_39 & 0x1 & 0x1) != 0x0) {
                    [var_38 release];
            }
            var_A8 = var_8->_completionQueue;
            [var_8 retain];
            [var_30 retain];
            [0x0 retain];
            dispatch_async(var_A8, &var_78);
            objc_storeStrong(&var_78 + 0x30, 0x0);
            objc_storeStrong(&var_78 + 0x28, 0x0);
            objc_storeStrong(&var_78 + 0x20, 0x0);
            objc_storeStrong(r29 - 0x30, 0x0);
            var_24 = 0x0;
    }
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = objc_storeStrong(r29 - 0x18, 0x0);
    r8 = var_24 - 0x1;
    if (r8 > 0x0) {
            var_E8 = r0;
            r0 = [*(r0 + 0x20) completionHandler];
            r0 = [r0 retain];
            (*(r0 + 0x10))(r0, *(var_E8 + 0x28), *(var_E8 + 0x30));
            [r1 release];
    }
    return;
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

-(void)setResponseParser:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
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