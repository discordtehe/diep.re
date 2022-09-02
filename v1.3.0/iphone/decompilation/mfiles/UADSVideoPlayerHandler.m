@implementation UADSVideoPlayerHandler

-(void *)getView {
    r0 = [self videoView];
    return r0;
}

-(bool)destroy {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 videoPlayer];
            r0 = [r0 retain];
            [r0 stop];
            [r0 release];
            r0 = [r19 videoPlayer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 stopObserving];
            [r0 release];
    }
    [r19 setVideoPlayer:0x0];
    r0 = [r19 videoView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 videoView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r20 release];
    }
    [r19 setVideoView:0x0];
    return 0x1;
}

-(void)viewDidLoad:(void *)arg2 {
    return;
}

-(bool)create:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [UADSVideoView alloc];
            r23 = [[r19 view] retain];
            [r20 getRect:r23];
            r22 = [r22 initWithFrame:r23];
            [r20 setVideoView:r22];
            [r22 release];
            [r23 release];
            r0 = [r20 videoView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setVideoFillMode:**_AVLayerVideoGravityResizeAspect];
            [r0 release];
    }
    r0 = [r20 videoPlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r23 = [[AVPlayerItem playerItemWithAsset:0x0] retain];
            r24 = [[UADSAVPlayer alloc] initWithPlayerItem:r23];
            [r20 setVideoPlayer:r24];
            [r24 release];
            r21 = [[r20 videoView] retain];
            r20 = [[r20 videoPlayer] retain];
            [r21 setPlayer:r20];
            [r20 release];
            [r21 release];
            [r23 release];
    }
    [r19 release];
    return 0x1;
}

-(void)viewDidAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillDisappear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewDidDisappear:(void *)arg2 animated:(bool)arg3 {
    [self destroy];
    return;
}

-(void *)videoPlayer {
    r0 = self->_videoPlayer;
    return r0;
}

-(void)setVideoPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoPlayer, arg2);
    return;
}

-(void *)videoView {
    r0 = self->_videoView;
    return r0;
}

-(void)setVideoView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoPlayer, 0x0);
    return;
}

@end