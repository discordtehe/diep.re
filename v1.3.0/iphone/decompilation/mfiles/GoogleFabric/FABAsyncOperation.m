@implementation FABAsyncOperation

-(bool)isConcurrent {
    return 0x1;
}

-(bool)isAsynchronous {
    return 0x1;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            *(int8_t *)(int64_t *)&r19->_internalExecuting = 0x0;
            *(int8_t *)(int64_t *)&r19->_internalFinished = 0x0;
            r0 = [NSRecursiveLock alloc];
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_lock));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r19 class];
            r20 = [[NSString stringWithFormat:@"com.twitter.%@-lock"] retain];
            [*(r19 + r21) setName:r20];
            [r20 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isExecuting {
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r21 = *(int8_t *)(int64_t *)&self->_internalExecuting;
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

-(bool)isFinished {
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r21 = *(int8_t *)(int64_t *)&self->_internalFinished;
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

-(void)start {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self checkForCancellation] & 0x1) == 0x0) {
            [r19 markStarted];
            [r19 main];
    }
    return;
}

-(void)changeValueForKey:(void *)arg2 inBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    [self willChangeValueForKey:r21];
    (*(r23 + 0x10))(arg3);
    [r23 release];
    [self didChangeValueForKey:r21];
    [r21 release];
    return;
}

-(void)lock:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    (*(r22 + 0x10))(arg2);
    [r22 release];
    r0 = [self lock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    return;
}

-(bool)checkForCancellation {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isCancelled];
    if (r0 != 0x0) {
            [r19 markDone];
            r0 = 0x1;
    }
    return r0;
}

-(void)unlockedMarkFinished {
    [self changeValueForKey:@"isFinished" inBlock:&var_28];
    return;
}

-(void)unlockedMarkStarted {
    [self changeValueForKey:@"isExecuting" inBlock:&var_28];
    return;
}

-(void)unlockedMarkComplete {
    [self changeValueForKey:@"isExecuting" inBlock:&var_28];
    return;
}

-(void)markStarted {
    [self lock:&var_28];
    return;
}

-(void)markDone {
    [self lock:&var_28];
    return;
}

-(void)finishWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 asyncCompletion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r19 asyncCompletion] retain] + 0x10))();
            [r21 release];
    }
    [r19 markDone];
    [r20 release];
    return;
}

-(void *)asyncCompletion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_asyncCompletion)), 0x0);
    return r0;
}

-(void)setAsyncCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)lock {
    r0 = self->_lock;
    return r0;
}

-(void)setLock:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_lock, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lock, 0x0);
    objc_storeStrong((int64_t *)&self->_asyncCompletion, 0x0);
    return;
}

@end