@implementation FNFRealTimer

-(void *)initWithInterval:(unsigned long long)arg2 fireOnce:(bool)arg3 queue:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0x90;
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
    r20 = arg5;
    r19 = arg4;
    r23 = arg3;
    r22 = arg2;
    [arg4 retain];
    [r20 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = *__dispatch_source_type_timer;
            r0 = dispatch_source_create(r0, 0x0, 0x0, r19);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            r24 = *(r21 + r25);
            r1 = dispatch_time(0x0, r22);
            if (r23 == 0x0) {
                    asm { csinv      x2, x22, xzr, eq };
            }
            dispatch_source_set_timer(r24, r1, 0x0, 0x5f5e100);
            r22 = *(r21 + r25);
            [r20 retain];
            dispatch_source_set_event_handler(r22, &var_78);
            [r20 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)pause {
    *(int8_t *)(int64_t *)&self->_suspended = 0x1;
    dispatch_suspend(self->_timer);
    return;
}

-(void)resume {
    *(int8_t *)(int64_t *)&self->_suspended = 0x0;
    dispatch_resume(self->_timer);
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_suspended));
    r8 = *(int8_t *)(self + r8);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_timer));
    if (r8 != 0x0) {
            dispatch_resume(*(r19 + r20));
    }
    dispatch_source_cancel(*(r19 + r20));
    r0 = *(r19 + r20);
    *(r19 + r20) = 0x0;
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    return;
}

@end