@implementation MPVASTTracking

-(void)handleVideoEvent:(unsigned long long)arg2 videoTimeOffset:(double)arg3 {
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
    r20 = arg2;
    r19 = self;
    r0 = [self videoConfig];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_1004cd690;

loc_1004cd4ac:
    [r19 videoDuration];
    [r21 release];
    if (r20 == 0xc || d9 > 0x0) goto loc_1004cd4f0;

.l1:
    return;

loc_1004cd4f0:
    if (r20 > 0xc) goto loc_1004cd60c;

loc_1004cd4f8:
    (0x1004cd510 + *(int8_t *)(0x100be3f78 + r20) * 0x4)();
    return;

loc_1004cd60c:
    r21 = 0x0;
    goto loc_1004cd690;

loc_1004cd690:
    [r21 release];
    return;
}

-(void)handleNewVideoView:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = objc_alloc();
    r0 = [self videoConfig];
    r0 = [r0 retain];
    r23 = r0;
    [r0 minimumFractionOfVideoVisible];
    r0 = [self videoConfig];
    r0 = [r0 retain];
    [r0 minimumViewabilityTimeInterval];
    r20 = [r20 initWithVideoView:r21 requiredVisibilityPercentage:r3 requiredPlaybackDuration:r4];
    [r21 release];
    [self setCustomViewabilityTrackingAgent:r20];
    [r20 release];
    [r0 release];
    [r23 release];
    return;
}

-(void *)videoConfig {
    r0 = *(self + 0x8);
    return r0;
}

-(void)cleanAndSendTrackingEvents:(void *)arg2 timeOffset:(double)arg3 {
    r31 = r31 - 0x180;
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
    r29 = &saved_fp;
    v8 = v0;
    var_140 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 trackingEvents];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 count];
            [r0 release];
            if (r22 != 0x0) {
                    var_148 = [[NSMutableArray array] retain];
                    var_120 = q0;
                    var_168 = r20;
                    r0 = [r20 trackingEvents];
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_160 = r1;
                    var_158 = r0;
                    r0 = objc_msgSend(r0, r1);
                    var_138 = r0;
                    if (r0 != 0x0) {
                            var_150 = *var_120;
                            do {
                                    r24 = 0x0;
                                    do {
                                            if (*var_120 != var_150) {
                                                    objc_enumerationMutation(var_158);
                                            }
                                            r19 = @selector(addObject:);
                                            r22 = [[*(var_128 + r24 * 0x8) url] retain];
                                            r0 = [var_140 videoConfig];
                                            r0 = [r0 retain];
                                            r0 = [MPVASTMacroProcessor macroExpandedURLForURL:r22 errorCode:0x0 videoTimeOffset:[[r0 mediaURL] retain] videoAssetURL:r5];
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(var_148, r19);
                                            [r23 release];
                                            [r21 release];
                                            [r20 release];
                                            [r22 release];
                                            r24 = r24 + 0x1;
                                    } while (r24 < var_138);
                                    r0 = objc_msgSend(var_158, var_160);
                                    var_138 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_158 release];
                    r0 = [MPAnalyticsTracker sharedTracker];
                    r0 = [r0 retain];
                    [r0 sendTrackingRequestForURLs:var_148];
                    [r0 release];
                    [var_148 release];
                    r20 = var_168;
            }
    }
    var_70 = **___stack_chk_guard;
    [r20 setTrackersFired:0x1];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(double)videoDuration {
    r0 = self;
    return r0;
}

-(void)setVideoDuration:(double)arg2 {
    *(self + 0x10) = d0;
    return;
}

