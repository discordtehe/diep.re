@implementation GADCacheMonitor

-(void *)initWithMessageSource:(void *)arg2 reporter:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r19 = [arg2 retain];
    r28 = [arg3 retain];
    r21 = [[r29 - 0x70 super] init];
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_reporter, r28);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r20);
            *(r21 + r20) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cacheIDResourceBuffers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cacheIDResourceBufferObservers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c490 object:r19 queue:r26 usingBlock:&var_A0];
            var_128 = r28;
            [r26 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r26 addObserverForName:*0x100e9c498 object:r19 queue:r27 usingBlock:&var_C8];
            [r27 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c4a0 object:r19 queue:r28 usingBlock:&var_F0];
            [r28 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c4a8 object:r19 queue:r28 usingBlock:&var_118];
            [r28 release];
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(r29 - 0x78);
            r28 = var_128;
    }
    [r28 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleCachedResourceStatusCheckAction:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r21 = [[r19 objectForKeyedSubscript:*0x100e95cf0] retain];
    r23 = [[r19 objectForKeyedSubscript:@"fileurl"] retain];
    r22 = [[NSURL URLWithString:r2] retain];
    [r23 release];
    r0 = [r19 objectForKeyedSubscript:@"cache_id"];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            sub_1007ce06c(0x0, @"Failed to check status. Dictionary doesn't contain enough parmaeters. %@");
    }
    else {
            r0 = r20->_cacheIDResourceBuffers;
            r0 = [r0 objectForKeyedSubscript:r23];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = @"running";
                    [r24 retain];
            }
            else {
                    r24 = @"not_running";
                    [r24 retain];
                    r25 = [[NSFileManager defaultManager] retain];
                    r26 = [[r22 path] retain];
                    r27 = [r25 fileExistsAtPath:r26];
                    [r26 release];
                    [r25 release];
                    if ((r27 & 0x1) == 0x0) {
                            r24 = @"failed";
                            [r24 retain];
                            [@"not_running" release];
                    }
            }
            [r20 notifyCacheID:r23 responseHeaders:0x0 fileURL:r22 status:r24 requestID:r21 error:0x0];
            [r24 release];
    }
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleCleanupCacheDirectoryAction {
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
    [self->_cacheIDResourceBufferObservers removeAllObjects];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_cacheIDResourceBuffers));
    r0 = *(self + r23);
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 copy];
    [r0 release];
    [*(self + r23) removeAllObjects];
    r0 = [r22 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r23 = *(0x0 + r27 * 0x8);
                            r0 = sub_1008098f8(0xe, 0x0);
                            r29 = r29;
                            [r0 retain];
                            [r23 cancelWithError:r2];
                            [r24 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r21 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    [r19 release];
    r0 = sub_1008bf68c(@"CacheMonitor", &var_120);
    r29 = r29;
    r20 = [r0 retain];
    r21 = [var_120 retain];
    if (r20 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r23 = [r0 removeItemAtURL:r20 error:&var_128];
            r22 = [var_128 retain];
            [r21 release];
            [r0 release];
            if (r22 != 0x0 && (r23 ^ 0x1) != 0x0) {
                    sub_1007ce06c(0x0, @"Cache directory cleanup failed. URL: %@ Error %@.");
            }
    }
    else {
            sub_1007ce06c(0x0, @"Cache directory cleanup failed. Error %@.");
            r22 = r21;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleRemoveResourceAction:(void *)arg2 {
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
    r0 = [arg2 retain];
    var_148 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r22 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    var_150 = r22;
    r9 = [[r22 objectForKeyedSubscript:@"fileurl"] retain];
    var_158 = r9;
    var_120 = [[NSURL URLWithString:r9] retain];
    r0 = self->_cacheIDResourceBuffers;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r26 = objc_msgSend(r0, r1);
    if (r26 != 0x0) {
            var_128 = 0x0;
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_138);
                            }
                            r19 = @selector(isEqual:);
                            r20 = *(0x0 + r24 * 0x8);
                            r0 = [r20 fileURL];
                            r0 = [r0 retain];
                            r21 = r0;
                            r25 = [[r0 absoluteString] retain];
                            r0 = [var_120 absoluteString];
                            r29 = r29;
                            r23 = [r0 retain];
                            r22 = objc_msgSend(r25, r19);
                            [r23 release];
                            [r25 release];
                            [r21 release];
                            if (r22 != 0x0) {
                                    r20 = [r20 retain];
                                    [var_128 release];
                                    var_128 = r20;
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r26);
                    r26 = objc_msgSend(var_138, var_140);
            } while (r26 != 0x0);
    }
    else {
            var_128 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [var_138 release];
    [var_128 cancelWithError:[sub_1008098f8(0xe, 0x0) retain]];
    sub_100856fa0(var_120, 0x0);
    [r19 release];
    [var_138 release];
    [var_128 release];
    [var_120 release];
    [var_158 release];
    [var_150 release];
    [var_148 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)observeResourceBuffer:(void *)arg2 cacheID:(void *)arg3 requestID:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    [arg4 retain];
    [[GADObserverCollection alloc] init];
    sub_100822058(self->_cacheIDResourceBuffers, r21, r22);
    sub_100822058(self->_cacheIDResourceBufferObservers, r21, r19);
    r24 = [[NSOperationQueue mainQueue] retain];
    var_50 = [self retain];
    var_48 = r22;
    r22 = [r22 retain];
    var_40 = r21;
    r21 = [r21 retain];
    var_38 = r20;
    r20 = [r20 retain];
    [r19 addObserverForName:0x0 object:r22 queue:r24 usingBlock:&var_70];
    [r24 release];
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r20 release];
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)handleCacheResourceAction:(void *)arg2 {
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
    r23 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r20 = [[r19 objectForKeyedSubscript:*0x100e95cf0] retain];
    r21 = [[r19 objectForKeyedSubscript:@"cache_id"] retain];
    r0 = [r19 objectForKeyedSubscript:@"filename"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            sub_1007ce06c(0x0, @"Failed to start request for caching resource with empty request ID or cache ID. Parameters %@");
    }
    else {
            r0 = r23->_cacheIDResourceBuffers;
            r0 = [r0 objectForKeyedSubscript:r21];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = [[NSString alloc] initWithFormat:@"Resource caching for cache ID %@ is already in progress."];
                    r25 = [sub_1008098f8(0x0, r24) retain];
                    [r23 notifyCacheID:r21 responseHeaders:0x0 fileURL:0x0 status:@"failed" requestID:r20 error:r25];
                    r0 = r25;
            }
            else {
                    r26 = [[r19 objectForKeyedSubscript:@"url"] retain];
                    r24 = [[NSURL URLWithString:r2] retain];
                    [r26 release];
                    r0 = [r19 objectForKeyedSubscript:@"headers"];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = sub_10084acf0(r0, &var_58);
                    r29 = r29;
                    r26 = [r0 retain];
                    r28 = [var_58 retain];
                    if (r28 != 0x0) {
                            [r23 notifyCacheID:r21 responseHeaders:0x0 fileURL:0x0 status:@"failed" requestID:r20 error:r28];
                            r27 = r28;
                    }
                    else {
                            r0 = [NSMutableURLRequest alloc];
                            var_70 = r24;
                            r0 = [r0 initWithURL:r24];
                            var_78 = r0;
                            [r0 setAllHTTPHeaderFields:r26];
                            var_68 = [r21 retain];
                            r24 = [r22 retain];
                            r0 = sub_1008bf68c(@"CacheMonitor", &var_60);
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r27 != 0x0) {
                                    if (r24 == 0x0) {
                                            r24 = [NSString alloc];
                                            [var_68 hash];
                                            r24 = [r24 initWithFormat:@"%lx.%@"];
                                    }
                                    var_80 = [[r27 URLByAppendingPathComponent:r24] retain];
                            }
                            else {
                                    var_80 = 0x0;
                            }
                            [r27 release];
                            [r24 release];
                            r24 = var_68;
                            [r24 release];
                            r27 = [var_60 retain];
                            [r28 release];
                            if (r27 != 0x0) {
                                    [r23 notifyCacheID:r24 responseHeaders:0x0 fileURL:0x0 status:@"failed" requestID:r20 error:r27];
                                    r28 = var_78;
                                    r24 = var_70;
                                    r0 = var_80;
                            }
                            else {
                                    r0 = [NSData alloc];
                                    r0 = [r0 init];
                                    [r0 writeToURL:@"headers" atomically:0x1];
                                    [r0 release];
                                    r0 = [GADResourceBuffer alloc];
                                    r28 = var_78;
                                    r24 = [r0 initWithRequest:r28 fileURL:var_80 removeFileOnDealloc:0x0];
                                    [r23 observeResourceBuffer:r24 cacheID:var_68 requestID:r20];
                                    [r24 start];
                                    [r24 release];
                                    r0 = var_80;
                                    r26 = r26;
                                    r24 = var_70;
                            }
                            [r0 release];
                            [r28 release];
                    }
                    [r26 release];
                    [r25 release];
                    r0 = r27;
            }
            [r0 release];
            [r24 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cacheIDResourceBufferObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_cacheIDResourceBuffers, 0x0);
    objc_destroyWeak((int64_t *)&self->_reporter);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleResourceBuffer:(void *)arg2 notification:(void *)arg3 cacheID:(void *)arg4 requestID:(void *)arg5 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = [r19 fileURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_90 = r27;
            r0 = [r20 name];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 isEqual:r2];
            [r0 release];
            if (r28 != 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    sub_1008833e8(*0x100e9c4d0, r23, [r0 retain]);
                    [r28 release];
            }
            r25 = @selector(isEqual:);
            var_88 = r23;
            r0 = [r20 name];
            r29 = r29;
            r0 = [r0 retain];
            r28 = *0x100e9c4b8;
            r23 = objc_msgSend(r0, r25);
            [r0 release];
            if (r23 != 0x0) {
                    var_98 = *0x100e9c4b8;
                    r0 = [r20 userInfo];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 objectForKeyedSubscript:*0x100e9a780];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r22 release];
                    if (r0 != 0x0) {
                            r0 = [r19 fileURL];
                            r29 = r29;
                            r0 = [r0 retain];
                            sub_100856fa0(r0, &var_80);
                            r22 = [var_80 retain];
                            [r23 release];
                            if (r22 != 0x0) {
                                    r0 = [r19 fileURL];
                                    r29 = r29;
                                    [r0 retain];
                                    sub_1007ce06c(0x0, @"Failed to remove cached file. File path %@, error %@");
                                    [r23 release];
                            }
                            [r22 release];
                    }
                    sub_1008220c0(var_88->_cacheIDResourceBufferObservers, r21);
                    sub_1008220c0(var_88->_cacheIDResourceBuffers, r21);
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    sub_1008833e8(*0x100e9c4d8, var_88, [r0 retain]);
                    [r23 release];
                    r28 = var_98;
            }
            r25 = @selector(isEqual:);
            r0 = [r20 retain];
            r22 = r0;
            r0 = [r0 name];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            if ((objc_msgSend(r0, r25) & 0x1) == 0x0 && [r26 isEqual:r2] == 0x0) {
                    r0 = [r26 isEqual:r2];
                    r27 = var_90;
                    if (r0 != 0x0) {
                            r0 = [r22 userInfo];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 objectForKeyedSubscript:*0x100e9a780];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r23 release];
                            if (r0 != 0x0) {
                                    r25 = @"failed";
                            }
                            else {
                                    r25 = @"succeed";
                            }
                    }
                    else {
                            r25 = @"unknown";
                    }
                    [r25 retain];
            }
            else {
                    r25 = @"running";
                    [r25 retain];
                    r27 = var_90;
            }
            [r26 release];
            [r22 release];
            r26 = [[r19 responseHeaders] retain];
            r23 = [[r19 fileURL] retain];
            r0 = [r22 userInfo];
            r0 = [r0 retain];
            r24 = [[r0 objectForKeyedSubscript:*0x100e9a780] retain];
            [var_88 notifyCacheID:r21 responseHeaders:r26 fileURL:r23 status:r25 requestID:r27 error:r24];
            [r24 release];
            [r0 release];
            [r23 release];
            [r26 release];
            [r25 release];
    }
    else {
            sub_1007ce06c(0x0, @"Invalid notification received from a resource buffer. File URL is empty.");
    }
    var_58 = **___stack_chk_guard;
    [r27 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyCacheID:(void *)arg2 responseHeaders:(void *)arg3 fileURL:(void *)arg4 status:(void *)arg5 requestID:(void *)arg6 error:(void *)arg7 {
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
    var_120 = self;
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    var_108 = [arg7 retain];
    r23 = [r23 retain];
    r24 = [r20 retain];
    r25 = [r22 retain];
    r19 = [NSMutableDictionary alloc];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x70 forKeys:&saved_fp - 0x88 count:0x2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r19 = [r19 initWithDictionary:r20];
    var_118 = r24;
    [r24 release];
    var_100 = r23;
    [r23 release];
    [r20 release];
    if (r25 != 0x0) {
            sub_100822058(r19, @"headers", r25);
    }
    [r25 release];
    r23 = [[r19 autorelease] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-208] forKeys:&stack[-208] count:0x0];
    r29 = r29;
    r19 = [r0 retain];
    var_E8 = r23;
    var_F8 = r21;
    if (r21 != 0x0) {
            r21 = [r21 retain];
            r24 = [[NSFileManager defaultManager] retain];
            r0 = [r21 path];
            r29 = r29;
            r23 = [r0 retain];
            r26 = [r24 fileExistsAtPath:r23];
            [r23 release];
            if (r26 != 0x0) {
                    r22 = @selector(alloc);
                    r23 = [[r21 path] retain];
                    r0 = [r24 attributesOfItemAtPath:r23 error:&var_C8];
                    r29 = r29;
                    r26 = [r0 retain];
                    r20 = [var_C8 retain];
                    [r23 release];
                    r0 = r26;
                    r23 = 0x0;
                    var_E0 = r20;
                    r28 = r23;
                    if (r0 != 0x0) {
                            r23 = 0x0;
                            r22 = @selector(alloc);
                            if (r20 == 0x0) {
                                    r23 = [[r0 objectForKeyedSubscript:**_NSFileSize] retain];
                                    var_110 = r0;
                                    r0 = [r0 objectForKeyedSubscript:**_NSFileCreationDate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    [r0 timeIntervalSince1970];
                                    asm { fcvtzs     x28, d0 };
                                    [r26 release];
                                    r0 = [r21 absoluteString];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    if (r23 != 0x0) {
                                            r22 = 0x0;
                                            r0 = r23;
                                    }
                                    else {
                                            r0 = [NSNumber numberWithInt:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = 0x1;
                                    }
                                    var_130 = r0;
                                    r26 = [[NSNumber numberWithInteger:r28] retain];
                                    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:r29 - 0x88 count:0x3];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r26 release];
                                    if (r22 != 0x0) {
                                            [var_130 release];
                                    }
                                    [r20 release];
                                    r22 = @selector(alloc);
                                    r0 = var_110;
                            }
                    }
                    [r0 release];
                    [var_E0 release];
                    [r23 release];
            }
            else {
                    r22 = @selector(alloc);
                    r28 = 0x0;
            }
            [r24 release];
            [r21 release];
            r24 = [[r28 autorelease] retain];
            [r19 release];
            r23 = var_E8;
    }
    else {
            r22 = @selector(alloc);
            r24 = r19;
    }
    r0 = sub_10081876c(&var_D0);
    r29 = r29;
    var_E0 = [r0 retain];
    r21 = [var_D0 retain];
    if (r21 != 0x0) {
            sub_1007ce06c(0x0, @"Could not obtain disk usage statistics. Error %@");
    }
    var_110 = r25;
    r20 = objc_msgSend(@class(NSMutableDictionary), r22);
    if (r23 != 0x0) {
            r25 = 0x0;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-208] forKeys:&stack[-208] count:0x0];
            r29 = r29;
            r23 = [r0 retain];
            r25 = 0x1;
    }
    r9 = var_E0;
    if (r24 != 0x0) {
            r22 = 0x0;
            r28 = r24;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-208] forKeys:&stack[-208] count:0x0];
            r29 = r29;
            r28 = [r0 retain];
            r9 = var_E0;
            r22 = 0x1;
    }
    r19 = r24;
    if (r9 != 0x0) {
            r24 = 0x0;
            r26 = r9;
    }
    else {
            r0 = @class(NSDictionary);
            r0 = [r0 dictionaryWithObjects:&stack[-208] forKeys:&stack[-208] count:0x0];
            r29 = r29;
            r26 = [r0 retain];
            r24 = 0x1;
    }
    r0 = *(&@class(MCConfigurationData) + 0x18);
    r0 = [r0 dictionaryWithObjects:r29 - 0xa0 forKeys:&var_B8 count:0x3];
    r29 = r29;
    r27 = [r0 retain];
    r20 = [r20 initWithDictionary:r2];
    [r27 release];
    if (r24 != 0x0) {
            [r26 release];
    }
    if (r22 != 0x0) {
            [r28 release];
    }
    if (r25 != 0x0) {
            [r23 release];
    }
    r22 = var_108;
    if (r22 != 0x0) {
            r0 = [r22 localizedDescription];
            r29 = r29;
            sub_100822058(r20, @"error", [r0 retain]);
            [r23 release];
    }
    r0 = sub_10084aae0(r20, &var_D8);
    r23 = [r0 retain];
    r27 = [var_D8 retain];
    if (r27 != 0x0) {
            sub_1007ce06c(0x0, @"Failed to JSON encode parameters. Parameters: %@, error: %@.");
    }
    var_58 = **___stack_chk_guard;
    r25 = [[NSString alloc] initWithFormat:@"AFMA_resourceCache(%@)"];
    r0 = objc_loadWeakRetained((int64_t *)&var_120->_reporter);
    [r0 evaluateScript:r25];
    [r0 release];
    [r25 release];
    [r23 release];
    [r27 release];
    [r20 release];
    [var_E0 release];
    [r21 release];
    [r19 release];
    [var_E8 release];
    [r22 release];
    [var_118 release];
    [var_F8 release];
    [var_110 release];
    [var_100 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end