@implementation TR_AFHTTPRequestSerializer

+(void *)serializer {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAllowsCellularAccess:(bool)arg2 {
    r22 = [NSStringFromSelector(@selector(allowsCellularAccess)) retain];
    [self willChangeValueForKey:r22];
    [r22 release];
    *(int8_t *)(int64_t *)&self->_allowsCellularAccess = arg2;
    r19 = [NSStringFromSelector(@selector(allowsCellularAccess)) retain];
    [self didChangeValueForKey:r19];
    [r19 release];
    return;
}

-(void)dealloc {
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
    r19 = self;
    r0 = sub_10041082c();
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = *(0x0 + r28 * 0x8);
                            if ([r19 respondsToSelector:NSSelectorFromString(r25)] != 0x0) {
                                    [r19 removeObserver:r2 forKeyPath:r3 context:r4];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [[&var_128 super] dealloc];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setCachePolicy:(unsigned long long)arg2 {
    r22 = [NSStringFromSelector(@selector(cachePolicy)) retain];
    [self willChangeValueForKey:r22];
    [r22 release];
    self->_cachePolicy = arg2;
    r19 = [NSStringFromSelector(@selector(cachePolicy)) retain];
    [self didChangeValueForKey:r19];
    [r19 release];
    return;
}

-(void *)init {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = [[r29 - 0xe8 super] init];
    if (r19 != 0x0) {
            [r19 setStringEncoding:0x4];
            r20 = [[NSMutableDictionary dictionary] retain];
            [r19 setMutableHTTPRequestHeaders:r20];
            [r20 release];
            r20 = dispatch_queue_create("requestHeaderModificationQueue", *__dispatch_queue_attr_concurrent);
            [r19 setRequestHeaderModificationQueue:r20];
            [r20 release];
            r20 = [[NSMutableArray array] retain];
            r21 = [[NSLocale preferredLanguages] retain];
            r20 = [r20 retain];
            var_F0 = r20;
            [r21 enumerateObjectsUsingBlock:&var_110];
            [r21 release];
            var_160 = r20;
            r20 = [[r20 componentsJoinedByString:@", "] retain];
            [r19 setValue:r20 forHTTPHeaderField:@"Accept-Language"];
            [r20 release];
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            var_168 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            var_170 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            var_178 = r0;
            if (r0 != 0x0) {
                    var_184 = 0x0;
                    var_158 = r0;
            }
            else {
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    var_1A8 = r0;
                    r0 = [r0 infoDictionary];
                    r0 = [r0 retain];
                    var_1B0 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    var_158 = [r0 retain];
                    var_184 = 0x1;
            }
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            var_190 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    var_194 = 0x0;
                    r22 = r21;
            }
            else {
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    var_1B8 = r0;
                    r0 = [r0 infoDictionary];
                    r0 = [r0 retain];
                    var_1C0 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    var_194 = 0x1;
            }
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            r20 = r0;
            r23 = [[r0 model] retain];
            r0 = @class(UIDevice);
            r0 = [r0 currentDevice];
            r0 = [r0 retain];
            r28 = r0;
            r25 = [[r0 systemVersion] retain];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            r26 = r0;
            [r0 scale];
            r0 = [NSString stringWithFormat:@"%@/%@ (%@; iOS %@; Scale/%0.2f)"];
            r29 = r29;
            r24 = [r0 retain];
            [r26 release];
            [r25 release];
            [r28 release];
            [r23 release];
            [r20 release];
            if (var_194 != 0x0) {
                    [r22 release];
                    [var_1C0 release];
                    [var_1B8 release];
            }
            [r21 release];
            [r27 release];
            [var_190 release];
            if (var_184 != 0x0) {
                    [var_158 release];
                    [var_1B0 release];
                    [var_1A8 release];
            }
            [var_178 release];
            [var_170 release];
            [var_168 release];
            if (r24 != 0x0) {
                    if (([r24 canBeConvertedToEncoding:0x1] & 0x1) == 0x0) {
                            r0 = [r24 mutableCopy];
                            r20 = r0;
                            if (CFStringTransform(r0, 0x0, @"Any-Latin; Latin-ASCII; [:^ASCII:] Remove", 0x0) != 0x0) {
                                    r21 = [r20 retain];
                                    [r24 release];
                                    r24 = r21;
                            }
                            [r20 release];
                    }
                    var_158 = r24;
                    [r19 setValue:r2 forHTTPHeaderField:r3];
            }
            else {
                    var_158 = r24;
            }
            r20 = [[NSSet setWithObjects:@"GET"] retain];
            [r19 setHTTPMethodsEncodingParametersInURI:r20];
            [r20 release];
            r20 = [[NSMutableSet set] retain];
            [r19 setMutableObservedChangedKeyPaths:r20];
            [r20 release];
            var_140 = q0;
            r0 = sub_10041082c();
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r27 = *var_140;
                    do {
                            r24 = 0x0;
                            do {
                                    if (*var_140 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r26 = *(var_148 + r24 * 0x8);
                                    if ([r19 respondsToSelector:NSSelectorFromString(r26)] != 0x0) {
                                            [r19 addObserver:r2 forKeyPath:r3 options:r4 context:r5];
                                    }
                                    r24 = r24 + 0x1;
                            } while (r24 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
            r20 = [r19 retain];
            [var_158 release];
            [var_F0 release];
            [var_160 release];
    }
    else {
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setHTTPShouldHandleCookies:(bool)arg2 {
    r22 = [NSStringFromSelector(@selector(HTTPShouldHandleCookies)) retain];
    [self willChangeValueForKey:r22];
    [r22 release];
    *(int8_t *)(int64_t *)&self->_HTTPShouldHandleCookies = arg2;
    r19 = [NSStringFromSelector(@selector(HTTPShouldHandleCookies)) retain];
    [self didChangeValueForKey:r19];
    [r19 release];
    return;
}

-(void)setHTTPShouldUsePipelining:(bool)arg2 {
    r22 = [NSStringFromSelector(@selector(HTTPShouldUsePipelining)) retain];
    [self willChangeValueForKey:r22];
    [r22 release];
    *(int8_t *)(int64_t *)&self->_HTTPShouldUsePipelining = arg2;
    r19 = [NSStringFromSelector(@selector(HTTPShouldUsePipelining)) retain];
    [self didChangeValueForKey:r19];
    [r19 release];
    return;
}

-(void)setNetworkServiceType:(unsigned long long)arg2 {
    r22 = [NSStringFromSelector(@selector(networkServiceType)) retain];
    [self willChangeValueForKey:r22];
    [r22 release];
    self->_networkServiceType = arg2;
    r19 = [NSStringFromSelector(@selector(networkServiceType)) retain];
    [self didChangeValueForKey:r19];
    [r19 release];
    return;
}

-(void)setTimeoutInterval:(double)arg2 {
    r21 = [NSStringFromSelector(@selector(timeoutInterval)) retain];
    [self willChangeValueForKey:r21];
    [r21 release];
    self->_timeoutInterval = d8;
    r20 = [NSStringFromSelector(@selector(timeoutInterval)) retain];
    [self didChangeValueForKey:r20];
    [r20 release];
    return;
}

-(void *)HTTPRequestHeaders {
    r0 = [self requestHeaderModificationQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_80);
    [r20 release];
    [*(&var_50 + 0x28) retain];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setValue:(void *)arg2 forHTTPHeaderField:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self requestHeaderModificationQueue] retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_barrier_async(r22, &var_58);
    [r22 release];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)valueForHTTPHeaderField:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self requestHeaderModificationQueue] retain];
    var_60 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_88);
    [r21 release];
    [*(&var_50 + 0x28) retain];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setAuthorizationHeaderFieldWithUsername:(void *)arg2 password:(void *)arg3 {
    r22 = [arg2 retain];
    r21 = [[NSString stringWithFormat:@"%@:%@"] retain];
    [r22 release];
    r22 = [[r21 dataUsingEncoding:0x4] retain];
    [r21 release];
    r21 = [[r22 base64EncodedStringWithOptions:0x0] retain];
    r20 = [[NSString stringWithFormat:@"Basic %@"] retain];
    [self setValue:r20 forHTTPHeaderField:@"Authorization"];
    [r20 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)clearAuthorizationHeader {
    r0 = [self requestHeaderModificationQueue];
    r0 = [r0 retain];
    dispatch_barrier_async(r0, &var_38);
    [r20 release];
    return;
}

-(void)setQueryStringSerializationWithStyle:(unsigned long long)arg2 {
    [self setQueryStringSerializationStyle:arg2];
    [self setQueryStringSerialization:0x0];
    return;
}

-(void)setQueryStringSerializationWithBlock:(void *)arg2 {
    [self setQueryStringSerialization:arg2];
    return;
}

-(void *)requestWithMethod:(void *)arg2 URLString:(void *)arg3 parameters:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x170;
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
    r25 = arg5;
    r21 = self;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[NSURL URLWithString:r20] retain];
    [r20 release];
    r0 = [NSMutableURLRequest alloc];
    r0 = [r0 initWithURL:r23];
    var_130 = r0;
    [r0 setHTTPMethod:r22];
    [r22 release];
    var_108 = q0;
    r0 = sub_10041082c();
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_138 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 != 0x0) {
            var_150 = r19;
            var_148 = r23;
            var_140 = r25;
            r24 = *var_108;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_108 != r24) {
                                    objc_enumerationMutation(var_120);
                            }
                            r22 = *(var_110 + r19 * 0x8);
                            r0 = [r21 mutableObservedChangedKeyPaths];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = [r0 containsObject:r22];
                            [r0 release];
                            if (r23 != 0x0) {
                                    r0 = [r21 valueForKeyPath:r22];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_130 setValue:r2 forKey:r3];
                                    [r23 release];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r26);
                    r26 = objc_msgSend(var_120, var_138);
            } while (r26 != 0x0);
            r23 = var_148;
            r25 = var_140;
            r19 = var_150;
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r20 = [[r21 requestBySerializingRequest:var_130 withParameters:r19 error:r25] retain];
    [r19 release];
    r19 = [r20 mutableCopy];
    [var_130 release];
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)requestWithMultipartFormRequest:(void *)arg2 writingStreamContentsToFile:(void *)arg3 completionHandler:(void *)arg4 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [[r19 HTTPBodyStream] retain];
    r23 = [[NSOutputStream alloc] initWithURL:r20 append:0x0];
    r24 = [dispatch_get_global_queue(0x0, 0x0) retain];
    [r21 retain];
    [r23 retain];
    [r22 retain];
    dispatch_async(r24, &var_B0);
    [r24 release];
    [[r19 mutableCopy] setHTTPBodyStream:0x0];
    [r22 release];
    [r23 release];
    [r21 release];
    _Block_object_dispose(&var_70, 0x8);
    [0x0 release];
    [r23 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void *)multipartFormRequestWithMethod:(void *)arg2 URLString:(void *)arg3 parameters:(void *)arg4 constructingBodyWithBlock:(void *)arg5 error:(void * *)arg6 {
    r31 = r31 - 0x1e0;
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
    r26 = self;
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [r26 requestWithMethod:r23 URLString:r22 parameters:0x0 error:arg6];
    r29 = &saved_fp;
    r24 = [r0 retain];
    var_100 = &var_108;
    var_E0 = [[TR_AFStreamingMultipartFormData alloc] initWithURLRequest:r24 stringEncoding:0x4];
    if (r21 == 0x0) goto loc_10040b5f8;

loc_10040b2e0:
    var_138 = q0;
    r0 = sub_100409440(0x0, r21);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    r27 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r27 == 0x0) goto loc_10040b5f0;

