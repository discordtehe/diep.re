@implementation GADPrecacheMonitor

+(void)initialize {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([GADPrecacheMonitor class] == self) {
            r0 = sub_1008bf68c(@"Precache", &var_38);
            r29 = r29;
            r19 = [r0 retain];
            r20 = [var_38 retain];
            if (r20 != 0x0) {
                    sub_1007ce06c(0x0, @"%@");
                    r21 = r20;
            }
            else {
                    r0 = [NSFileManager defaultManager];
                    r0 = [r0 retain];
                    r23 = [r0 removeItemAtURL:r19 error:&var_40];
                    r21 = [var_40 retain];
                    [r20 release];
                    [r0 release];
                    if ((r23 & 0x1) == 0x0) {
                            sub_1007ce06c(0x0, @"Fail to cleanup precache cache directory. %@");
                    }
            }
            [r19 release];
            [r21 release];
    }
    return;
}

-(void *)initWithWebAdView:(void *)arg2 messageSource:(void *)arg3 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.precache", 0x0, 0x9);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_adView, r19);
            objc_storeWeak((int64_t *)&r21->_messageSource, r20);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c510 object:r20 queue:r24 usingBlock:&var_80];
            [r24 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [self stopResourceBufferUpdateCheckTimer];
    [[&var_20 super] dealloc];
    return;
}

-(void *)resourceBuffer {
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

-(void *)videoSourceURL {
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

-(void)abort {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)handlePrecacheAction:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r19 = [arg2 retain];
    r25 = [[GADVideoConfiguration alloc] initWithDictionary:r19];
    r0 = [r19 objectForKeyedSubscript:@"notifyBytes"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r26 = [r20 integerValue];
    }
    else {
            r26 = 0x0;
    }
    r27 = r21->_lockQueue;
    r22 = [r21 retain];
    var_68 = r22;
    r21 = [r25 retain];
    var_60 = r21;
    dispatch_async(r27, &var_88);
    r0 = [r19 objectForKeyedSubscript:@"abort"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r22 abort];
    }
    else {
            r0 = [r19 objectForKeyedSubscript:@"src"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r26 = [[r19 objectForKeyedSubscript:@"src"] retain];
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r26 release];
                    if (r24 != 0x0) {
                            r27 = [[NSURLRequest alloc] initWithURL:r24];
                            r0 = sub_1008bf68c(@"Precache", &var_90);
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    var_98 = r27;
                                    do {
                                            asm { ldxr       x25, [x8] };
                                            asm { stxr       w10, x9, [x8] };
                                    } while (r10 != 0x0);
                                    r0 = [NSString alloc];
                                    r0 = [r0 initWithFormat:@"precache_%ld.cache"];
                                    var_A0 = r0;
                                    r0 = [r26 URLByAppendingPathComponent:r0 isDirectory:0x0];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    r0 = [NSData alloc];
                                    r0 = [r0 init];
                                    r25 = [r0 writeToURL:r28 atomically:0x1];
                                    [r0 release];
                                    if (r25 != 0x0) {
                                            r23 = [r28 retain];
                                    }
                                    else {
                                            r23 = [[NSString alloc] initWithFormat:r2];
                                            var_90 = [[sub_1008098f8(0xb, r23) retain] autorelease];
                                            [r23 release];
                                            r23 = 0x0;
                                    }
                                    [r28 release];
                                    [var_A0 release];
                                    r27 = var_98;
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r26 release];
                            r25 = [var_90 retain];
                            if (r25 != 0x0) {
                                    sub_1007ce06c(0x0, @"File creation failed for precache event. File: %@, error: %@");
                                    [r22 notifyPrecacheCompletedWithError:r25];
                            }
                            else {
                                    [r22 startPrecachingWithRequest:r27 fileURL:r23];
                            }
                            [r23 release];
                            [r25 release];
                            r0 = r27;
                    }
                    else {
                            r23 = [sub_1008098f8(0xa, @"Precache source URL is invalid.") retain];
                            [r22 notifyPrecacheCompletedWithError:r23];
                            r0 = r23;
                    }
                    [r0 release];
                    [r24 release];
            }
    }
    [var_60 release];
    [var_68 release];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)startPrecachingWithRequest:(void *)arg2 fileURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = self->_lockQueue;
    var_38 = [self retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(r22, &var_58);
    [var_28 release];
    [r21 release];
    [var_38 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)handleResourceBufferNotification:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r20->_resourceBuffer;
    [r0 release];
    if (r0 == r22) {
            r0 = [r19 name];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isEqual:r2];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r19 userInfo];
                    r0 = [r0 retain];
                    r22 = [[r0 objectForKeyedSubscript:*0x100e9a780] retain];
                    [r20 notifyPrecacheCompletedWithError:r22];
                    [r22 release];
                    [r0 release];
                    [r20 stopResourceBufferUpdateCheckTimer];
            }
    }
    [r19 release];
    return;
}

-(void)stopResourceBufferUpdateCheckTimer {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBufferNotifyUpdateTimer));
    r0 = *(self + r21);
    r0 = [r0 retain];
    *(self + r21) = 0x0;
    [r0 release];
    [r0 retain];
    sub_100860a80();
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyPrecacheUpdate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_resourceBuffer;
    r0 = [r0 bufferedContentSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastNotifiedBytes));
    if (*(r19 + r8) != r0) {
            *(r19 + r8) = r0;
            [r19 notifyPrecacheEvent:@"precacheProgress"];
    }
    return;
}

-(void)notifyPrecacheCompletedWithError:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 notifyPrecacheEvent:r2];
    }
    else {
            [r0 notifyPrecacheEvent:r2];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resourceBufferNotifyUpdateTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_videoSourceURL, 0x0);
    objc_storeStrong((int64_t *)&self->_videoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_resourceBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_resourceBufferObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

-(void)notifyPrecacheEvent:(void *)arg2 {
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
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_resourceBuffer));
    r20 = *(self + r26);
    r19 = [arg2 retain];
    r21 = [r20 contentLength];
    r0 = *(self + r26);
    r0 = [r0 request];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r20 = [[r0 absoluteString] retain];
    [r0 release];
    [r22 release];
    r0 = *(self + r26);
    r0 = [r0 fileURL];
    r0 = [r0 retain];
    r22 = [[r0 absoluteString] retain];
    [r0 release];
    r24 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r23 = [[NSNumber numberWithUnsignedInteger:[*(self + r26) bufferedContentSize]] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:r21];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r9 = @"";
            }
            else {
                    r9 = r20;
            }
    }
    r8 = @"";
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r22;
            }
    }
    var_58 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_A8 count:0x5];
    r25 = [r0 retain];
    [r24 asyncEvaluateFunction:@"onPrecacheEvent" parameters:r25];
    [r19 release];
    [r25 release];
    [r21 release];
    [r23 release];
    [r24 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end