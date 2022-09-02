@implementation GADServerTransaction

-(void *)initWithServerRequest:(void *)arg2 serverResponse:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_serverRequest, r22);
            objc_storeStrong((int64_t *)&r23->_serverResponse, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)serverRequest {
    r0 = self->_serverRequest;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_serverResponse, 0x0);
    objc_storeStrong((int64_t *)&self->_serverRequest, 0x0);
    return;
}

-(void *)serverResponse {
    r0 = self->_serverResponse;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end