loc_10040b330:
    r19 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = *var_138;
    var_1B8 = r22;
    stack[-448] = r23;
    var_1C8 = r24;
    stack[-464] = r20;
    var_1A8 = r19;
    var_1A0 = r26;
    goto loc_10040b374;

loc_10040b374:
    r24 = 0x0;
    goto loc_10040b3c4;

loc_10040b3c4:
    if (*var_138 != var_150) {
            objc_enumerationMutation(r25);
    }
    var_158 = @selector(isKindOfClass:);
    r28 = @selector(value);
    r26 = @selector(class);
    r19 = *(var_140 + r24 * 0x8);
    r0 = objc_msgSend(r19, r28);
    r29 = r29;
    [r0 retain];
    objc_msgSend(@class(NSData), r26);
    r22 = objc_msgSend(r20, var_158);
    [r20 release];
    if (r22 == 0x0) goto loc_10040b444;

loc_10040b430:
    r0 = [r19 value];
    r29 = r29;
    goto loc_10040b4b4;

loc_10040b4b4:
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r23 = *(var_100 + 0x28);
            r0 = [r19 field];
            r0 = [r0 retain];
            r0 = [r0 description];
            r29 = r29;
            [r0 retain];
            [r23 appendPartWithFormData:r2 name:r3];
            [r22 release];
            [r19 release];
    }
    goto loc_10040b584;

