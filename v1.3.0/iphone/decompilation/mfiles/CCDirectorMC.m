@implementation CCDirectorMC

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
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
            r21 = [CCDirectorMC class];
            [r19 class];
            if ([r21 isEqual:r2] != 0x0) {
                    if ([[CCConfiguration sharedConfiguration] useMiniclipWindowManager] != 0x0) {
                            r19 = NSClassFromString(@"CCDirectorMiniclip");
                    }
                    else {
                            r19 = @class(CCDirectorMiniclip);
                    }
            }
            r0 = [r19 alloc];
            r0 = [r0 init];
            *0x1011e2dc8 = r0;
    }
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
            *(int128_t *)(r19 + 0x68) = 0x0;
            *(int128_t *)(r19 + 0x70) = 0x0;
            asm { dup        v0.2d, x8 };
            *(r19 + 0x78) = 0x0;
            *(int128_t *)(r19 + 0x8) = q0;
            *(r19 + 0x88) = [[NSMutableArray alloc] initWithCapacity:0xa];
            *(int32_t *)(r19 + 0xac) = 0x1;
            *(r19 + 0xb0) = 0x0;
            *(int8_t *)(r19 + 0x18) = 0x0;
            *(int8_t *)(r19 + 0x60) = 0x0;
            *(r19 + 0xd8) = 0x0;
            *(int128_t *)(r19 + 0x20) = 0x0;
            *(int128_t *)(r19 + 0x28) = 0x0;
            *(r19 + 0xe0) = objc_msgSend([CCScheduler alloc], r20);
            r0 = [CCActionManager alloc];
            r0 = objc_msgSend(r0, r20);
            *(r19 + 0xe8) = r0;
            [*(r19 + 0xe0) scheduleUpdateForTarget:r0 priority:0xffffffff80000000 paused:0x0];
            r8 = *_CGSizeZero;
            *(int128_t *)(r19 + 0xb8) = *(int128_t *)r8;
            *(int128_t *)(r19 + 0xc8) = *(int128_t *)r8;
            [CCResourcePackManager sharedInstance];
            *(r19 + 0xf8) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [*(self + 0x48) release];
    [*(self + 0x50) release];
    [*(self + 0x58) release];
    [*(self + 0x68) release];
    [*(self + 0x70) release];
    [*(self + 0x88) release];
    [*(self + 0xe0) release];
    [*(self + 0xe8) release];
    *0x1011e2dc8 = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(void)drawScene {
    return;
}

-(void)setGLDefaultValues {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setAlphaBlending:0x1];
    if ([*(r19 + 0xf0) depthFormat] != 0x0) {
    }
    [r19 setDepthTest:0x1];
    r2 = *(int32_t *)(r19 + 0xac);
    r1 = @selector(setProjection:);
    glClearColor(objc_msgSend(r19, r1), r1, r2, r3);
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
            *(r19 + 0xa0) = 0x0;
    }
    else {
            if (*(int8_t *)(r19 + 0xa8) != 0x0) {
                    *(r19 + 0xa0) = 0x0;
                    *(int8_t *)(r19 + 0xa8) = 0x0;
            }
            else {
                    asm { scvtf      s0, x8 };
                    asm { scvtf      s1, w8 };
                    asm { fdiv       s1, s1, s2 };
                    if (s1 + s0 < 0x0) {
                            asm { fcsel      s0, s1, s0, ls };
                    }
                    asm { fcvt       d0, s0 };
                    *(r19 + 0xa0) = d0;
            }
            *(int128_t *)(r19 + 0x90) = var_20;
    }
    return;
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
            loc_10042cd28(loc_10042bcc4(r0), @selector(useNewResourceManagement));
    }
    return;
}

-(int)projection {
    r0 = *(int32_t *)(self + 0xac);
    return r0;
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
    r0 = *(self + 0xf0);
    return r0;
}

