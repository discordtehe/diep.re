@implementation ADCGCDWebServerConnection

-(void)_readData:(void *)arg2 withLength:(unsigned long long)arg3 completionBlock:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r23 = *(int32_t *)(int64_t *)&self->_socket;
    r24 = [dispatch_get_global_queue(0x0, 0x0) retain];
    [r22 retain];
    var_38 = r19;
    [r19 retain];
    dispatch_read(r23, arg3, r24, &var_68);
    [r24 release];
    [var_38 release];
    [r22 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)_readHeaders:(void *)arg2 withCompletionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    var_38 = r21;
    r21 = [r21 retain];
    var_28 = r19;
    r19 = [r19 retain];
    [self _readData:r21 withLength:0xffffffffffffffff completionBlock:&var_58];
    [var_28 release];
    [var_38 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)_readBodyWithRemainingLength:(unsigned long long)arg2 completionBlock:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [NSMutableData alloc];
    r0 = [r0 initWithCapacity:0x40000];
    r22 = [r0 retain];
    var_40 = r21;
    r21 = [r21 retain];
    [self _readData:r22 withLength:arg2 completionBlock:&var_70];
    [var_40 release];
    [r0 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)_readNextBodyChunk:(void *)arg2 completionBlock:(void *)arg3 {
    r31 = r31 - 0xf0;
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
    var_A8 = self;
    r19 = [arg2 retain];
    var_C8 = [arg3 retain];
    r20 = *0x1011d22e0;
    [r19 length];
    r28 = [r19 rangeOfData:r20 options:0x0 range:0x0];
    if (r28 != 0x7fffffffffffffff) goto loc_10021f178;

loc_10021f0f4:
    r20 = [r19 retain];
    r21 = var_C8;
    var_60 = [r21 retain];
    [var_A8 _readData:r20 withLength:0xffffffffffffffff completionBlock:&var_90];
    [var_60 release];
    r0 = r20;
    goto loc_10021f170;

loc_10021f170:
    [r0 release];
    goto loc_10021f448;

loc_10021f448:
    [r21 release];
    [r19 release];
    return;

loc_10021f178:
    r0 = [NSData dataWithBytes:";" length:0x1];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [r19 rangeOfData:r20 options:0x0 range:0x0];
    [r20 release];
    r0 = objc_retainAutorelease(r19);
    r20 = r0;
    r1 = @selector(bytes);
    r0 = objc_msgSend(r0, r1);
    if (r21 == 0x7fffffffffffffff) {
            if (!CPU_FLAGS & E) {
                    r1 = r21;
            }
            else {
                    r1 = r28;
            }
    }
    r24 = sub_10021f478(r0, r1);
    if (r24 == 0x0) goto loc_10021f2e0;

loc_10021f1f4:
    if (r24 == 0x7fffffffffffffff) goto loc_10021f35c;

loc_10021f1fc:
    r0 = [r20 length];
    r25 = r28 + @selector(rangeOfData:options:range:);
    r27 = 0x2 + r25 + r24;
    if (r0 < r27) goto loc_10021f0f4;

loc_10021f21c:
    r0 = objc_retainAutorelease(r20);
    r21 = r0;
    r8 = r24 + @selector(rangeOfData:options:range:) + [r0 bytes] + r28;
    if (*(int8_t *)r8 != 0xd || *(int8_t *)(r8 + 0x1) != 0xa) goto loc_10021f38c;

loc_10021f254:
    r26 = var_A8->_request;
    r0 = [r21 subdataWithRange:r25];
    r29 = r29;
    r25 = [r0 retain];
    r26 = [r26 performWriteData:r25 error:r29 - 0x58];
    r24 = [0x0 retain];
    [r25 release];
    if (r26 == 0x0) goto loc_10021f3dc;

loc_10021f2b4:
    [r21 replaceBytesInRange:0x0 withBytes:r27 length:0x0];
    [r24 release];
    goto loc_10021f318;

loc_10021f318:
    r21 = *0x1011d22e0;
    [r20 length];
    r28 = [r20 rangeOfData:r21 options:0x0 range:0x0];
    if (r28 != 0x7fffffffffffffff) goto loc_10021f178;
    goto loc_10021f0f4;

loc_10021f3dc:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed writing request body on socket %i: %@"];
    r21 = var_C8;
    (*(r21 + 0x10))(r21, 0x0);
    r0 = r24;
    goto loc_10021f170;

loc_10021f38c:
    r5 = @"Missing terminating CRLF sequence for chunk reading request body on socket %i";
    goto loc_10021f3b8;

loc_10021f3b8:
    r2 = 0x0;
    r4 = 0x0;
    [ADCLogManager briefLogWithModuleID:r2 isPublic:0x0 level:r4 withFormat:r5];
    r21 = var_C8;
    r8 = *(r21 + 0x10);
    r0 = r21;
    r1 = 0x0;
    goto loc_10021f444;

loc_10021f444:
    (r8)(r0, r1, r2, 0x0, r4);
    goto loc_10021f448;

loc_10021f35c:
    r5 = @"Invalid chunk length reading request body on socket %i";
    goto loc_10021f3b8;

loc_10021f2e0:
    r21 = *0x1011d22e8;
    [r20 length] - r28;
    r2 = r21;
    r4 = r28;
    if ([r20 rangeOfData:r2 options:0x0 range:r4] != 0x7fffffffffffffff) goto loc_10021f434;
    goto loc_10021f318;

loc_10021f434:
    r21 = var_C8;
    r8 = *(r21 + 0x10);
    r1 = 0x1;
    r0 = r21;
    goto loc_10021f444;
}