loc_10040b584:
    [r20 release];
    r24 = r24 + 0x1;
    if (r24 < r27) goto loc_10040b3c4;

loc_10040b598:
    r27 = objc_msgSend(r25, var_1A8);
    r22 = var_1B8;
    r23 = stack[-448];
    r24 = var_1C8;
    r20 = stack[-464];
    if (r27 != 0x0) goto loc_10040b374;

loc_10040b5f0:
    [r25 release];
    goto loc_10040b5f8;

loc_10040b5f8:
    if (r20 != 0x0) {
            (*(r20 + 0x10))(r20, *(var_100 + 0x28));
    }
    var_58 = **___stack_chk_guard;
    r19 = [[*(var_100 + 0x28) requestByFinalizingMultipartFormData] retain];
    _Block_object_dispose(&var_108, 0x8);
    [var_E0 release];
    [r24 release];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10040b444:
    r28 = @selector(value);
    var_180 = @selector(isEqual:);
    r20 = [objc_msgSend(r19, r28) retain];
    r0 = [NSNull null];
    r29 = r29;
    r22 = [r0 retain];
    r23 = objc_msgSend(r20, var_180);
    [r22 release];
    [r20 release];
    if (r23 == 0x0) goto loc_10040b4c4;

loc_10040b4a0:
    r0 = [NSData data];
    r29 = r29;
    goto loc_10040b4b4;

