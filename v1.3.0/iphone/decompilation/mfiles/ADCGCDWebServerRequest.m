@implementation ADCGCDWebServerRequest

-(bool)hasByteRange {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_range));
    r9 = *(int128_t *)(self + r8);
    r8 = *(int128_t *)(0x8 + self + r8);
    if (r9 != -0x1) {
            if (CPU_FLAGS & NE) {
                    r9 = 0x1;
            }
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r0 = r9 | r8;
    return r0;
}

-(bool)hasBody {
    r0 = self;
    if (r0->_type != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)open:(void * *)arg2 {
    return 0x1;
}

-(bool)writeData:(void *)arg2 error:(void * *)arg3 {
    return 0x1;
}

-(void *)attributeForKey:(void *)arg2 {
    r0 = self->_attributes;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(bool)performOpen:(void * *)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_opened));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            r0 = 0x0;
    }
    else {
            *(int8_t *)(r0 + r8) = 0x1;
            r0 = r0->_writer;
            r0 = [r0 open:r2];
    }
    return r0;
}

-(bool)close:(void * *)arg2 {
    return 0x1;
}

-(void)prepareForWriting {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_writer));
    *(r19 + r24) = r19;
    r0 = [self headers];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 objectForKey:@"Content-Encoding"] retain];
    r0 = sub_100222c88();
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r23 != 0x0) {
            [[ADCGCDWebServerGZipDecoder alloc] initWithRequest:r19 writer:*(r19 + r24)];
            [r19->_decoders addObject:r2];
            *(r19 + r24) = r20;
            [r20 release];
    }
    return;
}

-(bool)performWriteData:(void *)arg2 error:(void * *)arg3 {
    r0 = self->_writer;
    r0 = [r0 writeData:arg2 error:arg3];
    return r0;
}

-(bool)performClose:(void * *)arg2 {
    r0 = self->_writer;
    r0 = [r0 close:arg2];
    return r0;
}

-(void)setAttribute:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    [self->_attributes setValue:r21 forKey:arg3];
    [r21 release];
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

-(void *)method {
    r0 = self->_method;
    return r0;
}

-(void *)URL {
    r0 = self->_url;
    return r0;
}

-(void *)initWithMethod:(void *)arg2 url:(void *)arg3 headers:(void *)arg4 path:(void *)arg5 query:(void *)arg6 {
    r31 = r31 - 0xe0;
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
    r24 = arg6;
    r27 = arg4;
    r26 = arg3;
    r25 = [arg2 retain];
    r21 = [r26 retain];
    r22 = [r27 retain];
    r28 = [arg5 retain];
    var_68 = [r24 retain];
    r23 = [[r29 - 0x60 super] init];
    if (r23 == 0x0) goto loc_1002248e4;

loc_100224218:
    var_90 = @selector(init);
    var_78 = r22;
    var_70 = r21;
    var_88 = r25;
    r0 = [r25 copy];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_method));
    r8 = *(r23 + r25);
    *(r23 + r25) = r0;
    [r8 release];
    r21 = (int64_t *)&r23->_url;
    objc_storeStrong(r21, r26);
    r26 = (int64_t *)&r23->_headers;
    objc_storeStrong(r26, r27);
    var_80 = r28;
    r0 = [r28 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_path));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r23->_query, r24);
    r19 = [[*r26 objectForKey:@"Content-Type"] retain];
    r0 = sub_100222c88();
    r0 = [r0 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(r23 + r24);
    *(r23 + r24) = r0;
    [r8 release];
    [r19 release];
    r19 = [[*r26 objectForKey:@"Transfer-Encoding"] retain];
    r0 = sub_100222c88();
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 isEqualToString:@"chunked"];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_chunked));
    *(int8_t *)(r23 + r27) = r0;
    [r22 release];
    [r19 release];
    r0 = *r26;
    r0 = [r0 objectForKey:@"Content-Length"];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1002243e8;

loc_100224394:
    r0 = [r22 integerValue];
    if ((r0 & 0xffffffff80000000) != 0x0 || *(int8_t *)(r23 + r27) != 0x0) goto loc_100224414;

loc_1002243b0:
    r23->_length = r0;
    r19 = *(r23 + r24);
    r25 = var_88;
    if (r19 == 0x0) {
            [@"application/octet-stream" retain];
            *(r23 + r24) = @"application/octet-stream";
            [r19 release];
    }
    goto loc_1002244bc;

