@implementation ADJSessionResponseData

-(void *)initWithActivityPackage:(void *)arg2 {
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

-(void *)successResponseData {
    r19 = [[ADJSessionSuccess sessionSuccessResponseData] retain];
    r21 = [[self message] retain];
    [r19 setMessage:r21];
    [r21 release];
    r21 = [[self timeStamp] retain];
    [r19 setTimeStamp:r21];
    [r21 release];
    r21 = [[self adid] retain];
    [r19 setAdid:r21];
    [r21 release];
    r20 = [[self jsonResponse] retain];
    [r19 setJsonResponse:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)failureResponseData {
    r19 = [[ADJSessionFailure sessionFailureResponseData] retain];
    r21 = [[self message] retain];
    [r19 setMessage:r21];
    [r21 release];
    r21 = [[self timeStamp] retain];
    [r19 setTimeStamp:r21];
    [r21 release];
    r21 = [[self adid] retain];
    [r19 setAdid:r21];
    [r21 release];
    [r19 setWillRetry:[self willRetry]];
    r20 = [[self jsonResponse] retain];
    [r19 setJsonResponse:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_10 super] copyWithZone:arg2];
    return r0;
}

@end