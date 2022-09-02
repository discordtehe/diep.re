@implementation CCDirector

+(void *)defaultDirector {
    r0 = [CCDirectorDisplayLink class];
    return r0;
}

-(void)setInterfaceOrientationDelegate:(void *)arg2 {
    return;
}

-(void *)touchDispatcher {
    return 0x0;
}

-(void)setTouchDispatcher:(void *)arg2 {
    return;
}

-(bool)getIsPaused {
    r0 = [self isPaused];
    return r0;
}

-(void)setDisplayFPS:(bool)arg2 {
    [self setDisplayStats:arg2];
    return;
}

-(void)setOpenGLView:(void *)arg2 {
    [self setView:arg2];
    return;
}

-(void *)openGLView {
    r0 = self->__view;
    return r0;
}

+(void *)sharedDirector {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *0x1011e2dc8;
    if (r0 == 0x0) {
            r21 = [CCDirector class];
            [r19 class];
            if ([r21 isEqual:r2] != 0x0) {
                    if ([[CCConfiguration sharedConfiguration] useMiniclipWindowManager] != 0x0) {
                            r19 = NSClassFromString(@"CCDirectorMiniclip");
                    }
                    else {
                            r19 = @class(CCDirectorDisplayLink);
                    }
            }
            r0 = [r19 alloc];
            r0 = [r0 init];
            *0x1011e2dc8 = r0;
    }
    return r0;
}

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r19->_runningScene = 0x0;
            r19->_nextScene = 0x0;
            r19->_notificationNode = 0x0;
            r19->_animationInterval = 0x3f91111111111111;
            r19->_oldAnimationInterval = 0x3f91111111111111;
            r19->_scenesStack = [[NSMutableArray alloc] initWithCapacity:0xa];
            *(int32_t *)(int64_t *)&r19->_projection = 0x1;
            r19->_delegate = 0x0;
            *(int8_t *)(int64_t *)&r19->_displayStats = 0x0;
            r19->_frames = 0x0;
            r19->_totalFrames = 0x0;
            *(int8_t *)(int64_t *)&r19->_isPaused = 0x0;
            r19->_runningThread = 0x0;
            r0 = [CCScheduler alloc];
            r0 = objc_msgSend(r0, r20);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_scheduler));
            *(r19 + r22) = r0;
            r0 = [CCActionManager alloc];
            r0 = objc_msgSend(r0, r20);
            r19->_actionManager = r0;
            [*(r19 + r22) scheduleUpdateForTarget:r0 priority:0xffffffff80000000 paused:0x0];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPoints));
            r9 = *_CGSizeZero;
            *(int128_t *)(r19 + r8) = *(int128_t *)r9;
            *(int128_t *)(int64_t *)&r19->_winSizeInPixels = *(int128_t *)r9;
            [CCResourcePackManager sharedInstance];
            r19->_forcedOrientation = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPoints));
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)setGLDefaultValues {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setAlphaBlending:0x1];
    if ([r19->__view depthFormat] != 0x0) {
    }
    [r19 setDepthTest:0x1];
    r2 = *(int32_t *)(int64_t *)&r19->_projection;
    r1 = @selector(setProjection:);
    glClearColor(objc_msgSend(r19, r1), r1, r2, r3);
    return;
}

-(void)dealloc {
    [self->_FPSLabel release];
    [self->_SPFLabel release];
    [self->_drawsLabel release];
    [self->_runningScene release];
    [self->_notificationNode release];
    [self->_scenesStack release];
    [self->_scheduler release];
    [self->_actionManager release];
    *0x1011e2dc8 = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(void)drawScene {
    return;
}

-(void)calculateDeltaTime {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = gettimeofday(&var_20, 0x0);
    if (r0 != 0x0) {
            r19->_dt = 0x0;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_nextDeltaTimeZero));
            if (*(int8_t *)(r19 + r8) != 0x0) {
                    r19->_dt = 0x0;
                    *(int8_t *)(r19 + r8) = 0x0;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastUpdate));
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastUpdate));
                    asm { scvtf      s0, x9 };
                    asm { scvtf      s1, w9 };
                    asm { fdiv       s1, s1, s2 };
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_dt));
                    if (s1 + s0 < 0x0) {
                            asm { fcsel      s0, s1, s0, ls };
                    }
                    asm { fcvt       d0, s0 };
                    *(r19 + r9) = d0;
            }
            *(int128_t *)(r19 + r8) = var_20;
    }
    return;
}

-(int)projection {
    r0 = *(int32_t *)(int64_t *)&self->_projection;
    return r0;
}