-(void)handleProgressTrackers:(double)arg2 {
    r31 = r31 - 0x170;
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
    r29 = &saved_fp;
    v8 = v0;
    r22 = self;
    if (d0 >= 0x0) {
            r0 = [r22 startTracker];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 trackersFired];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    r0 = [r22 startTracker];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r22 cleanAndSendTrackingEvents:r19 timeOffset:r3];
                    [r19 release];
            }
    }
    [r22 videoDuration];
    d0 = d0 * 0x3fe8000000000000;
    if (d0 <= d8) {
            r0 = [r22 thirdQuartileTracker];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 trackersFired];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    r0 = [r22 thirdQuartileTracker];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r22 cleanAndSendTrackingEvents:r19 timeOffset:r3];
                    [r19 release];
            }
    }
    [r22 videoDuration];
    d0 = d0 * 0x3fe0000000000000;
    if (d0 <= d8) {
            r0 = [r22 midPointTracker];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 trackersFired];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    r0 = [r22 midPointTracker];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r22 cleanAndSendTrackingEvents:r19 timeOffset:r3];
                    [r19 release];
            }
    }
    [r22 videoDuration];
    if (d0 * 0x3fd0000000000000 <= d8) {
            r0 = [r22 firstQuartileTracker];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 trackersFired];
            [r0 release];
            if ((r21 & 0x1) == 0x0) {
                    r0 = [r22 firstQuartileTracker];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r22 cleanAndSendTrackingEvents:r19 timeOffset:r3];
                    [r19 release];
            }
    }
    v0 = 0x0;
    var_120 = q0;
    var_138 = r22;
    r0 = [r22 variableProgressTrackers];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_130;
    r3 = &stack[-256];
    var_140 = r0;
    var_160 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r21 = *var_120;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_120 != r21) {
                                    objc_enumerationMutation(var_140);
                            }
                            r20 = *(var_128 + r27 * 0x8);
                            r0 = [r20 trackingEvents];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 objectAtIndexedSubscript:0x0];
                            r29 = r29;
                            r19 = [r0 retain];
                            [r22 release];
                            if (([r20 trackersFired] & 0x1) == 0x0) {
                                    r0 = [r19 progressOffset];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_138 videoDuration];
                                    [r22 timeIntervalForVideoWithDuration:0x0];
                                    [r22 release];
                                    if (d9 <= d8) {
                                            v0 = v8;
                                            [var_138 cleanAndSendTrackingEvents:r2 timeOffset:r3];
                                    }
                            }
                            [r19 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r2 = &var_130;
                    r3 = &stack[-256];
                    r0 = objc_msgSend(var_140, var_160);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    [var_140 release];
    r24 = var_138;
    r0 = [r24 customViewabilityTracker];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_1004cdb74;

loc_1004cdac8:
    r0 = [r24 customViewabilityTracker];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 trackersFired] == 0x0) goto loc_1004cdaf8;

loc_1004cdaec:
    [r19 release];
    goto loc_1004cdb74;

loc_1004cdb74:
    [r20 release];
    goto loc_1004cdb7c;

loc_1004cdb7c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1004cdaf8:
    r0 = [r24 customViewabilityTrackingAgent];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 shouldTrackImpressionWithCurrentPlaybackTime:r2];
    [r0 release];
    [r19 release];
    [r20 release];
    if (r23 == 0x0) goto loc_1004cdb7c;

loc_1004cdb44:
    r20 = [[r24 customViewabilityTracker] retain];
    [r24 cleanAndSendTrackingEvents:r20 timeOffset:r3];
    goto loc_1004cdb74;
}

