@implementation VungleNetworkResponse

-(void *)initWithData:(void *)arg2 statusCode:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r22 + 0x8, r21);
            *(r22 + 0x10) = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(bool)hasHTTPData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self data];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)hasSuccessfulHTTPStatus {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self statusCode];
    if (r0 == 0xc8) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)vungleNetworkResponseWithNSHTTPURLResponse:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_alloc() init];
    [r19 setStatusCode:[arg2 statusCode]];
    r22 = [[arg2 URL] retain];
    [r19 setRequestURL:r22];
    [r22 release];
    r21 = [[arg2 allHeaderFields] retain];
    [r20 release];
    r0 = [r21 objectForKeyedSubscript:@"Retry-After"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r19 setParsedHTTPRetryAfterTime:@"Retry-After"];
    [r0 release];
    [r21 release];
    [r19 setAttempts:0x0];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)data {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setData:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)setStatusCode:(long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(void)setError:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(long long)statusCode {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)error {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setRequestURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)requestURL {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void *)localDownloadURL {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setLocalDownloadURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)parsedHTTPRetryAfterTime {
    r0 = self;
    return r0;
}

-(unsigned long long)attempts {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setAttempts:(unsigned long long)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void)setParsedHTTPRetryAfterTime:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end