-(void)purgeCachedData {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    [CCLabelBMFont purgeCachedData];
    if ([*0x1011e2dc8 view] != 0x0) {
            [[CCTextureCache sharedTextureCache] removeUnusedTextures];
    }
    [[CCFileUtils sharedFileUtils] purgeCachedEntries];
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 useNewResourceManagement];
    if (r0 != 0x0) {
            loc_10042bcc4(r0);
            r29 = saved_fp;
            r30 = stack[-8];
            r31 = r31 + 0x10;
            sub_1004311b4(sub_10042f118());
    }
    return;
}

-(float)getZEye {
    r0 = self;
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       d1, s1 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s0, d0 };
    return r0;
}

-(void)setViewport {
    return;
}

-(void)setProjection:(int)arg2 {
    return;
}

-(void)setAlphaBlending:(bool)arg2 {
    r1 = _cmd;
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r1 = 0x0;
            }
            else {
                    r1 = 0x303;
            }
    }
    sub_10031a4a8(0x1, r1);
    return;
}

-(void)setDepthTest:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            glClearDepthf(r0);
            glEnable(0xb71);
            glDepthFunc(0x203);
    }
    else {
            glDisable(0xb71);
    }
    return;
}

-(void *)view {
    r0 = self->__view;
    return r0;
}

-(struct CGPoint)convertToGL:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(void)setView:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(__view));
    if (*(r0 + r21) != r2) {
            r19 = r0;
            [[&var_30 super] setView:r2];
            [*(r19 + r21) release];
            r0 = [r2 retain];
            *(r19 + r21) = r0;
            [r0 bounds];
            [r19 orientSize:r2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPoints));
            *(int128_t *)(r19 + r8) = d0;
            *(int128_t *)(0x8 + r19 + r8) = d1;
            *(int128_t *)(int64_t *)&r19->_winSizeInPixels = *(int128_t *)(r19 + r8);
            if (r2 != 0x0) {
                    if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                            sub_10038054c();
                    }
                    [r19 createStatsLabel];
                    [r19 setGLDefaultValues];
            }
            [[CCConfiguration sharedConfiguration] dumpInfo];
    }
    return;
}

-(struct CGPoint)convertToUI:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(struct CGSize)winSize {
    r0 = self;
    return r0;
}

-(struct CGSize)winSizeInPixels {
    r0 = self;
    return r0;
}

-(void)reshapeProjection:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self orientSize:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_winSizeInPoints));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    *(int128_t *)(int64_t *)&self->_winSizeInPixels = *(int128_t *)(self + r8);
    [self setProjection:r2];
    return;
}

-(struct CGSize)orientSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    v2 = v1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_forcedOrientation));
    r8 = *(r0 + r8);
    if (r8 != 0x1) {
            if (r8 == 0x2) {
                    asm { fccmp      d0, d2, #0x4, eq };
            }
            if (!CPU_FLAGS & G) {
                    v2 = v0;
            }
    }
    else {
            if (d0 >= d2) {
                    v2 = v0;
            }
    }
    return r0;
}

-(void)runWithScene:(void *)arg2 {
    [self pushScene:arg2];
    [self startAnimation];
    return;
}

-(void)replaceScene:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_scenesStack));
    r0 = *(self + r21);
    r0 = [r0 count];
    *(int8_t *)(int64_t *)&self->_sendCleanupToScene = 0x1;
    [*(self + r21) replaceObjectAtIndex:r0 - 0x1 withObject:arg2];
    self->_nextScene = arg2;
    return;
}

-(void)pushScene:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_sendCleanupToScene = 0x0;
    [self->_scenesStack addObject:r2];
    self->_nextScene = arg2;
    return;
}

-(void)popToRootScene {
    [self popToSceneStackLevel:0x1];
    return;
}

-(void)popScene {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_scenesStack));
    [*(self + r20) removeLastObject];
    r0 = *(r19 + r20);
    r0 = [r0 count];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_sendCleanupToScene = 0x1;
            r19->_nextScene = [*(r19 + r20) objectAtIndex:r2];
    }
    else {
            [r19 end];
    }
    return;
}

-(void)setNextScene {
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
    r21 = [CCTransitionScene class];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_runningScene));
    r20 = [*(r19 + r23) isKindOfClass:r21];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_nextScene));
    if (([*(r19 + r24) isKindOfClass:r21] & 0x1) == 0x0) {
            [*(r19 + r23) onExitTransitionDidStart];
            [*(r19 + r23) onExit];
            if (*(int8_t *)(int64_t *)&r19->_sendCleanupToScene != 0x0) {
                    [*(r19 + r23) cleanup];
            }
    }
    [*(r19 + r23) release];
    *(r19 + r23) = [*(r19 + r24) retain];
    *(r19 + r24) = 0x0;
    if ((r20 & 0x1) == 0x0) {
            [*(r19 + r23) onEnter];
            [*(r19 + r23) onEnterTransitionDidFinish];
    }
    return;
}

