@implementation NSURLRequest

+(void *)requestWithUrlString:(void *)arg2 ISuniqueIdentifier:(void *)arg3 {
    var_10 = r20;
    r20 = [arg2 retain];
    r19 = [[NSURLRequest requestWithUrlString:r20 ISuniqueIdentifier:arg3 method:0x0 headers:0x0 data:0x0 cache:0x0 timeout:var_10] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getISuniqueIdentifier {
    r0 = [NSURLProtocol propertyForKey:@"identifier" inRequest:self];
    return r0;
}

+(void *)requestWithUrlString:(void *)arg2 ISuniqueIdentifier:(void *)arg3 method:(void *)arg4 headers:(void *)arg5 data:(void *)arg6 cache:(bool)arg7 timeout:(double)arg8 {
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
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
    r29 = &saved_fp;
    v8 = v0;
    r26 = arg7;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    if ([SSAHelperMethods isStringExistAndNotEmpty:r2] != 0x0 && [SSAHelperMethods isStringExistAndNotEmpty:r2] != 0x0) {
            r27 = [[NSURL URLWithString:r19] retain];
            r0 = [NSMutableURLRequest requestWithURL:r27];
            r29 = r29;
            r24 = [r0 retain];
            [r27 release];
            [NSURLProtocol setProperty:r20 forKey:@"identifier" inRequest:r24];
            if ([SSAHelperMethods isStringExistAndNotEmpty:r2] == 0x0) {
                    if ((r26 & 0x1) != 0x0) {
                            if (r22 != 0x0) {
                                    var_68 = [r24 retain];
                                    [r22 enumerateKeysAndObjectsUsingBlock:&var_88];
                                    [var_68 release];
                            }
                    }
                    else {
                            [r24 setCachePolicy:0x1];
                            if (r22 != 0x0) {
                                    var_68 = [r24 retain];
                                    [r22 enumerateKeysAndObjectsUsingBlock:&var_88];
                                    [var_68 release];
                            }
                    }
            }
            else {
                    r0 = [r21 uppercaseString];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r24 setHTTPMethod:r27];
                    [r27 release];
                    if ((r26 & 0x1) == 0x0) {
                            [r24 setCachePolicy:0x1];
                            if (r22 != 0x0) {
                                    var_68 = [r24 retain];
                                    [r22 enumerateKeysAndObjectsUsingBlock:&var_88];
                                    [var_68 release];
                            }
                    }
                    else {
                            if (r22 != 0x0) {
                                    var_68 = [r24 retain];
                                    [r22 enumerateKeysAndObjectsUsingBlock:&var_88];
                                    [var_68 release];
                            }
                    }
            }
            r2 = r23;
            if ([SSAHelperMethods isStringExistAndNotEmpty:r2] != 0x0) {
                    r25 = [[r23 dataUsingEncoding:0x4] retain];
                    if (r25 != 0x0) {
                            r2 = 0x4;
                            [r24 setHTTPBody:r25];
                    }
                    [r25 release];
            }
            if (d8 > 0x0) {
                    [r24 setTimeoutInterval:r2];
            }
            r25 = [r24 copy];
            [r24 release];
    }
    else {
            r25 = 0x0;
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

-(void *)fb_CURLCommand {
    r31 = r31 - 0x160;
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
    r19 = self;
    r25 = [[NSMutableString stringWithString:@"curl -k -i "] retain];
    r0 = [r19 HTTPMethod];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEqualToString:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 HTTPBody];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r22 = [[NSString alloc] initWithData:r21 encoding:0x4];
                    [r25 appendFormat:@"-d \"%@\" "];
                    [r22 release];
            }
            [r21 release];
    }
    var_110 = q0;
    var_128 = r19;
    r0 = [r19 allHTTPHeaderFields];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 allKeys];
    r29 = r29;
    r19 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r19;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r20 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            r19 = var_128;
                            if (*var_110 != r20) {
                                    objc_enumerationMutation(var_130);
                            }
                            r0 = [r19 allHTTPHeaderFields];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            [r0 retain];
                            [r23 release];
                            [r25 appendFormat:r2];
                            [r19 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(var_130, var_138);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_130 release];
    r0 = [var_128 URL];
    r0 = [r0 retain];
    r21 = [[r0 absoluteString] retain];
    r19 = [[NSString stringWithFormat:@"\"%@\""] retain];
    [r25 appendString:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end