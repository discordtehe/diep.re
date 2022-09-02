@implementation FBMediaView

-(void)initialSetup {
    [self setClipsToBounds:0x1];
    [self setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [self setUserInteractionEnabled:0x1];
    [self setMultiProductCellStyle:0x0];
    [NSDate timeIntervalSinceReferenceDate];
    self->_loadedTime = d0;
    objc_initWeak(&stack[-56], self);
    [[FBAdNotificationCenter notificationCenterForObject:self] retain];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r20 addNotificationWithName:r21 block:&var_50];
    [r20 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
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
            [r19 initialSetup];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialSetup];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialSetup];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithNativeAd:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setNativeAd:r19];
            [r20 setupView];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setupCommandProcessorIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self commandProcessor];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdCommandProcessor new];
            [r20 release];
            [r21 setDelegate:r19];
            objc_storeStrong((int64_t *)&r19->_commandProcessor, r21);
            r20 = r21;
    }
    [r20 release];
    return;
}

-(void *)viewShowingMediaForCurrentNativeAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self imageView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 imageView];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 useAsIconView];
    if (r19 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_100af8940;

loc_100af8894:
    r0 = [r20 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100af8950;

loc_100af88b8:
    if ([r20 videoSupported] == 0x0) goto loc_100af890c;

loc_100af88cc:
    r0 = [r20 currentVideoRenderer];
    r0 = [r0 retain];
    r20 = [[r0 videoContainerView] retain];
    [r0 release];
    goto loc_100af8954;

loc_100af8954:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100af890c:
    if ([r20 multiProductSupported] == 0x0) goto loc_100af893c;

loc_100af8920:
    r0 = [r20 multiProductView];
    r0 = [r0 retain];
    goto loc_100af8948;

loc_100af8948:
    r20 = r0;
    goto loc_100af8954;

loc_100af893c:
    if (r19 == 0x0) goto loc_100af8950;

loc_100af8940:
    r0 = [r19 retain];
    goto loc_100af8948;

loc_100af8950:
    r20 = 0x0;
    goto loc_100af8954;
}

-(void)setupVideoRenderer:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self currentVideoRenderer];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self addSubview:r21];
    objc_storeWeak((int64_t *)&self->_currentVideoRenderer, r21);
    [r21 release];
    return;
}

-(void)setupView {
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
    r20 = [[self imageView] retain];
    r21 = [[r19 currentVideoRenderer] retain];
    r22 = [[r19 multiProductView] retain];
    if ([r19 videoSupported] != 0x0) {
            if (r21 == 0x0) {
                    r0 = [FBMediaViewDefaultVideoRenderer new];
                    [r0 setDelegate:r19];
                    [r19 setupVideoRenderer:r0];
                    [r21 release];
                    r21 = r0;
            }
            [r20 setHidden:0x1];
            [r22 setHidden:0x1];
            [r21 setHidden:0x0];
            [r19 bounds];
            [r21 setFrame:r2];
            r23 = r21;
    }
    else {
            if ([r19 multiProductSupported] != 0x0) {
                    if (r22 != 0x0) {
                            r23 = r22;
                    }
                    else {
                            r23 = [FBAdMultiProductView alloc];
                            r23 = [r23 initWithMultiProductCellStyle:[r19 multiProductCellStyle]];
                            [r22 release];
                            [r23 setDelegate:r19];
                            [r19 addSubview:r23];
                            objc_storeWeak((int64_t *)&r19->_multiProductView, r23);
                            r22 = r23;
                    }
                    [r20 setHidden:0x1];
                    [r21 setHidden:0x1];
                    [r22 setHidden:0x0];
                    [r19 bounds];
                    r0 = r22;
            }
            else {
                    if (r20 != 0x0) {
                            r23 = r20;
                    }
                    else {
                            r23 = [FBAdBlurredImageView new];
                            [r20 release];
                            [r19 addSubview:r23];
                            [r19 setImageView:r23];
                            r20 = r23;
                    }
                    [r20 setHidden:0x0];
                    [r21 setHidden:0x1];
                    [r22 setHidden:0x1];
                    [r19 bounds];
                    r0 = r20;
            }
            [r0 setFrame:r2];
    }
    [r19 bringSubviewToFront:r23];
    [r19 setupViewabilityValidator];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(bool)multiProductSupported {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self useAsIconView] & 0x1) != 0x0) {
            r19 = 0x0;
    }
    else {
            r0 = [r19 nativeAd];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 dataModel];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 type] == 0x3) {
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)videoSupported {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self useAsIconView] & 0x1) != 0x0) {
            r19 = 0x0;
    }
    else {
            r0 = [r19 nativeAd];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 dataModel];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 type] == 0x2) {
                    r19 = [r19 videoFailedToLoad] ^ 0x1;
            }
            else {
                    r19 = 0x0;
            }
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isAutoplayEnabled {
    r0 = [self nativeAd];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 dataModel];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 videoAutoplayEnabled];
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(float)volume {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self currentVideoRenderer];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 volume];
            v8 = v0;
    }
    r0 = [r19 release];
    return r0;
}

