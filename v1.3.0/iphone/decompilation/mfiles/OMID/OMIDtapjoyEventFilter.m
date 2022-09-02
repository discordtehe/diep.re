@implementation OMIDtapjoyEventFilter

-(void *)initWithFinalEventCode:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_finalEventCode = r20;
            r0 = dispatch_queue_create(0x0, *__dispatch_queue_attr_concurrent);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_syncQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isFinalEventAccepted {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_syncQueue))), &var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(bool)acceptEventWithCode:(unsigned long long)arg2 {
    r0 = [self acceptEventWithCode:arg2 blockingEventCodes:0x0];
    return r0;
}

-(bool)acceptEventWithCode:(unsigned long long)arg2 blockingEventCodes:(unsigned long long)arg3 {
    dispatch_barrier_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_syncQueue))), &var_70);
    _Block_object_dispose(&saved_fp - 0x30, 0x8);
    r0 = r19;
    return r0;
}

-(bool)acceptAnyEventWithRequiredEventCodes:(unsigned long long)arg2 {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_syncQueue))), &var_68);
    _Block_object_dispose(&saved_fp - 0x30, 0x8);
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_syncQueue, 0x0);
    return;
}

@end