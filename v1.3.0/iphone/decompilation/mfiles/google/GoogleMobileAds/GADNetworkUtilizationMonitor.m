@implementation GADNetworkUtilizationMonitor

-(void *)init {
    r31 = r31 - 0xf0;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [[r29 - 0x60 super] init];
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [GADNetworkUtilizationStatistics alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_aggregatedStatistics));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.network-utilization-monitor", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x68, r19);
            objc_copyWeak(&var_90 + 0x20, r29 - 0x68);
            [r21 addObserverForName:r23 object:0x0 queue:0x0 usingBlock:&var_90];
            objc_copyWeak(&var_B8 + 0x20, r29 - 0x68);
            [r23 addObserverForName:r24 object:0x0 queue:0x0 usingBlock:&var_B8];
            var_C0 = [r19 retain];
            sub_100860a80();
            [var_C0 release];
            objc_destroyWeak(&var_B8 + 0x20);
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(r29 - 0x68);
    }
    r0 = r19;
    return r0;
}

-(void)start {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_initialStatistics));
    if (*(r19 + r20) == 0x0) {
            r0 = [GADNetworkUtilizationStatistics currentStatistics];
            r0 = [r0 retain];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
    }
    return;
}

-(void)stop {
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
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_initialStatistics));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            r0 = [r0 updatedStatistics];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [[r0 minusStatistics:*(r19 + r22)] retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_aggregatedStatistics));
            r0 = *(r19 + r23);
            r0 = [r0 plusStatistics:r21];
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            r0 = *(r19 + r22);
            *(r19 + r22) = 0x0;
            [r0 release];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)updateByteCounts {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r19->_initialStatistics != 0x0) {
            [r19 stop];
            [r19 start];
    }
    return;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_initialStatistics, 0x0);
    objc_storeStrong((int64_t *)&self->_aggregatedStatistics, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end