loc_1002244bc:
    r0 = *r26;
    r0 = [r0 objectForKey:@"If-Modified-Since"];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = sub_1002231d0();
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_modifiedSince));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            [r19 release];
    }
    r0 = *r26;
    r0 = [r0 objectForKey:@"If-None-Match"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_noneMatch));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    r21 = (int64_t *)&r23->_range;
    *(int128_t *)r21 = 0xffffffffffffffff;
    *(int128_t *)(r21 + 0x8) = 0x0;
    r19 = [[*r26 objectForKey:@"Range"] retain];
    r0 = sub_100222c88();
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    if (r20 == 0x0) goto loc_1002247fc;

loc_1002245a0:
    if ([r20 hasPrefix:@"bytes="] == 0x0) goto loc_1002247b8;

loc_1002245bc:
    var_88 = r22;
    r0 = [r20 substringFromIndex:0x6];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 componentsSeparatedByString:@","];
    r29 = r29;
    r27 = [r0 retain];
    [r19 release];
    if ([r27 count] != 0x1) goto loc_1002247ac;

loc_100224628:
    r19 = @selector(count);
    var_98 = r27;
    r0 = [r27 firstObject];
    r0 = [r0 retain];
    r27 = r24;
    r24 = r0;
    r0 = [r0 componentsSeparatedByString:@"-"];
    r29 = r29;
    r22 = [r0 retain];
    [var_98 release];
    r0 = r24;
    r24 = r27;
    r27 = r22;
    [r0 release];
    if (objc_msgSend(r27, r19) != 0x2) goto loc_1002247ac;

loc_100224694:
    r0 = [r27 objectAtIndex:0x0];
    r0 = [r0 retain];
    r19 = r0;
    var_B0 = [r0 integerValue];
    r0 = [r27 objectAtIndex:0x1];
    r29 = r29;
    r0 = [r0 retain];
    var_98 = r0;
    var_A8 = [r0 integerValue];
    var_A0 = r19;
    r0 = [r19 length];
    r22 = var_B0;
    if ((var_B0 & 0xffffffff80000000) != 0x0 || r0 == 0x0) goto loc_100224754;

loc_100224720:
    r0 = [var_98 length];
    if (var_A8 < r22 || r0 == 0x0) goto loc_100224754;

loc_10022473c:
    *r21 = r22;
    r9 = (0x1 - r22) + var_A8;
    goto loc_100224798;

loc_100224798:
    *(r21 + 0x8) = r9;
    goto loc_10022479c;

loc_10022479c:
    [var_98 release];
    [var_A0 release];
    goto loc_1002247ac;

loc_1002247ac:
    [r27 release];
    r22 = var_88;
    goto loc_1002247b8;

loc_1002247b8:
    if (*r21 == -0x1) {
            if (*(r21 + 0x8) == 0x0) {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x1 withFormat:@"Failed to parse 'Range' header \"%@\" for url: %@"];
            }
    }
    goto loc_1002247fc;

loc_1002247fc:
    r0 = *r26;
    r0 = [r0 objectForKey:@"Accept-Encoding"];
    r0 = [r0 retain];
    r21 = [r0 rangeOfString:@"gzip"];
    [r0 release];
    if (r21 != 0x7fffffffffffffff) {
            *(int8_t *)(int64_t *)&r23->_gzipAccepted = 0x1;
    }
    r0 = [NSMutableArray alloc];
    r0 = objc_msgSend(r0, var_90);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_decoders));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    r0 = [NSMutableDictionary alloc];
    r0 = objc_msgSend(r0, var_90);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_attributes));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    [r20 release];
    [r24 release];
    [r22 release];
    r22 = var_78;
    r21 = var_70;
    r28 = var_80;
    goto loc_1002248e4;

loc_1002248e4:
    r19 = [r23 retain];
    goto loc_1002248f0;

loc_1002248f0:
    [var_68 release];
    [r28 release];
    [r22 release];
    [r21 release];
    [r25 release];
    [r23 release];
    r0 = r19;
    return r0;

loc_100224754:
    r0 = [var_A0 length];
    if ((r22 & 0xffffffff80000000) != 0x0 || r0 == 0x0) goto loc_100224774;

loc_100224768:
    *r21 = r22;
    r9 = 0xffffffffffffffff;
    goto loc_100224798;

loc_100224774:
    r0 = [var_98 length];
    r9 = var_A8;
    if (r9 < 0x1 || r0 == 0x0) goto loc_10022479c;

loc_100224790:
    *r21 = 0xffffffffffffffff;
    goto loc_100224798;

loc_100224414:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x1 withFormat:@"Invalid 'Content-Length' header '%@' for '%@' request on \"%@\""];
    [r22 release];
    r19 = 0x0;
    r25 = var_88;
    r28 = var_80;
    r22 = var_78;
    r21 = var_70;
    goto loc_1002248f0;

