@implementation TR_DDMultiFormatter

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = dispatch_queue_create("cocoa.lumberjack.multiformatter", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_formatters));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)formatLogMessage:(void *)arg2 {
    r20 = [arg2 retain];
    var_28 = [r20->_message retain];
    r21 = self->_queue;
    var_60 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_88);
    [*(&var_50 + 0x28) retain];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [var_28 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)logMessageForLine:(void *)arg2 originalMessage:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 copy];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_message));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)formatters {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)addFormatter:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_barrier_async(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)removeFormatter:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_barrier_async(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void)removeAllFormatters {
    dispatch_barrier_async(*(self + sign_extend_64(*(int32_t *)ivar_offset(_queue))), &var_28);
    return;
}

-(bool)isFormattingWithFormatter:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_queue;
    [r0 retain];
    dispatch_sync(r20, &var_68);
    [r0 release];
    [r19 release];
    _Block_object_dispose(&saved_fp - 0x30, 0x8);
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_formatters, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

@end