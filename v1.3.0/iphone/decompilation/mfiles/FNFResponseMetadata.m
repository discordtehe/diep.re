@implementation FNFResponseMetadata

-(bool)hasError {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_error != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_originalURL, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_eTag, 0x0);
    return;
}

-(long long)actualBandwidth {
    r0 = self->_actualBandwidth;
    return r0;
}

-(void *)initWithMetadataDictionary:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"actual_bandwidth"];
            r0 = [r0 retain];
            r20->_actualBandwidth = [r0 integerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"bytes_cached"];
            r0 = [r0 retain];
            r20->_bytesCached = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"duration_ms"];
            r0 = [r0 retain];
            r20->_durationMS = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"bytes_downloaded"];
            r0 = [r0 retain];
            r20->_bytesDownloaded = [r0 integerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"time_to_first_byte"];
            r0 = [r0 retain];
            r20->_ttfbMs = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"start_time"];
            r0 = [r0 retain];
            r20->_startTimeMs = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"prefetch_read_duration"];
            r0 = [r0 retain];
            r20->_prefetchReadDurationMs = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"cache_read_duration"];
            r0 = [r0 retain];
            r20->_cacheReadDurationMs = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"cache_start_time"];
            r0 = [r0 retain];
            r20->_cacheReadStartTimeMs = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"cache_end_time"];
            r0 = [r0 retain];
            r20->_cacheReadEndTimeMs = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"prefetched_bytes_cached"];
            r0 = [r0 retain];
            r20->_bytesFromPrefetchCache = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"prefetched_bytes_requested"];
            r0 = [r0 retain];
            r20->_prefetchBytesRequested = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"prefetched_bytes_received"];
            r0 = [r0 retain];
            r20->_prefetchBytesReceived = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"request_error"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_error));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"etag"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eTag));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"instance_key"];
            r0 = [r0 retain];
            *(int32_t *)(int64_t *)&r20->_instanceKey = [r0 intValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"replica"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_replicaNumber = [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"replica"];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 originalURL];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_originalURL));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 objectForKeyedSubscript:@"failover_response_code"];
            r0 = [r0 retain];
            r20->_failoverResponseCode = [r0 unsignedIntegerValue];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)bytesCached {
    r0 = self->_bytesCached;
    return r0;
}

-(unsigned long long)durationMS {
    r0 = self->_durationMS;
    return r0;
}

-(long long)bytesDownloaded {
    r0 = self->_bytesDownloaded;
    return r0;
}

-(unsigned long long)startTimeMs {
    r0 = self->_startTimeMs;
    return r0;
}

-(unsigned long long)ttfbMs {
    r0 = self->_ttfbMs;
    return r0;
}

-(unsigned long long)prefetchReadDurationMs {
    r0 = self->_prefetchReadDurationMs;
    return r0;
}

-(unsigned long long)cacheReadDurationMs {
    r0 = self->_cacheReadDurationMs;
    return r0;
}

-(long long)cacheReadStartTimeMs {
    r0 = self->_cacheReadStartTimeMs;
    return r0;
}

-(long long)cacheReadEndTimeMs {
    r0 = self->_cacheReadEndTimeMs;
    return r0;
}

-(unsigned long long)prefetchBytesRequested {
    r0 = self->_prefetchBytesRequested;
    return r0;
}

-(unsigned long long)bytesFromPrefetchCache {
    r0 = self->_bytesFromPrefetchCache;
    return r0;
}

-(unsigned long long)prefetchBytesReceived {
    r0 = self->_prefetchBytesReceived;
    return r0;
}

-(void *)eTag {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eTag)), 0x0);
    return r0;
}

-(void *)error {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_error)), 0x0);
    return r0;
}

-(int)instanceKey {
    r0 = *(int32_t *)(int64_t *)&self->_instanceKey;
    return r0;
}

-(char)replicaNumber {
    r0 = sign_extend_64(*(int8_t *)(int64_t *)&self->_replicaNumber);
    return r0;
}

-(void *)originalURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_originalURL)), 0x0);
    return r0;
}

-(unsigned long long)failoverResponseCode {
    r0 = self->_failoverResponseCode;
    return r0;
}

@end