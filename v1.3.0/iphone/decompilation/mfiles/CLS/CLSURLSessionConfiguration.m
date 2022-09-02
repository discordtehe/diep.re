@implementation CLSURLSessionConfiguration

+(void *)defaultSessionConfiguration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([CLSURLSession NSURLSessionShouldBeUsed] != 0x0) {
            r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 new];
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)ephemeralSessionConfiguration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([CLSURLSession NSURLSessionShouldBeUsed] != 0x0) {
            r0 = [NSURLSessionConfiguration ephemeralSessionConfiguration];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 new];
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)backgroundSessionConfiguration:(void *)arg2 {
    r0 = [self backgroundSessionConfigurationWithIdentifier:arg2];
    return r0;
}

+(void *)backgroundSessionConfigurationWithIdentifier:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([CLSURLSession NSURLSessionShouldBeUsed] != 0x0) {
            if ([[NSURLSessionConfiguration class] respondsToSelector:@selector(backgroundSessionConfigurationWithIdentifier:)] != 0x0) {
                    r0 = @class(NSURLSessionConfiguration);
                    r0 = [r0 backgroundSessionConfigurationWithIdentifier:r19];
            }
            else {
                    r0 = @class(NSURLSessionConfiguration);
                    r0 = [r0 backgroundSessionConfiguration:r19];
            }
            r20 = [r0 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [CLSURLSessionConfiguration new];
    r19 = [[self HTTPAdditionalHeaders] retain];
    [r20 setHTTPAdditionalHeaders:r19];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)sessionSendsLaunchEvents {
    return 0x0;
}

-(void)setSessionSendsLaunchEvents:(bool)arg2 {
    return;
}

-(void *)URLCache {
    r0 = self->_URLCache;
    return r0;
}

-(void)setURLCache:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_URLCache, arg2);
    return;
}

-(void *)HTTPAdditionalHeaders {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_additionalHeaders)), 0x0);
    return r0;
}

-(void)setHTTPAdditionalHeaders:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)HTTPCookieAcceptPolicy {
    r0 = self->_cookiePolicy;
    return r0;
}

-(void)setHTTPCookieAcceptPolicy:(unsigned long long)arg2 {
    self->_cookiePolicy = arg2;
    return;
}

-(double)timeoutIntervalForRequest {
    r0 = self;
    return r0;
}

-(void)setTimeoutIntervalForRequest:(double)arg2 {
    self->_timeoutIntervalForRequest = d0;
    return;
}

-(bool)allowsCellularAccess {
    r0 = *(int8_t *)(int64_t *)&self->_allowsCellularAccess;
    return r0;
}

-(double)timeoutIntervalForResource {
    r0 = self;
    return r0;
}

-(void)setAllowsCellularAccess:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowsCellularAccess = arg2;
    return;
}

-(void)setTimeoutIntervalForResource:(double)arg2 {
    self->_timeoutIntervalForResource = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_URLCache, 0x0);
    objc_storeStrong((int64_t *)&self->_additionalHeaders, 0x0);
    return;
}

@end