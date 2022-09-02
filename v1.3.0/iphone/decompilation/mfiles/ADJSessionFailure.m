@implementation ADJSessionFailure

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)sessionFailureResponseData {
    r0 = [ADJSessionFailure alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)message {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_message)), 0x0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
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
    r19 = arg2;
    r21 = self;
    r20 = [[[self class] allocWithZone:r19] init];
    if (r20 != 0x0) {
            r0 = [r21 message];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setMessage:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 timeStamp];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setTimeStamp:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 adid];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setAdid:r24];
            [r24 release];
            [r0 release];
            [r20 setWillRetry:[r21 willRetry]];
            r0 = [r21 jsonResponse];
            r0 = [r0 retain];
            r19 = [r0 copyWithZone:r19];
            [r20 setJsonResponse:r19];
            [r19 release];
            [r0 release];
    }
    r0 = r20;
    return r0;
}

-(void *)description {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [[self message] retain];
    r21 = [[r22 timeStamp] retain];
    r0 = [r22 adid];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if ([r22 willRetry] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r24 = @"NO";
            }
            else {
                    r24 = @"YES";
            }
    }
    r22 = [[r22 jsonResponse] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setMessage:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)timeStamp {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timeStamp)), 0x0);
    return r0;
}

-(void)setTimeStamp:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adid {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adid)), 0x0);
    return r0;
}

-(void)setAdid:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)willRetry {
    r0 = *(int8_t *)(int64_t *)&self->_willRetry;
    return r0;
}

-(void)setWillRetry:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_willRetry = arg2;
    return;
}

-(void *)jsonResponse {
    r0 = self->_jsonResponse;
    return r0;
}

-(void)setJsonResponse:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_jsonResponse, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_jsonResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_adid, 0x0);
    objc_storeStrong((int64_t *)&self->_timeStamp, 0x0);
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    return;
}

@end