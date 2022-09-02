@implementation FRInterstitialContent

+(void *)objectWithDictionary:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[FRInterstitialContent alloc] initWithDictionary:r21 placement:0x0 delegate:0x0];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)objectWithDictionary:(void *)arg2 placement:(void *)arg3 delegate:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [[FRInterstitialContent alloc] initWithDictionary:r21 placement:r20 delegate:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)hasPortrait {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [self portraitFrameImage];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r23 portraitFrameImage];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 image];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r23 portraitCreativeImage];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r23 portraitCreativeImage];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 image];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    r0 = [r23 closeButtonImage];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    if (r27 != 0x0) {
                                            r0 = [r23 closeButtonImage];
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            r0 = [r0 image];
                                            r0 = [r0 retain];
                                            if (r0 != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r23 = 0x1;
                                                    }
                                            }
                                            [r0 release];
                                            [r28 release];
                                            [r27 release];
                                    }
                                    else {
                                            r23 = 0x0;
                                    }
                                    [r26 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r25 release];
                            [r22 release];
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r21 release];
            }
            else {
                    r23 = 0x0;
            }
            [r20 release];
    }
    else {
            r23 = 0x0;
    }
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)mayHavePortrait {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self portraitFrameImage];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 portraitCreativeImage];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 closeButtonImage];
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)hasLandscape {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [self landscapeFrameImage];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r23 landscapeFrameImage];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 image];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r23 landscapeCreativeImage];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r23 landscapeCreativeImage];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 image];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    r0 = [r23 closeButtonImage];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    if (r27 != 0x0) {
                                            r0 = [r23 closeButtonImage];
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            r0 = [r0 image];
                                            r0 = [r0 retain];
                                            if (r0 != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r23 = 0x1;
                                                    }
                                            }
                                            [r0 release];
                                            [r28 release];
                                            [r27 release];
                                    }
                                    else {
                                            r23 = 0x0;
                                    }
                                    [r26 release];
                            }
                            else {
                                    r23 = 0x0;
                            }
                            [r25 release];
                            [r22 release];
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r21 release];
            }
            else {
                    r23 = 0x0;
            }
            [r20 release];
    }
    else {
            r23 = 0x0;
    }
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)mayHaveLandscape {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self landscapeFrameImage];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 landscapeCreativeImage];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 closeButtonImage];
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)hasContent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self mayHavePortrait];
    r20 = [self mayHaveLandscape];
    r22 = [self hasPortrait];
    r0 = [self hasLandscape];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r9 = 0x0;
            }
            else {
                    r9 = 0x2;
            }
    }
    r9 = r9 | r22;
    if (r9 != 0x0) {
            r8 = 0x2;
            if (r20 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x0;
                    }
                    else {
                            r8 = 0x2;
                    }
            }
            if ((r8 | r19) == r9) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)didExpired {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self expireAt];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[r21 expireAt] retain];
            r0 = [NSNull null];
            r29 = r29;
            r23 = [r0 retain];
            if (r20 != r23) {
                    r0 = [r21 expireAt];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 timeIntervalSinceNow];
                    if (d0 < 0x0) {
                            if (CPU_FLAGS & S) {
                                    r21 = 0x1;
                            }
                    }
                    [r22 release];
            }
            else {
                    r21 = 0x0;
            }
            [r23 release];
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)didLoadRemoteImageWithURL:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self hasContent] != 0x0 && ([r19 delegateGotReady] & 0x1) == 0x0) {
            r0 = [r19 _delegate];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    dispatch_async(*__dispatch_main_q, &var_38);
            }
    }
    return;
}

-(void)show {
    r0 = [FRInterstitialContentView sharedInstance];
    r0 = [r0 retain];
    [r0 showContent:self];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void)dismiss {
    r0 = [FRInterstitialContentView sharedInstance];
    r0 = [r0 retain];
    [r0 dismissContent:self];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r2];
    [r20 release];
    return;
}

-(void)orientationDidChange:(void *)arg2 {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)closeButtonImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_closeButtonImage)), 0x1);
    return r0;
}

-(void)setCloseButtonImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(struct CGPoint)closeButtonOffset {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->_closeButtonOffset, 0x10, 0x1, 0x0);
    return r0;
}