-(unsigned long long)nativeAdViewTag {
    return 0xd;
}

-(void)applyNaturalWidth {
    r19 = self;
    [self frame];
    [r19 aspectRatio];
    asm { frinta     d2, d0 };
    [r19 setFrame:r2];
    return;
}

-(void)applyNaturalHeight {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self frame];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    [r19 aspectRatio];
    if (d0 > 0x0) {
            asm { fdiv       d0, d10, d0 };
            asm { frinta     d3, d0 };
    }
    [r19 setFrame:r2];
    return;
}

-(double)aspectRatio {
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
    r22 = self;
    r19 = [[self imageView] retain];
    r20 = [[r22 multiProductView] retain];
    r0 = [r22 currentVideoRenderer];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 videoSupported];
    if (r21 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_100af9120;

loc_100af9080:
    [r22 multiProductSupported];
    if (r20 != 0x0) {
            asm { ccmp       w0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_100af9138;

loc_100af909c:
    if (r19 == 0x0) goto loc_100af9220;

loc_100af90a4:
    r0 = [r19 image];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100af9220;

loc_100af90cc:
    r0 = [r19 image];
    r0 = [r0 retain];
    r23 = r0;
    [r0 size];
    v8 = v0;
    r0 = [r19 image];
    r0 = [r0 retain];
    r22 = r0;
    objc_msgSend(r0, r24);
    asm { fdiv       d8, d8, d1 };
    goto loc_100af9208;

loc_100af9208:
    [r22 release];
    [r23 release];
    goto loc_100af9220;

loc_100af9220:
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_100af9138:
    r0 = [r20 multiProductAds];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 == 0x0) goto loc_100af9220;

loc_100af9174:
    r0 = [r20 multiProductAds];
    r0 = [r0 retain];
    r23 = [[r0 objectAtIndexedSubscript:0x0] retain];
    [r0 release];
    r0 = [r23 image];
    r0 = [r0 retain];
    r22 = r0;
    [r0 width];
    asm { scvtf      d0, x0 };
    [r22 height];
    asm { scvtf      d0, x0 };
    asm { fdiv       d8, d8, d0 };
    goto loc_100af9208;

loc_100af9120:
    [r21 aspectRatio];
    v8 = v0;
    goto loc_100af9220;
}

-(void)setVideoRenderer:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 nativeAd];
    r0 = [r0 retain];
    r23 = [r0 isRegistered];
    [r0 release];
    if (r23 != 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x3 description:@"trying to set videoRenderer when nativeAd is already registered"];
    }
    else {
            objc_storeStrong((int64_t *)&r21->_videoRenderer, r20);
    }
    [r19 release];
    return;
}

-(void)loadMediaFromNativeAdBase:(void *)arg2 {
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
    r0 = [self imageView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 image];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r20 setImage:r2];
    }
    r0 = [r19 videoRenderer];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_100af9518;

loc_100af949c:
    r23 = [[r19 currentVideoRenderer] retain];
    r0 = [r19 videoRenderer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r23 == r0) goto loc_100af9520;

loc_100af94ec:
    r22 = [[r19 videoRenderer] retain];
    [r19 setupVideoRenderer:r22];
    goto loc_100af9518;

loc_100af9518:
    [r22 release];
    goto loc_100af9520;

