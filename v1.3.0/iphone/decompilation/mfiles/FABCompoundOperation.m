@implementation FABCompoundOperation

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
            r20 = @selector(init);
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_compoundQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_completedOperations = 0x0;
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_errors));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.twitter.FABCompoundOperation.dispatch-queue.counting-queue", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_countingQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)main {
    r31 = r31 - 0x140;
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
    r0 = [self operations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            [r19 injectCompoundAsyncCompletionInOperation:r2];
                            objc_msgSend(r19, r24);
                            r0 = objc_msgSend(r19, r25);
                            r29 = r29;
                            r0 = [r0 retain];
                            objc_msgSend(r0, r26);
                            [r28 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r22 = objc_msgSend(var_120, var_128);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)cancel {
    r31 = r31 - 0x170;
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
    r0 = [self compoundQueue];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 operations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    [r22 release];
    if (r24 != 0x0) {
            r0 = [r19 compoundQueue];
            r0 = [r0 retain];
            [r0 cancelAllOperations];
            [r0 release];
            r0 = [r19 countingQueue];
            r0 = [r0 retain];
            r20 = r0;
            dispatch_sync(r0, &var_100);
    }
    else {
            var_130 = q0;
            r0 = [r19 operations];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r24 != 0x0) {
                    r26 = *var_130;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_130 != r26) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [*(var_138 + r28 * 0x8) cancel];
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r24 != 0x0);
            }
            [r22 release];
            r20 = [[r19 compoundQueue] retain];
            r21 = [[r19 operations] retain];
            [r20 addOperations:r21 waitUntilFinished:0x0];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [[&var_150 super] cancel];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)injectCompoundAsyncCompletionInOperation:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    r0 = [r19 asyncCompletion];
    r0 = [r0 retain];
    [r0 copy];
    [r0 release];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    r21 = [r21 retain];
    r0 = objc_retainBlock(&var_58);
    [r19 setAsyncCompletion:r0];
    [r0 release];
    [r21 release];
    objc_destroyWeak(&var_58 + 0x28);
    [r21 release];
    objc_destroyWeak(&saved_fp - 0x28);
    [r19 release];
    return;
}

-(void)injectCompoundSyncCompletionInOperation:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    r0 = [r19 completionBlock];
    r0 = [r0 retain];
    [r0 copy];
    [r0 release];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    r21 = [r21 retain];
    r0 = objc_retainBlock(&var_58);
    [r19 setCompletionBlock:r0];
    [r0 release];
    [r21 release];
    objc_destroyWeak(&var_58 + 0x28);
    [r21 release];
    objc_destroyWeak(&saved_fp - 0x28);
    [r19 release];
    return;
}

-(void)updateCompletionCountsWithError:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self countingQueue] retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)operations {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_operations)), 0x0);
    return r0;
}

-(void)setOperations:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)attemptCompoundCompletion {
    r31 = r31 - 0x80;
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
    r19 = self;
    if ([self isCancelled] != 0x0) {
            r20 = [[r19 name] retain];
            r22 = [[NSString stringWithFormat:@"%@ cancelled"] retain];
            r23 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r21 = [[NSError errorWithDomain:@"com.twitter.FABCompoundOperation.error" code:0xfffffffe userInfo:r23] retain];
            [r19 finishWithError:r21];
            [r21 release];
            [r23 release];
            [r22 release];
            [r20 release];
            [r19 setAsyncCompletion:0x0];
    }
    else {
            r22 = [r19 completedOperations];
            r0 = [r19 errors];
            r0 = [r0 retain];
            r23 = r0;
            r25 = [r0 count] + r22;
            r0 = [r19 operations];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 count];
            [r0 release];
            [r23 release];
            if (r25 == r24) {
                    r0 = [r19 errors];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = [r0 count];
                    [r0 release];
                    if (r21 != 0x0) {
                            r22 = [[r19 errors] retain];
                            r23 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1] retain];
                            r20 = [[NSError errorWithDomain:@"com.twitter.FABCompoundOperation.error" code:0xfffffffd userInfo:r23] retain];
                            [r23 release];
                            [r22 release];
                    }
                    else {
                            r20 = 0x0;
                    }
                    [r19 finishWithError:r20];
                    [r20 release];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)compoundQueue {
    r0 = self->_compoundQueue;
    return r0;
}

-(void)setCompoundQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_compoundQueue, arg2);
    return;
}

-(void)setCompletedOperations:(unsigned long long)arg2 {
    self->_completedOperations = arg2;
    return;
}

-(unsigned long long)completedOperations {
    r0 = self->_completedOperations;
    return r0;
}

-(void)setErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_errors, arg2);
    return;
}

-(void *)errors {
    r0 = self->_errors;
    return r0;
}

-(void)setCountingQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countingQueue, arg2);
    return;
}

-(void *)countingQueue {
    r0 = self->_countingQueue;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_countingQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_errors, 0x0);
    objc_storeStrong((int64_t *)&self->_compoundQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_operations, 0x0);
    return;
}

@end