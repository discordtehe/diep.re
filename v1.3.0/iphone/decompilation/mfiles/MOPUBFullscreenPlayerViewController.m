@implementation MOPUBFullscreenPlayerViewController

-(void *)initWithVideoPlayer:(void *)arg2 nativeAdProperties:(void *)arg3 dismissBlock:(void *)arg4 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r29 = &saved_fp;
    r24 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_playerController, r24);
            r0 = [r22 playerController];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 playerView];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 superview];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_originalParentView));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r27 release];
            [r25 release];
            r0 = [r22 playerController];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 playerView];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerView));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r24 release];
            [r22->_playerController setDelegate:r22];
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dismissBlock));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [MPAdDestinationDisplayAgent agentWithDelegate:r22];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayAgent));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 objectForKeyedSubscript:*0x100e7eec8];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_overridePrivacyIcon));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 objectForKeyedSubscript:*0x100e7eed0];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_overridePrivacyIconImage));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 objectForKeyedSubscript:*0x100e7eed8];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_overridePrivacyClickUrl));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r22 setModalPresentationStyle:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setPrivacyIconImageForButton:(void *)arg2 {
    r31 = r31 - 0xb0;
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
            r0 = [r20 overridePrivacyIconImage];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r20 = [[r20 overridePrivacyIconImage] retain];
                    [r19 setImage:r20 forState:0x0];
                    r0 = r20;
            }
            else {
                    r0 = [r20 overridePrivacyIcon];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r23 = [[r20 overridePrivacyIcon] retain];
                            r21 = [[NSURL URLWithString:r23] retain];
                            [r23 release];
                            r22 = [[MPURLRequest requestWithURL:r21] retain];
                            var_48 = [r19 retain];
                            r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r22 responseHandler:&var_70 errorHandler:&var_98];
                            [[r0 retain] release];
                            [var_48 release];
                            r0 = r22;
                    }
                    else {
                            r21 = [sub_1004af7bc() retain];
                            r20 = [[UIImage imageNamed:r21] retain];
                            [r19 setImage:r20 forState:0x0];
                            r0 = r20;
                    }
                    [r0 release];
                    r0 = r21;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)showStallSpinner {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self stallSpinner];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r21 = [objc_alloc() initWithFrame:r2];
            [r19 setStallSpinner:r21];
            [r21 release];
            r21 = [[r19 view] retain];
            [[r19 stallSpinner] retain];
            [r21 addSubview:r2];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)hideStallSpinner {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self stallSpinner];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            [r0 stopAnimating];
            [r0 release];
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r19 release];
    }
    return;
}

-(void)createAndAddGradientView {
    r20 = [UIView new];
    [self setGradientView:r20];
    [r20 release];
    r0 = [self gradientView];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:0x0];
    [r0 release];
    r24 = [[UIColor mp_colorFromHexString:@"#000000" alpha:r3] retain];
    r22 = [[UIColor mp_colorFromHexString:@"#000000" alpha:r3] retain];
    r21 = [[CAGradientLayer layer] retain];
    [self setGradient:r21];
    [r21 release];
    r0 = objc_retainAutorelease(r24);
    r26 = [r0 CGColor];
    r0 = objc_retainAutorelease(r22);
    [r0 CGColor];
    r25 = [[NSArray arrayWithObjects:r26] retain];
    r0 = [self gradient];
    r0 = [r0 retain];
    [r0 setColors:r25];
    [r0 release];
    [r25 release];
    sub_1004aeee4();
    r0 = [self gradient];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [self gradientView];
    r0 = [r0 retain];
    r23 = [[r0 layer] retain];
    r24 = [[self gradient] retain];
    [r23 insertSublayer:r24 atIndex:0x0];
    [r24 release];
    [r23 release];
    [r0 release];
    r23 = [[self view] retain];
    [[self gradientView] retain];
    [r23 addSubview:r2];
    [r19 release];
    [r23 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)createPlayerNotReadySpinner {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self playerNotReadySpinner];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r21 = [objc_alloc() initWithActivityIndicatorStyle:0x1];
            [r19 setPlayerNotReadySpinner:r21];
            [r21 release];
            r21 = [[r19 view] retain];
            r22 = [[r19 playerNotReadySpinner] retain];
            [r21 addSubview:r22];
            [r22 release];
            [r21 release];
            r0 = [r19 playerNotReadySpinner];
            r0 = [r0 retain];
            [r0 startAnimating];
            [r0 release];
    }
    return;
}