loc_100af9520:
    [r19 setupView];
    if (([r19 videoSupported] & 0x1) != 0x0) {
            r8 = &@selector(loadVideo);
    }
    else {
            r8 = &@selector(loadImage);
            if ([r19 multiProductSupported] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = &@selector(loadImage);
                    }
                    else {
                            r8 = &@selector(loadMultiProductAd);
                    }
            }
    }
    objc_msgSend(r19, *r8);
    [r19 setNeedsDelayedLoad:0x0];
    [r20 release];
    return;
}

-(void)loadImage {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self videoFailedToLoad] != 0x0) {
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBMediaView.m" lineNumber:0x15a format:@"Video failed to load or was interrupted, falling back to image."];
    }
    if (([r19 useAsIconView] & 0x1) != 0x0) {
            r0 = [r19 nativeAdBase];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 icon];
    }
    else {
            r0 = [r19 nativeAd];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 coverImage];
    }
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            objc_initWeak(&stack[-56], r19);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            [r20 loadImageAsyncWithBlock:&var_50];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    [r20 release];
    return;
}

-(void)loadMultiProductAd {
    r0 = [self nativeAd];
    r0 = [r0 retain];
    [[r0 dataModel] retain];
    [r0 release];
    objc_initWeak(&saved_fp - 0x58, self);
    [[self multiProductView] retain];
    [[r22 multiProductAdContent] retain];
    r0 = [self nativeAd];
    r0 = [r0 retain];
    [[r0 placementDefinition] retain];
    objc_copyWeak(&var_88 + 0x28, &saved_fp - 0x58);
    r0 = [r22 retain];
    var_68 = r0;
    objc_copyWeak(&var_B8 + 0x28, &saved_fp - 0x58);
    r0 = [r22 retain];
    [r19 setMultiProductAds:r21 placementDefinition:r25 withImpressionHandler:&var_88 withClickHandler:&var_B8];
    [r25 release];
    [r24 release];
    [r21 release];
    [r19 release];
    [r0 release];
    objc_destroyWeak(&var_B8 + 0x28);
    [var_68 release];
    objc_destroyWeak(&var_88 + 0x28);
    objc_destroyWeak(&saved_fp - 0x58);
    [r22 release];
    return;
}

-(void)processCommand:(void *)arg2 withExtraData:(void *)arg3 adDataModel:(void *)arg4 {
    [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    objc_initWeak(&stack[-72], self);
    [[self commandProcessor] retain];
    [[r21 inlineClientToken] retain];
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r22 processCommand:r19 withExtraData:r20 inlineClientToken:r24 skipAppStore:0x0 completionHandler:&var_60];
    [r24 release];
    [r22 release];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)dispatchViewDidLoad {
    objc_initWeak(&saved_fp - 0x18, self);
    objc_copyWeak(&var_40 + 0x20, &saved_fp - 0x18);
    dispatch_async(*__dispatch_main_q, &var_40);
    objc_destroyWeak(&var_40 + 0x20);
    objc_destroyWeak(&saved_fp - 0x18);
    return;
}