loc_10040b4c4:
    r0 = [r19 value];
    r0 = [r0 retain];
    [[r0 description] retain];
    [var_1A0 stringEncoding];
    r0 = [r22 dataUsingEncoding:r2];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    [r23 release];
    if (r20 != 0x0) {
            r23 = *(var_100 + 0x28);
            r0 = [r19 field];
            r0 = [r0 retain];
            r0 = [r0 description];
            r29 = r29;
            [r0 retain];
            [r23 appendPartWithFormData:r2 name:r3];
            [r22 release];
            [r19 release];
    }
    goto loc_10040b584;
}

+(bool)supportsSecureCoding {
    return 0x1;
}

+(bool)automaticallyNotifiesObserversForKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = sub_10041082c();
    r0 = [r0 retain];
    r22 = [r0 containsObject:r2];
    [r0 release];
    if ((r22 & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r0 = [[&var_30 super] automaticallyNotifiesObserversForKey:r19];
            r20 = r0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r20 = self;
    r19 = [arg2 retain];
    if (*qword_1011bd2c0 == arg5) {
            r21 = [[r21 objectForKeyedSubscript:**_NSKeyValueChangeNewKey] retain];
            r22 = [[NSNull null] retain];
            r23 = [r21 isEqual:r22];
            [r22 release];
            [r21 release];
            r20 = [[r20 mutableObservedChangedKeyPaths] retain];
            if (r23 != 0x0) {
                    r1 = @selector(removeObject:);
            }
            else {
                    r1 = @selector(addObject:);
            }
            objc_msgSend(r20, r1);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)requestBySerializingRequest:(void *)arg2 withParameters:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0xa0;
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
    r24 = arg4;
    r23 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [r20 mutableCopy];
    r0 = [r23 HTTPRequestHeaders];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r20 = [r20 retain];
    var_60 = r20;
    r21 = [r21 retain];
    var_58 = r21;
    [r22 enumerateKeysAndObjectsUsingBlock:&var_80];
    [r22 release];
    if (r19 == 0x0) goto loc_10040be24;

loc_10040bd80:
    r0 = [r23 queryStringSerialization];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10040be10;

loc_10040bda8:
    r26 = [[r23 queryStringSerialization] retain];
    r0 = (*(r26 + 0x10))();
    r29 = r29;
    r22 = [r0 retain];
    r25 = [0x0 retain];
    [r26 release];
    if (r25 == 0x0) goto loc_10040be2c;

loc_10040bdfc:
    if (r24 != 0x0) {
            r0 = objc_retainAutorelease(r25);
            *r24 = r0;
    }
    else {
            r0 = r25;
    }
    [r0 release];
    r23 = 0x0;
    goto loc_10040c0b8;

loc_10040c0b8:
    [r22 release];
    [var_58 release];
    [var_60 release];
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = [r23 autorelease];
    return r0;

loc_10040be2c:
    [r25 release];
    goto loc_10040be5c;

loc_10040be5c:
    r24 = [[r23 HTTPMethodsEncodingParametersInURI] retain];
    r0 = [r20 HTTPMethod];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 uppercaseString];
    r29 = r29;
    r26 = [r0 retain];
    r2 = r26;
    r27 = [r24 containsObject:r2];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r27 == 0x0) goto loc_10040c000;