-(void)removePlayerNotReadySpinner {
    r0 = [self playerNotReadySpinner];
    r0 = [r0 retain];
    [r0 stopAnimating];
    [r0 release];
    r0 = [self playerNotReadySpinner];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setPlayerNotReadySpinner:0x0];
    return;
}

-(void)viewWillLayoutSubviews {
    [[&var_20 super] viewWillLayoutSubviews];
    [self layoutPlayerView];
    [self layoutPrivacyButton];
    [self layoutCloseButton];
    [self layoutCtaButton];
    [self layoutStallSpinner];
    [self layoutPlayerNotReadySpinner];
    [self layoutGradientView];
    return;
}

-(void)layoutPrivacyButton {
    r0 = [self privacyButton];
    r0 = [r0 retain];
    [r0 setMp_x:r2];
    [r0 release];
    r0 = [self privacyButton];
    r0 = [r0 retain];
    [r0 setMp_y:r2];
    [r0 release];
    return;
}

-(void)layoutCloseButton {
    sub_1004aeee4();
    r0 = [self closeButton];
    r0 = [r0 retain];
    r21 = r0;
    [r0 mp_width];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setMp_x:r2];
    [r0 release];
    [r21 release];
    r0 = [self privacyButton];
    r0 = [r0 retain];
    r23 = r0;
    [r0 frame];
    r0 = [self privacyButton];
    r0 = [r0 retain];
    [r0 mp_height];
    [r0 release];
    [r23 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    r22 = r0;
    [r0 mp_height];
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setMp_y:r2];
    [r0 release];
    [r22 release];
    r0 = [self closeButton];
    r0 = [r0 retain];
    CGRectIntegral([r0 frame]);
    r0 = [self closeButton];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    [r22 release];
    return;
}

-(void)layoutPlayerView {
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
    sub_1004aeee4();
    v8 = v2;
    v9 = v3;
    r21 = **_AVLayerVideoGravityResizeAspectFill;
    r0 = [r19 playerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setVideoGravity:r21];
    [r0 release];
    if (sub_1004aec08() <= 0x4) {
            r0 = [r19 playerView];
            r0 = [r0 retain];
            r21 = r0;
            [r0 setFrame:r2];
    }
    else {
            r20 = @selector(playerView);
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 setMp_width:r2];
            [r0 release];
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            r21 = r0;
            [r0 mp_width];
            r0 = [r19 playerController];
            r0 = [r0 retain];
            r22 = r0;
            [r0 videoAspectRatio];
            asm { fdiv       d8, d8, d0 };
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 setMp_height:r2];
            [r0 release];
            [r22 release];
            [r21 release];
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            [r0 center];
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 setCenter:r2];
            [r0 release];
            [r21 release];
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            r21 = r0;
            CGRectIntegral([r0 frame]);
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r19 release];
    }
    [r21 release];
    return;
}

