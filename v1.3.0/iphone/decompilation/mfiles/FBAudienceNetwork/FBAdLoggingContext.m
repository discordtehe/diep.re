@implementation FBAdLoggingContext

-(void *)cacheDebugDataForKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0) {
            r0 = [r20 cacheDebugMap];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:r19] retain];
            [r0 release];
    }
    else {
            r22 = 0x0;
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)mapCacheDebugData:(void *)arg2 forKey:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (r20 != 0x0) {
            r22 = [r19 copy];
            r0 = [r21 cacheDebugMap];
            r0 = [r0 retain];
            [r0 setObject:r22 forKeyedSubscript:r20];
            [r0 release];
            [r22 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)markCacheHitOrMissEventLoggedForKey:(void *)arg2 requestId:(void *)arg3 {
    r21 = [arg2 retain];
    [self markCacheEventLoggedForKey:r21 requestId:arg3 cacheEventTypeCode:0x0];
    [r21 release];
    return;
}

-(void)markInMemoryWriteFailureCacheEventLoggedForKey:(void *)arg2 requestId:(void *)arg3 {
    r21 = [arg2 retain];
    [self markCacheEventLoggedForKey:r21 requestId:arg3 cacheEventTypeCode:0x1];
    [r21 release];
    return;
}

-(void)markCacheEventLoggedForKey:(void *)arg2 requestId:(void *)arg3 cacheEventTypeCode:(long long)arg4 {
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
    r29 = &saved_fp;
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0 && r20 != 0x0) {
            r0 = [r21 cacheDebugMap];
            r0 = [r0 retain];
            r23 = [[r0 objectForKeyedSubscript:r19] retain];
            [r0 release];
            r0 = [r23 requestId];
            r0 = [r0 retain];
            r25 = [r0 isEqualToString:r2];
            [r0 release];
            if (r25 != 0x0) {
                    if (r22 != 0x0) {
                            [r23 markInMemoryCacheWriteFailureLogged];
                    }
                    else {
                            [r23 markHitOrMissLogged];
                    }
            }
            [r23 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)clearContext {
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 cacheDebugMap];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cacheDebugMap, 0x0);
    return;
}

-(struct NSMutableDictionary *)cacheDebugMap {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_cacheDebugMap));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = [NSMutableDictionary new];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setCacheDebugMap:(struct NSMutableDictionary *)arg2 {
    objc_storeStrong((int64_t *)&self->_cacheDebugMap, arg2);
    return;
}

+(void *)sharedContext {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eaa448);
    if (*qword_1011ddac0 != -0x1) {
            dispatch_once(0x1011ddac0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddac8);
    [r19 release];
    r0 = r20;
    return r0;
}

@end