-(void *)errorTracker {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)initWithMPVideoConfig:(void *)arg2 videoView:(void *)arg3 {
    r31 = r31 - 0x180;
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
    r29 = &saved_fp;
    r22 = arg2;
    r24 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [[&var_100 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            var_160 = r25;
            stack[-360] = r24;
            objc_storeStrong(r21 + 0x8, r22);
            *(r21 + 0x10) = 0xbff0000000000000;
            r23 = @class(VASTEventTracker);
            r24 = [[*(r21 + 0x8) errorURLs] retain];
            r0 = [r23 eventTrackerWithURLs:r24];
            r0 = [r0 retain];
            r8 = *(r21 + 0x18);
            *(r21 + 0x18) = r0;
            [r8 release];
            [r24 release];
            r23 = @class(VASTEventTracker);
            r24 = [[*(r21 + 0x8) impressionURLs] retain];
            r0 = [r23 eventTrackerWithURLs:r24];
            r0 = [r0 retain];
            r8 = *(r21 + 0x20);
            *(r21 + 0x20) = r0;
            [r8 release];
            [r24 release];
            r23 = @class(VASTEventTracker);
            r24 = [[*(r21 + 0x8) clickTrackingURLs] retain];
            r0 = [r23 eventTrackerWithURLs:r24];
            r0 = [r0 retain];
            r8 = *(r21 + 0x28);
            *(r21 + 0x28) = r0;
            [r8 release];
            [r24 release];
            r24 = @class(VASTEventTracker);
            r19 = [[*(r21 + 0x8) startTrackers] retain];
            r0 = [r24 eventTrackerWithMPVastTrackingEvents:r19];
            r0 = [r0 retain];
            r8 = *(r21 + 0x38);
            *(r21 + 0x38) = r0;
            [r8 release];
            [r19 release];
            r24 = @class(VASTEventTracker);
            r19 = [[*(r21 + 0x8) firstQuartileTrackers] retain];
            r0 = [r24 eventTrackerWithMPVastTrackingEvents:r19];
            r0 = [r0 retain];
            r8 = *(r21 + 0x40);
            *(r21 + 0x40) = r0;
            [r8 release];
            [r19 release];
            r24 = @class(VASTEventTracker);
            r19 = [[*(r21 + 0x8) midpointTrackers] retain];
            r0 = [r24 eventTrackerWithMPVastTrackingEvents:r19];
            r0 = [r0 retain];
            r8 = *(r21 + 0x48);
            *(r21 + 0x48) = r0;
            [r8 release];
            [r19 release];
            r24 = @class(VASTEventTracker);
            r19 = [[*(r21 + 0x8) thirdQuartileTrackers] retain];
            r0 = [r24 eventTrackerWithMPVastTrackingEvents:r19];
            r0 = [r0 retain];
            r8 = *(r21 + 0x50);
            *(r21 + 0x50) = r0;
            [r8 release];
            [r19 release];
            r24 = @class(VASTEventTracker);
            r19 = [[*(r21 + 0x8) completionTrackers] retain];
            r0 = [r24 eventTrackerWithMPVastTrackingEvents:r19];
            r0 = [r0 retain];
            r8 = *(r21 + 0x58);
            *(r21 + 0x58) = r0;
            [r8 release];
            [r19 release];
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r8 = *(r21 + 0x60);
            *(r21 + 0x60) = r0;
            [r8 release];
            var_130 = q0;
            r23 = r21;
            r0 = *(r21 + 0x8);
            r0 = [r0 otherProgressTrackers];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r3 = &stack[-256];
            var_150 = r1;
            var_148 = r0;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r26 = r0;
                    r25 = *var_130;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_130 != r25) {
                                            objc_enumerationMutation(var_148);
                                    }
                                    r28 = @selector(addObject:);
                                    r27 = @selector(arrayWithObject:);
                                    r20 = *(r23 + 0x60);
                                    [objc_msgSend(@class(NSArray), r27) retain];
                                    r0 = [VASTEventTracker eventTrackerWithMPVastTrackingEvents:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r20, r28);
                                    [r19 release];
                                    [r22 release];
                                    r21 = r21 + 0x1;
                            } while (r21 < r26);
                            r3 = &stack[-256];
                            r0 = objc_msgSend(var_148, var_150);
                            r26 = r0;
                    } while (r0 != 0x0);
            }
            [var_148 release];
            r19 = @class(VASTEventTracker);
            r21 = r23;
            r20 = [[*(r23 + 0x8) muteTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x68);
            *(r23 + 0x68) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) unmuteTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x70);
            *(r23 + 0x70) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) pauseTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x78);
            *(r23 + 0x78) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) rewindTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x80);
            *(r23 + 0x80) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) resumeTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x88);
            *(r23 + 0x88) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) fullscreenTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x90);
            *(r23 + 0x90) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) exitFullscreenTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0x98);
            *(r23 + 0x98) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) expandTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0xa0);
            *(r23 + 0xa0) = r0;
            [r8 release];
            [r20 release];
            r19 = @class(VASTEventTracker);
            r20 = [[*(r23 + 0x8) collapseTrackers] retain];
            r0 = [r19 eventTrackerWithMPVastTrackingEvents:r2];
            r0 = [r0 retain];
            r8 = *(r23 + 0xa8);
            *(r23 + 0xa8) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r23 + 0x8);
            r0 = [r0 viewabilityTrackingURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            r25 = var_160;
            r24 = stack[-360];
            if (r0 != 0x0) {
                    r22 = [[*(r21 + 0x8) viewabilityTrackingURL] retain];
                    r20 = [[NSArray arrayWithObject:r22] retain];
                    r0 = [VASTEventTracker eventTrackerWithURLs:r2];
                    r0 = [r0 retain];
                    r8 = *(r21 + 0x30);
                    *(r21 + 0x30) = r0;
                    [r8 release];
                    [r20 release];
                    [r22 release];
                    r19 = objc_alloc();
                    [r24 minimumFractionOfVideoVisible];
                    [r24 minimumViewabilityTimeInterval];
                    r0 = [r19 initWithVideoView:r25 requiredVisibilityPercentage:r3 requiredPlaybackDuration:0x10];
                    r8 = *(r21 + 0xb0);
                    *(r21 + 0xb0) = r0;
                    [r8 release];
            }
    }
    var_70 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard == var_70) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setErrorTracker:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)impressionTracker {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setImpressionTracker:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)clickTracker {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setClickTracker:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)customViewabilityTracker {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setCustomViewabilityTracker:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)startTracker {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setStartTracker:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)firstQuartileTracker {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setFirstQuartileTracker:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)midPointTracker {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setMidPointTracker:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)thirdQuartileTracker {
    r0 = *(self + 0x50);
    return r0;
}

