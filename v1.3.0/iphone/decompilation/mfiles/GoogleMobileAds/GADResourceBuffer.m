@implementation GADResourceBuffer

-(void *)initWithRequest:(void *)arg2 fileURL:(void *)arg3 removeFileOnDealloc:(bool)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 commonInitWithRequest:r19 fileURL:r21 removeFileOnDealloc:r20];
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)initWithRequest:(void *)arg2 fileURL:(void *)arg3 contentType:(void *)arg4 contentLength:(long long)arg5 removeFileOnDealloc:(bool)arg6 {
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
    r24 = arg6;
    r23 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 commonInitWithRequest:r19 fileURL:r20 removeFileOnDealloc:r24];
            *(int8_t *)(int64_t *)&r22->_responseHeadersReceived = 0x1;
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_contentType));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r22->_contentLength = r23;
            r25 = [[NSFileManager defaultManager] retain];
            r26 = [[r20 path] retain];
            r0 = [r25 attributesOfItemAtPath:r26 error:&var_68];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [var_68 retain];
            [r26 release];
            [r25 release];
            if (r24 != 0x0) {
                    sub_1007ce06c(0x0, @"Must not error when reading file. %@");
            }
            r0 = [r23 objectForKeyedSubscript:**_NSFileSize];
            r0 = [r0 retain];
            r26 = [r0 unsignedIntegerValue];
            [r24 release];
            r22->_bufferedContentSize = r26;
            [r0 release];
            *(int8_t *)(int64_t *)&r22->_completed = 0x1;
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)commonInitWithRequest:(void *)arg2 fileURL:(void *)arg3 removeFileOnDealloc:(bool)arg4 {
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r22 = [arg2 copy];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_request));
    r0 = *(self + r8);
    *(self + r8) = r22;
    [r0 release];
    r21 = [arg3 copy];
    [r25 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fileURL));
    r0 = *(self + r8);
    *(self + r8) = r21;
    [r0 release];
    *(int8_t *)(int64_t *)&self->_removeFileOnDealloc = arg4;
    *(int8_t *)(int64_t *)&self->_valid = 0x1;
    r0 = [NSOperationQueue alloc];
    r0 = [r0 init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_operationQueue));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    [*(self + r22) setMaxConcurrentOperationCount:0x1];
    self->_bufferingStartTimeIntervalSinceBoot = 0xbff0000000000000;
    self->_maxBytes = 0xffffffffffffffff;
    r0 = [NSMutableSet alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_notifyBytesObservers));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = sub_100860a2c("com.google.admob.n.resource-buffer", 0x0, 0x19);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = sub_100860a2c("com.google.admob.n.resource-buffer-file", 0x0, 0x19);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_fileReadWriteQueue));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [*(self + r22) setQualityOfService:0x19];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x70;
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
    if (r19->_dataTask != 0x0) {
            [r19 reset];
    }
    if (*(int8_t *)(int64_t *)&r19->_removeFileOnDealloc != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_fileURL));
            r22 = [r0 removeItemAtURL:*(r19 + r23) error:&var_38];
            r20 = [var_38 retain];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    sub_1007ce06c(0x0, @"Failed to remove file. file: %@ , error: %@");
            }
            [r20 release];
    }
    [[&var_48 super] dealloc];
    return;
}

-(void *)dataWithRange:(struct _NSRange)arg2 error:(void * *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
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
    r20 = r4;
    r19 = r3;
    r21 = r2;
    r22 = self;
    r0 = [self bufferedContentSize];
    r23 = 0x0;
    if (r19 != 0x0) {
            r23 = 0x0;
            if (r0 >= r21) {
                    if (r19 < r0) {
                            if (!CPU_FLAGS & B) {
                                    r24 = r0;
                            }
                            else {
                                    r24 = r19;
                            }
                    }
                    r23 = r22->_fileReadWriteQueue;
                    var_A0 = [r22 retain];
                    dispatch_sync(r23, &var_C0);
                    r23 = [*(&var_70 + 0x28) retain];
                    [var_A0 release];
                    _Block_object_dispose(&var_70, 0x8);
                    [0x0 release];
            }
    }
    r0 = [r23 autorelease];
    return r0;
}

