@implementation FBAdVideoLogger

-(void *)initWithTargetView:(void *)arg2 inlineClientToken:(void *)arg3 targetVolumeBlock:(void *)arg4 autoplay:(bool)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [self initWithTargetView:r23 inlineClientToken:r21 viewableImpressionBlock:0x0 targetVolumeBlock:arg4 autoplay:arg5 cardIndex:0x0 cardCount:0x0];
    [r21 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void)setTargetView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_targetView, arg2);
    r19 = [arg2 retain];
    r0 = [self adQualityManager];
    r0 = [r0 retain];
    [r0 setTargetView:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void *)initWithTargetView:(void *)arg2 inlineClientToken:(void *)arg3 viewableImpressionBlock:(void *)arg4 targetVolumeBlock:(void *)arg5 autoplay:(bool)arg6 cardIndex:(void *)arg7 cardCount:(void *)arg8 {
    r31 = r31 - 0x90;
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
    r25 = arg7;
    var_74 = arg6;
    r23 = arg3;
    r28 = arg2;
    r21 = self;
    r24 = arg8;
    r19 = [arg2 retain];
    r20 = [r23 retain];
    var_68 = [arg4 retain];
    r22 = [arg5 retain];
    var_70 = [r25 retain];
    r26 = [r24 retain];
    r27 = 0x0;
    if (r19 != 0x0) {
            r27 = 0x0;
            if (r20 != 0x0) {
                    r0 = [[&var_60 super] init];
                    r27 = r0;
                    if (r0 != 0x0) {
                            *(int8_t *)(int64_t *)&r27->_autoplay = var_74;
                            objc_storeStrong((int64_t *)&r27->_inlineClientToken, r23);
                            objc_storeStrong((int64_t *)&r27->_targetView, r28);
                            r0 = objc_retainBlock(r22);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_targetVolumeBlock));
                            r8 = *(r27 + r9);
                            *(r27 + r9) = r0;
                            [r8 release];
                            r0 = objc_retainBlock(var_68);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_viewableImpressionBlock));
                            r8 = *(r27 + r9);
                            *(r27 + r9) = r0;
                            [r8 release];
                            objc_storeStrong((int64_t *)&r27->_cardIndex, r25);
                            objc_storeStrong((int64_t *)&r27->_cardCount, r24);
                            [r27 initializeWithTargetView:r19];
                    }
                    r0 = [r27 retain];
                    r21 = r0;
                    r27 = r0;
            }
    }
    [r26 release];
    [var_70 release];
    [r22 release];
    [var_68 release];
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r27;
    return r0;
}

-(void)initializeWithTargetView:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r21 = self;
    r20 = [arg2 retain];
    r21->_lastProgressBoundaryTime = 0x0;
    r21->_lastProgressCurrentTime = 0x0;
    objc_initWeak(&stack[-120], r21);
    r19 = &var_90 + 0x20;
    objc_copyWeak(r19, &stack[-120]);
    r23 = [[r22 mrcRuleWithEndCallback:&var_90] retain];
    r22 = &var_B8 + 0x20;
    objc_copyWeak(r22, &stack[-120]);
    r0 = [r24 viewableImpressionRuleWithEndCallback:&var_B8];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r25 = [NSMutableArray new];
    if (r23 != 0x0) {
            [r25 addObject:r2];
    }
    if (r24 != 0x0) {
            [r25 addObject:r2];
    }
    r0 = [FBAdQualityManager managerWithTargetView:r20 rules:r25];
    r26 = r0;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_adQualityManager, r26);
    }
    [r27 release];
    [r25 release];
    [r24 release];
    objc_destroyWeak(r22);
    [r23 release];
    objc_destroyWeak(r19);
    objc_destroyWeak(&stack[-120]);
    [r20 release];
    return;
}

-(void)registerComplete:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self registerProgress:&var_40 forceLog:0x1];
    [self flush:&var_60 isContinuous:0x1];
    r21 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
    r22 = [[self inlineClientToken] retain];
    r0 = [self extraDataForVideoFunnelLogging:&var_80];
    r19 = [r0 retain];
    [r21 logUXFunnelEventOfSubtype:@"video_completed" withToken:r22 withExtraData:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)registerPause:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self registerProgress:&var_40 forceLog:0x1];
    [self logVideoEventForAction:0x4];
    [self flush:&var_60 isContinuous:0x1];
    r21 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
    r22 = [[self inlineClientToken] retain];
    r0 = [self extraDataForVideoFunnelLogging:&var_80];
    r19 = [r0 retain];
    [r21 logUXFunnelEventOfSubtype:@"video_paused" withToken:r22 withExtraData:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)registerProgress:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r19 = self;
    [self registerProgress:&var_40 forceLog:0x0];
    if (([r19 hasLoggedIABImpression] & 0x1) == 0x0) {
            [r19 setHasLoggedIABImpression:0x1];
            [r19 logVideoEventForAction:0x10];
            r21 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
            r22 = [[r19 inlineClientToken] retain];
            r0 = [r19 extraDataForVideoFunnelLogging:&var_60];
            r19 = [r0 retain];
            [r21 logUXFunnelEventOfSubtype:@"video_started" withToken:r22 withExtraData:r19];
            [r19 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)registerSeekEnd:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setSeeking:0x0];
    [self flush:&var_30 isContinuous:0x0];
    return;
}

