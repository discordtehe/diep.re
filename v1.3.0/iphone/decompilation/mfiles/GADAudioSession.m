@implementation GADAudioSession

+(void *)sharedInstance {
    if (*qword_1011db868 != -0x1) {
            dispatch_once(0x1011db868, 0x100e92a88);
    }
    r0 = *0x1011db870;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)enable {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

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
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.audio-session", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r20);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_audioSessionQueue));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setMaxConcurrentOperationCount:0x1];
            *(int8_t *)(int64_t *)&r19->_enabled = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)disable {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)restoreState {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)setMixable:(bool)arg2 userInitiated:(bool)arg3 queue:(void *)arg4 completionBlock:(void *)arg5 {
    r23 = [arg4 retain];
    r24 = [arg5 retain];
    var_60 = r23;
    [r23 retain];
    [r24 retain];
    r0 = objc_retainBlock(&var_80);
    r25 = self->_lockQueue;
    var_98 = [self retain];
    [r0 retain];
    dispatch_async(r25, &var_B8);
    [r0 release];
    [var_98 release];
    [r20 release];
    [r24 release];
    [var_60 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)resumeBackgroundAppAudioIfInterruptedWithQueue:(void *)arg2 completionBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r19 = self->_lockQueue;
    [r0 retain];
    var_30 = r21;
    [r21 retain];
    var_28 = [self retain];
    dispatch_async(r19, &var_58);
    [var_28 release];
    [var_30 release];
    [r0 release];
    [r21 release];
    [r22 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_savedAudioSessionMode, 0x0);
    objc_storeStrong((int64_t *)&self->_savedAudioSessionCategory, 0x0);
    objc_storeStrong((int64_t *)&self->_audioSessionQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end