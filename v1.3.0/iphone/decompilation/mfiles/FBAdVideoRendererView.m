@implementation FBAdVideoRendererView

-(void)setupDefaultBackground {
    r20 = [[UIColor blackColor] retain];
    [self setBackgroundColor:r20];
    [r20 release];
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
            [r19 setupDefaultBackground];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithBackgroundImage:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setupDefaultBackground];
            if (r19 != 0x0) {
                    [r20 setBlurredBackgroundViewWithImage:r19];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setBlurredBackgroundViewWithImage:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 blurredBackgroundView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
    }
    r22 = [[FBAdBlurredOverlayView alloc] initWithBackgroundImage:r20];
    [r20 release];
    [r21 release];
    [r19 addSubview:r22];
    [r19 sendSubviewToBack:r22];
    objc_storeWeak((int64_t *)&r19->_blurredBackgroundView, r22);
    [r22 release];
    return;
}

-(void)videoDidChangeVolume {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidChangeVolume:)] != 0x0) {
            [r20 videoViewDidChangeVolume:r19];
    }
    [r20 release];
    return;
}

-(void)layoutSubviews {
    [[&var_40 super] layoutSubviews];
    [self bounds];
    r0 = [self blurredBackgroundView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)videoDidPause {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidPause:)] != 0x0) {
            [r20 videoViewDidPause:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidLoad {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidLoad:)] != 0x0) {
            [r20 videoViewDidLoad:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidPlay {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidPlay:)] != 0x0) {
            [r20 videoViewDidPlay:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidEngageSeek {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidEngageSeek:)] != 0x0) {
            [r20 videoViewDidEngageSeek:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidDisengageSeek {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidDisengageSeek:)] != 0x0) {
            [r20 videoViewDidDisengageSeek:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidSeek {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidSeek:)] != 0x0) {
            [r20 videoViewDidSeek:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidEnd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(videoViewDidEnd:)] != 0x0) {
            [r20 videoViewDidEnd:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidFailWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(videoView:didFailWithError:), r3] != 0x0) {
            [r21 videoView:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_blurredBackgroundView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)blurredBackgroundView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_blurredBackgroundView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBlurredBackgroundView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_blurredBackgroundView, arg2);
    return;
}

@end