-(void)loadVideo {
    r31 = r31 - 0x110;
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
    r23 = self;
    objc_initWeak(&saved_fp - 0x70, r23);
    r21 = &var_98 + 0x20;
    objc_copyWeak(r21, &saved_fp - 0x70);
    r0 = objc_retainBlock(&var_98);
    r27 = r0;
    r24 = &var_C0 + 0x20;
    objc_copyWeak(r24, &saved_fp - 0x70);
    r0 = objc_retainBlock(&var_C0);
    var_E0 = r0;
    r0 = [r23 nativeAd];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 dataModel];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 videoURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    [r19 release];
    if (r0 != 0x0) {
            var_F0 = r21;
            var_E8 = r27;
            var_F8 = r24;
            r0 = [r23 currentVideoRenderer];
            r29 = r29;
            r27 = [r0 retain];
            [FBMediaViewDefaultVideoRenderer class];
            if ([r27 isKindOfClass:r2] != 0x0) {
                    r24 = [r27 retain];
            }
            else {
                    r24 = 0x0;
            }
            r0 = [r23 nativeAd];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 dataModel];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 videoAutoplayEnabled];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 boolValue];
            r26 = @selector(videoURL);
            if (r24 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            r28 = r24;
            [r20 release];
            [r22 release];
            [r19 release];
            if ((r21 & (r0 ^ 0x1) & 0x1) == 0x0) {
                    [r27 setVideoReadyToDisplay:var_E0];
                    r24 = r28;
                    r22 = r26;
                    r26 = @selector(dataModel);
                    r25 = @selector(nativeAd);
            }
            else {
                    [r28 setPosterImageDidLoadCompletionBlock:var_E0];
                    r24 = r28;
                    r22 = r26;
                    r26 = @selector(dataModel);
                    r25 = @selector(nativeAd);
            }
            if (r24 != 0x0) {
                    r0 = objc_msgSend(r23, r25);
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 coverImage];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r24 setPosterImage:r20];
                    [r20 release];
                    [r19 release];
            }
            r0 = objc_msgSend(r23, r25);
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r26);
            r0 = [r0 retain];
            [objc_msgSend(r0, r22) retain];
            [r0 release];
            [r19 release];
            r0 = objc_msgSend(r23, r25);
            r0 = [r0 retain];
            r0 = [r0 placementDefinition];
            r0 = [r0 retain];
            [r0 videoTimePollingInterval];
            sub_100a3e550(&stack[-232]);
            r0 = objc_msgSend(r23, r25);
            r0 = [r0 retain];
            r25 = r0;
            r0 = objc_msgSend(r0, r26);
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 inlineClientToken];
            r29 = r29;
            r20 = [r0 retain];
            [r27 loadVideoURL:r28 pollingInterval:&stack[-232] clientToken:r20 autoplayEnabled:[r23 isAutoplayEnabled] loadedBlock:0x0 failureBlock:var_E8];
            [r20 release];
            [r26 release];
            [r25 release];
            [r19 release];
            [r22 release];
            [r28 release];
            [r24 release];
            [r27 release];
            r24 = var_F8;
            r21 = var_F0;
            r27 = var_E8;
    }
    else {
            (*(r27 + 0x10))(r27);
    }
    [var_E0 release];
    objc_destroyWeak(r24);
    [r27 release];
    objc_destroyWeak(r21);
    objc_destroyWeak(r29 - 0x70);
    return;
}

-(void)setNativeAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAd, arg2);
    r19 = [arg2 retain];
    [self setNativeAdBase:r19];
    [r19 release];
    return;
}

-(bool)isUsingCustomVideoRenderer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self videoRenderer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [[r20 videoRenderer] retain];
            r20 = [r21 isMemberOfClass:[FBMediaViewDefaultVideoRenderer class]] ^ 0x1;
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)multiProductViewDidLoad:(void *)arg2 {
    [self dispatchViewDidLoad];
    return;
}

-(bool)hasAdMedia {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self imageView];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([r20 useAsIconView] == 0x0) goto loc_100afa054;

loc_100afa038:
    if (r19 == 0x0) goto loc_100afa0e0;

loc_100afa03c:
    r0 = [r19 image];
    goto loc_100afa0d0;

loc_100afa0d0:
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    goto loc_100afa118;

loc_100afa118:
    [r0 release];
    goto loc_100afa11c;

loc_100afa11c:
    [r19 release];
    r0 = r20;
    return r0;

loc_100afa0e0:
    r20 = 0x0;
    goto loc_100afa11c;

loc_100afa054:
    if ([r20 videoSupported] == 0x0 || ([r20 videoFailedToLoad] & 0x1) != 0x0) goto loc_100afa07c;

loc_100afa0e8:
    r0 = [r20 currentVideoRenderer];
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(videoOrPlaceholderImageVisible);
    goto loc_100afa10c;

loc_100afa10c:
    r20 = objc_msgSend(r0, r1);
    r0 = r21;
    goto loc_100afa118;

loc_100afa07c:
    if ([r20 multiProductSupported] == 0x0) goto loc_100afa0b8;

loc_100afa090:
    r0 = [r20 multiProductView];
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(hasAdMedia);
    goto loc_100afa10c;

loc_100afa0b8:
    if (r19 == 0x0) goto loc_100afa0e0;

loc_100afa0bc:
    r0 = [r19 image];
    goto loc_100afa0d0;
}

