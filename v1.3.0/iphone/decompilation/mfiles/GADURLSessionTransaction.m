@implementation GADURLSessionTransaction

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithURLRequest:(void *)arg2 parentContext:(void *)arg3 notificationPolicy:(long long)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0x50;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg5 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.url-session-transaction", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_request));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [GADEventContext alloc];
            r0 = [r0 initWithParent:r20 component:*0x100e97490];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_notificationPolicy = r23;
            r0 = objc_retainBlock(r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            CC_MD5_Init((int64_t *)&r22->_responseDigestState);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)initWithURLRequest:(void *)arg2 parentContext:(void *)arg3 response:(void *)arg4 responseBody:(void *)arg5 requestError:(void *)arg6 {
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
    r29 = &saved_fp;
    r24 = [arg2 retain];
    r25 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    r21 = [arg6 retain];
    r22 = [self initWithURLRequest:r24 parentContext:r25 notificationPolicy:0x3 completionHandler:0x0];
    [r25 release];
    [r24 release];
    if (r22 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_response));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_responseBody));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = sub_100852bc4(r20);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_responseDigest));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_responseLength = [r20 length];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_error));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)successorWithURLRequest:(void *)arg2 {
    [arg2 retain];
    r21 = self->_lockQueue;
    var_60 = [self retain];
    dispatch_sync(r21, &var_80);
    r21 = [GADURLSessionTransaction alloc];
    r22 = [[r20->_context parent] retain];
    [r21 initWithURLRequest:r19 parentContext:r22 notificationPolicy:r20->_notificationPolicy completionHandler:*(&var_50 + 0x28)];
    [r22 release];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)completionHandler {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    objc_retainBlock(*(&var_40 + 0x28));
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)response {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)responseBody {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(long long)responseLength {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void *)responseDigest {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)error {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)willSendRequest {
    sub_1008833e8(*0x100e9c1d8, self, 0x0);
    return;
}

-(void)didReceiveResponse:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    if ((r19->_notificationPolicy | 0x1) == 0x3) {
            if (CPU_FLAGS & E) {
                    r22 = 0x1;
            }
    }
    r21 = r19->_lockQueue;
    [r19 retain];
    var_30 = r20;
    [r20 retain];
    dispatch_async(r21, &var_58);
    sub_1008833e8(*0x100e9c1e0, r19, 0x0);
    [var_30 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)didReceiveData:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)willRedirectToURL:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_redirectURL));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    sub_1008833e8(*0x100e9c1f0, self, 0x0);
    return;
}

-(void)didCompleteWithError:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r0 = [arg2 retain];
    var_68 = r29 - 0x70;
    var_B8 = &var_C0;
    var_E8 = &var_F0;
    r21 = self->_lockQueue;
    r19 = [r0 retain];
    var_120 = r19;
    r20 = [self retain];
    var_118 = r20;
    dispatch_sync(r21, &var_140);
    if (*(int8_t *)((r29 - 0x90) + 0x18) != 0x0) {
            sub_1008833e8(*0x100e9c1e8, r20, 0x0);
    }
    sub_1008833e8(*0x100e9c1f8, r20, 0x0);
    r0 = *(var_68 + 0x28);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    [var_118 release];
    [var_120 release];
    _Block_object_dispose(&var_F0, 0x8);
    [0x0 release];
    _Block_object_dispose(&var_C0, 0x8);
    [0x0 release];
    _Block_object_dispose(r29 - 0x90, 0x8);
    _Block_object_dispose(r29 - 0x70, 0x8);
    [0x0 release];
    [r19 release];
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(long long)notificationPolicy {
    r0 = self->_notificationPolicy;
    return r0;
}

-(void *)request {
    r0 = self->_request;
    return r0;
}

-(void *)redirectURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_redirectURL)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_redirectURL, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_responseDigest, 0x0);
    objc_storeStrong((int64_t *)&self->_responseBody, 0x0);
    objc_storeStrong((int64_t *)&self->_response, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    return;
}

@end