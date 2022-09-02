@implementation FBApplicationInterfaceOrientationProvider

-(void)dealloc {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 startObservingApplicationOrientation];
    }
    r0 = r19;
    return r0;
}

-(void)startObservingApplicationOrientation {
    objc_initWeak(&stack[-56], self);
    [[FBAdNotificationCenter notificationCenterForObject:self] retain];
    r0 = [NSOperationQueue mainQueue];
    [r0 retain];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r19 addNotificationWithName:r22 object:0x0 queue:r21 block:&var_50];
    [r21 release];
    objc_destroyWeak(&var_50 + 0x20);
    [r19 release];
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_didChangeHandler, 0x0);
    return;
}

-(void)statusBarOrientationDidChange:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self didChangeHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [[r19 didChangeHandler] retain];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            (*(r19 + 0x10))(r19, [r0 statusBarOrientation]);
            [r20 release];
            [r19 release];
    }
    return;
}

-(void *)didChangeHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_didChangeHandler)), 0x0);
    return r0;
}

-(void)setDidChangeHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end