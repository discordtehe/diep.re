@implementation TR_AFHTTPSessionManager

+(void *)manager {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 initWithBaseURL:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithBaseURL:0x0];
    return r0;
}

-(void *)initWithBaseURL:(void *)arg2 {
    r0 = [self initWithBaseURL:arg2 sessionConfiguration:0x0];
    return r0;
}

-(void *)initWithSessionConfiguration:(void *)arg2 {
    r0 = [self initWithBaseURL:0x0 sessionConfiguration:arg2];
    return r0;
}

-(void *)initWithBaseURL:(void *)arg2 sessionConfiguration:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] initWithSessionConfiguration:arg3];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 path];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 length] != 0x0) {
                    r0 = [r19 absoluteString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 hasSuffix:r2];
                    [r0 release];
                    [r21 release];
                    if ((r23 & 0x1) == 0x0) {
                            r0 = [r19 URLByAppendingPathComponent:@""];
                            r29 = r29;
                            r21 = [r0 retain];
                            [r19 release];
                            r19 = r21;
                    }
            }
            else {
                    [r21 release];
            }
            [r20 setBaseURL:r19];
            r22 = [[TR_AFHTTPRequestSerializer serializer] retain];
            [r20 setRequestSerializer:r22];
            [r22 release];
            r21 = [[TR_AFJSONResponseSerializer serializer] retain];
            [r20 setResponseSerializer:r21];
            [r21 release];
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

-(void)setRequestSerializer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestSerializer, arg2);
    return;
}

-(void)setResponseSerializer:(void *)arg2 {
    [[&var_10 super] setResponseSerializer:arg2];
    return;
}

-(void *)GET:(void *)arg2 parameters:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self GET:r23 parameters:r21 progress:0x0 success:r20 failure:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)GET:(void *)arg2 parameters:(void *)arg3 progress:(void *)arg4 success:(void *)arg5 failure:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r19 = [[self dataTaskWithHTTPMethod:@"GET" URLString:r24 parameters:r22 uploadProgress:0x0 downloadProgress:r21 success:r20 failure:arg6] retain];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    [r19 resume];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)HEAD:(void *)arg2 parameters:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    var_38 = r20;
    r20 = [r20 retain];
    r0 = [self dataTaskWithHTTPMethod:@"HEAD" URLString:r23 parameters:r21 uploadProgress:0x0 downloadProgress:0x0 success:&var_58 failure:r19];
    r22 = [r0 retain];
    [r19 release];
    [r21 release];
    [r23 release];
    [r22 resume];
    [var_38 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)POST:(void *)arg2 parameters:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self POST:r23 parameters:r21 progress:0x0 success:r20 failure:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)POST:(void *)arg2 parameters:(void *)arg3 constructingBodyWithBlock:(void *)arg4 success:(void *)arg5 failure:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r19 = [[self POST:r24 parameters:r22 constructingBodyWithBlock:r21 progress:0x0 success:r20 failure:arg6] retain];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)POST:(void *)arg2 parameters:(void *)arg3 progress:(void *)arg4 success:(void *)arg5 failure:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r19 = [[self dataTaskWithHTTPMethod:@"POST" URLString:r24 parameters:r22 uploadProgress:r21 downloadProgress:0x0 success:r20 failure:arg6] retain];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    [r19 resume];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)POST:(void *)arg2 parameters:(void *)arg3 constructingBodyWithBlock:(void *)arg4 progress:(void *)arg5 success:(void *)arg6 failure:(void *)arg7 {
    r31 = r31 - 0x130;
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
    r27 = self;
    r19 = [arg2 retain];
    r26 = [arg3 retain];
    r20 = [arg4 retain];
    var_F8 = [arg5 retain];
    r24 = [arg6 retain];
    r21 = [arg7 retain];
    r28 = [[r27 requestSerializer] retain];
    r22 = [[r27 baseURL] retain];
    var_100 = r19;
    r0 = [NSURL URLWithString:r19 relativeToURL:r22];
    r0 = [r0 retain];
    r23 = r0;
    r19 = [[r0 absoluteString] retain];
    r25 = r26;
    var_108 = r20;
    r0 = [r28 multipartFormRequestWithMethod:@"POST" URLString:r19 parameters:r26 constructingBodyWithBlock:r20 error:&saved_fp - 0x58];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r26 = [0x0 retain];
    [r19 release];
    [r23 release];
    [r22 release];
    [r28 release];
    var_110 = r20;
    if (r26 == 0x0) goto loc_100403064;

loc_10040302c:
    r20 = var_F8;
    r28 = r21;
    if (r28 == 0x0) goto loc_100403168;

loc_100403038:
    r0 = [r27 completionQueue];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r19 = 0x0;
            r27 = r22;
    }
    else {
            r27 = *__dispatch_main_q;
            [r27 retain];
            r19 = 0x1;
    }
    r21 = var_108;
    var_68 = [r28 retain];
    var_60 = [r26 retain];
    dispatch_async(r27, r29 - 0x88);
    if (r19 != 0x0) {
            [*__dispatch_main_q release];
    }
    [r22 release];
    [var_60 release];
    [var_68 release];
    r22 = 0x0;
    r19 = var_100;
    goto loc_100403210;