-(void)_writeData:(void *)arg2 withCompletionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = objc_retainAutorelease(r21);
    r22 = [r0 bytes];
    r23 = [r0 length];
    r24 = [dispatch_get_global_queue(0x0, 0x0) retain];
    r21 = [r0 retain];
    var_58 = r21;
    r0 = dispatch_data_create(r22, r23, r24, &var_78);
    [r24 release];
    r23 = *(int32_t *)(int64_t *)&self->_socket;
    r20 = [r24 retain];
    var_88 = r21;
    [r21 retain];
    var_80 = r19;
    [r19 retain];
    dispatch_write(r23, r0, r20, &var_B0);
    [r20 release];
    [var_80 release];
    [var_88 release];
    [r22 release];
    [var_58 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)_writeHeadersWithCompletionBlock:(void *)arg2 {
    r20 = self->_responseMessage;
    r21 = [arg2 retain];
    r20 = CFHTTPMessageCopySerializedMessage(r20);
    [self _writeData:r20 withCompletionBlock:r21];
    [r21 release];
    CFRelease(r20);
    return;
}

-(void)_writeBodyWithCompletionBlock:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_response;
    r21 = [r0 retain];
    [r20 performReadDataWithCompletion:&var_50];
    [r0 release];
    [r21 release];
    return;
}

-(bool)isUsingIPv6 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = self->_localAddress;
    r0 = [r0 bytes];
    if (*(int8_t *)(r0 + 0x1) == 0x1e) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d22e0 == 0x0) {
            r0 = [NSData alloc];
            r0 = [r0 initWithBytes:"\r\n" length:0x2];
            r8 = *0x1011d22e0;
            *0x1011d22e0 = r0;
            [r8 release];
    }
    if (*0x1011d22e8 == 0x0) {
            r0 = [NSData alloc];
            r0 = [r0 initWithBytes:"\r\n\r\n" length:0x4];
            r8 = *0x1011d22e8;
            *0x1011d22e8 = r0;
            [r8 release];
    }
    if (*0x1011d22f0 == 0x0) {
            r0 = **_kCFAllocatorDefault;
            r0 = CFHTTPMessageCreateResponse(r0, 0x64, 0x0, **_kCFHTTPVersion1_1);
            r19 = r0;
            r0 = CFHTTPMessageCopySerializedMessage(r0);
            r8 = *0x1011d22f0;
            *0x1011d22f0 = r0;
            [r8 release];
            CFRelease(r19);
    }
    if (*0x1011d22f8 == 0x0) {
            r0 = [NSData alloc];
            r0 = [r0 initWithBytes:"0\r\n\r\n" length:0x5];
            r8 = *0x1011d22f8;
            *0x1011d22f8 = r0;
            [r8 release];
    }
    if (*0x1011d2300 == 0x0) {
            r19 = **_kCFAllocatorDefault;
            r20 = CFUUIDCreate(r19);
            r19 = CFUUIDCreateString(r19, r20);
            r0 = sub_100223bf4();
            r0 = [r0 retain];
            r8 = *0x1011d2300;
            *0x1011d2300 = r0;
            [r8 release];
            [r19 release];
            CFRelease(r20);
    }
    return;
}

