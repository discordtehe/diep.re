@implementation GADPerformanceMetrics

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = sub_100860a2c("com.google.admob.n.performance-metrics", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)start {
    r31 = r31 - 0x120;
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
    r20 = self;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 doubleForKey:*0x100e9b430];
    v8 = v0;
    [r0 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
    r22 = *(r20 + r23);
    r21 = [r20 retain];
    var_C8 = r21;
    dispatch_sync(r22, &var_E8);
    if (*(int8_t *)((r29 - 0x80) + 0x18) != 0x0) {
            r0 = [GADScheduler alloc];
            r0 = [r0 initWithInterval:*0x100e9b430];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_memoryUpdateScheduler));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            [*(r21 + r22) scheduleOnQueue:*(r20 + r23) block:&var_110];
            [*(r21 + r22) start];
            r0 = [GADFramerateMonitor sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addFramerateObserver:r21];
            [r0 release];
    }
    [var_C8 release];
    _Block_object_dispose(&var_B0, 0x8);
    [0x0 release];
    _Block_object_dispose(r29 - 0x80, 0x8);
    return;
}

-(void)stop {
    r0 = [GADFramerateMonitor sharedInstance];
    r0 = [r0 retain];
    [r0 removeFramerateObserver:self];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_memoryUpdateScheduler));
    [*(self + r20) stop];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    r20 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r20, &var_38);
    [var_18 release];
    return;
}

-(void *)droppedFrameCountPerSample {
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

-(unsigned long long)initiallyAllocatedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(unsigned long long)peakAllocatedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(unsigned long long)finalAllocatedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(long long)cellularTransmittedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(long long)cellularReceivedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(long long)wifiTransmittedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(long long)wifiReceivedByteCount {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void *)dictionaryRepresentation {
    r20 = [[NSMutableDictionary alloc] init];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    r20 = r19;
    r19 = objc_retainAutoreleaseReturnValue(r19);
    [r20 release];
    [var_30 release];
    [r19 release];
    r0 = r19;
    return r0;
}

-(void)framerateMonitorDidDetectDroppedFrames:(long long)arg2 {
    r31 = r31 - 0x80;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = [[NSDate alloc] init];
    r0 = [GADFramerateMonitor sharedInstance];
    r0 = [r0 retain];
    [r0 frameDuration];
    [r0 release];
    if (d8 == 0x0) {
            sub_1007ce06c(0x0, @"Framerate monitor must know the device's maximum framerate by the time it detects dropped frames.");
            d8 = *0x100b9e1b8;
    }
    r22 = r20->_lockQueue;
    var_50 = [r20 retain];
    [r21 retain];
    dispatch_async(r22, &var_70);
    [r21 release];
    [var_50 release];
    [r19 release];
    return;
}

-(void)recordDroppedFrames:(long long)arg2 forBucketIndex:(long long)arg3 {
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
    r19 = arg3;
    r20 = arg2;
    r22 = self;
    if ((r19 & 0xffffffff80000000) == 0x0) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_droppedFrameCounts));
            r0 = *(r22 + r26);
            r0 = [r0 count];
            r21 = *(r22 + r26);
            r23 = @class(NSNumber);
            if (r0 <= r19) {
                    do {
                            r0 = [r23 numberWithInt:r2];
                            r29 = r29;
                            sub_100822370(r21, [r0 retain]);
                            [r23 release];
                            r0 = *(r22 + r26);
                            r0 = objc_msgSend(r0, r25);
                            r21 = *(r22 + r26);
                            r23 = @class(NSNumber);
                    } while (r0 < r19);
            }
            r0 = [r21 objectAtIndexedSubscript:r19];
            r0 = [r0 retain];
            r20 = [[r23 numberWithLongLong:[r0 longLongValue] + r20] retain];
            [r21 setObject:r20 atIndexedSubscript:r19];
            [r20 release];
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_networkMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_memoryUpdateScheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_memoryMonitor, 0x0);
    objc_storeStrong((int64_t *)&self->_droppedFrameCounts, 0x0);
    objc_storeStrong((int64_t *)&self->_startTimestamp, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end