-(void)setCloseButtonOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_closeButtonOffset, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(void *)noMoreTodayButtonImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_noMoreTodayButtonImage)), 0x1);
    return r0;
}

-(void)setNoMoreTodayButtonImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(struct CGPoint)noMoreTodayButtonLandscapeOffset {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->_noMoreTodayButtonLandscapeOffset, 0x10, 0x1, 0x0);
    return r0;
}

-(void)setNoMoreTodayButtonLandscapeOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_noMoreTodayButtonLandscapeOffset, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(struct CGPoint)noMoreTodayButtonPortraitOffset {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->_noMoreTodayButtonPortraitOffset, 0x10, 0x1, 0x0);
    return r0;
}

-(void)setNoMoreTodayButtonPortraitOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_noMoreTodayButtonPortraitOffset, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(void *)portraitFrameImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_portraitFrameImage)), 0x1);
    return r0;
}

-(void)setPortraitFrameImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)landscapeFrameImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_landscapeFrameImage)), 0x1);
    return r0;
}

-(void)setLandscapeFrameImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)portraitCreativeImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_portraitCreativeImage)), 0x1);
    return r0;
}

-(void)setPortraitCreativeImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)landscapeCreativeImage {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_landscapeCreativeImage)), 0x1);
    return r0;
}

-(void)setLandscapeCreativeImage:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)portraitCreativeClickAreaMappings {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_portraitCreativeClickAreaMappings)), 0x1);
    return r0;
}

-(void *)landscapeCreativeClickAreaMappings {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_landscapeCreativeClickAreaMappings)), 0x1);
    return r0;
}

-(void)setPortraitCreativeClickAreaMappings:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setLandscapeCreativeClickAreaMappings:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)expireAt {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_expireAt)), 0x1);
    return r0;
}

-(void)setExpireAt:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)delegateGotReady {
    r0 = *(int8_t *)(int64_t *)&self->_delegateGotReady & 0x1;
    return r0;
}

-(void)setDelegateGotReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_delegateGotReady = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_expireAt, 0x0);
    objc_storeStrong((int64_t *)&self->_landscapeCreativeClickAreaMappings, 0x0);
    objc_storeStrong((int64_t *)&self->_portraitCreativeClickAreaMappings, 0x0);
    objc_storeStrong((int64_t *)&self->_landscapeCreativeImage, 0x0);
    objc_storeStrong((int64_t *)&self->_portraitCreativeImage, 0x0);
    objc_storeStrong((int64_t *)&self->_landscapeFrameImage, 0x0);
    objc_storeStrong((int64_t *)&self->_portraitFrameImage, 0x0);
    objc_storeStrong((int64_t *)&self->_noMoreTodayButtonImage, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButtonImage, 0x0);
    return;
}

-(void *)initWithDictionary:(void *)arg2 placement:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x100;
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
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r28 = [arg4 retain];
    r0 = [[&saved_fp - 0x70 super] init];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = r0;
    [r0 release];
    if (r27 == 0x0) goto loc_1009231e4;

loc_100921204:
    var_D8 = r24;
    [r27 setPlacement:r24];
    [r27 set_delegate:r28];
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    var_D0 = r28;
    var_C8 = r27;
    if (r20 == 0x0) goto loc_100921a90;

loc_100921260:
    r21 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r21 == r0) goto loc_100921a90;

