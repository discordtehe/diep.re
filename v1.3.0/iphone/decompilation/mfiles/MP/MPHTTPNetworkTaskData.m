@implementation MPHTTPNetworkTaskData

-(void *)init {
    r0 = [self initWithResponseHandler:0x0 errorHandler:0x0 shouldRedirectWithNewRequest:0x0];
    return r0;
}

-(void *)responseData {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setResponseData:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)initWithResponseHandler:(void *)arg2 errorHandler:(void *)arg3 shouldRedirectWithNewRequest:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = *(r22 + 0x8);
            *(r22 + 0x8) = 0x0;
            [r0 release];
            r0 = objc_retainBlock(r19);
            r8 = *(r22 + 0x10);
            *(r22 + 0x10) = r0;
            [r8 release];
            r0 = objc_retainBlock(r20);
            r8 = *(r22 + 0x18);
            *(r22 + 0x18) = r0;
            [r8 release];
            r0 = objc_retainBlock(r21);
            r8 = *(r22 + 0x20);
            *(r22 + 0x20) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)responseHandler {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setResponseHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)errorHandler {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setErrorHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)shouldRedirectWithNewRequest {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setShouldRedirectWithNewRequest:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end