-(void *)completionTracker {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setThirdQuartileTracker:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void)setCompletionTracker:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)variableProgressTrackers {
    r0 = *(self + 0x60);
    return r0;
}

-(void *)muteTracker {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setVariableProgressTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void)setMuteTracker:(void *)arg2 {
    objc_storeStrong(self + 0x68, arg2);
    return;
}

-(void *)unmuteTracker {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setUnmuteTracker:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void *)pauseTracker {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setPauseTracker:(void *)arg2 {
    objc_storeStrong(self + 0x78, arg2);
    return;
}

-(void *)rewindTracker {
    r0 = *(self + 0x80);
    return r0;
}

-(void *)resumeTracker {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setRewindTracker:(void *)arg2 {
    objc_storeStrong(self + 0x80, arg2);
    return;
}

-(void)setResumeTracker:(void *)arg2 {
    objc_storeStrong(self + 0x88, arg2);
    return;
}

-(void *)fullscreenTracker {
    r0 = *(self + 0x90);
    return r0;
}

-(void)setFullscreenTracker:(void *)arg2 {
    objc_storeStrong(self + 0x90, arg2);
    return;
}

-(void *)exitFullscreenTracker {
    r0 = *(self + 0x98);
    return r0;
}

-(void)setExitFullscreenTracker:(void *)arg2 {
    objc_storeStrong(self + 0x98, arg2);
    return;
}

-(void *)expandTracker {
    r0 = *(self + 0xa0);
    return r0;
}

-(void)setExpandTracker:(void *)arg2 {
    objc_storeStrong(self + 0xa0, arg2);
    return;
}

-(void *)collapseTracker {
    r0 = *(self + 0xa8);
    return r0;
}

-(void)setCollapseTracker:(void *)arg2 {
    objc_storeStrong(self + 0xa8, arg2);
    return;
}

-(void *)customViewabilityTrackingAgent {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setCustomViewabilityTrackingAgent:(void *)arg2 {
    objc_storeStrong(self + 0xb0, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0xb0, 0x0);
    objc_storeStrong(self + 0xa8, 0x0);
    objc_storeStrong(self + 0xa0, 0x0);
    objc_storeStrong(self + 0x98, 0x0);
    objc_storeStrong(self + 0x90, 0x0);
    objc_storeStrong(self + 0x88, 0x0);
    objc_storeStrong(self + 0x80, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end