loc_1009212c0:
    r0 = [r19 valueForKey:r2];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r27 = [[r24 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r28 = [r0 retain];
            if (r27 != r28) {
                    r0 = [r24 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [NSString class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r0 = [r24 valueForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 length];
                            [r0 release];
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            if (r25 != 0x0) {
                                    r21 = [[r24 valueForKey:r2] retain];
                                    r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r27 setCloseButtonImage:r20];
                                    [r20 release];
                                    [r21 release];
                            }
                    }
                    else {
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            r21 = [[r24 valueForKey:r2] retain];
                            r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r27 setCloseButtonImage:r20];
                            [r20 release];
                            [r21 release];
                    }
            }
            else {
                    [r27 release];
                    [r27 release];
                    [r26 release];
                    r27 = var_C8;
            }
    }
    r0 = [r24 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1009216ec;

loc_1009214cc:
    r21 = [[r24 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r21 == r0) goto loc_1009216ec;

loc_100921524:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1009216e0;

loc_100921564:
    r28 = [[r26 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r20 = [r0 retain];
    if (r28 == r20) goto loc_1009216c0;

loc_1009215a8:
    r0 = [r26 valueForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1009216c8;

loc_1009215cc:
    r22 = [[r26 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r27 release];
    if (r22 == r0) goto loc_1009216e0;

loc_10092163c:
    r0 = [r26 valueForKey:r2];
    r0 = [r0 retain];
    [r0 floatValue];
    asm { fcvt       d8, s0 };
    r0 = objc_msgSend(r26, r23);
    r29 = r29;
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    asm { fcvt       d1, s0 };
    v0 = v8;
    [var_C8 setCloseButtonOffset:r2];
    [r25 release];
    r0 = r20;
    goto loc_1009216dc;

loc_1009216dc:
    [r0 release];
    goto loc_1009216e0;

loc_1009216e0:
    [r26 release];
    r27 = var_C8;
    goto loc_1009216ec;

loc_1009216ec:
    r0 = [r24 valueForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r27 = [[r24 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r28 = [r0 retain];
            if (r27 != r28) {
                    r0 = [r24 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [NSString class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r0 = [r24 valueForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 length];
                            [r0 release];
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            if (r25 != 0x0) {
                                    r21 = [[r24 valueForKey:r2] retain];
                                    r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r27 setPortraitFrameImage:r20];
                                    [r20 release];
                                    [r21 release];
                            }
                    }
                    else {
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            r21 = [[r24 valueForKey:r2] retain];
                            r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r27 setPortraitFrameImage:r20];
                            [r20 release];
                            [r21 release];
                    }
            }
            else {
                    [r27 release];
                    [r27 release];
                    [r26 release];
                    r27 = var_C8;
            }
    }
    r0 = [r24 valueForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r27 = [[r24 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r25 = [r0 retain];
            if (r27 != r25) {
                    r0 = [r24 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [NSString class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r0 = [r24 valueForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = [r0 length];
                            [r0 release];
                            [r20 release];
                            [r25 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            if (r28 != 0x0) {
                                    r21 = [[r24 valueForKey:r2] retain];
                                    r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r27 setLandscapeFrameImage:r20];
                                    [r20 release];
                                    [r21 release];
                            }
                    }
                    else {
                            [r20 release];
                            [r25 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            r21 = [[r24 valueForKey:r2] retain];
                            r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r27 setLandscapeFrameImage:r20];
                            [r20 release];
                            [r21 release];
                    }
            }
            else {
                    [r27 release];
                    [r27 release];
                    [r26 release];
                    r27 = var_C8;
            }
    }
    [r24 release];
    r28 = var_D0;
    goto loc_100921a90;

loc_100921a90:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1009223e8;

loc_100921ab4:
    r21 = [[r19 valueForKey:r2] retain];
    r22 = @selector(null);
    r0 = objc_msgSend(@class(NSNull), r22);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r21 == r0) goto loc_1009223e8;

loc_100921b14:
    r0 = [r19 valueForKey:r2];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r22 = @selector(null);
            r27 = [[r24 valueForKey:r2] retain];
            r0 = objc_msgSend(@class(NSNull), r22);
            r29 = r29;
            r28 = [r0 retain];
            if (r27 != r28) {
                    r0 = [r24 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [NSString class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r0 = [r24 valueForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 length];
                            [r0 release];
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            if (r25 != 0x0) {
                                    r21 = [[r24 valueForKey:r2] retain];
                                    r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r27 setNoMoreTodayButtonImage:r20];
                                    [r20 release];
                                    [r21 release];
                            }
                    }
                    else {
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            [r26 release];
                            r27 = var_C8;
                            r21 = [[r24 valueForKey:r2] retain];
                            r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r27 setNoMoreTodayButtonImage:r20];
                            [r20 release];
                            [r21 release];
                    }
            }
            else {
                    [r27 release];
                    [r27 release];
                    [r26 release];
                    r27 = var_C8;
            }
    }
    r0 = [r24 valueForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_100922048;

loc_100921d20:
    r22 = @selector(null);
    r27 = [[r24 valueForKey:r2] retain];
    r0 = objc_msgSend(@class(NSNull), r22);
    r29 = r29;
    r28 = [r0 retain];
    if (r27 == r28) goto loc_10092201c;

loc_100921d64:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100922024;

loc_100921da4:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 valueForKey:r2];
    r0 = [r0 retain];
    var_E0 = r24;
    r24 = r0;
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    var_E8 = @selector(null);
    [r0 release];
    [r24 release];
    [r25 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r27 release];
    [r26 release];
    COND = r24 == r0;
    r22 = var_E8;
    r24 = var_E0;
    r27 = var_C8;
    if (COND) goto loc_100922048;

loc_100921e50:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    r26 = [[r0 valueForKey:r2] retain];
    [r0 release];
    r0 = [r26 valueForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_10092203c;

loc_100921eb8:
    r28 = [[r26 valueForKey:r2] retain];
    r0 = objc_msgSend(@class(NSNull), r22);
    r29 = r29;
    r20 = [r0 retain];
    if (r28 == r20) goto loc_1009223a8;

loc_100921efc:
    r0 = [r26 valueForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100922024;

loc_100921f20:
    r22 = [[r26 valueForKey:r2] retain];
    r0 = objc_msgSend(@class(NSNull), var_E8);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r27 release];
    COND = r22 == r0;
    r22 = var_E8;
    r24 = var_E0;
    if (COND) goto loc_10092203c;

loc_100921f94:
    r0 = [r26 valueForKey:r2];
    r0 = [r0 retain];
    [r0 floatValue];
    asm { fcvt       d8, s0 };
    r0 = objc_msgSend(r26, r23);
    r29 = r29;
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    asm { fcvt       d1, s0 };
    v0 = v8;
    [var_C8 setNoMoreTodayButtonPortraitOffset:r2];
    r0 = r22;
    r22 = var_E8;
    [r0 release];
    r0 = r20;
    goto loc_100922038;

loc_100922038:
    [r0 release];
    goto loc_10092203c;

loc_10092203c:
    [r26 release];
    r27 = var_C8;
    goto loc_100922048;

loc_100922048:
    r0 = [r24 valueForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    r28 = var_D0;
    if (r26 == 0x0) goto loc_1009223e0;

loc_100922070:
    r27 = [[r24 valueForKey:r2] retain];
    r0 = objc_msgSend(@class(NSNull), r22);
    r29 = r29;
    r28 = [r0 retain];
    if (r27 == r28) goto loc_100922378;

loc_1009220b4:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100922380;

loc_1009220f4:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    var_E8 = r20;
    r20 = r22;
    r22 = r0;
    r0 = [r0 valueForKey:r2];
    r0 = [r0 retain];
    var_E0 = r24;
    r24 = r0;
    r0 = objc_msgSend(@class(NSNull), r20);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 release];
    [r24 release];
    r0 = r22;
    r22 = r20;
    [r0 release];
    [r21 release];
    [var_E8 release];
    [r28 release];
    [r27 release];
    [r26 release];
    COND = r24 == r25;
    r24 = var_E0;
    r28 = var_D0;
    r27 = var_C8;
    if (COND) goto loc_1009223e0;

loc_1009221a8:
    r0 = [r24 valueForKey:r2];
    r0 = [r0 retain];
    r26 = [[r0 valueForKey:r2] retain];
    [r0 release];
    r0 = [r26 valueForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1009223d4;

loc_100922210:
    r28 = [[r26 valueForKey:r2] retain];
    r0 = objc_msgSend(@class(NSNull), r22);
    r29 = r29;
    r20 = [r0 retain];
    if (r28 == r20) goto loc_1009223b0;

loc_100922254:
    r0 = [r26 valueForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1009223b8;

loc_100922278:
    r0 = [r26 valueForKey:r2];
    r0 = [r0 retain];
    r1 = r22;
    r22 = r0;
    r0 = objc_msgSend(@class(NSNull), r1);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r27 release];
    r24 = var_E0;
    r28 = var_D0;
    if (r22 != r0) {
            r0 = [r26 valueForKey:r2];
            r0 = [r0 retain];
            [r0 floatValue];
            asm { fcvt       d8, s0 };
            r0 = objc_msgSend(r26, r23);
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            asm { fcvt       d1, s0 };
            v0 = v8;
            [var_C8 setNoMoreTodayButtonLandscapeOffset:r2];
            [r22 release];
            [r20 release];
    }
    goto loc_1009223d4;

loc_1009223d4:
    [r26 release];
    goto loc_1009223dc;

loc_1009223dc:
    r27 = var_C8;
    goto loc_1009223e0;

loc_1009223e0:
    [r24 release];
    goto loc_1009223e8;

loc_1009223e8:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r21 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 valueForKey:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    if (r26 != 0x0) {
                            r27 = [[r24 valueForKey:r2] retain];
                            r0 = [NSNull null];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r27 != r20) {
                                    r0 = [r24 valueForKey:r2];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [NSString class];
                                    if ([r21 isKindOfClass:r2] != 0x0) {
                                            r0 = [r24 valueForKey:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r28 = [r0 length];
                                            [r0 release];
                                            [r21 release];
                                            [r20 release];
                                            [r27 release];
                                            [r26 release];
                                            r27 = var_C8;
                                            if (r28 != 0x0) {
                                                    r21 = [[r24 valueForKey:r2] retain];
                                                    r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                                    r29 = r29;
                                                    r20 = [r0 retain];
                                                    [r27 setPortraitCreativeImage:r20];
                                                    [r20 release];
                                                    [r21 release];
                                            }
                                    }
                                    else {
                                            [r21 release];
                                            [r20 release];
                                            [r27 release];
                                            [r26 release];
                                            r27 = var_C8;
                                            r21 = [[r24 valueForKey:r2] retain];
                                            r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            [r27 setPortraitCreativeImage:r20];
                                            [r20 release];
                                            [r21 release];
                                    }
                            }
                            else {
                                    [r27 release];
                                    [r27 release];
                                    [r26 release];
                                    r27 = var_C8;
                            }
                    }
                    r0 = [r24 valueForKey:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    r28 = var_D0;
                    if (r26 != 0x0) {
                            r27 = [[r24 valueForKey:r2] retain];
                            r0 = [NSNull null];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r27 != r20) {
                                    r0 = [r24 valueForKey:r2];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [NSString class];
                                    if ([r21 isKindOfClass:r2] != 0x0) {
                                            r0 = [r24 valueForKey:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = [r0 length];
                                            [r0 release];
                                            [r21 release];
                                            [r20 release];
                                            [r27 release];
                                            [r26 release];
                                            r27 = var_C8;
                                            if (r25 != 0x0) {
                                                    r21 = [[r24 valueForKey:r2] retain];
                                                    r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                                    r29 = r29;
                                                    r20 = [r0 retain];
                                                    [r27 setLandscapeCreativeImage:r20];
                                                    [r20 release];
                                                    [r21 release];
                                            }
                                    }
                                    else {
                                            [r21 release];
                                            [r20 release];
                                            [r27 release];
                                            [r26 release];
                                            r27 = var_C8;
                                            r21 = [[r24 valueForKey:r2] retain];
                                            r0 = [FRRemoteImage objectWithRemoteUrl:r21 withDelegate:r27];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            [r27 setLandscapeCreativeImage:r20];
                                            [r20 release];
                                            [r21 release];
                                    }
                            }
                            else {
                                    [r27 release];
                                    [r27 release];
                                    [r26 release];
                                    r27 = var_C8;
                            }
                    }
                    [r24 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100922900;

loc_100922850:
    r21 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r21 == r0) goto loc_100922900;

loc_1009228ac:
    r21 = [[r19 valueForKey:r2] retain];
    r0 = [FRRewardRequest objectWithDictionary:r21];
    r29 = r29;
    r20 = [r0 retain];
    r1 = @selector(setRewardRequest:);
    goto loc_1009229d0;

loc_1009229d0:
    objc_msgSend(r27, r1);
    [r20 release];
    [r21 release];
    goto loc_1009229ec;

loc_1009229ec:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_100922b78;

loc_100922a10:
    r25 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r20 = [r0 retain];
    if (r25 == r20) goto loc_100922b04;

loc_100922a58:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    [NSString class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_100922b1c;

loc_100922aa4:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 length];
    [r0 release];
    [r21 release];
    [r20 release];
    [r25 release];
    [r24 release];
    if (r26 != 0x0) goto loc_100922b3c;

loc_100922b78:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r21 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r27 setMeta:r20];
                    [r20 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    r24 = var_D8;
    if (r20 != 0x0) {
            r21 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r21 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r0 = [NSDate dateWithTimeIntervalSinceNow:@"ttl"];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r27 setExpireAt:r20];
                    [r20 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r21 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r27 setAdContent:r20];
                    [r20 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r21 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r27 setRedirectURL:r20];
                    [r20 release];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [[r19 valueForKey:r2] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r20 release];
            if (r21 != r0) {
                    r0 = [r19 valueForKey:r2];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            r21 = [[r24 valueForKey:r2] retain];
                            r0 = @class(NSNull);
                            r0 = [r0 null];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r21 release];
                            [r20 release];
                            if (r21 != r0) {
                                    r0 = [r24 valueForKey:r2];
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [r27 setPortraitCreativeClickAreaMappings:r21];
                                    [r21 release];
                                    var_78 = [r27 retain];
                                    [r20 enumerateObjectsUsingBlock:&var_98];
                                    [var_78 release];
                                    [r20 release];
                            }
                    }
                    r0 = [r24 valueForKey:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            r21 = [[r24 valueForKey:r2] retain];
                            r0 = @class(NSNull);
                            r0 = [r0 null];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r21 release];
                            [r20 release];
                            if (r21 != r0) {
                                    r0 = [r24 valueForKey:r2];
                                    r0 = [r0 retain];
                                    r21 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
                                    [r27 setLandscapeCreativeClickAreaMappings:r21];
                                    [r21 release];
                                    var_A0 = [r27 retain];
                                    [r0 enumerateObjectsUsingBlock:&var_C0];
                                    [var_A0 release];
                                    [r0 release];
                            }
                    }
                    [r24 release];
                    r24 = var_D8;
            }
    }
    goto loc_1009231e4;

loc_1009231e4:
    r20 = [r27 retain];
    [r28 release];
    [r24 release];
    [r19 release];
    [r20 release];
    r0 = r20;
    return r0;

loc_100922b3c:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    [r27 setUrl:r20];
    r0 = r20;
    goto loc_100922b74;

loc_100922b74:
    [r0 release];
    goto loc_100922b78;

loc_100922b1c:
    [r21 release];
    [r20 release];
    [r25 release];
    [r24 release];
    goto loc_100922b3c;

loc_100922b04:
    [r25 release];
    [r25 release];
    r0 = r24;
    goto loc_100922b74;

loc_100922900:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1009229ec;

loc_100922924:
    r21 = [[r19 valueForKey:r2] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r21 == r0) goto loc_1009229ec;

loc_100922980:
    r21 = [[r19 valueForKey:r2] retain];
    r0 = [FRPurchaseRequest objectWithDictionary:r21];
    r29 = r29;
    r20 = [r0 retain];
    r1 = @selector(setPurchaseRequest:);
    goto loc_1009229d0;

loc_1009223b8:
    r0 = r20;
    goto loc_1009223bc;

loc_1009223bc:
    [r0 release];
    [r28 release];
    [r27 release];
    r28 = var_D0;
    goto loc_1009223d4;

loc_1009223b0:
    r0 = r28;
    goto loc_1009223bc;

loc_100922380:
    [r20 release];
    r0 = r28;
    goto loc_10092238c;

loc_10092238c:
    [r0 release];
    [r27 release];
    [r26 release];
    r28 = var_D0;
    goto loc_1009223dc;

loc_100922378:
    r0 = r27;
    goto loc_10092238c;

loc_100922024:
    r0 = r20;
    goto loc_100922028;

loc_100922028:
    [r0 release];
    r0 = r28;
    goto loc_100922030;

loc_100922030:
    [r0 release];
    r0 = r27;
    goto loc_100922038;

loc_1009223a8:
    r0 = r28;
    goto loc_100922028;

loc_10092201c:
    r0 = r27;
    goto loc_100922030;

loc_1009216c8:
    r0 = r20;
    goto loc_1009216cc;

loc_1009216cc:
    [r0 release];
    [r28 release];
    r0 = r27;
    goto loc_1009216dc;

loc_1009216c0:
    r0 = r28;
    goto loc_1009216cc;
}

@end