loc_100403210:
    [var_110 release];
    [r26 release];
    [r28 release];
    [r24 release];
    [r20 release];
    [r21 release];
    [r25 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100403168:
    r22 = 0x0;
    goto loc_10040316c;

loc_10040316c:
    r21 = var_108;
    r19 = var_100;
    goto loc_100403210;

loc_100403064:
    var_D0 = [r21 retain];
    var_C8 = [r24 retain];
    r2 = r20;
    r20 = var_F8;
    r0 = [r27 uploadTaskWithStreamedRequest:r2 progress:r20 completionHandler:&var_F0];
    r0 = [r0 retain];
    r8 = *(&var_B8 + 0x28);
    *(&var_B8 + 0x28) = r0;
    [r8 release];
    [*(&var_B8 + 0x28) resume];
    r28 = r21;
    r22 = [*(&var_B8 + 0x28) retain];
    _Block_object_dispose(&var_B8, 0x8);
    [0x0 release];
    [var_C8 release];
    [var_D0 release];
    goto loc_10040316c;
}

-(void *)PUT:(void *)arg2 parameters:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self dataTaskWithHTTPMethod:@"PUT" URLString:r23 parameters:r21 uploadProgress:0x0 downloadProgress:0x0 success:r20 failure:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [r19 resume];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)PATCH:(void *)arg2 parameters:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self dataTaskWithHTTPMethod:@"PATCH" URLString:r23 parameters:r21 uploadProgress:0x0 downloadProgress:0x0 success:r20 failure:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [r19 resume];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)DELETE:(void *)arg2 parameters:(void *)arg3 success:(void *)arg4 failure:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self dataTaskWithHTTPMethod:@"DELETE" URLString:r23 parameters:r21 uploadProgress:0x0 downloadProgress:0x0 success:r20 failure:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [r19 resume];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dataTaskWithHTTPMethod:(void *)arg2 URLString:(void *)arg3 parameters:(void *)arg4 uploadProgress:(void *)arg5 downloadProgress:(void *)arg6 success:(void *)arg7 failure:(void *)arg8 {
    r31 = r31 - 0x140;
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
    r28 = self;
    r27 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    var_100 = [arg5 retain];
    var_108 = [arg6 retain];
    r21 = [arg7 retain];
    r25 = [arg8 retain];
    r22 = [[r28 requestSerializer] retain];
    r23 = [[r28 baseURL] retain];
    var_110 = r19;
    r0 = [NSURL URLWithString:r19 relativeToURL:r23];
    r0 = [r0 retain];
    r24 = r0;
    r19 = [[r0 absoluteString] retain];
    var_120 = r20;
    var_118 = r27;
    r0 = [r22 requestWithMethod:r27 URLString:r19 parameters:r20 error:&saved_fp - 0x58];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r27 = [0x0 retain];
    [r19 release];
    [r24 release];
    [r23 release];
    [r22 release];
    var_F8 = r25;
    if (r27 != 0x0) {
            r26 = r21;
            r24 = var_108;
            r21 = var_100;
            if (r25 != 0x0) {
                    r0 = [r28 completionQueue];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r19 = 0x0;
                            r23 = r22;
                    }
                    else {
                            r23 = *__dispatch_main_q;
                            [r23 retain];
                            r19 = 0x1;
                    }
                    r25 = r20;
                    var_68 = [var_F8 retain];
                    var_60 = [r27 retain];
                    dispatch_async(r23, r29 - 0x88);
                    if (r19 != 0x0) {
                            [*__dispatch_main_q release];
                    }
                    [r22 release];
                    [var_60 release];
                    [var_68 release];
            }
            else {
                    r25 = r20;
            }
            r22 = 0x0;
    }
    else {
            var_D0 = [r25 retain];
            r26 = r21;
            var_C8 = [r21 retain];
            r25 = r20;
            r24 = var_108;
            r21 = var_100;
            r0 = [r28 dataTaskWithRequest:r20 uploadProgress:r21 downloadProgress:r24 completionHandler:&var_F0];
            r0 = [r0 retain];
            r8 = *(&var_B8 + 0x28);
            *(&var_B8 + 0x28) = r0;
            [r8 release];
            r22 = [*(&var_B8 + 0x28) retain];
            [var_C8 release];
            [var_D0 release];
            _Block_object_dispose(&var_B8, 0x8);
            [0x0 release];
    }
    [r25 release];
    [r27 release];
    [var_F8 release];
    [r26 release];
    [r24 release];
    [r21 release];
    [var_120 release];
    [var_110 release];
    [var_118 release];
    r0 = [r22 autorelease];
    return r0;
}

+(bool)supportsSecureCoding {
    return 0x1;
}

