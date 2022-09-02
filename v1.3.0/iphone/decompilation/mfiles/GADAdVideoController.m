@implementation GADAdVideoController

-(void)setVideoPlaybackState:(long long)arg2 {
    r2 = arg2;
    r8 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoPlaybackState));
    if (*(r8 + r9) != r2) goto loc_10088d7f4;

.l1:
    return;

loc_10088d7f4:
    *(r8 + r9) = r2;
    if (r2 < 0x3) goto loc_10088d820;

loc_10088d804:
    if (r2 == 0x3) goto loc_10088d82c;

loc_10088d80c:
    if (r2 != 0x4) goto .l1;

loc_10088d814:
    r9 = 0x100e9c4f8;
    goto loc_10088d834;

loc_10088d834:
    sub_1008833e8(*r9, r8, 0x0);
    return;

loc_10088d82c:
    r9 = 0x100e9c4f0;
    goto loc_10088d834;

loc_10088d820:
    r9 = 0x100e9c4e8;
    goto loc_10088d834;
}

-(void *)initWithMessageSource:(void *)arg2 webAdView:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_adView, r20);
            r0 = [GADVideoMetadataMonitor alloc];
            r0 = [r0 initWithMessageSource:r19 adVideoController:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoMetadataMonitor));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.ad-video-controller", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setMute:(bool)arg2 {
    var_20 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [var_20 release];
    return;
}

-(void)play {
    var_8 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_28);
    [var_8 release];
    return;
}

-(void)pause {
    var_8 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_28);
    [var_8 release];
    return;
}

-(void)stop {
    var_8 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_28);
    [var_8 release];
    return;
}

-(void)setDuration:(double)arg2 {
    r19 = self->_lockQueue;
    var_30 = [self retain];
    dispatch_async(r19, &var_50);
    [var_30 release];
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

-(void)setCurrentTime:(double)arg2 {
    r19 = self->_lockQueue;
    var_30 = [self retain];
    dispatch_async(r19, &var_50);
    [var_30 release];
    return;
}

-(double)currentTime {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void)setIsMuted:(bool)arg2 {
    r20 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
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

-(void)setInitialStateWithConfigurations:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0) {
            r22 = [r2 retain];
            r20 = [[GADVideoOptions alloc] initWithDictionary:r22];
            [r22 release];
            *(int8_t *)(int64_t *)&r19->_videoOptionsCustomControlsRequested = [r20 customControlsRequested];
            *(int8_t *)(int64_t *)&r19->_videoOptionsClickToExpandRequested = [r20 clickToExpandRequested];
            var_30 = [r19 retain];
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [r20 release];
            [var_30 release];
            [r19 release];
    }
    return;
}

-(void)setVideoMuted:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self->_lockQueue;
    r19 = [self retain];
    var_68 = r19;
    dispatch_sync(r21, &var_88);
    r0 = *(&var_50 + 0x28);
    if (r0 != 0x0) {
            sub_1008833e8(r0, r19, 0x0);
    }
    [var_68 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    return;
}

-(bool)customControlsEnabled {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_customControlsEnabled != 0x0) {
            if (*(int8_t *)(int64_t *)&r0->_videoOptionsCustomControlsRequested != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)clickToExpandEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self customControlsEnabled];
    if ((r0 & 0x1) == 0x0 && *(int8_t *)(int64_t *)&r19->_videoOptionsClickToExpandRequested != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_clickToExpandEnabled != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(long long)videoPlaybackState {
    r0 = self->_videoPlaybackState;
    return r0;
}

-(void *)context {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r20 = [[r0 context] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(double)videoDuration {
    r0 = self;
    return r0;
}

-(void)setVideoDuration:(double)arg2 {
    self->_videoDuration = d0;
    return;
}

-(void)setCurrentPlaybackTime:(double)arg2 {
    self->_currentPlaybackTime = d0;
    return;
}

-(double)currentPlaybackTime {
    r0 = self;
    return r0;
}

-(bool)videoMuted {
    r0 = *(int8_t *)(int64_t *)&self->_videoMuted;
    return r0;
}

-(bool)hasVideoContent {
    r0 = *(int8_t *)(int64_t *)&self->_hasVideoContent;
    return r0;
}

-(double)aspectRatio {
    r0 = self;
    return r0;
}

-(void)setHasVideoContent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasVideoContent = arg2;
    return;
}

-(void)setAspectRatio:(double)arg2 {
    self->_aspectRatio = d0;
    return;
}

-(void)setCustomControlsEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_customControlsEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_videoOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_videoMetadataMonitor, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    return;
}

-(void)setClickToExpandEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_clickToExpandEnabled = arg2;
    return;
}

@end