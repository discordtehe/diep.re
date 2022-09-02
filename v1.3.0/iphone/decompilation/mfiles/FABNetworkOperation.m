@implementation FABNetworkOperation

-(void *)initWithAPIKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r21 = r0;
            if (r21 != 0x0) {
                    objc_storeStrong((int64_t *)&r21->_APIKey, r20);
            }
            r21 = [r21 retain];
            r20 = r21;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    [r21 release];
    r0 = r20;
    return r0;
}

-(void *)userAgentString {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)mutableRequestWithDefaultHTTPHeaderFieldsAndTimeoutForURL:(void *)arg2 {
    r0 = [self mutableRequestWithDefaultHTTPHeadersForURL:arg2 timeout:r3];
    return r0;
}

-(void *)mutableRequestWithDefaultHTTPHeadersForURL:(void *)arg2 timeout:(double)arg3 {
    r19 = [[NSMutableURLRequest requestWithURL:arg2 cachePolicy:0x1 timeoutInterval:r4] retain];
    r21 = [[self localeIdentifier] retain];
    r23 = [[self userAgentString] retain];
    [r19 setValue:r23 forHTTPHeaderField:@"User-Agent"];
    [r23 release];
    [r19 setValue:@"utf-8" forHTTPHeaderField:@"Accept-Charset"];
    [r19 setValue:r21 forHTTPHeaderField:@"Accept-Language"];
    [r19 setValue:r21 forHTTPHeaderField:@"Content-Language"];
    [r19 setValue:@"77f0789d8e230eccdb4b99b82dccd78d47f9b604" forHTTPHeaderField:@"X-Crashlytics-Developer-Token"];
    [r19 setValue:*0x100e68158 forHTTPHeaderField:@"X-Crashlytics-API-Client-Id"];
    [r19 setValue:*0x100e68140 forHTTPHeaderField:@"X-Crashlytics-API-Client-Display-Version"];
    [r19 setValue:*0x100e68148 forHTTPHeaderField:@"X-Crashlytics-API-Client-Build-Version"];
    r20 = [[self APIKey] retain];
    [r19 setValue:r20 forHTTPHeaderField:@"X-Crashlytics-API-Key"];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)localeIdentifier {
    r0 = [NSLocale currentLocale];
    r0 = [r0 retain];
    r20 = [[r0 localeIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)APIKey {
    r0 = self->_APIKey;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_APIKey, 0x0);
    return;
}

@end