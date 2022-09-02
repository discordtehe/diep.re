@implementation FBAdNetworkQuality

-(void *)initWithFactory:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    if (r2 != 0x0) {
            r19 = *(r2 + 0x10);
            r24 = [r2 retain];
            r0 = (r19)();
            r22 = r0;
            r19 = [r0 retain];
            r0 = (*(r2 + 0x10))(r24);
            r23 = r0;
            r20 = [r0 retain];
            [r24 release];
            if (r19 != 0x0) {
                    asm { ccmp       x20, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & NE) {
                    r22 = 0x0;
            }
            else {
                    r0 = [[&var_40 super] init];
                    r21 = r0;
                    if (r0 != 0x0) {
                            r0 = dispatch_queue_create("com.facebook.ads.network-quality-queue", *__dispatch_queue_attr_concurrent);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                            objc_storeStrong((int64_t *)&r21->_downloadBandwidthMovingAverage, r22);
                            objc_storeStrong((int64_t *)&r21->_uploadBandwidthMovingAverage, r23);
                    }
                    r0 = [r21 retain];
                    r21 = r0;
                    r22 = r0;
            }
            [r20 release];
            [r19 release];
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    r0 = r22;
    return r0;
}

-(void)updateUsingTask:(void *)arg2 metrics:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[arg3 transactionMetrics] retain];
    var_30 = r21;
    r21 = [r21 retain];
    [r19 enumerateObjectsUsingBlock:&var_50];
    [r19 release];
    [var_30 release];
    [r21 release];
    return;
}

-(void)updateUsingCountOfBytesSent:(unsigned long long)arg2 requestDurationInMiliseconds:(unsigned long long)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 != 0x0 && r3 != 0x0) {
            asm { ucvtf      d0, x3 };
            asm { fdiv       d0, d0, d1 };
            asm { ucvtf      d1, x2 };
            asm { fdiv       d0, d1, d0 };
            [r0 updateDownloadBandwidthEstimate:r2];
    }
    return;
}

-(double)downloadBandwidthEstimate {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_60);
    r0 = _Block_object_dispose(&var_30, 0x8);
    return r0;
}

-(unsigned long long)downloadBandwidthState {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(double)uploadBandwidthEstimate {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_60);
    r0 = _Block_object_dispose(&var_30, 0x8);
    return r0;
}

-(unsigned long long)uploadBandwidthState {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)updateDownloadBandwidthEstimate:(double)arg2 {
    dispatch_barrier_async(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_30);
    return;
}

-(void)updateUploadBandwidthEstimate:(double)arg2 {
    dispatch_barrier_async(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_30);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_uploadBandwidthMovingAverage, 0x0);
    objc_storeStrong((int64_t *)&self->_downloadBandwidthMovingAverage, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(void *)uploadBandwidthMovingAverage {
    r0 = self->_uploadBandwidthMovingAverage;
    return r0;
}

-(void *)downloadBandwidthMovingAverage {
    r0 = self->_downloadBandwidthMovingAverage;
    return r0;
}

@end