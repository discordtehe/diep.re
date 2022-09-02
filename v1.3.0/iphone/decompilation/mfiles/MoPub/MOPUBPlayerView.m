@implementation MOPUBPlayerView

-(void *)initWithFrame:(struct CGRect)arg2 delegate:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_delegate, r19);
            r0 = objc_alloc();
            r0 = [r0 initWithTarget:r20 action:@selector(avPlayerTapped)];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_tapGestureRecognizer));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            [r20 addGestureRecognizer:*(r20 + r21)];
            [r20 setAccessibilityLabel:@"MoPub Native Video"];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r0 = [self tapGestureRecognizer];
    r0 = [r0 retain];
    [r0 removeTarget:self action:@selector(avPlayerTapped)];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setVideoGravity:(void *)arg2 {
    r19 = self->_avView;
    r21 = [arg2 retain];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setVideoGravity:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)handleVideoInitFailure {
    r20 = [[self tapGestureRecognizer] retain];
    [self removeGestureRecognizer:r20];
    [r20 release];
    return;
}

-(void)setAvPlayer:(void *)arg2 {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_avPlayer));
            r21 = *(r20 + r22);
            if (r21 != r19) {
                    *(r20 + r22) = [r19 retain];
                    [r21 release];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_avView));
                    [*(r20 + r24) removeFromSuperview];
                    r0 = objc_alloc();
                    r0 = [r0 initWithFrame:r2];
                    r8 = *(r20 + r24);
                    *(r20 + r24) = r0;
                    [r8 release];
                    [*(r20 + r24) setAutoresizingMask:0x12];
                    [r20 setVideoGravity:**_AVLayerVideoGravityResizeAspectFill];
                    r21 = [[r20 avPlayer] retain];
                    r0 = [r20 avView];
                    r0 = [r0 retain];
                    [r0 setPlayer:r21];
                    [r0 release];
                    [r21 release];
                    [r20 bounds];
                    r0 = [r20 avView];
                    r0 = [r0 retain];
                    [r0 setFrame:r21];
                    [r0 release];
                    [r20 insertSubview:*(r20 + r24) atIndex:0x0];
            }
    }
    else {
            r23 = [[NSString stringWithFormat:@"Cannot set avPlayer to nil"] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
    }
    [r19 release];
    return;
}

-(void)playbackTimeDidProgress {
    [self layoutProgressBar];
    return;
}

-(void)setProgressBarVisible:(bool)arg2 {
    r0 = [self progressBarBackground];
    r0 = [r0 retain];
    [r0 setHidden:arg2 ^ 0x1];
    [r0 release];
    r0 = [self progressBar];
    r0 = [r0 retain];
    [r0 setHidden:arg2 ^ 0x1];
    [r0 release];
    return;
}

-(void)createPlayerView {
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setClipsToBounds:0x1];
    r0 = [r19 gradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1004a4d18;

loc_1004a4d0c:
    [r21 release];
    goto loc_1004a4d38;

loc_1004a4d38:
    r0 = [r19 progressBar];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r22 = [objc_alloc() init];
            [r19 setProgressBar:r22];
            [r22 release];
            r21 = [objc_alloc() init];
            [r19 setProgressBarBackground:r21];
            [r21 release];
            r23 = [[r19 progressBarBackground] retain];
            [r19 addSubview:r23];
            [r23 release];
            r23 = [[UIColor colorWithRed:r23 green:r3 blue:r4 alpha:r5] retain];
            r0 = [r19 progressBarBackground];
            r0 = [r0 retain];
            [r0 setBackgroundColor:r23];
            [r0 release];
            [r23 release];
            r22 = [[UIColor mp_colorFromHexString:@"#FFCC4D" alpha:r3] retain];
            r0 = [r19 progressBar];
            r0 = [r0 retain];
            [r0 setBackgroundColor:r22];
            [r0 release];
            [r22 release];
            r20 = [[r19 progressBar] retain];
            [r19 addSubview:r20];
            [r20 release];
    }
    return;

loc_1004a4d18:
    r22 = [r19 displayMode];
    [r21 release];
    if (r22 == 0x0) goto loc_1004a4f40;
    goto loc_1004a4d38;

