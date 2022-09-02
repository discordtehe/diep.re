@implementation APMScheduler

+(bool)checkOnBackgroundThreadWithMethodName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([NSThread isMainThread] != 0x0) {
            if ([r19 length] == 0x0) {
                    [@"<empty method name>" retain];
                    [r19 release];
                    r19 = @"<empty method name>";
            }
            r20 = [[NSString stringWithFormat:@"Method %@ should execute on background thread"] retain];
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7531 message:r20 context:0x0];
            [r0 release];
            [r20 release];
            r20 = 0x0;
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithWorkerQueueLabel:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = objc_retainAutorelease(r19);
            r0 = [r0 UTF8String];
            r0 = dispatch_queue_create(r0, 0x0);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_workerQueue));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            dispatch_set_target_queue(*(r20 + r21), [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain]);
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)scheduleOnWorkerQueueBlockID:(void *)arg2 block:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r21 = r21->_workerQueue;
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            dispatch_async(r21, &var_50);
            [var_28 release];
            r0 = var_30;
    }
    else {
            r21 = [[NSString stringWithFormat:@"Nil block dispatched asynchronously on worker queue. Block ID=%@."] retain];
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7535 message:r21];
            [r0 release];
            r0 = r21;
    }
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)dispatchSyncOnWorkerQueueBlockID:(void *)arg2 block:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0) {
            r22 = r21->_workerQueue;
            var_68 = [r20 retain];
            r21 = [r19 retain];
            var_60 = r21;
            dispatch_sync(r22, &var_88);
            if (*(int8_t *)(&var_50 + 0x18) == 0x0) {
                    r21 = [[NSString stringWithFormat:@"Synchronous task failed. Block ID=%@"] retain];
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x7534 message:r21];
                    [r0 release];
                    [r21 release];
            }
            [var_60 release];
            [var_68 release];
            _Block_object_dispose(&var_50, 0x8);
    }
    else {
            r21 = [[NSString stringWithFormat:@"Nil block dispatched synchronously on worker queue. Block ID=%@."] retain];
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x7532 message:r21];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)workerQueue {
    r0 = self->_workerQueue;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_workerQueue, 0x0);
    return;
}

@end