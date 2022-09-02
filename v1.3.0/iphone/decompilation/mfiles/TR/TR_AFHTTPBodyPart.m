@implementation TR_AFHTTPBodyPart

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 transitionToNextPhase];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_inputStream));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 close];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)inputStream {
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_inputStream));
    if (*(r19 + r25) != 0x0) goto loc_10040eae8;

loc_10040e9b0:
    r0 = [r19 body];
    r29 = r29;
    r23 = [r0 retain];
    [NSData class];
    r24 = [r23 isKindOfClass:r2];
    [r23 release];
    if (r24 == 0x0) goto loc_10040ea4c;

loc_10040ea10:
    r20 = [[r19 body] retain];
    r0 = [NSInputStream inputStreamWithData:r20];
    goto loc_10040eacc;

loc_10040eacc:
    r0 = [r0 retain];
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    r0 = r20;
    goto loc_10040eae4;

loc_10040eae4:
    [r0 release];
    goto loc_10040eae8;

loc_10040eae8:
    r0 = *(r19 + r25);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;

loc_10040ea4c:
    r22 = @selector(isKindOfClass:);
    r0 = [r19 body];
    r29 = r29;
    r23 = [r0 retain];
    [NSURL class];
    r24 = objc_msgSend(r23, r22);
    [r23 release];
    if (r24 == 0x0) goto loc_10040eb04;

loc_10040ea94:
    r20 = [[r19 body] retain];
    r0 = [NSInputStream inputStreamWithURL:r20];
    goto loc_10040eacc;

loc_10040eb04:
    r22 = @selector(isKindOfClass:);
    r0 = [r19 body];
    r29 = r29;
    r23 = [r0 retain];
    [NSInputStream class];
    r21 = objc_msgSend(r23, r22);
    [r23 release];
    if (r21 != 0x0) {
            r0 = [r19 body];
            r0 = [r0 retain];
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            r0 = r8;
    }
    else {
            r21 = [[NSData data] retain];
            r0 = [NSInputStream inputStreamWithData:r21];
            r0 = [r0 retain];
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r0 = r21;
    }
    goto loc_10040eae4;
}

-(bool)hasBytesAvailable {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->_phase == 0x4) {
            r0 = 0x1;
    }
    else {
            var_20 = r20;
            stack[-24] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_10 = r29;
            stack[-8] = r30;
            r0 = [r0 inputStream];
            r0 = [r0 retain];
            r20 = [r0 streamStatus];
            r0 = [r0 release];
            if (r20 < 0x5) {
                    if (CPU_FLAGS & B) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)stringForHeaders {
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
    var_120 = [[NSMutableString string] retain];
    stack[-312] = self;
    r0 = [self headers];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 allKeys];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r19;
    r24 = objc_msgSend(r19, r1);
    if (r24 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_138);
                            }
                            r23 = *(0x0 + r21 * 0x8);
                            r0 = [stack[-312] headers];
                            r0 = [r0 retain];
                            [[r0 valueForKey:r23] retain];
                            r0 = [NSString stringWithFormat:@"%@: %@%@"];
                            r29 = r29;
                            [r0 retain];
                            [var_120 appendString:r2];
                            [r22 release];
                            [r19 release];
                            [r25 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r24 = objc_msgSend(var_138, var_140);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_138 release];
    [var_120 appendString:@"\r\n"];
    r20 = [[NSString stringWithString:var_120] retain];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(unsigned long long)contentLength {
    r31 = r31 - 0x80;
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
    r22 = [self hasInitialBoundary];
    r0 = [r19 boundary];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [NSString stringWithFormat:@"--%@%@"];
            r29 = r29;
            r26 = [r0 retain];
            r28 = 0x0;
            r27 = 0x1;
    }
    else {
            r0 = [NSString stringWithFormat:@"%@--%@%@"];
            r29 = r29;
            r26 = [r0 retain];
            r27 = 0x0;
            r28 = 0x1;
    }
    [r19 stringEncoding];
    r0 = [r26 dataUsingEncoding:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r28 != 0x0) {
            [r26 release];
            [r23 release];
    }
    if (r27 != 0x0) {
            [r26 release];
            [r23 release];
    }
    r27 = [r22 length];
    r28 = [[r19 stringForHeaders] retain];
    [r19 stringEncoding];
    r0 = [r28 dataUsingEncoding:r2];
    r29 = r29;
    r26 = [r0 retain];
    [r28 release];
    r27 = r19->_bodyContentLength + [r26 length] + r27;
    if (([r19 hasFinalBoundary] & 0x1) != 0x0) {
            r21 = [[r19 boundary] retain];
            r20 = [[NSString stringWithFormat:@"%@--%@--%@"] retain];
            [r19 stringEncoding];
            r19 = [[r20 dataUsingEncoding:r2] retain];
            [r20 release];
            [r21 release];
    }
    else {
            r19 = [[NSData data] retain];
    }
    r20 = r27 + [r19 length];
    [r19 release];
    [r26 release];
    [r22 release];
    r0 = r20;
    return r0;
}

