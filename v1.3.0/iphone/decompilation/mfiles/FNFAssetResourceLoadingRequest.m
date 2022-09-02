@implementation FNFAssetResourceLoadingRequest

-(void *)initWithContentInformationRequest:(void *)arg2 dataRequest:(void *)arg3 urlRequest:(void *)arg4 completionCallback:(void *)arg5 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r22 = arg4;
    r25 = arg3;
    r26 = arg2;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [r22 retain];
    r24 = [arg5 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_contentInformationRequest, r26);
            objc_storeStrong((int64_t *)&r23->_dataRequest, r25);
            objc_storeStrong((int64_t *)&r23->_request, r22);
            r0 = objc_retainBlock(r24);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionCallback));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
    }
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)finishLoading {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_completionCallback;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

-(void)finishLoadingWithError:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_completionCallback));
    if (*(r0 + r23) != 0x0) {
            r19 = r0;
            r22 = [r2 retain];
            r20 = [[FNFResponseMetadata alloc] initWithMetadataDictionary:r19->_metadataDictionary];
            r0 = *(r19 + r23);
            (*(r0 + 0x10))(r0, r22, r19, r20);
            [r22 release];
            [r20 release];
    }
    return;
}

-(void)finishLoadingWithMetadataDictionary:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    objc_storeStrong((int64_t *)&r20->_metadataDictionary, arg2);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_completionCallback));
    if (*(r20 + r22) != 0x0) {
            r0 = [FNFResponseMetadata alloc];
            r0 = [r0 initWithMetadataDictionary:r19];
            r22 = *(r20 + r22);
            (*(r22 + 0x10))(r22, [[r0 error] retain], r20, r0);
            [r23 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_metadataDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_redirect, 0x0);
    objc_storeStrong((int64_t *)&self->_response, 0x0);
    objc_storeStrong((int64_t *)&self->_dataRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_contentInformationRequest, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_completionCallback, 0x0);
    return;
}

-(void *)request {
    r0 = self->_request;
    return r0;
}

-(void *)contentInformationRequest {
    r0 = self->_contentInformationRequest;
    return r0;
}

-(void *)dataRequest {
    r0 = self->_dataRequest;
    return r0;
}

-(void *)response {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_response)), 0x0);
    return r0;
}

-(void)setResponse:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)redirect {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_redirect)), 0x0);
    return r0;
}

-(void)setRedirect:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)metadataDictionary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_metadataDictionary)), 0x0);
    return r0;
}

-(void)setMetadataDictionary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end