-(void)setView:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0xf0);
    if (r0 != r2) {
            [r0 release];
            r0 = [r2 retain];
            *(r19 + 0xf0) = r0;
            [r0 bounds];
            [r19 orientSize:r2];
            *(int128_t *)(r19 + 0xb8) = d0;
            *(int128_t *)(r19 + 0xc0) = d1;
            *(int128_t *)(r19 + 0xc8) = *(int128_t *)(r19 + 0xb8);
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

-(struct CGPoint)convertToGL:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(struct CGPoint)convertToUI:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(struct CGSize)winSizeInPixels {
    r0 = self;
    return r0;
}

-(struct CGSize)winSize {
    r0 = self;
    return r0;
}

-(void)reshapeProjection:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self orientSize:r2];
    *(int128_t *)(self + 0xb8) = d0;
    *(int128_t *)(self + 0xc0) = d1;
    *(int128_t *)(self + 0xc8) = *(int128_t *)(self + 0xb8);
    [self setProjection:r2];
    return;
}

-(struct CGSize)orientSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    v2 = v1;
    r8 = *(r0 + 0xf8);
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
    r0 = *(self + 0x88);
    r0 = [r0 count];
    *(int8_t *)(self + 0x80) = 0x1;
    [*(self + 0x88) replaceObjectAtIndex:r0 - 0x1 withObject:arg2];
    *(self + 0x78) = arg2;
    return;
}

-(void)pushScene:(void *)arg2 {
    *(int8_t *)(self + 0x80) = 0x0;
    [*(self + 0x88) addObject:r2];
    *(self + 0x78) = arg2;
    return;
}

-(void)popScene {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x88) removeLastObject];
    r0 = *(r19 + 0x88);
    r0 = [r0 count];
    if (r0 != 0x0) {
            *(int8_t *)(r19 + 0x80) = 0x1;
            *(r19 + 0x78) = [*(r19 + 0x88) objectAtIndex:r2];
    }
    else {
            [r19 end];
    }
    return;
}

-(void)popToRootScene {
    [self popToSceneStackLevel:0x1];
    return;
}

-(void)popToSceneStackLevel:(unsigned long long)arg2 {
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
    r20 = arg2;
    r19 = self;
    r0 = *(self + 0x88);
    r0 = [r0 count];
    if (r20 != 0x0) {
            r21 = r0;
            if (r0 >= r20) {
                    r28 = [*(r19 + 0x88) lastObject];
                    do {
                            if ([r28 isRunning] != 0x0) {
                                    [r28 onExitTransitionDidStart];
                                    [r28 onExit];
                            }
                            [r28 cleanup];
                            [*(r19 + 0x88) removeLastObject];
                            r21 = r21 - 0x1;
                            r28 = [*(r19 + 0x88) lastObject];
                    } while (r21 > r20);
                    *(r19 + 0x78) = r28;
                    *(int8_t *)(r19 + 0x80) = 0x0;
            }
    }
    else {
            [r19 end];
    }
    return;
}