-(void)_startProcessingRequest {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_request));
    r20 = [[self preflightRequest:*(r19 + r21)] retain];
    if (r20 != 0x0) {
            [r19 _finishProcessingRequest:r20];
    }
    else {
            [r19 processRequest:*(r19 + r21) completion:&var_48];
    }
    [r20 release];
    return;
}

-(void)_initializeResponseHeadersWithStatusCode:(long long)arg2 {
    self->_statusCode = arg2;
    r0 = **_kCFAllocatorDefault;
    r0 = CFHTTPMessageCreateResponse(r0, arg2, 0x0, **_kCFHTTPVersion1_1);
    *(self + sign_extend_64(*(int32_t *)ivar_offset(_responseMessage))) = r0;
    CFHTTPMessageSetHeaderFieldValue(r0, @"Connection", @"Close");
    CFHTTPMessageSetHeaderFieldValue(*(self + r22), @"Server", [[self->_server serverName] retain]);
    [r21 release];
    r19 = *(self + r22);
    [[NSDate date] retain];
    CFHTTPMessageSetHeaderFieldValue(r19, @"Date", sub_100223034());
    [r20 release];
    return;
}

-(void)_finishProcessingRequest:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r21 = [arg2 retain];
    if (r21 != 0x0) {
            r0 = [r19 overrideResponse:r21 forRequest:r19->_request];
            r22 = r0;
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            if (r20 != 0x0) {
                    if ([r20 hasBody] != 0x0) {
                            [r20 prepareForReading];
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_virtualHEAD));
                            r8 = *(int8_t *)(r19 + r8);
                            if (r8 == 0x0) {
                                    r24 = r8 ^ 0x1;
                                    r23 = [r20 performOpen:r29 - 0x58];
                                    r21 = [0x0 retain];
                                    if ((r23 & 0x1) == 0x0) {
                                            if (r21 != 0x0) {
                                                    r0 = [r21 domain];
                                                    r29 = r29;
                                                    r22 = [r0 retain];
                                                    if (r22 != **_NSPOSIXErrorDomain) {
                                                            r23 = 0x0;
                                                    }
                                                    else {
                                                            if ([r21 code] == 0x1) {
                                                                    if (CPU_FLAGS & E) {
                                                                            r23 = 0x1;
                                                                    }
                                                            }
                                                    }
                                                    [r22 release];
                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_socket));
                                                    r8 = *(int32_t *)(r19 + r8);
                                            }
                                            else {
                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_socket));
                                                    r8 = *(int32_t *)(r19 + r8);
                                            }
                                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                                    }
                                    else {
                                            objc_storeStrong((int64_t *)&r19->_response, r22);
                                    }
                            }
                            else {
                                    r24 = 0x0;
                                    r21 = 0x0;
                                    objc_storeStrong((int64_t *)&r19->_response, r22);
                            }
                    }
                    else {
                            r24 = 0x0;
                            r21 = 0x0;
                            objc_storeStrong((int64_t *)&r19->_response, r22);
                    }
                    [r21 release];
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            r20 = 0x0;
            r24 = 0x0;
    }
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_response));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            [r19 _initializeResponseHeadersWithStatusCode:[r0 statusCode]];
            r0 = *(r19 + r25);
            r0 = [r0 lastModifiedDate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = r19->_responseMessage;
                    r0 = *(r19 + r25);
                    r0 = [r0 lastModifiedDate];
                    r29 = r29;
                    [r0 retain];
                    CFHTTPMessageSetHeaderFieldValue(r23, @"Last-Modified", sub_100223034());
                    [r22 release];
            }
            r0 = *(r19 + r25);
            r0 = [r0 eTag];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = r19->_responseMessage;
                    r0 = *(r19 + r25);
                    r0 = [r0 eTag];
                    r29 = r29;
                    CFHTTPMessageSetHeaderFieldValue(r23, @"ETag", [r0 retain]);
                    [r22 release];
            }
            if ([*(r19 + r25) statusCode] >= 0xc8 && [*(r19 + r25) statusCode] <= 0x12b) {
                    r0 = *(r19 + r25);
                    r0 = [r0 cacheControlMaxAge];
                    r21 = r19->_responseMessage;
                    if (r0 != 0x0) {
                            [*(r19 + r25) cacheControlMaxAge];
                            r2 = [NSString stringWithFormat:r2];
                    }
                    else {
                            r2 = @"no-cache";
                    }
                    CFHTTPMessageSetHeaderFieldValue(r21, @"Cache-Control", r2);
            }
            r0 = *(r19 + r25);
            r0 = [r0 contentType];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = r19->_responseMessage;
                    r0 = *(r19 + r25);
                    r0 = [r0 contentType];
                    r29 = r29;
                    [r0 retain];
                    CFHTTPMessageSetHeaderFieldValue(r22, @"Content-Type", sub_100222c88());
                    [r21 release];
            }
            if ([*(r19 + r25) contentLength] != -0x1) {
                    [*(r19 + r25) contentLength];
                    CFHTTPMessageSetHeaderFieldValue(r22, @"Content-Length", [NSString stringWithFormat:r2]);
            }
            if ([*(r19 + r25) usesChunkedTransferEncoding] != 0x0) {
                    CFHTTPMessageSetHeaderFieldValue(r19->_responseMessage, @"Transfer-Encoding", @"chunked");
            }
            r0 = *(r19 + r25);
            r0 = [r0 additionalHeaders];
            r0 = [r0 retain];
            [r0 enumerateKeysAndObjectsUsingBlock:&var_80];
            [r0 release];
            [r19 _writeHeadersWithCompletionBlock:&var_B0];
    }
    else {
            [r19 abortRequest:r19->_request withStatusCode:0x1f4];
    }
    [r20 release];
    return;
}

