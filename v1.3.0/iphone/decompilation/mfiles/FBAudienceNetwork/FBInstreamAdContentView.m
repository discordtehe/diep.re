@implementation FBInstreamAdContentView

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = [self commandProcessor];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
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
    if (r0 != 0x0) {
            r20 = [[UIColor blackColor] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
            r0 = [FBAdCommandProcessor new];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_commandProcessor));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setDelegate:r19];
            r19->_lastRemainingTimeSeconds = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_skippableTime));
            r9 = *_kCMTimeInvalid;
            q0 = *(int128_t *)r9;
            *(0x10 + r19 + r8) = *(r9 + 0x10);
            *(int128_t *)(r19 + r8) = q0;
    }
    r0 = r19;
    return r0;
}

-(float)volume {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 videoView];
            r0 = [r0 retain];
            [r0 volume];
            r0 = [r0 release];
    }
    return r0;
}

-(bool)isAutoplay {
    return 0x0;
}

-(void)registerLoaded {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self imagesLoaded] != 0x0 && [r19 videoLoaded] != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 contentViewDidLoad:r19];
            [r0 release];
    }
    return;
}

-(void)pause {
    [self setPaused:0x1];
    [self pauseAndTellDelegate];
    return;
}

-(void)startFromRootViewController:(void *)arg2 {
    [self setRootViewController:arg2];
    r21 = [[self videoView] retain];
    [self addSubview:r21];
    [r21 release];
    [self addSkipButton];
    [self addCountdownView];
    [self addCallToActionView];
    [self addAdChoicesView];
    [self addObservers];
    r0 = [self videoView];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r31 = r31 - 0xf0;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [[&saved_fp - 0x60 super] loadAdFromDataModel:r19 placementDefinition:r20];
    [r21 setImagesLoaded:0x0];
    [r21 setVideoLoaded:0x0];
    r0 = [r19 skippableSeconds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 skippableSeconds];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleValue];
            sub_100a3e550(&var_78);
            [r21 setSkippableTime:&var_90];
            [r22 release];
    }
    r22 = [FBInstreamAdVideoView new];
    [r21 setVideoView:r22];
    [r22 release];
    r0 = [r21 videoView];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r0 release];
    r22 = [[r19 videoURL] retain];
    r0 = [r19 videoHDURL];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 == 0x0) goto loc_100ad4360;

loc_100ad431c:
    r27 = [FBAdConnectionInfo currentReachabilityStatus];
    [r26 release];
    if (r27 != 0x1) goto loc_100ad4368;

loc_100ad4344:
    r0 = [r19 videoHDURL];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r22;
    r22 = r0;
    goto loc_100ad4360;

loc_100ad4360:
    [r26 release];
    goto loc_100ad4368;

loc_100ad4368:
    [[r21 videoView] retain];
    [r20 videoTimePollingInterval];
    sub_100a3e550(&stack[-184]);
    [r24 loadMovieWithURL:r22 progressInteral:&stack[-184]];
    [r24 release];
    r23 = [NSMutableArray new];
    r0 = [r21 dataModel];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (([r0 adChoicesDisabled] & 0x1) != 0x0) goto loc_100ad4490;

loc_100ad43fc:
    r0 = [r21 dataModel];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 adChoicesIcon];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r25 release];
    if (r0 == 0x0) goto loc_100ad4498;

loc_100ad4448:
    r0 = [r21 dataModel];
    r0 = [r0 retain];
    r25 = [[r0 adChoicesIcon] retain];
    [r0 release];
    [r23 addObject:r2];
    goto loc_100ad4490;

loc_100ad4490:
    [r25 release];
    goto loc_100ad4498;

loc_100ad4498:
    objc_initWeak(&stack[-192], r21);
    [r23 copy];
    objc_copyWeak(&var_D8 + 0x20, &stack[-192]);
    [FBAdImage loadImagesAsync:r25 withBlock:&var_D8];
    [r25 release];
    objc_destroyWeak(&var_D8 + 0x20);
    objc_destroyWeak(&stack[-192]);
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)play {
    [self setPaused:0x0];
    [self playAndTellDelegate];
    return;
}

-(void)pauseAndTellDelegate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isPlaying];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 videoView];
            r0 = [r0 retain];
            [r0 pause];
            [r0 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 contentViewDidPause:r19];
            [r0 release];
    }
    return;
}

