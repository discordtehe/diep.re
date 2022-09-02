@implementation GADGCache

+(void *)sharedInstance {
    if (*qword_1011dbfa0 != -0x1) {
            dispatch_once(0x1011dbfa0, 0x100e9f310);
    }
    r0 = *0x1011dbfa8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0xe0;
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
    r0 = [[&var_70 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.gcache", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_filePathsToResourceBuffers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_cacheMonitorObservers));
            r8 = *(r19 + r26);
            *(r19 + r26) = r0;
            [r8 release];
            objc_initWeak(&stack[-136], r19);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            [r23 addObserverForName:*0x100e9c4d0 object:0x0 queue:r24 usingBlock:&var_A0];
            [r24 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            [r23 addObserverForName:*0x100e9c4d8 object:0x0 queue:r24 usingBlock:&var_C8];
            [r24 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(&stack[-136]);
    }
    r0 = r19;
    return r0;
}

-(void)loadGCacheURL:(void *)arg2 queue:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x130;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r21 == 0x0) {
            r23 = objc_retainBlock(0x100e9f3b0);
            [r21 release];
            r21 = r23;
    }
    if (r20 == 0x0) {
            r23 = *__dispatch_main_q;
            [r23 retain];
            [r20 release];
            r20 = r23;
    }
    if ((sub_10089a100(r19, @"gcache") & 0x1) != 0x0) {
            r24 = &var_A8;
            r0 = [GADJSContextController sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 SDKCoreContext];
            r29 = r29;
            var_80 = [r0 retain];
            [r23 release];
            r23 = *(r24 + 0x28);
            if (r23 != 0x0) {
                    var_F8 = [r20 retain];
                    r21 = [r21 retain];
                    [r22 loadGCacheURL:r19 withSDKCoreContext:r23 completionHandler:&var_118];
                    [r21 release];
                    r0 = var_F8;
            }
            else {
                    [sub_1008098f8(0x6, @"SDKCoreContext must have loaded for gcache processing.") retain];
                    sub_1007ce06c(0x0, @"SDKCoreContext returned from JSContextController for GCache processing must not be nil.");
                    r21 = [r21 retain];
                    var_B8 = [r19 retain];
                    var_B0 = r22;
                    [r22 retain];
                    dispatch_async(r20, &var_E0);
                    [var_B0 release];
                    [var_B8 release];
                    [r21 release];
                    r0 = r22;
            }
            [r0 release];
            _Block_object_dispose(&var_A8, 0x8);
            r0 = var_80;
    }
    else {
            r23 = [sub_1008098f8(0xa, [[NSString alloc] initWithFormat:@"Invalid gcache URL scheme. %@"]) retain];
            r21 = [r21 retain];
            var_50 = [r19 retain];
            var_48 = r23;
            [r23 retain];
            dispatch_async(r20, r29 - 0x78);
            [var_48 release];
            [var_50 release];
            [r21 release];
            [r23 release];
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadGCacheURL:(void *)arg2 withSDKCoreContext:(void *)arg3 completionHandler:(void *)arg4 {
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
    r23 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r24 = [arg4 retain];
    r0 = sub_10081876c(&var_78);
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [var_78 retain];
    if (r20 != 0x0) {
            sub_1007ce06c(0x0, @"Failed to get disk usage statistics with error %@");
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r26 = [r0 retain];
            [r21 release];
            r21 = r26;
    }
    var_48 = **___stack_chk_guard;
    r25 = @selector(dictionaryWithObjects:forKeys:count:);
    r26 = [[r22 absoluteString] retain];
    [objc_msgSend(@class(NSDictionary), r25) retain];
    [r26 release];
    objc_initWeak(&stack[-144], r23);
    [r24 retain];
    [r22 retain];
    objc_copyWeak(&var_B8 + 0x30, &stack[-144]);
    [r19 runGcacheWithArguments:r25 completionHandler:&var_B8];
    objc_destroyWeak(&var_B8 + 0x30);
    [r22 release];
    [r23 release];
    objc_destroyWeak(&stack[-144]);
    [r25 release];
    [r21 release];
    [r20 release];
    [r23 release];
    [r19 release];
    [r22 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)cacheMonitorDidStartCaching:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e97618];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [r19 fileURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    objc_initWeak(r29 - 0x28, r20);
                    objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
                    var_38 = [r19 retain];
                    dispatch_async(r20, &var_58);
                    [var_38 release];
                    objc_destroyWeak(&var_58 + 0x28);
                    objc_destroyWeak(r29 - 0x28);
            }
    }
    [r19 release];
    return;
}

-(void)cacheMonitorDidCompleteCaching:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e97618];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [r19 fileURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    objc_initWeak(r29 - 0x28, r20);
                    objc_copyWeak(&var_60 + 0x30, r29 - 0x28);
                    var_40 = [r20 retain];
                    var_38 = [r19 retain];
                    dispatch_async(r22, &var_60);
                    [var_38 release];
                    [var_40 release];
                    objc_destroyWeak(&var_60 + 0x30);
                    objc_destroyWeak(r29 - 0x28);
            }
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cacheMonitorObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_filePathsToResourceBuffers, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end