@implementation TR_AFMultipartBodyStream

-(void *)initWithStringEncoding:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setStringEncoding:r20];
            r20 = [[NSMutableArray array] retain];
            [r19 setHTTPBodyParts:r20];
            [r20 release];
            [r19 setNumberOfBytesInPacket:0x7fffffffffffffff];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)appendHTTPBodyPart:(void *)arg2 {
    [arg2 retain];
    r0 = [self HTTPBodyParts];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r22 release];
    [r20 release];
    return;
}

-(void)setInitialAndFinalBoundaries {
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
    r0 = [self HTTPBodyParts];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            var_108 = q0;
            stack[-304] = r19;
            r0 = [r19 HTTPBodyParts];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    r27 = *var_108;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_108 != r27) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [*(var_110 + r20 * 0x8) setHasInitialBoundary:r2];
                                    objc_msgSend(r26, r25);
                                    r20 = r20 + 0x1;
                            } while (r20 < r23);
                            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            [r21 release];
            r0 = [stack[-304] HTTPBodyParts];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 firstObject];
            r0 = [r0 retain];
            [r0 setHasInitialBoundary:0x1];
            [r0 release];
            [r21 release];
            r0 = [stack[-304] HTTPBodyParts];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 lastObject];
            r0 = [r0 retain];
            [r0 setHasFinalBoundary:0x1];
            [r0 release];
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isEmpty {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self HTTPBodyParts];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] == 0x0) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)getBuffer:(char * *)arg2 length:(unsigned long long *)arg3 {
    return 0x0;
}

-(bool)hasBytesAvailable {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self streamStatus];
    if (r0 == 0x2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)close {
    [self setStreamStatus:0x6];
    return;
}

-(void)open {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self streamStatus] != 0x2) {
            [r19 setStreamStatus:0x2];
            [r19 setInitialAndFinalBoundaries];
            r0 = [r19 HTTPBodyParts];
            r0 = [r0 retain];
            r21 = [[r0 objectEnumerator] retain];
            [r19 setHTTPBodyPartEnumerator:r21];
            [r21 release];
            [r0 release];
    }
    return;
}

-(void *)propertyForKey:(void *)arg2 {
    return 0x0;
}

-(void)scheduleInRunLoop:(void *)arg2 forMode:(void *)arg3 {
    return;
}

-(long long)read:(char *)arg2 maxLength:(unsigned long long)arg3 {
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
    r29 = &saved_fp;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    if ([self streamStatus] == 0x6) goto loc_10040e1c4;

loc_10040dfdc:
    r8 = &@selector(alloc);
    r22 = @selector(numberOfBytesInPacket);
    r0 = objc_msgSend(r20, r22);
    if (r0 > r21) {
            if (!CPU_FLAGS & A) {
                    r8 = r0;
            }
            else {
                    r8 = r21;
            }
    }
    if (r8 == 0x0) goto loc_10040e1c4;

loc_10040dffc:
    var_70 = r19;
    r19 = 0x0;
    r8 = @selector(sleepForTimeInterval:);
    var_88 = r8;
    goto loc_10040e060;

loc_10040e060:
    r0 = [r20 currentHTTPBodyPart];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 == 0x0) goto loc_10040e148;

loc_10040e07c:
    r0 = [r20 currentHTTPBodyPart];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 hasBytesAvailable];
    [r0 release];
    [r28 release];
    if ((r25 & 0x1) == 0x0) goto loc_10040e150;

loc_10040e0b4:
    r0 = objc_msgSend(r20, r22);
    if (r0 > r21) {
            if (!CPU_FLAGS & A) {
                    r8 = r0;
            }
            else {
                    r8 = r21;
            }
    }
    r22 = r8 - r19;
    r0 = [r20 currentHTTPBodyPart];
    r29 = r29;
    r0 = [r0 retain];
    r8 = var_70;
    r22 = [r0 read:r8 + r19 maxLength:r22];
    [r0 release];
    if (r22 == -0x1) goto loc_10040e1ec;

loc_10040e108:
    r19 = r22 + r19;
    [r20 delay];
    if (d0 > 0x0) {
            r8 = &@class(MCConfigurationData);
            [r20 delay];
            objc_msgSend(r22, var_88);
    }
    goto loc_10040e1a0;

loc_10040e1a0:
    r0 = [r20 numberOfBytesInPacket];
    if (r0 > r21) {
            if (!CPU_FLAGS & A) {
                    r8 = r0;
            }
            else {
                    r8 = r21;
            }
    }
    r22 = @selector(numberOfBytesInPacket);
    if (r19 < r8) goto loc_10040e060;

loc_10040e1c8:
    r0 = r19;
    return r0;