-(void)playAndTellDelegate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isPlaying];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [r19 videoView];
            r0 = [r0 retain];
            [r0 play];
            [r0 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 contentViewDidResume:r19];
            [r0 release];
    }
    return;
}

-(union ?)currentTime {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r0 = [self videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 videoView];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 currentTime];
            }
            else {
                    *(int128_t *)r19 = 0x0;
                    *(int128_t *)(r19 + 0x8) = 0x0;
                    *(r19 + 0x10) = 0x0;
            }
            r0 = [r20 release];
    }
    else {
            r8 = *_kCMTimeZero;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(union ?)duration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = r8;
    r0 = [self videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 videoView];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    [r20 duration];
            }
            else {
                    *(int128_t *)r19 = 0x0;
                    *(int128_t *)(r19 + 0x8) = 0x0;
                    *(r19 + 0x10) = 0x0;
            }
            r0 = [r20 release];
    }
    else {
            r8 = *_kCMTimeZero;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(bool)skippable {
    [self skippableTime];
    r0 = var_C & 0x1;
    return r0;
}

-(union ?)skipRemainingTime {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = r8;
    r0 = [self skippable];
    if (r0 != 0x0) {
            [r20 skippableTime];
            [r20 currentTime];
            CMTimeSubtract(&stack[-80], &stack[-104]);
            r0 = CMTimeMaximum(&var_70, r29 - 0x28);
    }
    else {
            r8 = *_kCMTimeInvalid;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(void)layoutSubviews {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    [self bounds];
    r0 = [r19 callToActionView];
    r0 = [r0 retain];
    r23 = r0;
    [r0 frame];
    d8 = d8 - d2;
    r0 = [r19 callToActionView];
    r0 = [r0 retain];
    r24 = r0;
    [r0 frame];
    r0 = [r19 callToActionView];
    r0 = [r0 retain];
    r25 = r0;
    [r0 frame];
    r0 = [r19 callToActionView];
    r0 = [r0 retain];
    v0 = v2;
    v2 = v2;
    v3 = v3;
    [r0 setFrame:r2];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r0 = [r19 skipButtonView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            [r0 frame];
            d10 = d3 * 0xbfe0000000000000;
            [r0 release];
            [r19 bounds];
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            r24 = r0;
            [r0 frame];
            [r19 bounds];
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            r25 = r0;
            [r0 frame];
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            r26 = r0;
            [r0 frame];
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            r27 = r0;
            [r0 frame];
            r0 = [r19 skipButtonView];
            r29 = r29;
            r0 = [r0 retain];
            v0 = v2;
            v1 = v3;
            v2 = v2;
            v3 = v3;
            [r0 setFrame:r2];
            [r0 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r19 countdownView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 countdownView];
            r0 = [r0 retain];
            [r0 frame];
            [r0 release];
            [r19 bounds];
            r0 = [r19 countdownView];
            r0 = [r0 retain];
            [r0 frame];
            [r0 release];
            r0 = [r19 countdownView];
            r29 = r29;
            r0 = [r0 retain];
            v1 = v3;
            v2 = v2;
            v3 = v3;
            [r0 setFrame:r2];
            [r0 release];
    }
    [r19 bounds];
    r0 = [r19 videoView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    return;
}

-(void)addCountdownView {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self countdownView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    if ([r19 countdownEnabled] != 0x0) {
            r21 = [FBAdLabel alloc];
            r22 = [[UIFont systemFontOfSize:r2] retain];
            r21 = [r21 initWithText:0x0 numberOfLines:0x1 font:r22];
            [r19 setCountdownView:r21];
            [r21 release];
            [r22 release];
            r0 = [r19 countdownView];
            r0 = [r0 retain];
            [r0 setLineBreakMode:0x2];
            [r0 release];
            [r19 updateCountdownText];
            r0 = [r19 countdownView];
            r0 = [r0 retain];
            [r0 sizeThatFits:0x2];
            [r0 release];
            r0 = [r19 countdownView];
            r0 = [r0 retain];
            [r0 setFrame:0x2];
            [r0 release];
            [[r19 countdownView] retain];
            [r19 addSubview:r2];
            [r20 release];
    }
    return;
}

-(void)addCallToActionView {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 callToActionText];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100ad5674;

loc_100ad54cc:
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 callToActionURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r20 release];
    [r21 release];
    if (r0 == 0x0) goto .l1;

loc_100ad551c:
    r0 = [r19 callToActionView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r24 = [FBInstreamCallToActionView alloc];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r23 = [[r0 callToActionText] retain];
    r24 = [r24 initWithText:r23];
    [r19 setCallToActionView:r24];
    [r24 release];
    [r23 release];
    [r0 release];
    r0 = [UITapGestureRecognizer alloc];
    r0 = [r0 initWithTarget:r19 action:@selector(callToActionViewTapped:)];
    r21 = r0;
    [r0 setNumberOfTapsRequired:0x1];
    r0 = [r19 callToActionView];
    r0 = [r0 retain];
    [r0 addGestureRecognizer:r21];
    [r0 release];
    r20 = [[r19 callToActionView] retain];
    [r19 addSubview:r2];
    goto loc_100ad5674;

loc_100ad5674:
    [r20 release];
    [r21 release];
    return;

.l1:
    return;
}

-(void)addAdChoicesView {
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
    r19 = self;
    r0 = [self adChoicesView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r19 dataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (([r0 adChoicesDisabled] & 0x1) != 0x0) goto loc_100ad5238;

loc_100ad4f88:
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 adChoicesLinkURL];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100ad5230;

loc_100ad4fbc:
    r25 = r0;
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 adChoicesIcon];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r0 == 0x0) goto .l1;

loc_100ad501c:
    r24 = [FBAdChoicesView alloc];
    r23 = [[r19 rootViewController] retain];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r25 = [[r0 inlineClientToken] retain];
    [r0 release];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r26 = [[r0 adChoicesIcon] retain];
    [r0 release];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r22 = [[r0 adChoicesLinkURL] retain];
    [r0 release];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r27 = [[r0 adChoicesText] retain];
    r24 = [r24 initWithViewController:r23 inlineClientToken:r25 adChoicesIcon:r26 adChoicesLinkURL:r22 adChoicesText:r27 attributes:0x0 expandable:0x1];
    [r19 setAdChoicesView:r24];
    [r24 release];
    [r27 release];
    [r0 release];
    [r22 release];
    [r26 release];
    [r25 release];
    [r23 release];
    r0 = [r19 adChoicesView];
    r0 = [r0 retain];
    [r0 setDelegate:r19];
    [r0 release];
    r0 = [r19 adChoicesView];
    r0 = [r0 retain];
    [r0 setCorner:0x1];
    [r0 release];
    r23 = [[r19 adChoicesView] retain];
    [r19 addSubview:r2];
    goto loc_100ad5238;

loc_100ad5238:
    [r23 release];
    return;

.l1:
    return;

loc_100ad5230:
    [r24 release];
    goto loc_100ad5238;
}

-(void)addObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    return;
}

