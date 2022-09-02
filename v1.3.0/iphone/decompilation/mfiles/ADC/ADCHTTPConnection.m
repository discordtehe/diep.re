@implementation ADCHTTPConnection

-(void *)initWithRequest:(void *)arg2 httpSession:(void *)arg3 followRedirects:(bool)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r23 = arg4;
    r24 = arg2;
    r19 = [r24 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_request, r24);
            *(int8_t *)(int64_t *)&r22->_followRedirects = r23;
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r22);
            objc_copyWeak(&var_78 + 0x28, &stack[-88]);
            r24 = [r22 retain];
            r0 = [r20 dataTaskWithRequest:r19 completionHandler:&var_78];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dataTask));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            [r24 release];
            objc_destroyWeak(&var_78 + 0x28);
            objc_destroyWeak(&stack[-88]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCHTTPConnection dealloc]" line:0x2e withFormat:@"dealloc called on ADCHTTPConnection"];
    [[&var_20 super] dealloc];
    return;
}

-(void)start {
    [self->_dataTask resume];
    return;
}

-(void *)request {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_request)), 0x1);
    return r0;
}

-(void *)dataTask {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataTask)), 0x1);
    return r0;
}

-(bool)followRedirects {
    r0 = *(int8_t *)(int64_t *)&self->_followRedirects & 0x1;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dataTask, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    return;
}

@end