-(void)layoutCtaButton {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r29 = &saved_fp;
    r19 = self;
    sub_1004aed94(0x1);
    if (d2 > d3) {
            r0 = [r19 playerView];
            r0 = [r0 retain];
            CGRectGetMaxX([r0 frame]);
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            CGRectGetWidth([r0 bounds]);
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            [r0 setMp_x:r2];
            [r0 release];
            [r25 release];
            [r24 release];
            r0 = [r19 playerView];
            r0 = [r0 retain];
            r20 = r0;
            CGRectGetMaxY([r0 frame]);
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r22 = r0;
            CGRectGetHeight([r0 bounds]);
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            [r0 setMp_y:r2];
            [r0 release];
    }
    else {
            r0 = [r19 view];
            r0 = [r0 retain];
            r20 = r0;
            [r0 center];
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            [r0 setCenter:r2];
            [r0 release];
            [r20 release];
            r0 = [r19 playerView];
            r0 = [r0 retain];
            CGRectGetMaxY([r0 frame]);
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            [r0 setMp_y:r2];
            [r0 release];
            [r20 release];
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r20 = r0;
            CGRectIntegral([r0 frame]);
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r22 = r0;
            [r0 setFrame:r2];
    }
    [r22 release];
    [r20 release];
    return;
}

-(void)layoutStallSpinner {
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
    r0 = [self stallSpinner];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_1004aeee4();
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            [r0 setCenter:r2];
            [r0 release];
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            CGRectIntegral([r0 frame]);
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)layoutPlayerNotReadySpinner {
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
    r0 = [self playerNotReadySpinner];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            sub_1004aeee4();
            r0 = [r19 playerNotReadySpinner];
            r0 = [r0 retain];
            [r0 setCenter:r2];
            [r0 release];
            r0 = [r19 playerNotReadySpinner];
            r0 = [r0 retain];
            CGRectIntegral([r0 frame]);
            r0 = [r19 playerNotReadySpinner];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)layoutGradientView {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (sub_1004aec08() > 0x4) {
            if (CPU_FLAGS & A) {
                    r20 = 0x1;
            }
    }
    r0 = [r19 gradientView];
    r0 = [r0 retain];
    [r0 setHidden:r20];
    [r0 release];
    sub_1004aeee4();
    r0 = [r19 gradient];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    r0 = [r19 gradientView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    return;
}

-(void)closeButtonTapped {
    [self dismissViewControllerAnimated:0x0 completion:&var_28];
    return;
}

-(void)ctaButtonTapped {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(ctaTapped:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 ctaTapped:r19];
            [r0 release];
    }
    r20 = [[r19 displayAgent] retain];
    r0 = [r19 playerController];
    r0 = [r0 retain];
    r21 = [[r0 defaultActionURL] retain];
    [r20 displayDestinationForURL:r21];
    [r21 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)privacyButtonTapped {
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
    r19 = [[NSURL URLWithString:*0x100e7eee8] retain];
    r0 = [r20 overridePrivacyClickUrl];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r2 = *0x100e7eee8;
            r0 = [NSURL URLWithString:r22];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r2 = *0x100e7eee8;
            r21 = 0x0;
    }
    [r22 release];
    r0 = [r20 displayAgent];
    r0 = [r0 retain];
    r20 = r0;
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r21;
            }
            else {
                    r2 = r19;
            }
    }
    [r0 displayDestinationForURL:r2];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)playerPlaybackDidStart:(void *)arg2 {
    [self removePlayerNotReadySpinner];
    return;
}