-(void)addSkipButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self skippable] != 0x0) {
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            r22 = [FBInstreamSkipButtonView alloc];
            r22 = [r22 initWithRemainingSeconds:[r19 skipRemainingSeconds]];
            [r19 setSkipButtonView:r22];
            [r22 release];
            r0 = [UITapGestureRecognizer alloc];
            r0 = [r0 initWithTarget:r19 action:@selector(skipButtonViewTapped:)];
            r21 = r0;
            [r0 setNumberOfTapsRequired:0x1];
            r0 = [r19 skipButtonView];
            r0 = [r0 retain];
            [r0 addGestureRecognizer:r21];
            [r0 release];
            [[r19 skipButtonView] retain];
            [r19 addSubview:r2];
            [r20 release];
            [r21 release];
    }
    return;
}

-(void)applicationWillResignActive:(void *)arg2 {
    [self pauseAndTellDelegate];
    return;
}

-(void)applicationDidBecomeActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self paused] & 0x1) == 0x0 && ([r19 rootViewControllerPresenting] & 0x1) == 0x0) {
            [r19 playAndTellDelegate];
    }
    return;
}

-(void)callToActionViewTapped:(void *)arg2 {
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
    r19 = [arg2 retain];
    [NSDate timeIntervalSinceReferenceDate];
    v8 = v0;
    [r20 currentTime];
    sub_100a3e4dc(&stack[-104]);
    [r20 currentTime];
    if ((var_64 & 0x1) != 0x0) {
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 inlineClientToken];
            r29 = r29;
            r23 = [r0 retain];
            r21 = [FBAdUtility enforceAdClickguard:r23 withToken:0x0 withExtraData:r4];
            [r23 release];
            [r22 release];
            if ((r21 & 0x1) == 0x0) {
                    if ([FBAdUtility enforceTwoStepConfirmation] != 0x0) {
                            objc_initWeak(&stack[-136], r20);
                            [[r20 rootViewController] retain];
                            r0 = [r20 dataModel];
                            r0 = [r0 retain];
                            [[r0 inlineClientToken] retain];
                            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
                            [r21 showTwoStepConfirmationDialogFrom:r22 withToken:r24 withExtraData:0x0 completionHandler:&var_A0];
                            [r24 release];
                            [r20 release];
                            [r22 release];
                            objc_destroyWeak(&var_A0 + 0x20);
                            objc_destroyWeak(&stack[-136]);
                    }
                    else {
                            r0 = [r20 dataModel];
                            r0 = [r0 retain];
                            r22 = [[r0 callToActionURL] retain];
                            [r0 release];
                            [r20 processCommand:r22];
                            [r22 release];
                    }
            }
    }
    else {
            if ([FBAdUtility enforceTwoStepConfirmation] != 0x0) {
                    objc_initWeak(&stack[-136], r20);
                    [[r20 rootViewController] retain];
                    r0 = [r20 dataModel];
                    r0 = [r0 retain];
                    [[r0 inlineClientToken] retain];
                    objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
                    [r21 showTwoStepConfirmationDialogFrom:r22 withToken:r24 withExtraData:0x0 completionHandler:&var_A0];
                    [r24 release];
                    [r20 release];
                    [r22 release];
                    objc_destroyWeak(&var_A0 + 0x20);
                    objc_destroyWeak(&stack[-136]);
            }
            else {
                    r0 = [r20 dataModel];
                    r0 = [r0 retain];
                    r22 = [[r0 callToActionURL] retain];
                    [r0 release];
                    [r20 processCommand:r22];
                    [r22 release];
            }
    }
    [r19 release];
    return;
}