loc_10040e1ec:
    r0 = [r20 currentHTTPBodyPart];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 inputStream];
    r0 = [r0 retain];
    r23 = [[r0 streamError] retain];
    [r20 setStreamError:r23];
    [r23 release];
    [r0 release];
    [r21 release];
    goto loc_10040e1c8;

loc_10040e150:
    r0 = [r20 HTTPBodyPartEnumerator];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 nextObject];
    r29 = r29;
    r24 = [r0 retain];
    [r20 setCurrentHTTPBodyPart:r24];
    [r24 release];
    [r22 release];
    if (r24 == 0x0) goto loc_10040e1c8;
    goto loc_10040e1a0;

loc_10040e148:
    [r28 release];
    goto loc_10040e150;

loc_10040e1c4:
    r19 = 0x0;
    goto loc_10040e1c8;
}

-(bool)setProperty:(void *)arg2 forKey:(void *)arg3 {
    return 0x0;
}

-(void)removeFromRunLoop:(void *)arg2 forMode:(void *)arg3 {
    return;
}

-(void)_scheduleInCFRunLoop:(struct __CFRunLoop *)arg2 forMode:(struct __CFString *)arg3 {
    return;
}

-(unsigned long long)contentLength {
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
    r0 = [self HTTPBodyParts];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r21 = 0x0;
    r22 = r0;
    if (r22 != 0x0) {
            r21 = 0x0;
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r21 = [*(0x0 + r26 * 0x8) contentLength] + r21;
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)_unscheduleFromCFRunLoop:(struct __CFRunLoop *)arg2 forMode:(struct __CFString *)arg3 {
    return;
}

-(bool)_setCFClientFlags:(unsigned long long)arg2 callback:(void * *)arg3 context:(union ? *)arg4 {
    return 0x0;
}

-(void *)delegate {
    r0 = self->delegate;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
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
    r19 = [[self class] allocWithZone:arg2];
    r19 = [r19 initWithStringEncoding:[self stringEncoding]];
    r0 = [self HTTPBodyParts];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(0x0 + r27 * 0x8) copy];
                            [r19 appendHTTPBodyPart:r2];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 setInitialAndFinalBoundaries];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    self->delegate = arg2;
    return;
}

-(unsigned long long)streamStatus {
    r0 = self->streamStatus;
    return r0;
}

-(void)setStreamStatus:(unsigned long long)arg2 {
    self->streamStatus = arg2;
    return;
}

-(void)setStreamError:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

-(void *)streamError {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(streamError)), 0x1);
    return r0;
}

-(unsigned long long)numberOfBytesInPacket {
    r0 = self->_numberOfBytesInPacket;
    return r0;
}

-(void)setNumberOfBytesInPacket:(unsigned long long)arg2 {
    self->_numberOfBytesInPacket = arg2;
    return;
}

-(double)delay {
    r0 = self;
    return r0;
}

-(void)setDelay:(double)arg2 {
    self->_delay = d0;
    return;
}

-(void *)inputStream {
    r0 = self->_inputStream;
    return r0;
}

-(void)setInputStream:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_inputStream, arg2);
    return;
}

-(unsigned long long)stringEncoding {
    r0 = self->_stringEncoding;
    return r0;
}

-(void)setStringEncoding:(unsigned long long)arg2 {
    self->_stringEncoding = arg2;
    return;
}

-(void *)HTTPBodyParts {
    r0 = self->_HTTPBodyParts;
    return r0;
}

-(void)setHTTPBodyParts:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_HTTPBodyParts, arg2);
    return;
}

-(void *)HTTPBodyPartEnumerator {
    r0 = self->_HTTPBodyPartEnumerator;
    return r0;
}

-(void)setHTTPBodyPartEnumerator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_HTTPBodyPartEnumerator, arg2);
    return;
}

-(void)setCurrentHTTPBodyPart:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentHTTPBodyPart, arg2);
    return;
}

-(void *)currentHTTPBodyPart {
    r0 = self->_currentHTTPBodyPart;
    return r0;
}

-(void *)outputStream {
    r0 = self->_outputStream;
    return r0;
}

-(void)setOutputStream:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_outputStream, arg2);
    return;
}

-(void *)buffer {
    r0 = self->_buffer;
    return r0;
}

-(void)setBuffer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_buffer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_buffer, 0x0);
    objc_storeStrong((int64_t *)&self->_outputStream, 0x0);
    objc_storeStrong((int64_t *)&self->_currentHTTPBodyPart, 0x0);
    objc_storeStrong((int64_t *)&self->_HTTPBodyPartEnumerator, 0x0);
    objc_storeStrong((int64_t *)&self->_HTTPBodyParts, 0x0);
    objc_storeStrong((int64_t *)&self->_inputStream, 0x0);
    objc_storeStrong((int64_t *)&self->streamError, 0x0);
    return;
}

@end