-(void)playerViewController:(void *)arg2 willShowReplayView:(void *)arg3 {
    r20 = [[self view] retain];
    r19 = [[self privacyButton] retain];
    [r20 bringSubviewToFront:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)viewDidLoad {
    r31 = r31 - 0x90;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
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
    [[&var_70 super] viewDidLoad];
    r0 = [r19 playerController];
    r0 = [r0 retain];
    [r0 willEnterFullscreen];
    [r0 release];
    r22 = [[UIColor blackColor] retain];
    r0 = [r19 view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r22];
    [r0 release];
    [r22 release];
    r24 = [[r19 view] retain];
    r25 = [[r19 playerView] retain];
    [r24 addSubview:r25];
    [r25 release];
    [r24 release];
    [r19 createAndAddGradientView];
    r24 = [[MPExtendedHitBoxButton buttonWithType:0x0] retain];
    [r19 setPrivacyButton:r24];
    [r24 release];
    r0 = [r19 privacyButton];
    r0 = [r0 retain];
    [r0 setFrame:r24];
    [r0 release];
    r24 = [[r19 privacyButton] retain];
    [r19 setPrivacyIconImageForButton:r24];
    [r24 release];
    r0 = [r19 privacyButton];
    r0 = [r0 retain];
    [r0 addTarget:r19 action:@selector(privacyButtonTapped) forControlEvents:0x40];
    [r0 release];
    r0 = [r19 privacyButton];
    r0 = [r0 retain];
    [r0 setTouchAreaInsets:r19];
    [r0 release];
    r28 = [[r19 view] retain];
    r27 = [[r19 privacyButton] retain];
    [r28 addSubview:r27];
    [r27 release];
    [r28 release];
    r27 = [[MPExtendedHitBoxButton buttonWithType:0x0] retain];
    [r19 setCloseButton:r27];
    [r27 release];
    r28 = [[r19 closeButton] retain];
    r23 = [sub_1004af7bc() retain];
    r20 = [[UIImage imageNamed:r23] retain];
    [r28 setImage:r20 forState:0x0];
    [r20 release];
    [r23 release];
    [r28 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 addTarget:r19 action:@selector(closeButtonTapped) forControlEvents:0x40];
    [r0 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 setTouchAreaInsets:r19];
    [r0 release];
    r0 = [r19 closeButton];
    r0 = [r0 retain];
    [r0 sizeToFit];
    [r0 release];
    r20 = [[r19 view] retain];
    r23 = [[r19 closeButton] retain];
    [r20 addSubview:r23];
    [r23 release];
    [r20 release];
    r20 = [[MPExtendedHitBoxButton buttonWithType:0x0] retain];
    [r19 setCtaButton:r20];
    [r20 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    [r0 setTitle:@"Learn More" forState:0x0];
    [r0 release];
    r20 = [[r19 ctaButton] retain];
    r23 = [[UIColor mp_colorFromHexString:@"#000000" alpha:@selector(closeButtonTapped)] retain];
    [r20 setBackgroundColor:r23];
    [r23 release];
    [r20 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    [r0 addTarget:r19 action:@selector(ctaButtonTapped) forControlEvents:0x40];
    [r0 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:r19];
    [r0 release];
    [r20 release];
    r20 = [[UIFont fontWithName:@"HelveticaNeue" size:@selector(ctaButtonTapped)] retain];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 titleLabel];
    r0 = [r0 retain];
    r2 = r20;
    [r0 setFont:r2];
    [r0 release];
    [r25 release];
    [r20 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    [r0 setContentEdgeInsets:r2];
    [r0 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 layer];
    r0 = [r0 retain];
    [r0 setBorderWidth:r2];
    [r0 release];
    [r20 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    r20 = r0;
    r23 = [[r0 layer] retain];
    r0 = @class(UIColor);
    r0 = [r0 whiteColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r23 setBorderColor:[r0 CGColor]];
    [r0 release];
    [r23 release];
    [r20 release];
    r0 = [r19 ctaButton];
    r0 = [r0 retain];
    [r0 sizeToFit];
    [r0 release];
    r20 = [[r19 view] retain];
    r21 = [[r19 ctaButton] retain];
    [r20 addSubview:r21];
    [r21 release];
    [r20 release];
    r0 = [r19 playerController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isReadyToPlay];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [r19 createPlayerNotReadySpinner];
    }
    r0 = [r19 playerController];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 paused];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 playerController];
            r0 = [r0 retain];
            [r0 resume];
            [r0 release];
    }
    return;
}

-(void)playerViewController:(void *)arg2 didStall:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self stallSpinner];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 superview];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            if (r0 == 0x0) {
                    r21 = [[r19 view] retain];
                    r0 = [r19 stallSpinner];
                    r29 = r29;
                    [r0 retain];
                    [r21 addSubview:r2];
                    [r22 release];
                    [r21 release];
            }
            r0 = [r19 stallSpinner];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isAnimating];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [r19 stallSpinner];
                    r0 = [r0 retain];
                    [r0 startAnimating];
                    [r0 release];
            }
    }
    else {
            [r19 showStallSpinner];
            r0 = [r19 stallSpinner];
            r0 = [r0 retain];
            [r0 startAnimating];
            [r0 release];
    }
    return;
}