-(void)videoControllerDidTapCallToAction:(void *)arg2 withButton:(void *)arg3 withEvent:(void *)arg4 {
    r20 = [arg3 retain];
    r19 = [[self nativeAd] retain];
    r21 = [[NSNull null] retain];
    [r19 handleTap:r20 withEvent:r21];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)videoControllerWillDismiss:(void *)arg2 {
    r0 = [self currentVideoRenderer];
    r0 = [r0 retain];
    [r0 playVideo];
    [r0 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r20 = [[FBAdUtility viewControllerFromView:self] retain];
    r19 = [[FBAdViewControllerProxy proxyWithViewController:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)videoControllerDidDismiss:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setVideoFullscreenController:0x0];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(mediaViewDidExitFullscreen:)] != 0x0) {
            [r20 mediaViewDidExitFullscreen:r19];
    }
    [r20 release];
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
    return 0x0;
}

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void)defaultVideoRendererWasTapped:(void *)arg2 {
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
    r21 = [FBAdFullscreenVideoController alloc];
    r0 = [r20 nativeAd];
    r0 = [r0 retain];
    r23 = [[r0 callToAction] retain];
    r21 = [r21 initWithVideoRenderer:r19 callToAction:r23];
    [r20 setVideoFullscreenController:r21];
    [r21 release];
    [r23 release];
    [r0 release];
    r0 = [r20 videoFullscreenController];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r23 = [[FBAdUtility viewControllerFromView:r20] retain];
    r22 = [[FBAdViewControllerProxy proxyWithViewController:r23] retain];
    [r23 release];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 respondsToSelector:@selector(mediaViewWillEnterFullscreen:)] != 0x0) {
            [r23 mediaViewWillEnterFullscreen:r20];
    }
    r20 = [[r20 videoFullscreenController] retain];
    [r22 presentViewController:r20 animated:0x1 completion:0x0];
    [r20 release];
    [r19 playVideo];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)defaultVideoRendererDidPause:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(mediaViewVideoDidPause:)] != 0x0) {
            [r20 mediaViewVideoDidPause:r19];
    }
    [r20 release];
    return;
}

-(void)defaultVideoRenderer:(void *)arg2 volumeDidChange:(float)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(mediaView:videoVolumeDidChange:), arg3] != 0x0) {
            [r20 mediaView:r19 videoVolumeDidChange:r3];
    }
    [r20 release];
    return;
}

-(void)defaultVideoRendererDidPlay:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(mediaViewVideoDidPlay:)] != 0x0) {
            [r20 mediaViewVideoDidPlay:r19];
    }
    [r20 release];
    return;
}

-(void)defaultVideoRendererVideoDidComplete:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(mediaViewVideoDidComplete:)] != 0x0) {
            [r20 mediaViewVideoDidComplete:r19];
    }
    [r20 release];
    return;
}

-(void)setNativeAdBase:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdBase));
    r22 = *(r20 + r23);
    if (r22 != r0) {
            r0 = [r19 retain];
            r21 = r0;
            *(r20 + r23) = r0;
            [r22 release];
            *(int8_t *)(int64_t *)&r20->_hasLoadedMedia = 0x0;
            if (([r20 isValidFrame] & 0x1) != 0x0) {
                    [r20 loadMediaFromNativeAdBase:r21];
            }
            else {
                    [r20 setNeedsDelayedLoad:0x1];
            }
    }
    [r19 release];
    return;
}

-(void)dealloc {
    r0 = [self viewabilityValidator];
    r0 = [r0 retain];
    [r0 stopViewabilityCheck];
    [r0 release];
    r0 = [self viewabilityValidator];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)setupViewabilityValidator {
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
    r19 = self;
    r0 = [self nativeAdBase];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 firstImpressionTime];
    [r0 release];
    if (d8 == 0xbff0000000000000) {
            r19->_lastAdViewabilityStatus = 0x0;
            r0 = [r19 nativeAdBase];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 placementDefinition];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            if (r20 != 0x0) {
                    r21 = [FBAdViewabilityValidator alloc];
                    r22 = [[r19 viewShowingMediaForCurrentNativeAd] retain];
                    [r20 viewabilityCheckInterval];
                    [r20 viewabilityCheckInitialDelay];
                    r21 = [r21 initWithView:r22 withInterval:[r20 minViewabilityPercentage] withInitialDelay:[r20 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
                    [r19 setViewabilityValidator:r21];
                    [r21 release];
                    [r22 release];
                    r0 = [r19 viewabilityValidator];
                    r0 = [r0 retain];
                    [r0 setDelegate:r19];
                    [r0 release];
                    r0 = [r19 viewabilityValidator];
                    r0 = [r0 retain];
                    [r0 scheduleViewabilityCheck];
                    [r0 release];
            }
            [r20 release];
    }
    return;
}