loc_1004a4f40:
    r21 = [UIView new];
    [r19 setGradientView:r21];
    [r21 release];
    r24 = [[UIColor mp_colorFromHexString:@"#000000" alpha:r3] retain];
    r22 = [[UIColor mp_colorFromHexString:@"#000000" alpha:r3] retain];
    r21 = [[CAGradientLayer layer] retain];
    [r19 setGradient:r21];
    [r21 release];
    r0 = objc_retainAutorelease(r24);
    r21 = r0;
    r26 = [r0 CGColor];
    r0 = objc_retainAutorelease(r22);
    [r0 CGColor];
    r25 = [[NSArray arrayWithObjects:r26] retain];
    r0 = [r19 gradient];
    r0 = [r0 retain];
    [r0 setColors:r25];
    [r0 release];
    [r25 release];
    CGRectGetWidth([r19 bounds]);
    r0 = [r19 gradient];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [r19 gradientView];
    r0 = [r0 retain];
    r23 = [[r0 layer] retain];
    r24 = [[r19 gradient] retain];
    [r23 insertSublayer:r24 atIndex:0x0];
    [r24 release];
    [r23 release];
    [r0 release];
    r0 = [r19 gradientView];
    r29 = r29;
    [r0 retain];
    [r19 addSubview:r2];
    [r20 release];
    [r22 release];
    goto loc_1004a4d0c;
}

-(void)playbackDidFinish {
    r31 = r31 - 0x90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self replayView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r20 = objc_alloc();
            r0 = [r19 avView];
            r0 = [r0 retain];
            [r0 bounds];
            r20 = [r20 initWithFrame:[r19 displayMode] displayMode:r3];
            [r19 setReplayView:r20];
            [r20 release];
            [r0 release];
            objc_initWeak(&stack[-104], r19);
            r20 = &var_80 + 0x20;
            objc_copyWeak(r20, &stack[-104]);
            r0 = [r19 replayView];
            r0 = [r0 retain];
            [r0 setActionBlock:&var_80];
            [r0 release];
            r21 = [[r19 replayView] retain];
            [r19 addSubview:r21];
            [r21 release];
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(playerViewWillShowReplayView:)];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 playerViewWillShowReplayView:r19];
                    [r0 release];
            }
            objc_destroyWeak(r20);
            objc_destroyWeak(&stack[-104]);
    }
    return;
}

-(void)layoutSubviews {
    [[&var_20 super] layoutSubviews];
    [self layoutProgressBar];
    [self layoutGradientview];
    [self layoutReplayView];
    return;
}

-(void)avPlayerTapped {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self displayMode] == 0x0) {
            [r19 setDisplayMode:0x1];
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(playerViewWillEnterFullscreen:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 playerViewWillEnterFullscreen:r19];
                    [r0 release];
            }
            [r19 setNeedsLayout];
            [r19 layoutIfNeeded];
    }
    return;
}

-(void)layoutGradientview {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [self displayMode];
    r0 = [r19 gradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r22 != 0x0) {
            [r0 setHidden:r2];
    }
    else {
            [r0 setHidden:r2];
            [r21 release];
            CGRectGetWidth([r19 bounds]);
            r0 = [r19 gradient];
            r0 = [r0 retain];
            [r0 setFrame:0x0];
            [r0 release];
            r0 = [r19 avView];
            r0 = [r0 retain];
            r21 = r0;
            CGRectGetMaxY([r0 frame]);
            CGRectGetWidth([r19 bounds]);
            r0 = [r19 gradientView];
            r0 = [r0 retain];
            [r0 setFrame:0x0];
            [r0 release];
    }
    [r21 release];
    return;
}

-(void *)avPlayer {
    r0 = self->_avPlayer;
    return r0;
}

-(void)layoutReplayView {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self replayView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_1004aed94(0x1);
            if (d2 > d3) {
                    v8 = v2;
                    v9 = v3;
                    if ([r19 displayMode] == 0x1) {
                            r0 = [r19 replayView];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = r0;
                            [r0 setFrame:r2];
                    }
                    else {
                            r0 = [r19 avView];
                            r0 = [r0 retain];
                            r21 = r0;
                            [r0 frame];
                            r0 = [r19 replayView];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setFrame:r2];
                            [r22 release];
                    }
            }
            else {
                    r0 = [r19 avView];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 frame];
                    r0 = [r19 replayView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setFrame:r2];
                    [r22 release];
            }
            [r21 release];
            r0 = [r19 replayView];
            r0 = [r0 retain];
            [r0 setNeedsLayout];
            [r0 release];
            r0 = [r19 replayView];
            r0 = [r0 retain];
            [r0 layoutIfNeeded];
            [r0 release];
    }
    return;
}

