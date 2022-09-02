@implementation FBPlaceholderObject

-(void *)initWithKey:(void *)arg2 withURL:(void *)arg3 withFetchType:(long long)arg4 withCache:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r21 = arg4;
    r24 = arg3;
    r25 = arg2;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r22 = [arg5 retain];
    r0 = [[&var_50 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_key, r25);
            objc_storeStrong((int64_t *)&r23->_persistPlaceholder, r23);
            objc_storeStrong((int64_t *)&r23->_url, r24);
            objc_storeWeak((int64_t *)&r23->_cache, r22);
            r0 = [NSOperationQueue new];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_underlyingQueue));
            r8 = *(r23 + r24);
            *(r23 + r24) = r0;
            [r8 release];
            [*(r23 + r24) setMaxConcurrentOperationCount:0x1];
            r23->_fetchType = r21;
            r23->_retriesLeft = 0x3;
            [r23 fetchResource];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)cleanupPlaceholder {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self cache] retain];
    r0 = [self key];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r19 objectForKey:r20] retain];
            if ([r21 isMemberOfClass:[FBPlaceholderObject class]] != 0x0) {
                    [r19 removeObjectForKey:r2];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)addCallback:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    [arg2 retain];
    objc_initWeak(&stack[-72], r22);
    r19 = &var_68 + 0x28;
    objc_copyWeak(r19, &stack[-72]);
    r0 = [r20 retain];
    r20 = r0;
    var_48 = r0;
    r0 = objc_retainBlock(&var_68);
    r21 = r0;
    r23 = [[NSBlockOperation blockOperationWithBlock:r21] retain];
    r0 = [r22 fetchResourceOperation];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            [r23 addDependency:r24];
    }
    r0 = [r22 underlyingQueue];
    r0 = [r0 retain];
    [r0 addOperation:r23];
    [r0 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [var_48 release];
    objc_destroyWeak(r19);
    objc_destroyWeak(&stack[-72]);
    [r20 release];
    return;
}

-(void *)fetchResourceBlock {
    [NSBlockOperation new];
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r19 addExecutionBlock:&var_50];
    [self setFetchResourceOperation:r19];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    r0 = [r19 autorelease];
    return r0;
}

-(void)fetchResource {
    r20 = [[self fetchResourceBlock] retain];
    r0 = [self underlyingQueue];
    r0 = [r0 retain];
    [r0 addOperation:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fetchResourceOperation, 0x0);
    objc_storeStrong((int64_t *)&self->_persistPlaceholder, 0x0);
    objc_destroyWeak((int64_t *)&self->_cache);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    objc_storeStrong((int64_t *)&self->_key, 0x0);
    objc_storeStrong((int64_t *)&self->_underlyingQueue, 0x0);
    return;
}

-(void *)underlyingQueue {
    r0 = self->_underlyingQueue;
    return r0;
}

-(void)setUnderlyingQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_underlyingQueue, arg2);
    return;
}

-(void *)key {
    r0 = self->_key;
    return r0;
}

-(void)setKey:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_key, arg2);
    return;
}

-(void *)url {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_url)), 0x0);
    return r0;
}

-(void)setUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cache {
    r0 = objc_loadWeakRetained((int64_t *)&self->_cache);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCache:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_cache, arg2);
    return;
}

-(long long)fetchType {
    r0 = self->_fetchType;
    return r0;
}

-(void)setFetchType:(long long)arg2 {
    self->_fetchType = arg2;
    return;
}

-(long long)retriesLeft {
    r0 = self->_retriesLeft;
    return r0;
}

-(void)setRetriesLeft:(long long)arg2 {
    self->_retriesLeft = arg2;
    return;
}

-(bool)isFetchedResource {
    r0 = *(int8_t *)(int64_t *)&self->_fetchedResource;
    return r0;
}

-(void)setFetchedResource:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_fetchedResource = arg2;
    return;
}

-(void *)persistPlaceholder {
    r0 = self->_persistPlaceholder;
    return r0;
}

-(void)setPersistPlaceholder:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_persistPlaceholder, arg2);
    return;
}

-(void *)fetchResourceOperation {
    r0 = self->_fetchResourceOperation;
    return r0;
}

-(void)setFetchResourceOperation:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fetchResourceOperation, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBPlaceholderObject");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end