-(void)cleanLayout {
    r0 = [self videoView];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    [self removeObservers];
    r0 = [self adChoicesView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self callToActionView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self skipButtonView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self videoView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    return;
}

-(void)processCommand:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-72], self);
    [[self commandProcessor] retain];
    r0 = [self dataModel];
    r0 = [r0 retain];
    [[r0 inlineClientToken] retain];
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r20 processCommand:r19 inlineClientToken:r23 completionHandler:&var_60];
    [r23 release];
    [r21 release];
    [r20 release];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r19 release];
    return;
}

-(void)removeObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    return;
}

-(void)skipButtonViewTapped:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self skipRemainingTime];
    r0 = CMTimeCompare(&stack[-56], &var_40);
    if (r0 <= 0x0) {
            [r19 cleanLayout];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 contentViewDidSkip:r19];
            [r0 release];
    }
    return;
}

-(unsigned long long)skipRemainingSeconds {
    [self skipRemainingTime];
    r0 = CMTimeGetSeconds(&stack[-40]);
    asm { fcvtmu     x0, d0 };
    return r0;
}

-(void)updateSkipButtonRemainingTime {
    r20 = [self skipRemainingSeconds];
    r0 = [self skipButtonView];
    r0 = [r0 retain];
    [r0 setRemainingSeconds:r20];
    [r0 release];
    return;
}

-(void)updateCountdownText {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self countdownView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 formattedCountdownFromRemainingSeconds:[r19 lastRemainingTimeSeconds]] retain];
            r0 = [r19 countdownView];
            r0 = [r0 retain];
            [r0 setText:r21];
            [r0 release];
            [r21 release];
    }
    return;
}

-(void)adChoicesView:(void *)arg2 willPresentViewController:(void *)arg3 {
    [self setRootViewControllerPresenting:0x1];
    [self pauseAndTellDelegate];
    return;
}

-(void)adChoicesView:(void *)arg2 viewControllerDismissed:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setRootViewControllerPresenting:0x0];
    if (([r19 paused] & 0x1) == 0x0) {
            [r19 playAndTellDelegate];
    }
    return;
}

