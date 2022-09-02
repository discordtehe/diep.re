@implementation GADDeviceOrientationSignalCache

+(void *)sharedInstance {
    if (*qword_1011db860 != -0x1) {
            dispatch_once(0x1011db860, 0x100e92928);
    }
    r0 = *0x1011db858;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x70;
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
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.orientation-signal-cache", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_orientationChangeObserver));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-72], r19);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r21 addObserverForName:r22 object:0x0 queue:0x0 usingBlock:&var_60];
            [r19 updateSignals];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = r19;
    return r0;
}

-(void)updateSignals {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void *)cachedSignals {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_orientationChangeObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedSignals, 0x0);
    return;
}

@end