-(void)registerResume:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r19 = self;
    sub_100a3e4dc(&var_50);
    v8 = v0;
    [r19 lastProgressCurrentTime];
    if (d8 != d0 && !CPU_FLAGS & O) {
            [r19 flush:&var_70 isContinuous:0x0];
    }
    [r19 setLastProgressBoundaryTime:r2];
    [r19 setLastProgressCurrentTime:r2];
    [r19 logVideoEventForAction:0x5];
    r21 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
    r22 = [[r19 inlineClientToken] retain];
    r0 = [r19 extraDataForVideoFunnelLogging:&var_90];
    r19 = [r0 retain];
    [r21 logUXFunnelEventOfSubtype:@"video_play" withToken:r22 withExtraData:r19];
    [r19 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)registerStop:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self registerProgress:&var_20 forceLog:0x1];
    return;
}

-(void)registerSkip:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self registerProgress:&var_30 forceLog:0x1];
    [self logVideoEventForAction:0x1];
    return;
}

-(void)registerSeekStart:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self registerProgress:&var_30 forceLog:0x1];
    [self setSeeking:0x1];
    return;
}

-(void)flush:(union ?)arg2 isContinuous:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    sub_100a3e4dc(&var_50);
    v8 = v0;
    r0 = [r20 adQualityManager];
    r0 = [r0 retain];
    r21 = r0;
    r8 = &@selector(resetStatisticsAndContinuity);
    if (r3 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(resetStatisticsAndContinuity);
            }
            else {
                    r8 = &@selector(resetStatistics);
            }
    }
    objc_msgSend(r0, *r8);
    [r21 release];
    [r20 setLastProgressCurrentTime:r2];
    [r20 setLastProgressBoundaryTime:r2];
    return;
}

-(void)logProgress {
    [self logVideoTime];
    return;
}

-(void)logVideoEvent:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[FBAdEventManager sharedManager] retain];
    r19 = [[self inlineClientToken] retain];
    r21 = [[r22 loggingParams] retain];
    [r22 release];
    [r20 logVideoEventForToken:r19 withExtraData:r21];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)logVideoEventForAction:(long long)arg2 {
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
    var_78 = [[self targetView] retain];
    r21 = [r19 autoplay];
    [r19 lastProgressCurrentTime];
    r0 = [r19 adQualityManager];
    r0 = [r0 retain];
    var_70 = r0;
    r0 = [r0 statistics];
    r0 = [r0 retain];
    r24 = r0;
    r26 = [[r0 viewabilityStatistics] retain];
    r0 = [r19 adQualityManager];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 statistics];
    r0 = [r0 retain];
    r28 = r0;
    r23 = [[r0 audibilityStatistics] retain];
    r25 = [[r19 cardIndex] retain];
    r0 = [r19 cardCount];
    r0 = [r0 retain];
    r21 = [[FBAdVideoLoggingEvent loggingEventWithAction:arg2 targetView:var_78 autoplay:r21 currentTime:r26 viewabilityStatistics:r23 audibilityStatistics:r25 cardIndex:r0 cardCount:var_78] retain];
    [r0 release];
    [r25 release];
    [r23 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r24 release];
    [var_70 release];
    [var_78 release];
    if (r21 != 0x0) {
            [r19 logVideoEvent:r21];
    }
    [r21 release];
    return;
}

-(void)onMRCRuleCallback:(bool)arg2 passed:(bool)arg3 {
    r0 = self;
    if (arg3 != 0x0) {
            [r0 logVideoEventForAction:0x3];
    }
    return;
}

-(void)logVideoTime {
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
    var_70 = [[self targetView] retain];
    r21 = [r19 autoplay];
    [r19 lastProgressCurrentTime];
    [r19 lastProgressBoundaryTime];
    r0 = [r19 adQualityManager];
    r0 = [r0 retain];
    var_68 = r0;
    r0 = [r0 statistics];
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 viewabilityStatistics] retain];
    r0 = [r19 adQualityManager];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 statistics];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 audibilityStatistics] retain];
    r23 = [[r19 cardIndex] retain];
    r0 = [r19 cardCount];
    r0 = [r0 retain];
    r21 = [[FBAdVideoLoggingEvent loggingEventWithAction:0x2 targetView:var_70 autoplay:r21 currentTime:r25 previousTime:r28 viewabilityStatistics:r23 audibilityStatistics:r0 cardIndex:stack[-136] cardCount:var_70] retain];
    [r0 release];
    [r23 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [var_68 release];
    [var_70 release];
    if (r21 != 0x0) {
            [r19 logVideoEvent:r21];
    }
    [r21 release];
    return;
}

