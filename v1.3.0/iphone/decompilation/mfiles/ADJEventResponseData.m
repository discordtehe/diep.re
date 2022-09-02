@implementation ADJEventResponseData

+(void *)responseDataWithActivityPackage:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[ADJEventResponseData alloc] initWithActivityPackage:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithActivityPackage:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 parameters];
            r0 = [r0 retain];
            r22 = [[r0 objectForKey:@"event_token"] retain];
            [r20 setEventToken:r22];
            [r22 release];
            [r0 release];
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)successResponseData {
    r19 = [[ADJEventSuccess eventSuccessResponseData] retain];
    r21 = [[self message] retain];
    [r19 setMessage:r21];
    [r21 release];
    r21 = [[self timeStamp] retain];
    [r19 setTimeStamp:r21];
    [r21 release];
    r21 = [[self adid] retain];
    [r19 setAdid:r21];
    [r21 release];
    r21 = [[self eventToken] retain];
    [r19 setEventToken:r21];
    [r21 release];
    r20 = [[self jsonResponse] retain];
    [r19 setJsonResponse:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)failureResponseData {
    r19 = [[ADJEventFailure eventFailureResponseData] retain];
    r21 = [[self message] retain];
    [r19 setMessage:r21];
    [r21 release];
    r21 = [[self timeStamp] retain];
    [r19 setTimeStamp:r21];
    [r21 release];
    r21 = [[self adid] retain];
    [r19 setAdid:r21];
    [r21 release];
    r21 = [[self eventToken] retain];
    [r19 setEventToken:r21];
    [r21 release];
    [r19 setWillRetry:[self willRetry]];
    r20 = [[self jsonResponse] retain];
    [r19 setJsonResponse:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)description {
    r19 = [[self message] retain];
    r21 = [[self timeStamp] retain];
    r22 = [[self adid] retain];
    r24 = [[self eventToken] retain];
    [self success];
    [self willRetry];
    r27 = [[self attribution] retain];
    r23 = [[self jsonResponse] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r23 release];
    [r27 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r22 = self;
    r0 = [[&var_30 super] copyWithZone:r2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [r22 eventToken];
            r0 = [r0 retain];
            r20 = [r0 copyWithZone:r2];
            [r19 setEventToken:r20];
            [r20 release];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void *)eventToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventToken)), 0x0);
    return r0;
}

-(void)setEventToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventToken, 0x0);
    return;
}

@end