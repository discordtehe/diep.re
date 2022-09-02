@implementation TR_DDAbstractLogger

-(void *)init {
    r31 = r31 - 0x40;
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
            if ([r19 respondsToSelector:r2] != 0x0) {
                    r0 = [r19 loggerName];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    r20 = [r0 UTF8String];
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
            r0 = dispatch_queue_create(r20, 0x0);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_loggerQueue));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            dispatch_queue_set_specific(*(r19 + r20), r19, r19, 0x0);
    }
    r0 = r19;
    return r0;
}

-(void)logMessage:(void *)arg2 {
    return;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)logFormatter {
    r0 = [TR_DDLog loggingQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setLogFormatter:(void *)arg2 {
    r0 = [arg2 retain];
    var_48 = r0;
    [r0 retain];
    r0 = objc_retainBlock(&var_70);
    r22 = [[TR_DDLog loggingQueue] retain];
    [r0 retain];
    dispatch_async(r22, &var_A0);
    [r21 release];
    [r19 release];
    [r22 release];
    [var_48 release];
    [r20 release];
    return;
}

-(void *)loggerQueue {
    r0 = self->_loggerQueue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)loggerName {
    r0 = [self class];
    r0 = NSStringFromClass(r0);
    return r0;
}

-(bool)isOnInternalLoggerQueue {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = dispatch_get_specific(self);
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isOnGlobalLoggingQueue {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = dispatch_get_specific(0x100e7bc68);
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setLoggerQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loggerQueue, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_loggerQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_logFormatter, 0x0);
    return;
}

@end