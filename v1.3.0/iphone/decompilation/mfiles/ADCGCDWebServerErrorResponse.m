@implementation ADCGCDWebServerErrorResponse

+(void *)responseWithClientError:(long long)arg2 message:(void *)arg3 {
    r22 = [arg3 retain];
    r19 = [[self alloc] initWithStatusCode:arg2 underlyingError:0x0 messageFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithServerError:(long long)arg2 message:(void *)arg3 {
    r22 = [arg3 retain];
    r19 = [[self alloc] initWithStatusCode:arg2 underlyingError:0x0 messageFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithClientError:(long long)arg2 underlyingError:(void *)arg3 message:(void *)arg4 {
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [[self alloc] initWithStatusCode:arg2 underlyingError:r22 messageFormat:r19 arguments:&saved_fp + 0x10];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)responseWithServerError:(long long)arg2 underlyingError:(void *)arg3 message:(void *)arg4 {
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [[self alloc] initWithStatusCode:arg2 underlyingError:r22 messageFormat:r19 arguments:&saved_fp + 0x10];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithClientError:(long long)arg2 message:(void *)arg3 {
    r0 = [self initWithStatusCode:arg2 underlyingError:0x0 messageFormat:arg3 arguments:&saved_fp + 0x10];
    return r0;
}

-(void *)initWithStatusCode:(long long)arg2 underlyingError:(void *)arg3 messageFormat:(void *)arg4 arguments:(char *)arg5 {
    r31 = r31 - 0x90;
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
    r27 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r24 = @class(NSString);
    r23 = [arg4 retain];
    r21 = [[r24 alloc] initWithFormat:r23 arguments:arg5];
    [r23 release];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:r2];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r19 != 0x0) {
            r24 = @selector(stringWithFormat:);
            r0 = [r19 domain];
            r0 = [r0 retain];
            var_58 = r21;
            r21 = r20;
            r20 = r27;
            r27 = r0;
            r0 = [r19 localizedDescription];
            r0 = [r0 retain];
            r28 = r0;
            r22 = [[r0 stringByReplacingOccurrencesOfString:r2 withString:r3] retain];
            [r19 code];
            r0 = objc_msgSend(@class(NSString), r24);
            r29 = r29;
            r25 = [r0 retain];
            [r22 release];
            [r28 release];
            r0 = r27;
            r27 = r20;
            r20 = r21;
            r21 = var_58;
            [r0 release];
    }
    else {
            r25 = @"";
            [r25 retain];
    }
    r24 = @selector(stringWithFormat:);
    r26 = [[r21 stringByReplacingOccurrencesOfString:r2 withString:r3] retain];
    r24 = [objc_msgSend(@class(NSString), r24) retain];
    [r26 release];
    r22 = [r20 initWithHTML:r24];
    if (r22 != 0x0) {
            [r22 setStatusCode:r27];
    }
    [r24 release];
    [r25 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)initWithServerError:(long long)arg2 message:(void *)arg3 {
    r0 = [self initWithStatusCode:arg2 underlyingError:0x0 messageFormat:arg3 arguments:&saved_fp + 0x10];
    return r0;
}

-(void *)initWithClientError:(long long)arg2 underlyingError:(void *)arg3 message:(void *)arg4 {
    r22 = [arg3 retain];
    r19 = [self initWithStatusCode:arg2 underlyingError:r22 messageFormat:arg4 arguments:&saved_fp + 0x10];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)initWithServerError:(long long)arg2 underlyingError:(void *)arg3 message:(void *)arg4 {
    r22 = [arg3 retain];
    r19 = [self initWithStatusCode:arg2 underlyingError:r22 messageFormat:arg4 arguments:&saved_fp + 0x10];
    [r22 release];
    r0 = r19;
    return r0;
}

@end