-(void)executeMediaIsLoadedAndVisibleBlockIfHasAdMedia {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasAdMedia] & 0x1) != 0x0) goto loc_100afabf8;

loc_100afab98:
    r0 = [r19 mediaErrorBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100afabf8;

loc_100afabc0:
    r20 = [[r19 mediaErrorBlock] retain];
    r0 = [FBAdError getNSError:0x7d3];
    r29 = r29;
    goto loc_100afac5c;

loc_100afac5c:
    (*(r20 + 0x10))(r20, [r0 retain]);
    [r21 release];
    [r20 release];
    goto loc_100afac84;

loc_100afac84:
    r0 = [r19 viewabilityValidator];
    r0 = [r0 retain];
    [r0 stopViewabilityCheck];
    [r0 release];
    return;

loc_100afabf8:
    if ([r19 hasAdMedia] == 0x0) goto loc_100afac84;

loc_100afac08:
    r0 = [r19 mediaIsLoadedAndVisibleBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100afac84;

loc_100afac30:
    r20 = [[r19 mediaIsLoadedAndVisibleBlock] retain];
    r0 = [r19 generateLoggingData];
    r29 = r29;
    goto loc_100afac5c;
}

-(void)layoutSubviews {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self needsDelayedLoad] != 0x0 && [r19 isValidFrame] != 0x0) {
            r20 = [[r19 nativeAdBase] retain];
            [r19 loadMediaFromNativeAdBase:r20];
            [r20 release];
    }
    else {
            [r19 setupView];
    }
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)checkIfMediaIsLoadedAndVisible {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FBAdConfigManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 shouldExplicitlyWaitForVideoToStartPlayingInNativeAd];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            r20 = [r19 videoSupported];
            r0 = [r19 currentVideoRenderer];
            r0 = [r0 retain];
            r22 = [r0 isPlaying];
            [r0 release];
            if ((r22 & 0x1) != 0x0 || r20 == 0x0) {
                    if ([r19 hasLoadedMedia] != 0x0) {
                            if ([r19 lastAdViewabilityStatus] == 0x1) {
                                    [r19 executeMediaIsLoadedAndVisibleBlockIfHasAdMedia];
                            }
                    }
            }
    }
    else {
            if ([r19 hasLoadedMedia] != 0x0) {
                    if ([r19 lastAdViewabilityStatus] == 0x1) {
                            [r19 executeMediaIsLoadedAndVisibleBlockIfHasAdMedia];
                    }
            }
    }
    return;
}

-(void *)generateLoggingData {
    r0 = [self generateLoggingDataWithExtraData:0x0];
    return r0;
}

-(bool)isValidFrame {
    r0 = [self bounds];
    r0 = CGRectIsEmpty(r0);
    r0 = r0 ^ 0x1;
    return r0;
}

-(void)setHasLoadedMedia:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hasLoadedMedia));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 checkIfMediaIsLoadedAndVisible];
    }
    return;
}

-(void)setLastAdViewabilityStatus:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastAdViewabilityStatus));
    if (*(r0 + r8) != r2) {
            *(r0 + r8) = r2;
            [r0 checkIfMediaIsLoadedAndVisible];
    }
    return;
}