-(void)_readBodyWithLength:(unsigned long long)arg2 initialData:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_request));
    r23 = [*(r20 + r26) performOpen:&var_58];
    r21 = [var_58 retain];
    if ((r23 & 0x1) == 0x0) goto loc_100220a30;

loc_10022095c:
    if ([r19 length] == 0x0) goto loc_100220a5c;

loc_100220974:
    r25 = [*(r20 + r26) performWriteData:r19 error:&var_60];
    r23 = [var_60 retain];
    [r21 release];
    if ((r25 & 0x1) == 0x0) goto loc_100220af4;

loc_1002209ac:
    r22 = r22 - [r19 length];
    if (r22 != 0x0) goto loc_100220a64;

loc_1002209c0:
    r22 = [*(r20 + r26) performClose:&var_A0];
    r21 = [var_A0 retain];
    [r23 release];
    if (r22 == 0x0) goto loc_100220a30;

loc_1002209f4:
    [r20 _startProcessingRequest];
    goto loc_100220ac4;

loc_100220ac4:
    [r21 release];
    [r19 release];
    return;

loc_100220a30:
    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    goto loc_100220a40;

loc_100220a40:
    [r20 abortRequest:*(r20 + r26) withStatusCode:0x1f4];
    goto loc_100220ac4;

loc_100220a64:
    r21 = [r23 retain];
    [r20 _readBodyWithRemainingLength:r22 completionBlock:&var_98];
    [r21 release];
    goto loc_100220ac4;

loc_100220af4:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_socket));
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed writing request body on socket %i: %@"];
    r24 = [*(r20 + r26) performClose:&var_68];
    r21 = [var_68 retain];
    [r23 release];
    if ((r24 & 0x1) == 0x0) {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    goto loc_100220a40;

loc_100220a5c:
    r23 = r21;
    if (r22 == 0x0) goto loc_1002209c0;
}

-(void)_readChunkedBodyWithInitialData:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_request));
    r22 = [*(r20 + r23) performOpen:&saved_fp - 0x38];
    r21 = [0x0 retain];
    if ((r22 & 0x1) != 0x0) {
            r22 = [[NSMutableData alloc] initWithData:r19];
            var_40 = [r21 retain];
            [r20 _readNextBodyChunk:r22 completionBlock:&var_68];
            [var_40 release];
            [r22 release];
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed opening request body for socket %i: %@"];
            [r20 abortRequest:*(r20 + r23) withStatusCode:0x1f4];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)_readRequestHeaders {
    self->_requestMessage = CFHTTPMessageCreateEmpty(**_kCFAllocatorDefault, 0x1);
    r20 = [[NSMutableData alloc] initWithCapacity:0x400];
    [self _readHeaders:r20 withCompletionBlock:&var_38];
    [r20 release];
    return;
}

