@implementation MPURLRequest

+(void *)requestWithURL:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_alloc() initWithURL:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)description {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self HTTPBody];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = objc_alloc();
            r22 = [[r20 HTTPBody] retain];
            r19 = [r21 initWithData:r22 encoding:0x4];
            [r22 release];
            r21 = @class(NSString);
            r22 = [[r20 URL] retain];
            r20 = [[r21 stringWithFormat:r2] retain];
            [r22 release];
    }
    else {
            r0 = [r20 URL];
            r0 = [r0 retain];
            r19 = r0;
            r20 = [[r0 absoluteString] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)userAgent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e4a90 == 0x0) {
            if ([NSThread isMainThread] != 0x0) {
                    sub_1004fe484(0x100e7fa38);
            }
            else {
                    dispatch_sync(*__dispatch_main_q, 0x100e7fa38);
            }
    }
    r0 = *0x1011e4a90;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
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
    r22 = self;
    r21 = [arg2 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [MPURL class];
    r0 = [r21 isKindOfClass:r2];
    r19 = r23;
    if (r0 != 0x0) {
            r0 = [r21 retain];
            r24 = r0;
            r19 = @class(NSJSONSerialization);
            r0 = [r0 postData];
            r29 = r29;
            r26 = [r0 retain];
            r19 = [r19 isValidJSONObject:r26];
            [r26 release];
            if (r19 != 0x0) {
                    r0 = [r24 postData];
                    r29 = r29;
                    r19 = [r0 retain];
            }
            else {
                    r19 = r23;
                    r23 = [[r24 postData] retain];
                    r25 = [[NSString stringWithFormat:0x100ee67f0] retain];
                    r0 = [MPLogEvent eventWithMessage:r25 level:0x1e];
                    r29 = r29;
                    r27 = [r0 retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r22 class]];
                    [r27 release];
                    [r25 release];
            }
            [r23 release];
            [r24 release];
    }
    r23 = [[r21 host] retain];
    r0 = [MPAPIEndpoints baseHostname];
    r29 = r29;
    r25 = [r0 retain];
    r24 = [r23 isEqualToString:r2];
    [r25 release];
    [r23 release];
    r0 = [r21 retain];
    r21 = r0;
    r23 = r0;
    if (r24 != 0x0) {
            r0 = [NSURLComponents componentsWithURL:r21 resolvingAgainstBaseURL:0x0];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 queryItems] retain];
            var_58 = [r19 retain];
            [r23 enumerateObjectsUsingBlock:&var_78];
            [r23 release];
            [r25 setQueryItems:0x0];
            r0 = [r25 URL];
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            [var_58 release];
            [r25 release];
    }
    r0 = [[&var_88 super] initWithURL:r23];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setHTTPShouldHandleCookies:0x0];
            r0 = [MPURLRequest userAgent];
            r29 = r29;
            r26 = [r0 retain];
            [r22 setValue:r26 forHTTPHeaderField:@"User-Agent"];
            [r26 release];
            [r22 setCachePolicy:0x1];
            [r22 setTimeoutInterval:0x1];
            if (r24 != 0x0 || [r19 count] != 0x0) {
                    [r22 setHTTPMethod:@"POST"];
                    [r22 setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
                    r0 = @class(NSJSONSerialization);
                    r0 = [r0 dataWithJSONObject:r19 options:0x0 error:&var_90];
                    r29 = r29;
                    r24 = [r0 retain];
                    r0 = [var_90 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            r27 = [[MPLogEvent error:r26 message:0x0] retain];
                            [MPLogging logEvent:r27 source:0x0 fromClass:[r22 class]];
                            [r26 release];
                            r26 = r27;
                    }
                    else {
                            [r24 length];
                            r20 = [[NSString stringWithFormat:@"%lu"] retain];
                            [r22 setValue:r20 forHTTPHeaderField:@"Content-Length"];
                            [r20 release];
                            [r22 setHTTPBody:r24];
                    }
                    [r26 release];
                    [r24 release];
            }
    }
    [r23 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

@end