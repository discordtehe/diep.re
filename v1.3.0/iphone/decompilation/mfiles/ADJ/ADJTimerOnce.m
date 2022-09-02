@implementation ADJTimerOnce

+(void *)timerWithBlock:(void *)arg2 queue:(void *)arg3 name:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[ADJTimerOnce alloc] initBlock:r21 queue:r20 name:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)initBlock:(void *)arg2 queue:(void *)arg3 name:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 setInternalQueue:r20];
            r23 = [[ADJAdjustFactory logger] retain];
            [r22 setLogger:r23];
            [r23 release];
            [r22 setName:r21];
            var_50 = [r21 retain];
            var_48 = [r19 retain];
            [r22 setBlock:&var_70];
            r23 = [r22 retain];
            [var_48 release];
            [var_50 release];
    }
    else {
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r23;
    return r0;
}

-(double)fireIn {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self fireDate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 fireDate];
            r0 = [r0 retain];
            [r0 timeIntervalSinceNow];
            r0 = [r0 release];
    }
    return r0;
}

-(void)cancel:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [self source];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 source];
            r29 = r29;
            r0 = [r0 retain];
            dispatch_source_cancel(r0);
            [r21 release];
    }
    [r19 setSource:0x0];
    if (r20 != 0x0) {
            r20 = [[r19 logger] retain];
            r19 = [[r19 name] retain];
            [r20 verbose:@"%@ canceled"];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)cancel {
    [self cancel:0x1];
    return;
}

-(void)startIn:(double)arg2 {
    [self cancel:0x0];
    r20 = [[NSDate alloc] initWithTimeIntervalSinceNow:0x0];
    [self setFireDate:r20];
    [r20 release];
    [self fireIn];
    [[ADJUtil secondsNumberFormat:r20] retain];
    r21 = [[self logger] retain];
    r22 = [[self name] retain];
    [r21 verbose:@"%@ starting. Launching in %@ seconds"];
    [r22 release];
    [r21 release];
    r21 = [[self internalQueue] retain];
    r22 = dispatch_source_create(*__dispatch_source_type_timer, 0x0, 0x0, r21);
    [self setSource:r22];
    [r22 release];
    [r21 release];
    r1 = @selector(source);
    r0 = objc_msgSend(self, r1);
    r22 = [r0 retain];
    asm { fcvtzs     x1, d0 };
    dispatch_source_set_timer(r22, dispatch_walltime(0x0, r1), 0xffffffffffffffff, 0x3b9aca00);
    [r22 release];
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    dispatch_resume(r0);
    [r22 release];
    dispatch_source_set_event_handler([objc_msgSend(r19, r21) retain], [[r19 block] retain]);
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)dealloc {
    r20 = [[self logger] retain];
    r21 = [[self name] retain];
    [r20 verbose:@"%@ dealloc"];
    [r21 release];
    [r20 release];
    [[&var_30 super] dealloc];
    return;
}

-(void *)internalQueue {
    r0 = self->_internalQueue;
    return r0;
}

-(void *)source {
    r0 = self->_source;
    return r0;
}

-(void)setInternalQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalQueue, arg2);
    return;
}

-(void)setSource:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_source, arg2);
    return;
}

-(void *)block {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_block)), 0x0);
    return r0;
}

-(void)setBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)start {
    r0 = self->_start;
    return r0;
}

-(void *)fireDate {
    r0 = self->_fireDate;
    return r0;
}

-(void)setFireDate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fireDate, arg2);
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_fireDate, 0x0);
    objc_storeStrong((int64_t *)&self->_block, 0x0);
    objc_storeStrong((int64_t *)&self->_source, 0x0);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    return;
}

@end