loc_10040bee0:
    if (r22 == 0x0 || [r22 length] == 0x0) goto loc_10040c0ac;

loc_10040bef8:
    r0 = [r21 URL];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 absoluteString] retain];
    r0 = [r21 URL];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 query];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = @"&%@";
            }
            else {
                    r2 = @"?%@";
            }
    }
    r28 = [[r24 stringByAppendingFormat:r2] retain];
    r25 = [[NSURL URLWithString:r28] retain];
    [r21 setURL:r25];
    [r25 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r24 release];
    goto loc_10040c0a4;

loc_10040c0a4:
    [r23 release];
    goto loc_10040c0ac;

loc_10040c0ac:
    r23 = [r21 retain];
    goto loc_10040c0b8;

loc_10040c000:
    if (r22 == 0x0) {
            r22 = @"";
            [r22 retain];
    }
    r0 = [r21 valueForHTTPHeaderField:@"Content-Type"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r21 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    }
    r23 = [[r22 dataUsingEncoding:[r23 stringEncoding]] retain];
    [r21 setHTTPBody:r23];
    goto loc_10040c0a4;

loc_10040be10:
    if ([r23 queryStringSerializationStyle] != 0x0) {
            r22 = 0x0;
    }
    else {
            r0 = sub_10040927c(r19);
            r29 = r29;
            r22 = [r0 retain];
    }
    goto loc_10040be5c;

