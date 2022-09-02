@implementation NSURLResponse

-(void *)serializeToControllerCallback {
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
    r29 = &saved_fp;
    r20 = self;
    [NSHTTPURLResponse class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r22 = [r20 retain];
            r19 = [NSMutableDictionary new];
            r23 = [[NSNumber numberWithInteger:[r20 statusCode]] retain];
            [r19 setObject:r23 forKey:@"statusCode"];
            [r23 release];
            r24 = [[r20 allHeaderFields] retain];
            [r22 release];
            r0 = [NSDictionary dictionaryWithDictionary:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            if (r22 != 0x0 && [r22 count] != 0x0) {
                    [r19 setObject:r22 forKey:@"headers"];
            }
            r20 = [[NSDictionary dictionaryWithDictionary:r2] retain];
            [r22 release];
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)fbad_httpResponse {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [NSHTTPURLResponse class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

@end