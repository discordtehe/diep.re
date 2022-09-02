@implementation ADJResponseData

+(void *)responseData {
    r0 = [ADJResponseData alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

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

+(void *)buildResponseData:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_10069fa70;

loc_10069fa10:
    r20 = [r19 activityKind];
    r8 = r20 - 0x1;
    if (r8 > 0x4) goto loc_10069fa74;

loc_10069fa30:
    goto *0x10069fb50[sign_extend_64(*(int32_t *)(0x10069fb50 + r8 * 0x4)) + 0x10069fb50];

loc_10069fa44:
    r21 = [[ADJSessionResponseData alloc] init];
    r20 = 0x1;
    goto loc_10069fb20;

loc_10069fb20:
    [r21 setActivityKind:r20];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_10069fa9c:
    r21 = [[ADJEventResponseData alloc] initWithActivityPackage:r19];
    r20 = 0x2;
    goto loc_10069fb20;

loc_10069fa74:
    r21 = [[ADJResponseData alloc] init];
    goto loc_10069fb20;

loc_10069facc:
    r21 = [[ADJSdkClickResponseData alloc] init];
    r20 = 0x4;
    goto loc_10069fb20;

loc_10069faf8:
    r21 = [[ADJAttributionResponseData alloc] init];
    r20 = 0x5;
    goto loc_10069fb20;

loc_10069fa70:
    r20 = 0x0;
    goto loc_10069fa74;
}

-(int)activityKind {
    r0 = *(int32_t *)(int64_t *)&self->_activityKind;
    return r0;
}

-(void *)description {
    r19 = [[self message] retain];
    r21 = [[self timeStamp] retain];
    r22 = [[self adid] retain];
    [self success];
    [self willRetry];
    r26 = [[self attribution] retain];
    r23 = [[self jsonResponse] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r23 release];
    [r26 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setActivityKind:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_activityKind = arg2;
    return;
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
            [r20 setSuccess:[r21 success]];
            [r20 setWillRetry:[r21 willRetry]];
            [r20 setValidationResult:[r21 validationResult]];
            r0 = [r21 jsonResponse];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r19];
            [r20 setJsonResponse:r24];
            [r24 release];
            [r0 release];
            r0 = [r21 attribution];
            r0 = [r0 retain];
            r19 = [r0 copyWithZone:r19];
            [r20 setAttribution:r19];
            [r19 release];
            [r0 release];
    }
    r0 = r20;
    return r0;
}

-(void *)message {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_message)), 0x0);
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

-(void)setSuccess:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_success = arg2;
    return;
}

-(bool)success {
    r0 = *(int8_t *)(int64_t *)&self->_success;
    return r0;
}

-(bool)willRetry {
    r0 = *(int8_t *)(int64_t *)&self->_willRetry;
    return r0;
}

-(void)setWillRetry:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_willRetry = arg2;
    return;
}

-(bool)validationResult {
    r0 = *(int8_t *)(int64_t *)&self->_validationResult;
    return r0;
}

-(void)setValidationResult:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_validationResult = arg2;
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

-(void)setAttribution:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)attribution {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_attribution)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_attribution, 0x0);
    objc_storeStrong((int64_t *)&self->_jsonResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_adid, 0x0);
    objc_storeStrong((int64_t *)&self->_timeStamp, 0x0);
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    return;
}

@end