-(long long)readData:(void *)arg2 intoBuffer:(char *)arg3 maxLength:(unsigned long long)arg4 {
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
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_phaseReadOffset));
    r23 = *(r19 + r26);
    r25 = [r22 retain];
    r0 = [r22 length];
    r8 = *(r19 + r26);
    r8 = r0 - r8;
    if (r8 < r20) {
            if (!CPU_FLAGS & B) {
                    r20 = r20;
            }
            else {
                    r20 = r8;
            }
    }
    [r22 getBytes:r21 range:r23];
    r23 = *(r19 + r26) + r20;
    *(r19 + r26) = r23;
    r21 = [r22 length];
    [r25 release];
    if (r23 >= r21) {
            [r19 transitionToNextPhase];
    }
    r0 = r20;
    return r0;
}

-(bool)transitionToNextPhase {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSThread currentThread];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isMainThread];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_phase));
            r8 = *(int32_t *)(r19 + r23);
            if (r8 != 0x1) {
                    if (r8 != 0x3) {
                            if (r8 == 0x2) {
                                    r21 = [[r19 inputStream] retain];
                                    r22 = [[NSRunLoop currentRunLoop] retain];
                                    [r21 scheduleInRunLoop:r22 forMode:**_NSRunLoopCommonModes];
                                    [r22 release];
                                    [r21 release];
                                    r0 = [r19 inputStream];
                                    r0 = [r0 retain];
                                    [r0 open];
                                    [r0 release];
                                    r8 = 0x3;
                            }
                            else {
                                    r8 = 0x1;
                            }
                    }
                    else {
                            r0 = [r19 inputStream];
                            r0 = [r0 retain];
                            [r0 close];
                            [r0 release];
                            r8 = 0x4;
                    }
            }
            else {
                    r8 = 0x2;
            }
            *(int32_t *)(r19 + r23) = r8;
            r19->_phaseReadOffset = 0x0;
    }
    else {
            dispatch_sync(*__dispatch_main_q, &var_58);
    }
    return 0x1;
}

-(long long)read:(char *)arg2 maxLength:(unsigned long long)arg3 {
    r31 = r31 - 0x80;
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
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_phase));
    r8 = *(int32_t *)(r19 + r26);
    if (r8 == 0x1) {
            r23 = [r19 hasInitialBoundary];
            r0 = [r19 boundary];
            r29 = r29;
            r22 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [NSString stringWithFormat:@"--%@%@"];
                    r29 = r29;
                    r23 = [r0 retain];
                    r27 = 0x0;
                    r25 = 0x1;
            }
            else {
                    r0 = [NSString stringWithFormat:@"%@--%@%@"];
                    r29 = r29;
                    r23 = [r0 retain];
                    r25 = 0x0;
                    r27 = 0x1;
            }
            r0 = [r23 dataUsingEncoding:[r19 stringEncoding]];
            r29 = r29;
            r24 = [r0 retain];
            if (r27 != 0x0) {
                    [r23 release];
                    [r22 release];
            }
            if (r25 != 0x0) {
                    [r23 release];
                    [r22 release];
            }
            r22 = [r19 readData:r24 intoBuffer:r21 maxLength:r20];
            [r24 release];
            r8 = *(int32_t *)(r19 + r26);
    }
    else {
            r22 = 0x0;
    }
    if (r8 == 0x2) {
            r23 = [[r19 stringForHeaders] retain];
            r0 = [r23 dataUsingEncoding:[r19 stringEncoding]];
            r29 = r29;
            r24 = [r0 retain];
            [r23 release];
            r22 = [r19 readData:r24 intoBuffer:r21 + r22 maxLength:r20 - r22] + r22;
            [r24 release];
            r8 = *(int32_t *)(r19 + r26);
    }
    if (r8 != 0x3) goto loc_10040f3c8;

