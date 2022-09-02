@implementation GADOMIDEventFilter

-(void *)initWithFinalEventCode:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = arg2;
    r0 = [[&var_28 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            r8 = *__dispatch_queue_attr_concurrent;
            var_8->_finalEventCode = var_18;
            r0 = dispatch_queue_create("com.iab.omidEventFilter.concurrent.queue", r8);
            r9 = var_8->_syncQueue;
            var_8->_syncQueue = r0;
            [r9 release];
    }
    var_38 = [var_8 retain];
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_38;
    return r0;
}

-(bool)isFinalEventAccepted {
    var_68 = self->_syncQueue;
    [self retain];
    dispatch_sync(var_68, &var_60);
    var_74 = *(int8_t *)((&saved_fp - 0x30) + 0x18);
    objc_storeStrong(&var_60 + 0x20, 0x0);
    _Block_object_dispose(&saved_fp - 0x30, 0x8);
    r0 = var_74 & 0x1;
    return r0;
}

-(bool)acceptEventWithCode:(unsigned long long)arg2 {
    r0 = [self acceptEventWithCode:arg2 blockingEventCodes:0x0];
    r0 = r0 & 0x1;
    return r0;
}

-(bool)acceptEventWithCode:(unsigned long long)arg2 blockingEventCodes:(unsigned long long)arg3 {
    var_88 = self->_syncQueue;
    [self retain];
    dispatch_barrier_sync(var_88, &var_80);
    var_94 = *(int8_t *)((&saved_fp - 0x40) + 0x18);
    objc_storeStrong(&var_80 + 0x20, 0x0);
    _Block_object_dispose(&saved_fp - 0x40, 0x8);
    r0 = var_94 & 0x1;
    return r0;
}

-(bool)acceptAnyEventWithRequiredEventCodes:(unsigned long long)arg2 {
    var_78 = self->_syncQueue;
    [self retain];
    dispatch_sync(var_78, &var_70);
    var_84 = *(int8_t *)((&saved_fp - 0x38) + 0x18);
    objc_storeStrong(&var_70 + 0x20, 0x0);
    _Block_object_dispose(&saved_fp - 0x38, 0x8);
    r0 = var_84 & 0x1;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_syncQueue, 0x0);
    return;
}

@end