loc_1002243e8:
    r8 = *(int8_t *)(r23 + r27);
    r19 = *(r23 + r24);
    if (r8 == 0x0) goto loc_100224464;

loc_1002243f4:
    if (r19 != 0x0) goto loc_1002244a8;

loc_1002243f8:
    [@"application/octet-stream" retain];
    *(r23 + r24) = @"application/octet-stream";
    r0 = r19;
    goto loc_1002244a4;

loc_1002244a4:
    [r0 release];
    goto loc_1002244a8;

loc_1002244a8:
    r23->_length = 0xffffffffffffffff;
    r25 = var_88;
    goto loc_1002244bc;

loc_100224464:
    if (r19 == 0x0) goto loc_1002244a8;

loc_100224468:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x1 withFormat:@"Ignoring 'Content-Type' header for '%@' request on \"%@\""];
    r0 = *(r23 + r24);
    *(r23 + r24) = 0x0;
    goto loc_1002244a4;
}

-(void *)path {
    r0 = self->_path;
    return r0;
}

-(void *)description {
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
    r31 = r31 + 0xfffffffffffffdd0;
    r20 = [[NSMutableString stringWithFormat:r2] retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_query));
    r0 = *(r19 + r21);
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sortedArrayUsingSelector:@selector(compare:)];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r22 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r1;
    var_1E0 = r23;
    r26 = objc_msgSend(r23, r1);
    if (r26 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1E0);
                            }
                            r23 = *(0x0 + r27 * 0x8);
                            r0 = *(r19 + r21);
                            r0 = [r0 objectForKey:r23];
                            r29 = r29;
                            [r0 retain];
                            [r20 appendFormat:r2];
                            [r24 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r26);
                    r26 = objc_msgSend(var_1E0, var_1E8);
            } while (r26 != 0x0);
    }
    [var_1E0 release];
    [r20 appendString:@"\n"];
    var_1C8 = q0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_headers));
    r0 = *(r19 + r21);
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 sortedArrayUsingSelector:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    var_1E0 = r22;
    r23 = objc_msgSend(r22, var_1E8);
    if (r23 != 0x0) {
            r22 = *var_1C8;
            do {
                    r24 = 0x0;
                    do {
                            if (*var_1C8 != r22) {
                                    objc_enumerationMutation(var_1E0);
                            }
                            r27 = *(var_1D0 + r24 * 0x8);
                            r0 = *(r19 + r21);
                            r0 = [r0 objectForKey:r27];
                            r29 = r29;
                            [r0 retain];
                            [r20 appendFormat:r2];
                            [r28 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r23);
                    r23 = objc_msgSend(var_1E0, var_1E8);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_1E0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)headers {
    r0 = self->_headers;
    return r0;
}

-(void *)query {
    r0 = self->_query;
    return r0;
}

-(void *)ifModifiedSince {
    r0 = self->_modifiedSince;
    return r0;
}

-(void *)contentType {
    r0 = self->_type;
    return r0;
}

-(unsigned long long)contentLength {
    r0 = self->_length;
    return r0;
}

-(void *)ifNoneMatch {
    r0 = self->_noneMatch;
    return r0;
}

-(struct _NSRange)byteRange {
    r0 = *(int128_t *)(self + sign_extend_64(*(int32_t *)ivar_offset(_range)));
    return r0;
}

-(bool)usesChunkedTransferEncoding {
    r0 = *(int8_t *)(int64_t *)&self->_chunked;
    return r0;
}

-(bool)acceptsGzipContentEncoding {
    r0 = *(int8_t *)(int64_t *)&self->_gzipAccepted;
    return r0;
}

-(void *)localAddressData {
    r0 = self->_localAddress;
    return r0;
}

-(void)setLocalAddressData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_localAddress, arg2);
    return;
}

-(void)setRemoteAddressData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_remoteAddress, arg2);
    return;
}

-(void *)remoteAddressData {
    r0 = self->_remoteAddress;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_attributes, 0x0);
    objc_storeStrong((int64_t *)&self->_decoders, 0x0);
    objc_storeStrong((int64_t *)&self->_remoteAddress, 0x0);
    objc_storeStrong((int64_t *)&self->_localAddress, 0x0);
    objc_storeStrong((int64_t *)&self->_noneMatch, 0x0);
    objc_storeStrong((int64_t *)&self->_modifiedSince, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_query, 0x0);
    objc_storeStrong((int64_t *)&self->_path, 0x0);
    objc_storeStrong((int64_t *)&self->_headers, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_method, 0x0);
    return;
}

@end