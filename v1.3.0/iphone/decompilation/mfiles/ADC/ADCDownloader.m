@implementation ADCDownloader

-(void *)initWithRequest:(void *)arg2 httpSession:(void *)arg3 destination:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0xa0;
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
    r24 = arg4;
    r25 = arg2;
    r19 = [r25 retain];
    r20 = [arg3 retain];
    r21 = [r24 retain];
    r23 = [arg5 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_request, r25);
            objc_storeStrong((int64_t *)&r22->_destination, r24);
            r0 = [r23 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r22);
            [r22 retain];
            objc_copyWeak(&var_88 + 0x28, &stack[-104]);
            r0 = [r20 downloadTaskWithRequest:r19 completionHandler:&var_88];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_downloadTask));
            r8 = *(r25 + r9);
            *(r25 + r9) = r0;
            [r8 release];
            objc_destroyWeak(&var_88 + 0x28);
            [r25 release];
            objc_destroyWeak(&stack[-104]);
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)start {
    [self->_downloadTask resume];
    return;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCDownloader dealloc]" line:0x64 withFormat:@"dealloc called on ADCDownloader"];
    [[&var_20 super] dealloc];
    return;
}

-(void *)request {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_request)), 0x1);
    return r0;
}

-(void *)destination {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_destination)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_destination, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadTask, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    return;
}

@end