-(void)start {
    r19 = self->_operationQueue;
    r20 = [self retain];
    [r19 addOperationWithBlock:&var_58];
    r19 = r20->_lockQueue;
    var_60 = [r20 retain];
    dispatch_async(r19, &var_80);
    [var_60 release];
    [r20 release];
    return;
}

-(void)cancelWithError:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_operationQueue;
    var_30 = [self retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 addOperationWithBlock:&var_50];
    [var_28 release];
    [var_30 release];
    [r20 release];
    return;
}

-(unsigned long long)bufferedContentSize {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(double)networkSpeedInBytesPerSecond {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void)addObserverForNotifyBytes:(unsigned long long)arg2 toCollection:(void *)arg3 queue:(void *)arg4 usingBlock:(void *)arg5 {
    r31 = r31 - 0xf0;
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
    r21 = arg2;
    r22 = self;
    r20 = [arg3 retain];
    r23 = [arg4 retain];
    r24 = [arg5 retain];
    if (r23 == 0x0) {
            r0 = [NSOperationQueue mainQueue];
            r29 = r29;
            r19 = [r0 retain];
            [r23 release];
            r23 = r19;
    }
    objc_initWeak(r29 - 0x68, r22);
    objc_copyWeak(&var_A0 + 0x30, r29 - 0x68);
    var_80 = r23;
    [r23 retain];
    var_78 = r24;
    [r24 retain];
    r0 = objc_retainBlock(&var_A0);
    r26 = r22->_lockQueue;
    var_C0 = [r22 retain];
    [r0 retain];
    var_B0 = r20;
    [r20 retain];
    dispatch_async(r26, &var_E0);
    [var_B0 release];
    [r0 release];
    [var_C0 release];
    [r21 release];
    [var_78 release];
    [var_80 release];
    [r20 release];
    [r24 release];
    [r23 release];
    objc_destroyWeak(&var_A0 + 0x30);
    objc_destroyWeak(r29 - 0x68);
    return;
}

-(void)notifyObserversWaitingForNotifyBytes {
    r20 = [self->_notifyBytesObservers copy];
    var_30 = [self retain];
    [r20 enumerateObjectsUsingBlock:&var_50];
    [var_30 release];
    [r20 release];
    return;
}

-(void)finishWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_dataTask != 0x0) {
            [r20->_transaction didCompleteWithError:r19];
            [r20 reset];
            if (r19 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
            [r20 setValid:r2];
            if (r19 != 0x0) {
                    r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            }
            else {
                    r21 = 0x0;
            }
            sub_1008833e8(*0x100e9c4b8, r20, r21);
            [r21 release];
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)reset {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dataTask));
    if (*(r19 + r20) != 0x0) {
            [r19->_operationQueue cancelAllOperations];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_session));
            [*(r19 + r21) invalidateAndCancel];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r19->_completed = 0x1;
    }
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveResponse:(void *)arg4 completionHandler:(void *)arg5 {
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
    r21 = self;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    if (r21->_dataTask == 0x0) goto loc_100886954;

loc_100886868:
    [r21->_transaction didReceiveResponse:r19];
    [NSHTTPURLResponse class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10088692c;

loc_1008868b0:
    r0 = [r19 retain];
    r22 = r0;
    r23 = [[r0 allHeaderFields] retain];
    [r21 setResponseHeaders:r23];
    [r23 release];
    if ([r22 statusCode] < 0x190) goto loc_100886924;

loc_100886908:
    (*(r20 + 0x10))(r20, 0x0);
    [r22 release];
    goto loc_100886954;

loc_100886954:
    [r20 release];
    [r19 release];
    return;

loc_100886924:
    [r22 release];
    goto loc_10088692c;

loc_10088692c:
    (*(r20 + 0x10))(r20, 0x1);
    sub_1008833e8(*0x100e9c4c0, r21, 0x0);
    goto loc_100886954;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
    r31 = r31 - 0x130;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r22->_dataTask != 0x0) {
            r0 = objc_retainAutorelease(r21);
            r23 = r0;
            if ([r0 bytes] != 0x0) {
                    [r22->_transaction didReceiveData:r23];
                    r24 = r22->_fileReadWriteQueue;
                    r22 = [r22 retain];
                    var_A8 = r22;
                    r23 = [r23 retain];
                    var_A0 = r23;
                    dispatch_sync(r24, &var_C8);
                    if (*(&var_90 + 0x28) != 0x0) {
                            [r22 finishWithError:r2];
                    }
                    else {
                            r24 = r22->_lockQueue;
                            r22 = [r22 retain];
                            var_100 = r22;
                            var_F8 = [r23 retain];
                            dispatch_sync(r24, &var_120);
                            if (*(int8_t *)(&var_E8 + 0x18) != 0x0) {
                                    [r22 finishWithError:0x0];
                            }
                            [var_F8 release];
                            [var_100 release];
                            _Block_object_dispose(&var_E8, 0x8);
                    }
                    [var_A0 release];
                    [var_A8 release];
                    _Block_object_dispose(&var_90, 0x8);
                    [0x0 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r4 = arg4;
    r0 = self;
    if (r0->_dataTask != 0x0) {
            [r0 finishWithError:r4];
    }
    return;
}

-(void)setResponseHeaders:(void *)arg2 {
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
    r19 = self;
    r21 = [arg2 retain];
    r20 = [[NSDictionary alloc] initWithDictionary:r21 copyItems:0x1];
    [r21 release];
    r0 = [r20 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r25 = [r21 integerValue];
    }
    else {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = [[NSRegularExpression alloc] initWithPattern:@"bytes\s+(\d+)-(\d+)" options:0x1 error:&var_58];
                    r23 = [var_58 retain];
                    if (r23 != 0x0) {
                            [[r23 localizedDescription] retain];
                            sub_1007ce06c(0x0, @"Failed to create regex from pattern %@, error: ");
                            [r24 release];
                            r25 = 0x0;
                    }
                    else {
                            [r21 length];
                            r0 = [r22 firstMatchInString:r21 options:0x0 range:0x0];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    if ([r24 range] == 0x7fffffffffffffff) {
                                            asm { ccmp       x1, #0x0, #0x0, eq };
                                    }
                                    if (!CPU_FLAGS & E && [r24 numberOfRanges] == 0x3) {
                                            r0 = [r21 substringWithRange:[r24 rangeAtIndex:0x1]];
                                            r0 = [r0 retain];
                                            var_98 = [r0 longLongValue];
                                            [r0 release];
                                            r0 = [r21 substringWithRange:[r24 rangeAtIndex:0x2]];
                                            r0 = [r0 retain];
                                            r26 = [r0 longLongValue];
                                            [r0 release];
                                            r25 = (0x1 - var_98) + r26;
                                    }
                                    else {
                                            r25 = 0x0;
                                    }
                            }
                            else {
                                    r25 = 0x0;
                            }
                            [r24 release];
                    }
                    [r22 release];
                    [r23 release];
            }
            else {
                    r25 = 0x0;
            }
    }
    [r21 release];
    [r20 release];
    r21 = r19->_lockQueue;
    var_70 = [r19 retain];
    [r20 retain];
    dispatch_async(r21, &var_90);
    [r20 release];
    [var_70 release];
    [r19 release];
    return;
}

-(void *)responseHeaders {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setValid:(bool)arg2 {
    r20 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(bool)valid {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(bool)completed {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)setMaxBytes:(long long)arg2 {
    r20 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(long long)maxBytes {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(bool)responseHeadersReceived {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(bool)started {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void *)fileURL {
    r0 = self->_fileURL;
    return r0;
}

-(void *)request {
    r0 = self->_request;
    return r0;
}

-(void *)contentType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_contentType)), 0x1);
    return r0;
}

-(long long)contentLength {
    r0 = self->_contentLength;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_contentType, 0x0);
    objc_storeStrong((int64_t *)&self->_fileURL, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    objc_storeStrong((int64_t *)&self->_fileReadWriteQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_notifyBytesObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_responseHeaders, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_transaction, 0x0);
    objc_storeStrong((int64_t *)&self->_dataTask, 0x0);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    return;
}

@end