-(void)layoutProgressBar {
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self avPlayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1004a5ccc;

loc_1004a5a64:
    r0 = [r19 avPlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 currentItemDuration];
    [r23 release];
    [r21 release];
    if (OVERFLOW(d8 - d8)) goto .l1;

loc_1004a5aa8:
    CGRectGetWidth([r19 bounds]);
    v8 = v0;
    r0 = [r19 avPlayer];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    v9 = v0;
    r0 = [r19 avPlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 currentItemDuration];
    asm { fdiv       d11, d9, d0 };
    [r20 release];
    [r21 release];
    if (d11 >= 0x0) goto loc_1004a5b34;

loc_1004a5b24:
    r2 = @"Progress shouldn't be < 0";
    goto loc_1004a5b48;

loc_1004a5b48:
    r22 = [[NSString stringWithFormat:r2] retain];
    r0 = [MPLogEvent eventWithMessage:r22 level:0x1e];
    r29 = r29;
    r21 = [r0 retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
    [r21 release];
    [r22 release];
    v11 = v9;
    goto loc_1004a5bd8;

loc_1004a5bd8:
    r0 = [r19 avView];
    r0 = [r0 retain];
    CGRectGetMaxY([r0 frame]);
    r0 = [r19 progressBar];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r21 release];
    r0 = [r19 avView];
    r0 = [r0 retain];
    r21 = r0;
    CGRectGetMaxY([r0 frame]);
    r0 = [r19 progressBarBackground];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    goto loc_1004a5ccc;

loc_1004a5ccc:
    [r21 release];
    return;

.l1:
    return;

loc_1004a5b34:
    if (d11 <= 0x3ff0000000000000) goto loc_1004a5bd8;

loc_1004a5b40:
    r2 = @"Progress shouldn't be > 1";
    goto loc_1004a5b48;
}

-(void *)videoGravity {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoGravity)), 0x0);
    return r0;
}

-(unsigned long long)displayMode {
    r0 = self->_displayMode;
    return r0;
}

-(void)setDisplayMode:(unsigned long long)arg2 {
    self->_displayMode = arg2;
    return;
}

-(void)setReplayView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_replayView, arg2);
    return;
}

-(void *)avView {
    r0 = self->_avView;
    return r0;
}

-(void *)replayView {
    r0 = self->_replayView;
    return r0;
}

-(void)setReplayVideoButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_replayVideoButton, arg2);
    return;
}

-(void)setAvView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_avView, arg2);
    return;
}

-(void *)replayVideoButton {
    r0 = self->_replayVideoButton;
    return r0;
}

-(void *)progressBarBackground {
    r0 = self->_progressBarBackground;
    return r0;
}

-(void)setProgressBarBackground:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressBarBackground, arg2);
    return;
}

-(void *)gradientView {
    r0 = self->_gradientView;
    return r0;
}

-(void *)progressBar {
    r0 = self->_progressBar;
    return r0;
}

-(void)setProgressBar:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressBar, arg2);
    return;
}

-(void)setGradient:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gradient, arg2);
    return;
}

-(void)setGradientView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gradientView, arg2);
    return;
}

-(void *)gradient {
    r0 = self->_gradient;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)tapGestureRecognizer {
    r0 = self->_tapGestureRecognizer;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setTapGestureRecognizer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tapGestureRecognizer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_tapGestureRecognizer, 0x0);
    objc_storeStrong((int64_t *)&self->_gradient, 0x0);
    objc_storeStrong((int64_t *)&self->_gradientView, 0x0);
    objc_storeStrong((int64_t *)&self->_progressBar, 0x0);
    objc_storeStrong((int64_t *)&self->_progressBarBackground, 0x0);
    objc_storeStrong((int64_t *)&self->_replayVideoButton, 0x0);
    objc_storeStrong((int64_t *)&self->_replayView, 0x0);
    objc_storeStrong((int64_t *)&self->_avView, 0x0);
    objc_storeStrong((int64_t *)&self->_videoGravity, 0x0);
    objc_storeStrong((int64_t *)&self->_avPlayer, 0x0);
    return;
}

@end