-(void)pause {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isPaused));
    if (*(int8_t *)(r0 + r21) == 0x0) {
            r0->_oldAnimationInterval = r0->_animationInterval;
            [r0 setAnimationInterval:r2];
            [r0 willChangeValueForKey:@"isPaused"];
            *(int8_t *)(r0 + r21) = 0x1;
            [r0 didChangeValueForKey:@"isPaused"];
    }
    return;
}

-(void)popToSceneStackLevel:(unsigned long long)arg2 {
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
    r20 = arg2;
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_scenesStack));
    r0 = *(self + r24);
    r0 = [r0 count];
    if (r20 != 0x0) {
            r21 = r0;
            if (r0 >= r20) {
                    r27 = [*(r19 + r24) lastObject];
                    do {
                            if ([r27 isRunning] != 0x0) {
                                    [r27 onExitTransitionDidStart];
                                    [r27 onExit];
                            }
                            [r27 cleanup];
                            [*(r19 + r24) removeLastObject];
                            r21 = r21 - 0x1;
                            r27 = [*(r19 + r24) lastObject];
                    } while (r21 > r20);
                    r19->_nextScene = r27;
                    *(int8_t *)(int64_t *)&r19->_sendCleanupToScene = 0x0;
            }
    }
    else {
            [r19 end];
    }
    return;
}

-(void)end {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_runningScene));
    [*(self + r21) onExitTransitionDidStart];
    [*(self + r21) onExit];
    [*(self + r21) cleanup];
    [*(self + r21) release];
    *(self + r21) = 0x0;
    self->_nextScene = 0x0;
    [self->_scenesStack removeAllObjects];
    [self stopAnimation];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_FPSLabel));
    [*(self + r21) release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_SPFLabel));
    [*(self + r22) release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_drawsLabel));
    [*(self + r23) release];
    *(self + r21) = 0x0;
    *(self + r22) = 0x0;
    *(self + r23) = 0x0;
    self->_delegate = 0x0;
    [self setView:0x0];
    [CCLabelBMFont purgeCachedData];
    sub_1002a189c();
    [CCAnimationCache purgeSharedAnimationCache];
    [CCSpriteFrameCache purgeSharedSpriteFrameCache];
    [CCTextureCache purgeSharedTextureCache];
    [CCShaderCache purgeSharedShaderCache];
    [[CCFileUtils sharedFileUtils] purgeCachedEntries];
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 useNewResourceManagement];
    if (r0 != 0x0) {
            loc_10042cd28(loc_10042bcc4(r0), @selector(useNewResourceManagement));
    }
    sub_10031a354();
    glGetError();
    return;
}

-(void)resume {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isPaused));
    if (*(int8_t *)(r0 + r21) != 0x0) {
            [r0 setAnimationInterval:r2];
            gettimeofday((int64_t *)&r0->_lastUpdate, 0x0);
            [r19 willChangeValueForKey:@"isPaused"];
            *(int8_t *)(r19 + r21) = 0x0;
            [r19 didChangeValueForKey:@"isPaused"];
            r19->_dt = 0x0;
    }
    return;
}

-(void)startAnimation {
    *(int8_t *)(int64_t *)&self->_nextDeltaTimeZero = 0x1;
    return;
}

-(void)stopAnimation {
    return;
}

-(void)setAnimationInterval:(double)arg2 {
    return;
}

-(void)showStats {
    r0 = self;
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
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_frames));
    *(r0 + r26) = *(r0 + r26) + 0x1;
    d0 = r0->_dt;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_accumDt));
    d0 = d0 + *(r0 + r27);
    *(r0 + r27) = d0;
    if (*(int8_t *)(int64_t *)&r0->_displayStats != 0x0) {
            r19 = r0;
            if (d0 > *0x100b9b7b0) {
                    [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8) alloc] initWithFormat:r2];
                    [r19->_SPFLabel setString:r2];
                    [r24 release];
                    d0 = *(r19 + r26);
                    asm { ucvtf      d0, d0 };
                    asm { fdiv       d0, d0, d1 };
                    *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_frameRate))) = d0;
                    *(r19 + r26) = 0x0;
                    *(r19 + r27) = 0x0;
                    objc_msgSend(objc_msgSend(*(r28 + 0xfa8), r20), r21);
                    objc_msgSend(r19->_FPSLabel, r22);
                    objc_msgSend(r24, r23);
                    objc_msgSend(objc_msgSend(*(r28 + 0xfa8), r20), r21);
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_drawsLabel));
                    objc_msgSend(*(r19 + r21), r22);
                    objc_msgSend(r20, r23);
            }
            else {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_drawsLabel));
            }
            [*(r19 + r21) visit];
            [r19->_FPSLabel visit];
            [r19->_SPFLabel visit];
    }
    *0x1011e2dd0 = 0x0;
    return;
}

