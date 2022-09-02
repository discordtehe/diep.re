@implementation ADJAttributionResponseData

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_10 super] copyWithZone:arg2];
    return r0;
}

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

-(void *)deeplink {
    r0 = self->_deeplink;
    return r0;
}

-(void *)description {
    r19 = [[self message] retain];
    r21 = [[self timeStamp] retain];
    r22 = [[self adid] retain];
    [self success];
    [self willRetry];
    r25 = [[self attribution] retain];
    r27 = [[self deeplink] retain];
    r23 = [[self jsonResponse] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r23 release];
    [r27 release];
    [r25 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setDeeplink:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_deeplink, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deeplink, 0x0);
    return;
}

@end