-(void *)localAddressString {
    r0 = self->_localAddress;
    r0 = [r0 bytes];
    r0 = sub_100223a18(r0, 0x1);
    return r0;
}

-(void *)remoteAddressString {
    r0 = self->_remoteAddress;
    r0 = [r0 bytes];
    r0 = sub_100223a18(r0, 0x1);
    return r0;
}

-(void *)initWithServer:(void *)arg2 localAddress:(void *)arg3 remoteAddress:(void *)arg4 socket:(int)arg5 {
    r31 = r31 - 0x70;
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
    r23 = arg5;
    r24 = arg4;
    r25 = arg3;
    r26 = arg2;
    r19 = [r26 retain];
    r20 = [r25 retain];
    r21 = [r24 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 == 0x0) goto loc_10022196c;

loc_1002218d8:
    objc_storeStrong((int64_t *)&r22->_server, r26);
    objc_storeStrong((int64_t *)&r22->_localAddress, r25);
    objc_storeStrong((int64_t *)&r22->_remoteAddress, r24);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_socket));
    *(int32_t *)(r22 + r24) = r23;
    [r22->_server willStartConnection:r22];
    if (([r22 open] & 0x1) == 0x0) goto loc_10022197c;

loc_10022194c:
    *(int8_t *)(int64_t *)&r22->_opened = 0x1;
    [r22 _readRequestHeaders];
    goto loc_10022196c;

loc_10022196c:
    r23 = [r22 retain];
    goto loc_100221988;

loc_100221988:
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;

loc_10022197c:
    close(*(int32_t *)(r22 + r24));
    r23 = 0x0;
    goto loc_100221988;
}

-(void *)server {
    r0 = self->_server;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_socket));
    if (close(*(int32_t *)(r19 + r21)) != 0x0) {
            strerror(*(int32_t *)__error());
            *(int32_t *)__error();
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed closing socket %i for connection: %s (%i)"];
    }
    if (*(int8_t *)(int64_t *)&r19->_opened != 0x0) {
            [r19 close];
    }
    [r19->_server didEndConnection:r19];
    r0 = r19->_requestMessage;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    r0 = r19->_responseMessage;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_30 super] dealloc];
    return;
}

-(void *)localAddressData {
    r0 = self->_localAddress;
    return r0;
}

-(void *)remoteAddressData {
    r0 = self->_remoteAddress;
    return r0;
}

-(unsigned long long)totalBytesWritten {
    r0 = self->_bytesWritten;
    return r0;
}

-(unsigned long long)totalBytesRead {
    r0 = self->_bytesRead;
    return r0;
}

-(void)didReadBytes:(void *)arg2 length:(unsigned long long)arg3 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bytesRead));
    *(self + r8) = *(self + r8) + arg3;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_response, 0x0);
    objc_storeStrong((int64_t *)&self->_handler, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_remoteAddress, 0x0);
    objc_storeStrong((int64_t *)&self->_localAddress, 0x0);
    objc_storeStrong((int64_t *)&self->_server, 0x0);
    return;
}

-(bool)open {
    return 0x1;
}

-(void)didWriteBytes:(void *)arg2 length:(unsigned long long)arg3 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bytesWritten));
    *(self + r8) = *(self + r8) + arg3;
    return;
}