-(void)onViewableImpressionRuleCallback:(bool)arg2 passed:(bool)arg3 {
    r0 = self;
    if (arg3 != 0x0) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r0;
            r0 = [r0 viewableImpressionBlock];
            r29 = &var_10;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 viewableImpressionBlock];
                    r0 = [r0 retain];
                    (*(r0 + 0x10))();
                    [r21 release];
            }
            [r20 release];
            [r19 logVideoEventForAction:0xa];
    }
    return;
}

-(float)effectiveVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    [r0 outputVolume];
    [r0 release];
    r0 = [self targetVolumeBlock];
    r0 = [r0 retain];
    (*(r0 + 0x10))();
    r0 = [r19 release];
    return r0;
}

-(void)registerProgress:(union ?)arg2 forceLog:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r21 = r3;
    r20 = r2;
    r19 = self;
    if (([self seeking] & 0x1) == 0x0) {
            sub_100a3e4dc(&var_60);
            v8 = v0;
            [r19 lastProgressCurrentTime];
            [r19 lastProgressBoundaryTime];
            v0 = v8;
            [r19 setLastProgressCurrentTime:r2];
            if (d8 < d0) {
                    asm { ccmp       w21, #0x0, #0x0, ls };
            }
            if (!CPU_FLAGS & E) {
                    d10 = d8 - d10;
                    r22 = [[r19 adQualityManager] retain];
                    [r19 effectiveVolume];
                    r8 = &@selector(funnelLogAdInfoTapped);
                    objc_msgSend(r22, *(r8 + 0x3c0));
                    [r22 release];
                    if (d10 > 0x0) {
                            r8 = &@selector(funnelLogAdInfoTapped);
                            if (CPU_FLAGS & G) {
                                    r8 = 0x1;
                            }
                    }
                    if (d10 < 0x4014000000000000) {
                            asm { ccmp       w8, #0x0, #0x0, lt };
                    }
                    if (!CPU_FLAGS & E) {
                            [r19 logProgress];
                            [r19 setLastProgressBoundaryTime:r2];
                            if ((r21 & 0x1) == 0x0) {
                                    [r19 flush:&var_80 isContinuous:0x1];
                            }
                    }
            }
    }
    return;
}

-(void *)extraDataForVideoFunnelLogging:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [NSMutableDictionary new];
    sub_100a3e4dc(&var_40);
    [r21 setNSTimeInterval:@"video_time" forKey:r3];
    [self effectiveVolume];
    [r21 setFloat:@"volume" forKey:r3];
    r0 = [r21 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cardCount, 0x0);
    objc_storeStrong((int64_t *)&self->_cardIndex, 0x0);
    objc_storeStrong((int64_t *)&self->_viewableImpressionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_targetVolumeBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_storeStrong((int64_t *)&self->_adQualityManager, 0x0);
    objc_storeStrong((int64_t *)&self->_targetView, 0x0);
    return;
}

-(void *)targetView {
    r0 = self->_targetView;
    return r0;
}

-(bool)autoplay {
    r0 = *(int8_t *)(int64_t *)&self->_autoplay;
    return r0;
}

-(void *)adQualityManager {
    r0 = self->_adQualityManager;
    return r0;
}

-(void)setAutoplay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoplay = arg2;
    return;
}

-(bool)hasLoggedIABImpression {
    r0 = *(int8_t *)(int64_t *)&self->_hasLoggedIABImpression;
    return r0;
}

-(void)setHasLoggedIABImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasLoggedIABImpression = arg2;
    return;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(void)setInlineClientToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)lastProgressBoundaryTime {
    r0 = self;
    return r0;
}

-(double)lastProgressCurrentTime {
    r0 = self;
    return r0;
}

-(void)setLastProgressBoundaryTime:(double)arg2 {
    self->_lastProgressBoundaryTime = d0;
    return;
}

-(void)setLastProgressCurrentTime:(double)arg2 {
    self->_lastProgressCurrentTime = d0;
    return;
}

-(bool)seeking {
    r0 = *(int8_t *)(int64_t *)&self->_seeking;
    return r0;
}

-(void *)targetVolumeBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_targetVolumeBlock)), 0x0);
    return r0;
}

-(void)setSeeking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_seeking = arg2;
    return;
}

-(void)setTargetVolumeBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)viewableImpressionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_viewableImpressionBlock)), 0x0);
    return r0;
}

-(void)setCardIndex:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cardIndex, arg2);
    return;
}

-(void)setViewableImpressionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cardIndex {
    r0 = self->_cardIndex;
    return r0;
}

-(void *)cardCount {
    r0 = self->_cardCount;
    return r0;
}

-(void)setCardCount:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cardCount, arg2);
    return;
}

@end