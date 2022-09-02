@implementation FBAdInMemoryCache

-(void *)init {
    r0 = [self initWithCountLimit:0x0 totalCostLimit:0x0];
    return r0;
}

-(void *)initWithCountLimit:(unsigned long long)arg2 totalCostLimit:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_countLimit = r21;
            r19->_totalCostLimit = r20;
            r0 = **___NSDictionary0__;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_storage));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.facebook.audiecenetwork.cache-queue", *__dispatch_queue_attr_concurrent);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cacheQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    [self setObject:r21 forKey:arg3 cost:0x0];
    [r21 release];
    return;
}

-(unsigned long long)count {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_cacheQueue))), &var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void *)objectForKey:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = r20->_cacheQueue;
            var_60 = [r19 retain];
            dispatch_sync(r21, &var_88);
            r20 = [*(&var_50 + 0x28) retain];
            [var_60 release];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 cost:(unsigned long long)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = r21->_cacheQueue;
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_barrier_async(r22, &var_58);
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)removeAllObjects {
    dispatch_barrier_async(*(self + sign_extend_64(*(int32_t *)ivar_offset(_cacheQueue))), &var_28);
    return;
}

-(void)removeObjectForKey:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = r20->_cacheQueue;
            var_28 = [r19 retain];
            dispatch_barrier_async(r21, &var_50);
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_storage, 0x0);
    objc_storeStrong((int64_t *)&self->_cacheQueue, 0x0);
    return;
}

-(unsigned long long)countLimit {
    r0 = self->_countLimit;
    return r0;
}

-(void)setStorage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storage, arg2);
    return;
}

-(unsigned long long)totalCostLimit {
    r0 = self->_totalCostLimit;
    return r0;
}

-(void *)storage {
    r0 = self->_storage;
    return r0;
}

@end