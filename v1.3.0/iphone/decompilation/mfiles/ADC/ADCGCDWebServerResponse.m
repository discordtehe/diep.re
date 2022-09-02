@implementation ADCGCDWebServerResponse

+(void *)response {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r19->_length = 0xffffffffffffffff;
            r19->_status = 0xc8;
            r19->_maxAge = 0x0;
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_headers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_encoders));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setValue:(void *)arg2 forAdditionalHeader:(void *)arg3 {
    r22 = [arg2 retain];
    [self->_headers setValue:arg2 forKey:arg3];
    [r22 release];
    return;
}

-(bool)usesChunkedTransferEncoding {
    r0 = self;
    if (r0->_type != 0x0) {
            if (r0->_length == -0x1) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
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

-(void *)readData:(void * *)arg2 {
    r0 = [NSData data];
    return r0;
}

-(void)close {
    return;
}

-(bool)open:(void * *)arg2 {
    return 0x1;
}

-(void)prepareForReading {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_reader));
    *(r19 + r21) = r19;
    if (*(int8_t *)(int64_t *)&r19->_gzipped != 0x0) {
            [[ADCGCDWebServerGZipEncoder alloc] initWithResponse:r19 reader:*(r19 + r21)];
            [r19->_encoders addObject:r2];
            *(r19 + r21) = r20;
            [r20 release];
    }
    return;
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
            r0 = r0->_reader;
            r0 = [r0 open:r2];
    }
    return r0;
}

-(void)performClose {
    [self->_reader close];
    return;
}

-(void)performReadDataWithCompletion:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_reader));
    r0 = *(self + r22);
    r0 = [r0 respondsToSelector:@selector(asyncReadDataWithCompletion:)];
    r21 = *(self + r22);
    if (r0 != 0x0) {
            r22 = [r19 copy];
            [r21 asyncReadDataWithCompletion:r22];
            r0 = r22;
    }
    else {
            r0 = [r21 readData:&var_28];
            (*(r19 + 0x10))(r19, [r0 retain], [var_28 retain]);
            [r20 release];
            r0 = r21;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)contentType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_type)), 0x0);
    return r0;
}

-(void)setContentType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)contentLength {
    r0 = self->_length;
    return r0;
}

-(void)setContentLength:(unsigned long long)arg2 {
    self->_length = arg2;
    return;
}

-(void *)description {
    r31 = r31 - 0x150;
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
    r21 = self;
    r0 = [NSMutableString stringWithFormat:r2];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(r21 + r8);
    if (r8 != 0x0) {
            [r27 appendFormat:@"\nContent Type = %@"];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_length));
    r8 = *(r21 + r8);
    if (r8 != -0x1) {
            [r27 appendFormat:r2];
    }
    r22 = @selector(appendFormat:);
    objc_msgSend(r27, r22);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastModified));
    r8 = *(r21 + r8);
    if (r8 != 0x0) {
            r22 = @selector(appendFormat:);
            objc_msgSend(r27, r22);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_eTag));
    r8 = *(r21 + r8);
    if (r8 != 0x0) {
            r22 = @selector(appendFormat:);
            objc_msgSend(r27, r22);
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_headers));
    if ([*(r21 + r23) count] != 0x0) {
            [r27 appendString:@"\n"];
            var_108 = q0;
            r0 = *(r21 + r23);
            r0 = [r0 allKeys];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 sortedArrayUsingSelector:@selector(compare:)];
            r29 = r29;
            r19 = [r0 retain];
            [r24 release];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            var_120 = r19;
            r25 = objc_msgSend(r19, r1);
            if (r25 != 0x0) {
                    r19 = *var_108;
                    do {
                            r20 = 0x0;
                            do {
                                    r24 = r22;
                                    r22 = r27;
                                    if (*var_108 != r19) {
                                            objc_enumerationMutation(var_120);
                                    }
                                    r26 = @selector(objectForKey:);
                                    r0 = *(r21 + r23);
                                    r0 = objc_msgSend(r0, r26);
                                    r29 = r29;
                                    [r0 retain];
                                    r27 = r22;
                                    r22 = r24;
                                    objc_msgSend(r27, r22);
                                    [r28 release];
                                    r20 = r20 + 0x1;
                            } while (r20 < r25);
                            r25 = objc_msgSend(var_120, var_128);
                    } while (r25 != 0x0);
            }
            [var_120 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r27 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)statusCode {
    r0 = self->_status;
    return r0;
}

-(void)setStatusCode:(long long)arg2 {
    self->_status = arg2;
    return;
}

-(unsigned long long)cacheControlMaxAge {
    r0 = self->_maxAge;
    return r0;
}

-(void)setCacheControlMaxAge:(unsigned long long)arg2 {
    self->_maxAge = arg2;
    return;
}

-(void *)lastModifiedDate {
    r0 = self->_lastModified;
    return r0;
}

-(void)setLastModifiedDate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lastModified, arg2);
    return;
}

-(void *)eTag {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eTag)), 0x0);
    return r0;
}

-(void)setETag:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isGZipContentEncodingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_gzipped;
    return r0;
}

-(void)setGzipContentEncodingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_gzipped = arg2;
    return;
}

-(void *)additionalHeaders {
    r0 = self->_headers;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_encoders, 0x0);
    objc_storeStrong((int64_t *)&self->_headers, 0x0);
    objc_storeStrong((int64_t *)&self->_eTag, 0x0);
    objc_storeStrong((int64_t *)&self->_lastModified, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    return;
}

+(void *)responseWithStatusCode:(long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithStatusCode:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)responseWithRedirect:(void *)arg2 permanent:(bool)arg3 {
    r22 = [arg2 retain];
    r19 = [[self alloc] initWithRedirect:r22 permanent:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithStatusCode:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [self init];
    if (r20 != 0x0) {
            [r20 setStatusCode:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithRedirect:(void *)arg2 permanent:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = [self init];
    if (r20 != 0x0) {
            if (r21 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r2 = 0x133;
                    }
                    else {
                            r2 = 0x12d;
                    }
            }
            [r20 setStatusCode:r2];
            r21 = [[r19 absoluteString] retain];
            [r20 setValue:r21 forAdditionalHeader:@"Location"];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end