@implementation GADURLSessionTransactionMonitor

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_transactionsByTask));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_group_create();
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionGroup));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)waitForTransactionsWithCompletion:(void *)arg2 {
    dispatch_group_notify(self->_completionGroup, [dispatch_get_global_queue(0x0, 0x0) retain], [arg2 retain]);
    [r19 release];
    [r21 release];
    return;
}

-(void)addTransaction:(void *)arg2 forTask:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_transactionsByTask));
    r0 = *(r20 + r23);
    r0 = [r0 objectForKeyedSubscript:r21];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            dispatch_group_enter(r20->_completionGroup);
    }
    sub_100822058(*(r20 + r23), r21, r19);
    [r21 release];
    [r19 release];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x80;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_transactionsByTask));
    if ([*(r19 + r22) count] != 0x0) {
            r20 = [NSString alloc];
            r22 = [[*(r19 + r22) allValues] retain];
            r20 = [r20 initWithFormat:@"URL session monitor was released before its network tasks were completed.\nMonitor: %@\nTasks: %@"];
            [r22 release];
            r21 = [NSError alloc];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
            r23 = [r0 retain];
            r21 = [r21 initWithDomain:*0x100e92df8 code:0x8 userInfo:r23];
            [r23 release];
            [r19 invalidateAllTasksWithError:r21];
            [r21 release];
            [r20 release];
    }
    var_38 = **___stack_chk_guard;
    [[&var_58 super] dealloc];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeTask:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_transactionsByTask));
    r0 = *(r20 + r22);
    r0 = [r0 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_1008220c0(*(r20 + r22), r19);
            dispatch_group_leave(r20->_completionGroup);
    }
    [r19 release];
    return;
}

-(void)invalidateAllTasksWithError:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [self->_transactionsByTask copy];
    var_30 = r20;
    r20 = [r20 retain];
    var_28 = [self retain];
    [r21 enumerateKeysAndObjectsUsingBlock:&var_50];
    [var_28 release];
    [var_30 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)URLSession:(void *)arg2 didBecomeInvalidWithError:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r20 = [arg3 retain];
    if (r20 == 0x0) {
            r21 = [NSError alloc];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
            r23 = [r0 retain];
            r21 = [r21 initWithDomain:*0x100e92df8 code:0x8 userInfo:r23];
            [r20 release];
            [r23 release];
            r20 = r21;
    }
    var_38 = **___stack_chk_guard;
    [r19 invalidateAllTasksWithError:r20];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r22 = [arg3 retain];
    r23 = self->_transactionsByTask;
    r19 = [arg4 retain];
    r0 = [r23 objectForKeyedSubscript:arg3];
    r0 = [r0 retain];
    [r0 didCompleteWithError:r19];
    [r19 release];
    [r0 release];
    [self removeTask:r22];
    [r22 release];
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 willPerformHTTPRedirection:(void *)arg4 newRequest:(void *)arg5 completionHandler:(void *)arg6 {
    [arg3 retain];
    r26 = [arg4 retain];
    r20 = [arg5 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_transactionsByTask));
    r25 = *(self + r28);
    [arg6 retain];
    r0 = [r25 objectForKeyedSubscript:arg3];
    r0 = [r0 retain];
    [r0 didReceiveResponse:r26];
    [r26 release];
    r26 = [[r0 successorWithURLRequest:r20] retain];
    [r0 didCompleteWithError:0x0];
    sub_100822058(*(self + r28), arg3, r26);
    [r22 release];
    [r26 willSendRequest];
    (*(r24 + 0x10))(arg6, r20);
    [r24 release];
    [r20 release];
    [r26 release];
    [r25 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveResponse:(void *)arg4 completionHandler:(void *)arg5 {
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = self->_transactionsByTask;
    r24 = [arg5 retain];
    r21 = [r21 objectForKeyedSubscript:r22];
    [r22 release];
    r0 = [r21 retain];
    [r0 didReceiveResponse:r20];
    [r20 release];
    [r0 release];
    (*(r24 + 0x10))(arg5, 0x1);
    [r24 release];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
    r21 = [arg3 retain];
    r20 = self->_transactionsByTask;
    r19 = [arg4 retain];
    r20 = [r20 objectForKeyedSubscript:r21];
    [r21 release];
    r0 = [r20 retain];
    [r0 didReceiveData:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completionGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_transactionsByTask, 0x0);
    return;
}

@end