-(void *)generateLoggingDataWithExtraData:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [[NSMutableDictionary dictionary] retain];
    r0 = [r21 viewabilityValidator];
    r0 = [r0 retain];
    r22 = [[r0 viewabilityHistoryJSON] retain];
    [r0 release];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r21 viewabilityValidator];
            r0 = [r0 retain];
            r0 = [NSNumber numberWithInteger:[r0 currentStatus]];
            r0 = [r0 retain];
            r0 = [r0 stringValue];
            r29 = r29;
            [r0 retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r27 release];
            [r25 release];
            [r26 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r21 viewabilityValidator];
            r0 = [r0 retain];
            [r0 lastViewabilityPercentage];
            r0 = [NSNumber numberWithDouble:@"vp"];
            r0 = [r0 retain];
            r0 = [r0 stringValue];
            r29 = r29;
            [r0 retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r26 release];
            [r25 release];
            [r24 release];
    }
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r20 setObject:r2 forKeyedSubscript:r3];
    }
    r24 = @class(NSString);
    [r21 bounds];
    [[r24 stringWithFormat:@"%.0f"] retain];
    [r20 setObject:r2 forKeyedSubscript:r3];
    [r24 release];
    r24 = @class(NSString);
    [r21 bounds];
    [[r24 stringWithFormat:@"%.0f"] retain];
    [r20 setObject:r2 forKeyedSubscript:r3];
    [r24 release];
    [[FBAdUtility stringValueForBool:0x1] retain];
    [r20 setObject:r2 forKeyedSubscript:r3];
    [r25 release];
    r25 = @class(FBAdUtility);
    [[r25 stringValueForBool:[r21 isAutoplayEnabled]] retain];
    [r20 setObject:r2 forKeyedSubscript:r3];
    [r25 release];
    [[FBAdUtility stringValueForBool:[r21 isUsingCustomVideoRenderer]] retain];
    [r20 setObject:r2 forKeyedSubscript:r3];
    [r21 release];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    [self setLastAdViewabilityStatus:arg3];
    return 0x0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_videoFullscreenController, 0x0);
    objc_storeStrong((int64_t *)&self->_commandProcessor, 0x0);
    objc_destroyWeak((int64_t *)&self->_multiProductView);
    objc_destroyWeak((int64_t *)&self->_currentVideoRenderer);
    objc_destroyWeak((int64_t *)&self->_imageView);
    objc_storeStrong((int64_t *)&self->_mediaErrorBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaIsLoadedAndVisibleBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdBase, 0x0);
    objc_storeStrong((int64_t *)&self->_videoRenderer, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
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

-(void *)videoRenderer {
    r0 = self->_videoRenderer;
    return r0;
}

-(bool)useAsIconView {
    r0 = *(int8_t *)(int64_t *)&self->_useAsIconView;
    return r0;
}

-(void)setUseAsIconView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useAsIconView = arg2;
    return;
}

-(void *)nativeAdBase {
    r0 = self->_nativeAdBase;
    return r0;
}

-(bool)needsDelayedLoad {
    r0 = *(int8_t *)(int64_t *)&self->_needsDelayedLoad;
    return r0;
}

-(void)setNeedsDelayedLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_needsDelayedLoad = arg2;
    return;
}

-(bool)hasLoadedMedia {
    r0 = *(int8_t *)(int64_t *)&self->_hasLoadedMedia;
    return r0;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(long long)lastAdViewabilityStatus {
    r0 = self->_lastAdViewabilityStatus;
    return r0;
}

-(void *)mediaIsLoadedAndVisibleBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediaIsLoadedAndVisibleBlock)), 0x0);
    return r0;
}

-(void)setMediaIsLoadedAndVisibleBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)mediaErrorBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediaErrorBlock)), 0x0);
    return r0;
}

-(void)setMediaErrorBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned long long)multiProductCellStyle {
    r0 = self->_multiProductCellStyle;
    return r0;
}

-(void)setMultiProductCellStyle:(unsigned long long)arg2 {
    self->_multiProductCellStyle = arg2;
    return;
}

-(void *)imageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_imageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_imageView, arg2);
    return;
}

-(void *)currentVideoRenderer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_currentVideoRenderer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCurrentVideoRenderer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_currentVideoRenderer, arg2);
    return;
}

-(void *)multiProductView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_multiProductView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setMultiProductView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_multiProductView, arg2);
    return;
}

-(void)setVideoFailedToLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoFailedToLoad = arg2;
    return;
}

-(bool)videoFailedToLoad {
    r0 = *(int8_t *)(int64_t *)&self->_videoFailedToLoad;
    return r0;
}

-(void *)commandProcessor {
    r0 = self->_commandProcessor;
    return r0;
}

-(void)setCommandProcessor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandProcessor, arg2);
    return;
}

-(double)loadedTime {
    r0 = self;
    return r0;
}

-(void)setLoadedTime:(double)arg2 {
    self->_loadedTime = d0;
    return;
}

-(void *)videoFullscreenController {
    r0 = self->_videoFullscreenController;
    return r0;
}

-(void)setVideoFullscreenController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoFullscreenController, arg2);
    return;
}

-(void *)nativeAd {
    r0 = self->_nativeAd;
    return r0;
}

@end