-(void)end {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [*(self + 0x68) onExitTransitionDidStart];
    [*(self + 0x68) onExit];
    [*(self + 0x68) cleanup];
    [*(self + 0x68) release];
    *(self + 0x68) = 0x0;
    *(self + 0x78) = 0x0;
    [*(self + 0x88) removeAllObjects];
    [self stopAnimation];
    [*(self + 0x48) release];
    [*(self + 0x50) release];
    [*(self + 0x58) release];
    *(self + 0xb0) = 0x0;
    *(int128_t *)(self + 0x50) = 0x0;
    *(int128_t *)(self + 0x58) = 0x0;
    *(self + 0x48) = 0x0;
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

-(void)setNextScene {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [CCTransitionScene class];
    r0 = *(r19 + 0x68);
    r22 = @selector(isKindOfClass:);
    r20 = objc_msgSend(r0, r22);
    if ((objc_msgSend(*(r19 + 0x78), r22) & 0x1) == 0x0) {
            [*(r19 + 0x68) onExitTransitionDidStart];
            [*(r19 + 0x68) onExit];
            if (*(int8_t *)(r19 + 0x80) != 0x0) {
                    [*(r19 + 0x68) cleanup];
            }
    }
    [*(r19 + 0x68) release];
    r0 = *(r19 + 0x78);
    r0 = [r0 retain];
    *(r19 + 0x68) = r0;
    *(r19 + 0x78) = 0x0;
    if ((r20 & 0x1) == 0x0) {
            [r0 onEnter];
            [*(r19 + 0x68) onEnterTransitionDidFinish];
    }
    return;
}

-(void)pause {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x60) == 0x0) {
            *(r0 + 0x10) = *(r0 + 0x8);
            [r0 setAnimationInterval:r2];
            [r0 willChangeValueForKey:@"isPaused"];
            *(int8_t *)(r0 + 0x60) = 0x1;
            [r0 didChangeValueForKey:@"isPaused"];
    }
    return;
}

-(void)resume {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x60) != 0x0) {
            [r0 setAnimationInterval:r2];
            gettimeofday(r0 + 0x90, 0x0);
            [r19 willChangeValueForKey:@"isPaused"];
            *(int8_t *)(r19 + 0x60) = 0x0;
            [r19 didChangeValueForKey:@"isPaused"];
            *(r19 + 0xa0) = 0x0;
    }
    return;
}

-(void)startAnimation {
    *(int8_t *)(self + 0xa8) = 0x1;
    return;
}

-(void)setAnimationInterval:(double)arg2 {
    return;
}

-(void)stopAnimation {
    return;
}

-(void)calculateMPF {
    gettimeofday(&var_20, 0x0);
    asm { scvtf      s0, x8 };
    asm { scvtf      s1, w8 };
    asm { fdiv       s1, s1, s2 };
    asm { fcvt       d0, s0 };
    *(r19 + 0x30) = d0;
    return;
}

-(void)showStats {
    r0 = self;
    r31 = r31 - 0x60;
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
    *(r0 + 0x20) = *(r0 + 0x20) + 0x1;
    d0 = *(r0 + 0xa0);
    d0 = d0 + *(r0 + 0x38);
    *(r0 + 0x38) = d0;
    if (*(int8_t *)(r0 + 0x18) != 0x0) {
            r19 = r0;
            if (d0 > *0x100b9b7b0) {
                    [[*(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8) alloc] initWithFormat:r2];
                    [*(r19 + 0x50) setString:r2];
                    [r24 release];
                    d0 = *(r19 + 0x20);
                    asm { ucvtf      d0, d0 };
                    asm { fdiv       d0, d0, d1 };
                    *(r19 + 0x40) = d0;
                    *(r19 + 0x20) = 0x0;
                    *(r19 + 0x38) = 0x0;
                    objc_msgSend(objc_msgSend(*(r26 + 0xfa8), r21), r20);
                    objc_msgSend(*(r19 + 0x48), r22);
                    objc_msgSend(r24, r23);
                    objc_msgSend(objc_msgSend(*(r26 + 0xfa8), r21), r20);
                    objc_msgSend(*(r19 + 0x58), r22);
                    objc_msgSend(r20, r23);
            }
            [*(r19 + 0x58) visit];
            objc_msgSend(*(r19 + 0x48), r20);
            objc_msgSend(*(r19 + 0x50), r20);
    }
    *0x1011e2dd0 = 0x0;
    return;
}

-(void)getFPSImageData:(char * *)arg2 length:(unsigned long long *)arg3 {
    *arg2 = 0x1011ac330;
    *arg3 = sub_10032602c();
    return;
}

-(void *)runningScene {
    r0 = *(self + 0x68);
    return r0;
}

-(double)animationInterval {
    r0 = self;
    return r0;
}