-(void)calculateMPF {
    gettimeofday(&var_20, 0x0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lastUpdate));
    asm { scvtf      s0, x8 };
    asm { scvtf      s1, w8 };
    asm { fdiv       s1, s1, s2 };
    asm { fcvt       d0, s0 };
    r19->_secondsPerFrame = d0;
    return;
}

-(void)getFPSImageData:(char * *)arg2 length:(unsigned long long *)arg3 {
    *arg2 = 0x1011ac330;
    *arg3 = sub_10032602c();
    return;
}

-(double)animationInterval {
    r0 = self;
    return r0;
}

-(void *)runningScene {
    r0 = self->_runningScene;
    return r0;
}

-(void)createStatsLabel {
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
    r20 = [CCTextureCache sharedTextureCache];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_FPSLabel));
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_SPFLabel));
            if (*(r19 + r22) != 0x0) {
                    [r0 release];
                    [*(r19 + r22) release];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_drawsLabel));
                    [*(r19 + r23) release];
                    [r20 removeTextureForKey:@"cc_fps_images"];
                    *(r19 + r25) = 0x0;
                    *(r19 + r22) = 0x0;
                    *(r19 + r23) = 0x0;
                    [[CCFileUtils sharedFileUtils] purgeCachedEntries];
                    r0 = [CCConfiguration sharedConfiguration];
                    r0 = [r0 useNewResourceManagement];
                    if (r0 != 0x0) {
                            loc_10042cd28(loc_10042bcc4(r0), @selector(useNewResourceManagement));
                    }
            }
    }
    r21 = [CCTexture2D defaultAlphaPixelFormat];
    [CCTexture2D setDefaultAlphaPixelFormat:r2];
    if (sub_10032c03c() != 0x0) {
            sub_100326034();
            [NSData dataWithBytes:0x1011ad525 length:r3];
    }
    else {
            [r19 getFPSImageData:&var_58 length:&var_60];
            [NSData dataWithBytes:var_58 length:var_60];
    }
    r20 = [r20 addEncodedImage:r2 resolutionType:r3 textureScale:r4 name:r5];
    *(r19 + r25) = [[CCLabelAtlas alloc] initWithString:@"00.0" texture:r20 itemWidth:0xc itemHeight:0x20 startCharMap:0x2e];
    *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_SPFLabel))) = [[CCLabelAtlas alloc] initWithString:@"0.000" texture:r20 itemWidth:0xc itemHeight:0x20 startCharMap:0x2e];
    *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_drawsLabel))) = [[CCLabelAtlas alloc] initWithString:@"000" texture:r20 itemWidth:0xc itemHeight:0x20 startCharMap:0x2e];
    [CCTexture2D setDefaultAlphaPixelFormat:r2];
    [*(r19 + r20) setPosition:r21];
    [*(r19 + r27) setPosition:r21];
    [*(r19 + r25) setPosition:r21];
    return;
}

-(bool)displayStats {
    r0 = *(int8_t *)(int64_t *)&self->_displayStats;
    return r0;
}

-(void)setDisplayStats:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_displayStats = arg2;
    return;
}

-(bool)nextDeltaTimeZero {
    r0 = *(int8_t *)(int64_t *)&self->_nextDeltaTimeZero;
    return r0;
}

-(void)setNextDeltaTimeZero:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_nextDeltaTimeZero = arg2;
    return;
}

-(bool)isPaused {
    r0 = *(int8_t *)(int64_t *)&self->_isPaused;
    return r0;
}

-(bool)isAnimating {
    r0 = *(int8_t *)(int64_t *)&self->_isAnimating;
    return r0;
}

-(bool)sendCleanupToScene {
    r0 = *(int8_t *)(int64_t *)&self->_sendCleanupToScene;
    return r0;
}

-(void *)runningThread {
    r0 = self->_runningThread;
    return r0;
}

-(void *)notificationNode {
    r0 = self->_notificationNode;
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setNotificationNode:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setDelegate:(void *)arg2 {
    self->_delegate = arg2;
    return;
}

-(unsigned long long)totalFrames {
    r0 = self->_totalFrames;
    return r0;
}

-(double)secondsPerFrame {
    r0 = self;
    return r0;
}

-(void *)scheduler {
    r0 = self->_scheduler;
    return r0;
}

-(void)setScheduler:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)actionManager {
    r0 = self->_actionManager;
    return r0;
}

-(void)setActionManager:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(unsigned long long)forceOrientation {
    r0 = self->_forcedOrientation;
    return r0;
}

-(void)setForceOrientation:(unsigned long long)arg2 {
    self->_forcedOrientation = arg2;
    return;
}

@end