-(void *)rewriteRequestURL:(void *)arg2 withMethod:(void *)arg3 headers:(void *)arg4 {
    r0 = [arg2 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)processRequest:(void *)arg2 completion:(void *)arg3 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[self->_handler asyncProcessBlock] retain];
    (*(r21 + 0x10))(r21, r19, [r20 copy]);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)abortRequest:(void *)arg2 withStatusCode:(long long)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    [r21 _initializeResponseHeadersWithStatusCode:r20];
    [r21 _writeHeadersWithCompletionBlock:0x100e754a8];
    r0 = [r21 server];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(webServer:didAbortRequest:withStatusCode:), r3, r4];
    [r0 release];
    [r25 release];
    if (r27 != 0x0) {
            r0 = [r21 server];
            r0 = [r0 retain];
            r24 = [[r0 delegate] retain];
            r21 = [[r21 server] retain];
            [r24 webServer:r21 didAbortRequest:r19 withStatusCode:r20];
            [r21 release];
            [r24 release];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)close {
    r31 = r31 - 0x90;
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
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_request));
    r23 = *(r22 + r24);
    r19 = [[self localAddressString] retain];
    r0 = [r22 remoteAddressString];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r25 = *(int32_t *)(int64_t *)&r22->_statusCode;
    if (r23 != 0x0) {
            if (*(int8_t *)(int64_t *)&r22->_virtualHEAD != 0x0) {
                    r26 = 0x0;
                    r23 = @"HEAD";
            }
            else {
                    r0 = *(r22 + r24);
                    r0 = [r0 method];
                    r29 = r29;
                    r23 = [r0 retain];
                    r26 = 0x1;
            }
            r24 = [[*(r22 + r24) path] retain];
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"[%@] %@ %i \"%@ %@\" (%lu | %lu)"];
            [r24 release];
            if (r26 != 0x0) {
                    [r23 release];
            }
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"[%@] %@ %i \"(invalid request)\" (%lu | %lu)"];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)preflightRequest:(void *)arg2 {
    r31 = r31 - 0x100;
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
    r19 = [arg2 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_server));
    r0 = *(r20 + r26);
    r0 = [r0 authenticationBasicAccounts];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100221df8;

loc_100221cc4:
    var_68 = r29 - 0x70;
    r0 = [r19 headers];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"Authorization"];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if ([r21 hasPrefix:@"Basic "] != 0x0) {
            r23 = [[r21 substringFromIndex:0x6] retain];
            r0 = *(r20 + r26);
            r0 = [r0 authenticationBasicAccounts];
            r29 = r29;
            r22 = [r0 retain];
            r23 = [r23 retain];
            [r22 enumerateKeysAndObjectsUsingBlock:&var_A0];
            [r22 release];
            [r23 release];
            [r23 release];
    }
    if (*(int8_t *)(var_68 + 0x18) != 0x0) {
            r23 = 0x0;
    }
    else {
            r23 = [[ADCGCDWebServerResponse responseWithStatusCode:0x191] retain];
            r20 = [[*(r20 + r26) authenticationRealm] retain];
            r0 = [NSString stringWithFormat:@"Basic realm=\"%@\""];
            r29 = r29;
            r22 = [r0 retain];
            [r23 setValue:r22 forAdditionalHeader:@"WWW-Authenticate"];
            [r22 release];
            [r20 release];
    }
    [r21 release];
    _Block_object_dispose(r29 - 0x70, 0x8);
    goto loc_10022224c;

loc_10022224c:
    [r19 release];
    r0 = [r23 autorelease];
    return r0;

loc_100221df8:
    r0 = *(r20 + r26);
    r25 = @selector(authenticationDigestAccounts);
    r0 = objc_msgSend(r0, r25);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100222120;

loc_100221e20:
    r0 = [r19 headers];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:@"Authorization"];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if (([r21 hasPrefix:@"Digest "] & 0x1) == 0x0) goto loc_100222128;

loc_100221e84:
    r23 = [sub_100222e30(r21, @"realm") retain];
    r0 = *(r20 + r26);
    r0 = [r0 authenticationRealm];
    r29 = r29;
    r24 = [r0 retain];
    r1 = @selector(isEqualToString:);
    r22 = r1;
    r28 = objc_msgSend(r23, r1);
    [r24 release];
    if ((r28 & 0x1) == 0x0) goto loc_100222138;