-(void *)description {
    r19 = [NSStringFromClass([self class]) retain];
    r0 = [self baseURL];
    r0 = [r0 retain];
    r23 = [[r0 absoluteString] retain];
    r24 = [[self session] retain];
    r25 = [[self operationQueue] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r25 release];
    [r24 release];
    [r23 release];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)baseURL {
    r0 = self->_baseURL;
    return r0;
}

-(void)setBaseURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_baseURL, arg2);
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r21 = [[self class] allocWithZone:arg2];
    r22 = [[self baseURL] retain];
    r0 = [self session];
    r0 = [r0 retain];
    r24 = [[r0 configuration] retain];
    r21 = [r21 initWithBaseURL:r22 sessionConfiguration:r24];
    [r24 release];
    [r0 release];
    [r22 release];
    r0 = [self requestSerializer];
    r0 = [r0 retain];
    r24 = [r0 copyWithZone:arg2];
    [r21 setRequestSerializer:r24];
    [r24 release];
    [r0 release];
    r0 = [self responseSerializer];
    r0 = [r0 retain];
    r24 = [r0 copyWithZone:arg2];
    [r21 setResponseSerializer:r24];
    [r24 release];
    [r0 release];
    r0 = [self securityPolicy];
    r0 = [r0 retain];
    r19 = [r0 copyWithZone:arg2];
    [r21 setSecurityPolicy:r19];
    [r19 release];
    [r0 release];
    r0 = r21;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    [[&var_50 super] encodeWithCoder:r19];
    r22 = [[r20 baseURL] retain];
    r23 = [NSStringFromSelector(@selector(baseURL)) retain];
    [r19 encodeObject:r22 forKey:r23];
    [r23 release];
    [r22 release];
    r0 = [r20 session];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r26 = [r0 conformsToProtocol:@protocol(NSCoding)];
    [r0 release];
    [r23 release];
    r0 = [r20 session];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 configuration];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r26 != 0x0) {
            [r19 encodeObject:r23 forKey:@"sessionConfiguration"];
    }
    else {
            r0 = [r23 identifier];
            r29 = r29;
            r24 = [r0 retain];
            [r19 encodeObject:r24 forKey:@"identifier"];
            [r24 release];
    }
    [r23 release];
    [r22 release];
    r23 = [[r20 requestSerializer] retain];
    r22 = [NSStringFromSelector(@selector(requestSerializer)) retain];
    [r19 encodeObject:r23 forKey:r22];
    [r22 release];
    [r23 release];
    r23 = [[r20 responseSerializer] retain];
    r22 = [NSStringFromSelector(@selector(responseSerializer)) retain];
    [r19 encodeObject:r23 forKey:r22];
    [r22 release];
    [r23 release];
    r20 = [[r20 securityPolicy] retain];
    r22 = [NSStringFromSelector(@selector(securityPolicy)) retain];
    [r19 encodeObject:r20 forKey:r22];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithCoder:(void *)arg2 {
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
    r24 = self;
    r19 = [arg2 retain];
    [NSURL class];
    r23 = [NSStringFromSelector(@selector(baseURL)) retain];
    r20 = [[r19 decodeObjectOfClass:r2 forKey:r3] retain];
    [r23 release];
    [NSURLSessionConfiguration class];
    r0 = [r19 decodeObjectOfClass:r2 forKey:r3];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 == 0x0) {
            [NSString class];
            r0 = [r19 decodeObjectOfClass:r2 forKey:r3];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    r0 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:r25];
                    r29 = r29;
                    r23 = [r0 retain];
            }
            [r25 release];
    }
    r24 = [r24 initWithBaseURL:r20 sessionConfiguration:r23];
    if (r24 != 0x0) {
            [TR_AFHTTPRequestSerializer class];
            r26 = [NSStringFromSelector(@selector(requestSerializer)) retain];
            r25 = [[r19 decodeObjectOfClass:r2 forKey:r3] retain];
            [r24 setRequestSerializer:r25];
            [r25 release];
            [r26 release];
            [TR_AFHTTPResponseSerializer class];
            r26 = [NSStringFromSelector(@selector(responseSerializer)) retain];
            r25 = [[r19 decodeObjectOfClass:r2 forKey:r3] retain];
            [r24 setResponseSerializer:r25];
            [r25 release];
            [r26 release];
            [TR_AFSecurityPolicy class];
            r25 = [NSStringFromSelector(@selector(securityPolicy)) retain];
            r22 = [[r19 decodeObjectOfClass:r2 forKey:r3] retain];
            [r25 release];
            if (r22 != 0x0) {
                    [r24 setSecurityPolicy:r22];
            }
            r21 = [r24 retain];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r23 release];
    [r20 release];
    [r19 release];
    [r24 release];
    r0 = r21;
    return r0;
}

-(void *)requestSerializer {
    r0 = self->_requestSerializer;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestSerializer, 0x0);
    objc_storeStrong((int64_t *)&self->_baseURL, 0x0);
    return;
}

@end