-(void)playerViewController:(void *)arg2 didRecoverFromStall:(void *)arg3 {
    [self hideStallSpinner];
    return;
}

-(void)playerDidProgressToTime:(double)arg2 {
    r2 = arg2;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(playerDidProgressToTime:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 playerDidProgressToTime:r2];
            [r0 release];
    }
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = self;
    return r0;
}

-(void)displayAgentWillPresentModal {
    r0 = [self playerController];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    return;
}

-(void)displayAgentWillLeaveApplication {
    r0 = [self playerController];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 fullscreenPlayerWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void)displayAgentDidDismissModal {
    r0 = [self playerController];
    r0 = [r0 retain];
    [r0 resume];
    [r0 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void *)playerView {
    r0 = self->_playerView;
    return r0;
}

-(void)setPlayerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerView, arg2);
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

-(void *)privacyButton {
    r0 = self->_privacyButton;
    return r0;
}

-(void)setPrivacyButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_privacyButton, arg2);
    return;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void *)ctaButton {
    r0 = self->_ctaButton;
    return r0;
}

-(void)setCtaButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ctaButton, arg2);
    return;
}

-(void *)stallSpinner {
    r0 = self->_stallSpinner;
    return r0;
}

-(void)setStallSpinner:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_stallSpinner, arg2);
    return;
}

-(void *)playerNotReadySpinner {
    r0 = self->_playerNotReadySpinner;
    return r0;
}

-(void)setPlayerNotReadySpinner:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerNotReadySpinner, arg2);
    return;
}

-(void *)gradientView {
    r0 = self->_gradientView;
    return r0;
}

-(void)setGradientView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gradientView, arg2);
    return;
}

-(void *)gradient {
    r0 = self->_gradient;
    return r0;
}

-(void)setGradient:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gradient, arg2);
    return;
}

-(void *)playerController {
    r0 = self->_playerController;
    return r0;
}

-(void)setPlayerController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerController, arg2);
    return;
}

-(void *)originalParentView {
    r0 = self->_originalParentView;
    return r0;
}

-(void)setOriginalParentView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_originalParentView, arg2);
    return;
}

-(void *)displayAgent {
    r0 = self->_displayAgent;
    return r0;
}

-(void)setDisplayAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_displayAgent, arg2);
    return;
}

-(void *)dismissBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dismissBlock)), 0x0);
    return r0;
}

-(void)setDismissBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)overridePrivacyIcon {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_overridePrivacyIcon)), 0x0);
    return r0;
}

-(void)setOverridePrivacyIcon:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOverridePrivacyIconImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_overridePrivacyIconImage, arg2);
    return;
}

-(void *)overridePrivacyIconImage {
    r0 = self->_overridePrivacyIconImage;
    return r0;
}

-(void *)overridePrivacyClickUrl {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_overridePrivacyClickUrl)), 0x0);
    return r0;
}

-(void)setOverridePrivacyClickUrl:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_overridePrivacyClickUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_overridePrivacyIconImage, 0x0);
    objc_storeStrong((int64_t *)&self->_overridePrivacyIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_dismissBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_displayAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_originalParentView, 0x0);
    objc_storeStrong((int64_t *)&self->_playerController, 0x0);
    objc_storeStrong((int64_t *)&self->_gradient, 0x0);
    objc_storeStrong((int64_t *)&self->_gradientView, 0x0);
    objc_storeStrong((int64_t *)&self->_playerNotReadySpinner, 0x0);
    objc_storeStrong((int64_t *)&self->_stallSpinner, 0x0);
    objc_storeStrong((int64_t *)&self->_ctaButton, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_privacyButton, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_playerView, 0x0);
    return;
}

@end