loc_10040be24:
    r22 = 0x0;
    goto loc_10040be5c;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self requestHeaderModificationQueue] retain];
    var_30 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r21 release];
    r19 = [self queryStringSerializationStyle];
    r21 = [NSStringFromSelector(@selector(queryStringSerializationStyle)) retain];
    [r20 encodeInteger:r19 forKey:r21];
    [r21 release];
    [var_30 release];
    [r20 release];
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [self init];
    if (r20 != 0x0) {
            r23 = [NSDictionary class];
            r24 = [NSStringFromSelector(@selector(mutableHTTPRequestHeaders)) retain];
            r0 = [r19 decodeObjectOfClass:r23 forKey:r24];
            r0 = [r0 retain];
            r25 = [r0 mutableCopy];
            [r20 setMutableHTTPRequestHeaders:r25];
            [r25 release];
            [r0 release];
            [r24 release];
            r21 = [NSNumber class];
            r23 = [NSStringFromSelector(@selector(queryStringSerializationStyle)) retain];
            r0 = [r19 decodeObjectOfClass:r21 forKey:r23];
            r0 = [r0 retain];
            [r20 setQueryStringSerializationStyle:[r0 unsignedIntegerValue]];
            [r0 release];
            [r23 release];
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

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r21 = [[[self class] allocWithZone:arg2] init];
    r22 = [[self requestHeaderModificationQueue] retain];
    [r21 retain];
    dispatch_sync(r22, &var_58);
    [r22 release];
    [r21 setQueryStringSerializationStyle:[self queryStringSerializationStyle]];
    r19 = [[self queryStringSerialization] retain];
    [r21 setQueryStringSerialization:r19];
    [r19 release];
    r19 = [r21 retain];
    [r21 release];
    [r19 release];
    r0 = r19;
    return r0;
}

-(void)setStringEncoding:(unsigned long long)arg2 {
    self->_stringEncoding = arg2;
    return;
}

-(unsigned long long)stringEncoding {
    r0 = self->_stringEncoding;
    return r0;
}

-(bool)allowsCellularAccess {
    r0 = *(int8_t *)(int64_t *)&self->_allowsCellularAccess;
    return r0;
}

-(unsigned long long)cachePolicy {
    r0 = self->_cachePolicy;
    return r0;
}

-(bool)HTTPShouldHandleCookies {
    r0 = *(int8_t *)(int64_t *)&self->_HTTPShouldHandleCookies;
    return r0;
}

-(bool)HTTPShouldUsePipelining {
    r0 = *(int8_t *)(int64_t *)&self->_HTTPShouldUsePipelining;
    return r0;
}

-(unsigned long long)networkServiceType {
    r0 = self->_networkServiceType;
    return r0;
}

-(double)timeoutInterval {
    r0 = self;
    return r0;
}

-(void)setHTTPMethodsEncodingParametersInURI:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_HTTPMethodsEncodingParametersInURI, arg2);
    return;
}

-(void *)HTTPMethodsEncodingParametersInURI {
    r0 = self->_HTTPMethodsEncodingParametersInURI;
    return r0;
}

-(void *)mutableObservedChangedKeyPaths {
    r0 = self->_mutableObservedChangedKeyPaths;
    return r0;
}

-(void)setMutableObservedChangedKeyPaths:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mutableObservedChangedKeyPaths, arg2);
    return;
}

-(void *)mutableHTTPRequestHeaders {
    r0 = self->_mutableHTTPRequestHeaders;
    return r0;
}

-(void)setMutableHTTPRequestHeaders:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mutableHTTPRequestHeaders, arg2);
    return;
}

-(void *)requestHeaderModificationQueue {
    r0 = self->_requestHeaderModificationQueue;
    return r0;
}

-(void)setRequestHeaderModificationQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestHeaderModificationQueue, arg2);
    return;
}

-(unsigned long long)queryStringSerializationStyle {
    r0 = self->_queryStringSerializationStyle;
    return r0;
}

-(void)setQueryStringSerializationStyle:(unsigned long long)arg2 {
    self->_queryStringSerializationStyle = arg2;
    return;
}

-(void *)queryStringSerialization {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_queryStringSerialization)), 0x0);
    return r0;
}

-(void)setQueryStringSerialization:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queryStringSerialization, 0x0);
    objc_storeStrong((int64_t *)&self->_requestHeaderModificationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_mutableHTTPRequestHeaders, 0x0);
    objc_storeStrong((int64_t *)&self->_mutableObservedChangedKeyPaths, 0x0);
    objc_storeStrong((int64_t *)&self->_HTTPMethodsEncodingParametersInURI, 0x0);
    return;
}

@end