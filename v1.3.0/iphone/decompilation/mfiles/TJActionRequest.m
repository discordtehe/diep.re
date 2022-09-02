@implementation TJActionRequest

-(void)completed {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self callback];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = @selector(callback);
            r20 = [objc_msgSend(r19, r20) retain];
            (*(r20 + 0x10))(r20, [@(YES) retain]);
            [r21 release];
            [r20 release];
            [r19 setCallback:0x0];
    }
    return;
}

-(void)cancelled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self callback];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = @selector(callback);
            r20 = [objc_msgSend(r19, r20) retain];
            (*(r20 + 0x10))(r20, [@(NO) retain]);
            [r21 release];
            [r20 release];
            [r19 setCallback:0x0];
    }
    return;
}

-(int)type {
    r0 = *(int32_t *)(int64_t *)&self->_type;
    return r0;
}

-(void)setType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_type = arg2;
    return;
}

-(void *)callback {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callback)), 0x0);
    return r0;
}

-(void)setCallback:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)requestId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_requestId)), 0x0);
    return r0;
}

-(void)setRequestId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x0);
    return r0;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    objc_storeStrong((int64_t *)&self->_requestId, 0x0);
    objc_storeStrong((int64_t *)&self->_callback, 0x0);
    return;
}

@end