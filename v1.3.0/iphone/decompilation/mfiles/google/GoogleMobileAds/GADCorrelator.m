@implementation GADCorrelator

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
            r0 = sub_100860a2c("com.google.admob.n.correlator", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = arc4random_uniform(0xfffffffd);
            r8 = r0 + 0x2;
            if (r0 == -0x1) {
                    if (!CPU_FLAGS & E) {
                            r8 = r8;
                    }
                    else {
                            r8 = 0x0;
                    }
            }
            *(int32_t *)(int64_t *)&r19->_correlationID = r8;
    }
    r0 = r19;
    return r0;
}

-(void)reset {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(unsigned int)correlationID {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end