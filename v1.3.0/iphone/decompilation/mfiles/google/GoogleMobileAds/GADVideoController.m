@implementation GADVideoController

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
            r0 = sub_100860a2c("com.google.admob.n.video-controller", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)setInternalVideoController:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)setVideoPlaybackEndedBlock:(void *)arg2 {
    r20 = [arg2 retain];
    var_20 = [self retain];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void *)internalVideoController {
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

-(void)play {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)pause {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)stop {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)setMute:(bool)arg2 {
    r20 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(bool)hasVideoContent {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(double)aspectRatio {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void)setInitialStateWithConfigurations:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(double)duration {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(double)currentTime {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(bool)isMuted {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(bool)customControlsEnabled {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(long long)videoPlaybackState {
    r0 = self->_internalVideoController;
    r0 = [r0 videoPlaybackState];
    return r0;
}

-(bool)clickToExpandEnabled {
    r0 = self->_internalVideoController;
    r0 = [r0 clickToExpandEnabled];
    return r0;
}

-(void)startObservingAdVideoController {
    objc_initWeak(&saved_fp - 0x68, self);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_internalVideoController));
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak((&saved_fp - 0x90) + 0x20, &saved_fp - 0x68);
    [r20 addObserverForName:*0x100e9c4e8 object:r24 queue:r25 usingBlock:&saved_fp - 0x90];
    [r25 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_B8 + 0x20, &saved_fp - 0x68);
    [r25 addObserverForName:*0x100e9c4f0 object:r24 queue:r26 usingBlock:&var_B8];
    [r26 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_E0 + 0x20, &saved_fp - 0x68);
    [r26 addObserverForName:*0x100e9c4f8 object:r25 queue:r27 usingBlock:&var_E0];
    [r27 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_108 + 0x20, &saved_fp - 0x68);
    [r27 addObserverForName:*0x100e9c500 object:r26 queue:r28 usingBlock:&var_108];
    [r28 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_130 + 0x20, &saved_fp - 0x68);
    [r26 addObserverForName:*0x100e9c508 object:r21 queue:r27 usingBlock:&var_130];
    [r27 release];
    objc_destroyWeak(&var_130 + 0x20);
    objc_destroyWeak(&var_108 + 0x20);
    objc_destroyWeak(&var_E0 + 0x20);
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak((&saved_fp - 0x90) + 0x20);
    objc_destroyWeak(&saved_fp - 0x68);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_playbackEndedBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_collection, 0x0);
    objc_storeStrong((int64_t *)&self->_internalVideoController, 0x0);
    return;
}

@end