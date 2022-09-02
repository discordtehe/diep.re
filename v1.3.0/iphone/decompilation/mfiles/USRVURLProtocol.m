@implementation USRVURLProtocol

+(void *)canonicalRequestForRequest:(void *)arg2 {
    r0 = [arg2 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(bool)canInitWithRequest:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 URL] retain];
    r0 = [r19 HTTPMethod];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1000d71f8;

loc_1000d71f0:
    r23 = @selector(HTTPMethod);
    r25 = 0x0;
    goto loc_1000d7228;

loc_1000d7228:
    r22 = @selector(isEqualToString:);
    r0 = [r20 host];
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22);
    [r0 release];
    if (r25 != 0x0) {
            [r23 release];
    }
    goto loc_1000d7274;

loc_1000d7274:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1000d71f8:
    r22 = @selector(isEqualToString:);
    r0 = [r19 HTTPMethod];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (objc_msgSend(r0, r22) == 0x0) goto loc_1000d7268;

loc_1000d7224:
    r25 = 0x1;
    goto loc_1000d7228;

loc_1000d7268:
    r22 = 0x0;
    [r23 release];
    goto loc_1000d7274;
}

-(void)stopLoading {
    return;
}

-(void)startLoading {
    r31 = r31 - 0xb0;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self request];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 HTTPBody];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [[USRVWebViewMethodInvokeHandler alloc] init];
    if (r21 != 0x0) {
            r0 = [r19 URL];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 lastPathComponent];
            r29 = r29;
            r26 = [r0 retain];
            [r22 handleData:r21 invocationType:r26];
            [r26 release];
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    r0 = [@"{\"status\":\"ok\"}" dataUsingEncoding:0x4];
    r0 = [r0 retain];
    r23 = r0;
    [r0 length];
    r27 = [[NSString stringWithFormat:@"%lu"] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4] retain];
    [r27 release];
    r24 = [NSHTTPURLResponse alloc];
    r25 = [[r19 URL] retain];
    r24 = [r24 initWithURL:r25 statusCode:0xc8 HTTPVersion:@"1.1" headerFields:r26];
    [r25 release];
    r0 = [r20 client];
    r0 = [r0 retain];
    [r0 URLProtocol:r20 didReceiveResponse:r24 cacheStoragePolicy:0x2];
    [r0 URLProtocol:r20 didLoadData:r23];
    [r0 URLProtocolDidFinishLoading:r20];
    [r0 release];
    [r24 release];
    [r26 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end