-(void)createStatsLabel {
    r31 = r31 - 0x60;
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
    r21 = [CCTextureCache sharedTextureCache];
    r22 = r19 + 0x48;
    r0 = *r22;
    if (r0 != 0x0 && *(r19 + 0x50) != 0x0) {
            [r0 release];
            [*(r19 + 0x50) release];
            [*(r19 + 0x58) release];
            [r21 removeTextureForKey:@"cc_fps_images"];
            *(int128_t *)r22 = 0x0;
            *(int128_t *)(r22 + 0x8) = 0x0;
            *(r22 + 0x10) = 0x0;
            [[CCFileUtils sharedFileUtils] purgeCachedEntries];
            r0 = [CCConfiguration sharedConfiguration];
            r0 = [r0 useNewResourceManagement];
            if (r0 != 0x0) {
                    loc_10042cd28(loc_10042bcc4(r0), @selector(useNewResourceManagement));
            }
    }
    r20 = [CCTexture2D defaultAlphaPixelFormat];
    [CCTexture2D setDefaultAlphaPixelFormat:r2];
    if (sub_10032c03c() != 0x0) {
            sub_100326034();
            [NSData dataWithBytes:0x1011ad525 length:r3];
    }
    else {
            [r19 getFPSImageData:&var_48 length:&var_50];
            [NSData dataWithBytes:var_48 length:var_50];
    }
    r21 = [r21 addEncodedImage:r2 resolutionType:r3 textureScale:r4 name:r5];
    *(r19 + 0x48) = [[CCLabelAtlas alloc] initWithString:@"00.0" texture:r21 itemWidth:0xc itemHeight:0x20 startCharMap:0x2e];
    *(r19 + 0x50) = [[CCLabelAtlas alloc] initWithString:@"0.000" texture:r21 itemWidth:0xc itemHeight:0x20 startCharMap:0x2e];
    *(r19 + 0x58) = [[CCLabelAtlas alloc] initWithString:@"000" texture:r21 itemWidth:0xc itemHeight:0x20 startCharMap:0x2e];
    [CCTexture2D setDefaultAlphaPixelFormat:r2];
    [*(r19 + 0x58) setPosition:r20];
    [*(r19 + 0x50) setPosition:r20];
    [*(r19 + 0x48) setPosition:r20];
    return;
}

-(bool)displayStats {
    r0 = *(int8_t *)(self + 0x18);
    return r0;
}

-(void)setDisplayStats:(bool)arg2 {
    *(int8_t *)(self + 0x18) = arg2;
    return;
}

-(bool)nextDeltaTimeZero {
    r0 = *(int8_t *)(self + 0xa8);
    return r0;
}

-(void)setNextDeltaTimeZero:(bool)arg2 {
    *(int8_t *)(self + 0xa8) = arg2;
    return;
}

-(bool)isPaused {
    r0 = *(int8_t *)(self + 0x60);
    return r0;
}

-(bool)sendCleanupToScene {
    r0 = *(int8_t *)(self + 0x80);
    return r0;
}

-(bool)isAnimating {
    r0 = *(int8_t *)(self + 0x61);
    return r0;
}

-(void *)runningThread {
    r0 = *(self + 0xd8);
    return r0;
}

-(void *)notificationNode {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setNotificationNode:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)delegate {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    *(self + 0xb0) = arg2;
    return;
}

-(unsigned long long)totalFrames {
    r0 = *(self + 0x28);
    return r0;
}

-(double)secondsPerFrame {
    r0 = self;
    return r0;
}

-(void *)scheduler {
    r0 = *(self + 0xe0);
    return r0;
}

-(void)setScheduler:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)actionManager {
    r0 = *(self + 0xe8);
    return r0;
}

-(void)setActionManager:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(unsigned long long)forceOrientation {
    r0 = *(self + 0xf8);
    return r0;
}

-(void)setForceOrientation:(unsigned long long)arg2 {
    *(self + 0xf8) = arg2;
    return;
}

@end