loc_100221ee8:
    var_B0 = r23;
    r0 = sub_100222e30(r21, @"nonce");
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (objc_msgSend(r0, r22) != 0x0) {
            r23 = [sub_100222e30(r21, @"username") retain];
            var_C0 = r23;
            r0 = sub_100222e30(r21, @"uri");
            r0 = [r0 retain];
            var_B8 = r22;
            r22 = r0;
            var_C8 = [sub_100222e30(r21, @"response") retain];
            r0 = *(r20 + r26);
            r0 = [r0 authenticationDigestAccounts];
            r0 = [r0 retain];
            r25 = [[r0 objectForKey:r23] retain];
            [r0 release];
            r27 = [[r19 method] retain];
            r28 = [sub_100223bf4() retain];
            [r27 release];
            r0 = sub_100223bf4();
            r29 = r29;
            r27 = [r0 retain];
            r23 = objc_msgSend(var_C8, var_B8);
            [r27 release];
            [r28 release];
            [r25 release];
            [var_C8 release];
            [r22 release];
            [var_C0 release];
            r25 = 0x0;
    }
    else {
            if ([r24 length] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r25 = 0x1;
                    }
            }
            r23 = 0x0;
    }
    r22 = @selector(authenticationRealm);
    [r24 release];
    [var_B0 release];
    if ((r23 & 0x1) != 0x0) {
            r23 = 0x0;
    }
    else {
            r23 = [[ADCGCDWebServerResponse responseWithStatusCode:0x191] retain];
            r0 = *(r20 + r26);
            r0 = objc_msgSend(r0, r22);
            r29 = r29;
            r20 = [r0 retain];
            r9 = @"";
            if (r25 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r9 = @"";
                    }
                    else {
                            r9 = @", stale=TRUE";
                    }
            }
            r22 = [[NSString stringWithFormat:r2] retain];
            [r23 setValue:r22 forAdditionalHeader:@"WWW-Authenticate"];
            [r22 release];
            [r20 release];
    }
    goto loc_100222244;

loc_100222244:
    [r21 release];
    goto loc_10022224c;

loc_100222138:
    [r23 release];
    r25 = 0x0;
    r22 = @selector(authenticationRealm);
    goto loc_100222188;

loc_100222188:
    r23 = [[ADCGCDWebServerResponse responseWithStatusCode:0x191] retain];
    r0 = *(r20 + r26);
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r20 = [r0 retain];
    r9 = @"";
    if (r25 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r9 = @"";
            }
            else {
                    r9 = @", stale=TRUE";
            }
    }
    r22 = [[NSString stringWithFormat:r2] retain];
    [r23 setValue:r22 forAdditionalHeader:@"WWW-Authenticate"];
    [r22 release];
    [r20 release];
    goto loc_100222244;

loc_100222128:
    r25 = 0x0;
    r22 = @selector(authenticationRealm);
    goto loc_100222188;

loc_100222120:
    r23 = 0x0;
    goto loc_10022224c;
}

-(void *)overrideResponse:(void *)arg2 forRequest:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r19 statusCode] < 0xc8 || [r19 statusCode] > 0x12b) goto loc_100222624;

loc_100222458:
    r23 = [[r19 eTag] retain];
    r24 = [[r20 ifNoneMatch] retain];
    r25 = [[r19 lastModifiedDate] retain];
    r0 = [r20 ifModifiedSince];
    r29 = r29;
    r26 = [r0 retain];
    r23 = [r23 retain];
    r24 = [r24 retain];
    r25 = [r25 retain];
    r26 = [r26 retain];
    if ([r25 compare:r26] == 0x1 || r25 == 0x0 || r26 == 0x0) goto loc_100222524;

loc_100222560:
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r0 = [r20 method];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r24 = 0x130;
    }
    else {
            r25 = @selector(isEqualToString:);
            r24 = @selector(method);
            r0 = objc_msgSend(r20, r24);
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if (objc_msgSend(r0, r25) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r24 = 0x19c;
                    }
                    else {
                            r24 = 0x130;
                    }
            }
            [r26 release];
    }
    [r23 release];
    r23 = [[ADCGCDWebServerResponse responseWithStatusCode:r24] retain];
    [r23 setCacheControlMaxAge:[r19 cacheControlMaxAge]];
    r22 = [[r19 lastModifiedDate] retain];
    [r23 setLastModifiedDate:r22];
    [r22 release];
    r21 = [[r19 eTag] retain];
    [r23 setETag:r21];
    [r21 release];
    goto loc_100222630;

loc_100222630:
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;

loc_100222524:
    if (([r24 isEqualToString:r2] & 0x1) == 0x0 && ([r23 isEqualToString:r2] & 0x1) == 0x0 || r23 == 0x0 || r24 == 0x0) goto loc_1002225e4;
    goto loc_100222560;

loc_1002225e4:
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    goto loc_100222624;

loc_100222624:
    r23 = [r19 retain];
    goto loc_100222630;
}

@end