loc_10040f330:
    r0 = [r19 inputStream];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 read:r21 + r22 maxLength:r20 - r22];
    [r0 release];
    if (r24 == -0x1) goto loc_10040f4c8;

loc_10040f378:
    r22 = r24 + r22;
    r0 = [r19 inputStream];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 streamStatus];
    [r0 release];
    if (r24 >= 0x5) {
            [r19 transitionToNextPhase];
    }
    r8 = *(int32_t *)(r19 + r26);
    goto loc_10040f3c8;

loc_10040f3c8:
    if (r8 == 0x4) {
            if (([r19 hasFinalBoundary] & 0x1) != 0x0) {
                    r24 = [[r19 boundary] retain];
                    r25 = [[NSString stringWithFormat:@"%@--%@--%@"] retain];
                    r23 = [[r25 dataUsingEncoding:[r19 stringEncoding]] retain];
                    [r25 release];
                    [r24 release];
            }
            else {
                    r23 = [[NSData data] retain];
            }
            r22 = [r19 readData:r23 intoBuffer:r21 + r22 maxLength:r20 - r22] + r22;
            [r23 release];
    }
    goto loc_10040f4cc;

loc_10040f4cc:
    r0 = r22;
    return r0;

loc_10040f4c8:
    r22 = 0xffffffffffffffff;
    goto loc_10040f4cc;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] allocWithZone:arg2] init];
    [r20 setStringEncoding:[self stringEncoding]];
    r21 = [[self headers] retain];
    [r20 setHeaders:r21];
    [r21 release];
    [r20 setBodyContentLength:[self bodyContentLength]];
    r21 = [[self body] retain];
    [r20 setBody:r21];
    [r21 release];
    r19 = [[self boundary] retain];
    [r20 setBoundary:r19];
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)stringEncoding {
    r0 = self->_stringEncoding;
    return r0;
}

-(void)setStringEncoding:(unsigned long long)arg2 {
    self->_stringEncoding = arg2;
    return;
}

-(void *)headers {
    r0 = self->_headers;
    return r0;
}

-(void *)boundary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_boundary)), 0x0);
    return r0;
}

-(void)setHeaders:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_headers, arg2);
    return;
}

-(void)setBoundary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)body {
    r0 = self->_body;
    return r0;
}

-(unsigned long long)bodyContentLength {
    r0 = self->_bodyContentLength;
    return r0;
}

-(void)setBody:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_body, arg2);
    return;
}

-(void)setBodyContentLength:(unsigned long long)arg2 {
    self->_bodyContentLength = arg2;
    return;
}

-(void)setInputStream:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_inputStream, arg2);
    return;
}

-(void)setHasInitialBoundary:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasInitialBoundary = arg2;
    return;
}

-(bool)hasInitialBoundary {
    r0 = *(int8_t *)(int64_t *)&self->_hasInitialBoundary;
    return r0;
}

-(bool)hasFinalBoundary {
    r0 = *(int8_t *)(int64_t *)&self->_hasFinalBoundary;
    return r0;
}

-(void)setHasFinalBoundary:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasFinalBoundary = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_body, 0x0);
    objc_storeStrong((int64_t *)&self->_boundary, 0x0);
    objc_storeStrong((int64_t *)&self->_headers, 0x0);
    objc_storeStrong((int64_t *)&self->_inputStream, 0x0);
    return;
}

@end