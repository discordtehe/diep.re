@implementation GADVideoConfiguration

-(void *)init {
    r0 = [NSDictionary dictionaryWithObjects:&stack[-40] forKeys:&stack[-40] count:0x0];
    r20 = [r0 retain];
    r19 = [self initWithDictionary:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.video-configuration", 0x0, 0x9);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r20 loadStaticSettingsWithDictionary:r19];
            [r20 loadDynamicSettingsWithDictionary:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)updateDynamicConfigurationWithDictionary:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r20;
    [r20 retain];
    dispatch_async(r19, &var_58);
    [var_38 release];
    [r20 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(double)minBufferTimeInterval {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void)loadDynamicSettingsWithDictionary:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95870];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e95870];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r20->_minBufferTimeInterval = d0;
            [r24 release];
    }
    r23 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:*0x100e95878];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r23);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e95878];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r20->_maxBufferTimeInterval = d0;
            [r24 release];
    }
    r23 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:*0x100e95850];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r23);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e95850];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r20->_bufferForPlaybackTimeInterval = d0;
            [r24 release];
    }
    r23 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:*0x100e95858];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r23);
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e95858];
            r0 = [r0 retain];
            r21 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r20->_bufferForPlaybackAfterRebufferTimeInterval = d0;
            [r21 release];
    }
    [r19 release];
    return;
}

-(double)maxBufferTimeInterval {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(double)bufferForPlaybackTimeInterval {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(double)bufferForPlaybackAfterRebufferTimeInterval {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void *)dictionary {
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

-(void)loadStaticSettingsWithDictionary:(void *)arg2 {
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
    r19 = self;
    r22 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 dictionaryForKey:*0x100e9b7e0] retain];
    [r0 release];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 initWithDictionary:r21];
    r20 = r0;
    [r0 addEntriesFromDictionary:r22];
    [r22 release];
    [r21 release];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r24 = 0x1;
            }
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = @selector(respondsToSelector:);
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    var_58 = r22;
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 boolValue];
            [r0 release];
    }
    r28 = r24 | sub_100818968(0xa, 0x0, 0x0) ^ 0x1;
    r22 = r19;
    *(int8_t *)(int64_t *)&r19->_enableAVPlayerPlaybackBuffering = r28;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, var_58);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 boolValue];
            [r0 release];
    }
    else {
            r25 = r28 | r19;
    }
    r19 = r22;
    *(int8_t *)(int64_t *)&r19->_videoBufferShouldIgnoreCanPlayThrough = r25;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            [r0 release];
            r22 = var_58;
            r24 = 0x1;
    }
    else {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 release];
            r22 = var_58;
            if (r24 != 0x0) {
                    r24 = 0x1;
            }
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 boolValue];
            [r0 release];
    }
    *(int8_t *)(int64_t *)&r19->_enableAdvanceBufferingControl = r24;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r22);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r19->_enableInMemoryVideoBuffer = [r0 boolValue];
            [r0 release];
    }
    r8 = *0x1011c3a60;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_precacheMaxBufferBytes));
    *(r19 + r27) = r8;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r22);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(r19 + r27) = [r0 integerValue];
            [r0 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r19->_videoAssetLoaderMaxDownloadWaitTimeInterval = d0;
            [r25 release];
    }
    r8 = *0x1011c3a60;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_videoAssetLoaderMaxContentSizeInBytes));
    *(r19 + r28) = r8;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(r19 + r28) = [r0 integerValue];
            [r0 release];
    }
    r8 = *qword_1011c3a60;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_videoAssetMaxLoadableChunkSizeInBytes));
    *(r19 + r28) = r8;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(r19 + r28) = [r0 integerValue];
            [r0 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r19->_assetLoadingPlayerItemRefreshInterval = d0;
            [r25 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r22);
    [r0 release];
    if (r27 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            asm { fdiv       d0, d0, d1 };
            r19->_precacheUpdateCheckIntervals = d0;
            [r25 release];
    }
    r8 = *0x1011c3a60;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadingPlayerItemNoBufferUpdateMaxContentSize));
    *(r19 + r27) = r8;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r22);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(r19 + r27) = [r0 integerValue];
            [r0 release];
    }
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadingPlayerItemMaxContentLoadingFailedAttempts));
    *(r19 + r27) = 0x1;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, r22);
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            *(r19 + r27) = [r0 integerValue];
            [r0 release];
    }
    r8 = *0x1011c3a60;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_assetLoadingPlayerItemMaxDataLoadingFailedAttempts));
    *(r19 + r26) = r8;
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = objc_msgSend(r0, r22);
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            *(r19 + r26) = [r0 integerValue];
            [r0 release];
    }
    [r20 release];
    return;
}

-(bool)enableAVPlayerPlaybackBuffering {
    r0 = *(int8_t *)(int64_t *)&self->_enableAVPlayerPlaybackBuffering;
    return r0;
}

-(bool)enableAdvanceBufferingControl {
    r0 = *(int8_t *)(int64_t *)&self->_enableAdvanceBufferingControl;
    return r0;
}

-(bool)enableInMemoryVideoBuffer {
    r0 = *(int8_t *)(int64_t *)&self->_enableInMemoryVideoBuffer;
    return r0;
}

-(long long)precacheMaxBufferBytes {
    r0 = self->_precacheMaxBufferBytes;
    return r0;
}

-(double)videoAssetLoaderMaxDownloadWaitTimeInterval {
    r0 = self;
    return r0;
}

-(long long)videoAssetLoaderMaxContentSizeInBytes {
    r0 = self->_videoAssetLoaderMaxContentSizeInBytes;
    return r0;
}

-(long long)videoAssetMaxLoadableChunkSizeInBytes {
    r0 = self->_videoAssetMaxLoadableChunkSizeInBytes;
    return r0;
}

-(long long)assetLoadingPlayerItemMaxContentLoadingFailedAttempts {
    r0 = self->_assetLoadingPlayerItemMaxContentLoadingFailedAttempts;
    return r0;
}

-(long long)assetLoadingPlayerItemMaxDataLoadingFailedAttempts {
    r0 = self->_assetLoadingPlayerItemMaxDataLoadingFailedAttempts;
    return r0;
}

-(long long)assetLoadingPlayerItemNoBufferUpdateMaxContentSize {
    r0 = self->_assetLoadingPlayerItemNoBufferUpdateMaxContentSize;
    return r0;
}

-(double)assetLoadingPlayerItemRefreshInterval {
    r0 = self;
    return r0;
}

-(bool)videoBufferShouldIgnoreCanPlayThrough {
    r0 = *(int8_t *)(int64_t *)&self->_videoBufferShouldIgnoreCanPlayThrough;
    return r0;
}

-(double)precacheUpdateCheckIntervals {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end