-(void)willPresentViewController:(void *)arg2 {
    [self setRootViewControllerPresenting:0x1];
    [self pauseAndTellDelegate];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self rootViewController];
    return r0;
}

-(void)viewControllerDismissed:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setRootViewControllerPresenting:0x0];
    if (([r19 paused] & 0x1) == 0x0) {
            [r19 playAndTellDelegate];
    }
    return;
}

-(void)videoViewDidLoad:(void *)arg2 {
    [self setVideoLoaded:0x1];
    [self registerLoaded];
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
    return 0x0;
}

-(void)videoViewTapped:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoView];
    r0 = [r0 retain];
    r21 = [r0 isPlaying];
    [r0 release];
    r8 = &@selector(play);
    if (r21 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(play);
            }
            else {
                    r8 = &@selector(pause);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)videoViewDidProgress:(void *)arg2 {
    r31 = r31 - 0x90;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 contentViewDidProgress:r19];
    [r0 release];
    r0 = [r19 videoView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 duration];
    }
    r0 = [r19 videoView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 currentTime];
    }
    CMTimeSubtract(&var_60, &var_78);
    CMTimeGetSeconds(&stack[-88]);
    asm { frintp     d8, d0 };
    [r21 release];
    [r20 release];
    asm { fmaxnm     d0, d8, d0 };
    asm { fcvtzu     x20, d0 };
    if ([r19 lastRemainingTimeSeconds] != r20) {
            [r19 setLastRemainingTimeSeconds:r20];
            [r19 updateSkipButtonRemainingTime];
            [r19 updateCountdownText];
    }
    return;
}

-(void)videoViewDidEnd:(void *)arg2 {
    [self cleanLayout];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 contentViewDidEnd:self];
    [r0 contentViewDidUnload:self];
    [r0 release];
    return;
}

-(void)videoView:(void *)arg2 didFailWithError:(void *)arg3 {
    [self cleanLayout];
    r20 = [[self delegate] retain];
    r21 = [[FBAdError getNSError:0x3e8] retain];
    [r20 contentView:self didFailWithError:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoView, 0x0);
    objc_storeStrong((int64_t *)&self->_skipButtonView, 0x0);
    objc_storeStrong((int64_t *)&self->_rootViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownView, 0x0);
    objc_storeStrong((int64_t *)&self->_commandProcessor, 0x0);
    objc_storeStrong((int64_t *)&self->_callToActionView, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesView, 0x0);
    return;
}

-(void *)adChoicesView {
    r0 = self->_adChoicesView;
    return r0;
}

-(void *)callToActionView {
    r0 = self->_callToActionView;
    return r0;
}

-(void)setAdChoicesView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesView, arg2);
    return;
}

-(void)setCallToActionView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callToActionView, arg2);
    return;
}

-(void *)commandProcessor {
    r0 = self->_commandProcessor;
    return r0;
}

-(void)setCommandProcessor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandProcessor, arg2);
    return;
}

-(void)setCountdownView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countdownView, arg2);
    return;
}

-(void *)countdownView {
    r0 = self->_countdownView;
    return r0;
}

-(bool)imagesLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_imagesLoaded;
    return r0;
}

-(void)setImagesLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_imagesLoaded = arg2;
    return;
}

-(void)setLastRemainingTimeSeconds:(unsigned long long)arg2 {
    self->_lastRemainingTimeSeconds = arg2;
    return;
}

-(unsigned long long)lastRemainingTimeSeconds {
    r0 = self->_lastRemainingTimeSeconds;
    return r0;
}

-(bool)paused {
    r0 = *(int8_t *)(int64_t *)&self->_paused;
    return r0;
}

-(void *)rootViewController {
    r0 = self->_rootViewController;
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(bool)rootViewControllerPresenting {
    r0 = *(int8_t *)(int64_t *)&self->_rootViewControllerPresenting;
    return r0;
}

-(void)setRootViewControllerPresenting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_rootViewControllerPresenting = arg2;
    return;
}

-(void)setSkippableTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_skippableTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(union ?)skippableTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_skippableTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void *)skipButtonView {
    r0 = self->_skipButtonView;
    return r0;
}

-(void)setSkipButtonView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_skipButtonView, arg2);
    return;
}

-(bool)videoLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_videoLoaded;
    return r0;
}

-(void)setVideoLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoLoaded = arg2;
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

@end