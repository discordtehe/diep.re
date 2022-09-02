@implementation VNGMoatBridge

-(void)addTracker:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isNativeDisplay] & 0x1) == 0x0) {
            [r19 setName:@""];
    }
    r0 = [r20 trackers];
    r29 = r29;
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r23 release];
    if ((objc_msgSend(r19, r22) & 0x1) != 0x0 || [r19 isNativeVideo] != 0x0) {
            [r20 setHasNativeAds:0x1];
    }
    if ([r19 isNativeDisplay] != 0x0) {
            r0 = [r20 retain];
            objc_sync_enter(r0);
            r0 = [r20 trackersWithNewAdRequested];
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            [r22 release];
            objc_sync_exit(r20);
            [r20 release];
            [r20 markNewAd:r19];
    }
    [r19 release];
    return;
}

-(void)startTrackingImpression:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[r20 trackersWithStartRequested] retain];
    r23 = [[r19 name] retain];
    [r22 addObject:r23];
    [r23 release];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    r21 = [[r19 name] retain];
    [r20 markImpressionStartForTracker:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)stopTrackingImpression:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[arg2 name] retain];
    [self markImpressionEndForTracker:r22];
    [r22 release];
    r0 = [VNGMoatJSUpdateTimer sharedJSUpdateTimer];
    r0 = [r0 retain];
    [r0 removeActiveTracker:r20];
    [r0 release];
    r0 = [self trackers];
    r0 = [r0 retain];
    [r0 removeObject:arg2];
    [r20 release];
    [r0 release];
    return;
}

-(void *)initWithWebView:(void *)arg2 forNativeAds:(bool)arg3 {
    r31 = r31 - 0x70;
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
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [VNGMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 addTrackedWebView:r20];
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    [VNGMoatLogging reportDevLogWithObject:r21 format:@"WebView %@ is already being tracked"];
            }
            r22 = @selector(init);
            r24 = [[NSHashTable weakObjectsHashTable] retain];
            [r21 setTrackers:r24];
            [r24 release];
            r24 = [[NSDate date] retain];
            [r21 setCreationTime:r24];
            [r24 release];
            r23 = [[NSHashTable weakObjectsHashTable] retain];
            [r21 setTrackersWithNewAdRequested:r23];
            [r23 release];
            r24 = objc_msgSend([NSMutableArray alloc], r22);
            [r21 setTrackersWithStartRequested:r24];
            [r24 release];
            r22 = objc_msgSend([NSMutableArray alloc], r22);
            [r21 setPendingJSCommands:r22];
            [r22 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(resendMetadata:) name:@"MOAT_JS_METADATA_NOTIFICATION" object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r21 selector:@selector(sendViewabilityInfo:) name:@"MOAT_JS_SEND_INFO_NOTIFICATION" object:0x0];
            [r0 release];
            r0 = [VNGMoatJSUpdateTimer sharedJSUpdateTimer];
            r0 = [r0 retain];
            [r0 addSetupNeededBridge:r21];
            [r0 release];
            [r21 setHasNativeAds:r19];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)sendUserInteractionEvent:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    [VNGMoatLogging reportDevLogWithObject:r19 format:@"Ready to send UserInteractionEvent."];
    r0 = [NSString stringWithFormat:@"MoatMAK.ucbx(%@)"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r19 checkAndSendJS:r20];
    if (([r19 webViewLoaded] & 0x1) == 0x0) {
            r0 = [r19 pendingJSCommands];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 count];
            [r0 release];
            if (r23 >= 0x33) {
                    r0 = [r19 pendingJSCommands];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 removeObjectsInRange:0x0];
                    [r0 release];
            }
            r0 = [r19 pendingJSCommands];
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r19 release];
    }
    [r20 release];
    return;
}

-(void *)getBasicMetadata {
    r31 = r31 - 0xd0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [[NSNumber numberWithInt:[self hasNativeAds]] retain];
    r20 = [[VNGMoatCoreUtil getAppName] retain];
    r21 = [[VNGMoatCoreUtil getSystemVersion] retain];
    r23 = [[VNGMoatCoreUtil getIDFA] retain];
    r24 = [[VNGMoatCoreUtil getBundleId] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_B8 count:0x8];
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getMetadata {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getBasicMetadata];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    [[NSNumber numberWithInt:sub_10066ada8() ^ 0x1] retain];
    [r19 setValue:r2 forKey:r3];
    [r22 release];
    r22 = @class(NSNumber);
    [[r22 numberWithInt:sub_10066ae88() ^ 0x1] retain];
    objc_msgSend(r19, r20);
    [r22 release];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInt:0x0];
    r29 = &saved_fp;
    [r0 retain];
    objc_msgSend(r19, r20);
    [r21 release];
    if (sub_10066b1c4() != 0x0) {
            [r19 setValue:r2 forKey:r3];
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            [r0 retain];
            [r19 setValue:r2 forKey:r3];
            [r21 release];
    }
    [[VNGMoatCoreUtil getCarrierName] retain];
    [r19 setValue:r2 forKey:r3];
    [r21 release];
    [[VNGMoatCoreUtil getRadioTechnology] retain];
    [r19 setValue:r2 forKey:r3];
    [r21 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)webViewFinishedLoading {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    r19 = self;
    if (([self webViewLoaded] & 0x1) == 0x0) {
            [r19 setWebViewLoaded:0x1];
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"webViewFinishedLoading"];
            [r19 stopMetadataLoopNotifications];
            r0 = [r19 retain];
            r19 = r0;
            objc_sync_enter(r0);
            r0 = [r19 trackersWithNewAdRequested];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    do {
                            r27 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [r19 markNewAd:r2];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r23 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            r20 = @selector(countByEnumeratingWithState:objects:count:);
            [r22 release];
            r0 = [r19 trackersWithNewAdRequested];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            var_248 = q0;
            r0 = [r19 trackersWithStartRequested];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r24 = objc_msgSend(r0, r20);
            if (r24 != 0x0) {
                    r26 = *var_248;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_248 != r26) {
                                            objc_enumerationMutation(r23);
                                    }
                                    [r19 markImpressionStartForTracker:r2];
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r24 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r24 != 0x0);
            }
            r20 = @selector(countByEnumeratingWithState:objects:count:);
            [r23 release];
            r0 = [r19 trackersWithStartRequested];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            var_288 = q0;
            r0 = [r19 pendingJSCommands];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r24 = objc_msgSend(r0, r20);
            if (r24 != 0x0) {
                    r26 = *var_288;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_288 != r26) {
                                            objc_enumerationMutation(r23);
                                    }
                                    [r19 checkAndSendJS:r2];
                                    r28 = r28 + 0x1;
                            } while (r28 < r24);
                            r24 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r24 != 0x0);
            }
            [r23 release];
            r0 = [r19 pendingJSCommands];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            objc_sync_exit(r19);
            [r19 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)markMoatActive {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self beganBridgeInitialization] & 0x1) == 0x0) {
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"Ready for communication (setting environment variables)."];
    }
    [r19 setBeganBridgeInitialization:0x1];
    r20 = [[r19 getJSEnvString] retain];
    [r19 checkAndSendJS:r20];
    [r20 release];
    return;
}

-(void *)getJSEnvString {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [[self getMetadata] retain];
    r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x0 error:&var_28];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_28 retain];
    [r21 release];
    if (r19 != 0x0) {
            r21 = [[NSString alloc] initWithData:r19 encoding:0x4];
    }
    else {
            r21 = @"{}";
            [r21 retain];
    }
    r22 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)markNewAd:(void *)arg2 {
    r20 = [arg2 retain];
    [VNGMoatLogging reportDevLogWithObject:self format:@"Ready to add new ad."];
    r22 = [[r20 getAdInfoAsJson] retain];
    r21 = [[NSString stringWithFormat:@"MoatMAK.crts(%@)"] retain];
    [r22 release];
    [self checkAndSendJS:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)markImpressionStartForTracker:(void *)arg2 {
    r22 = [arg2 retain];
    [VNGMoatLogging reportDevLogWithObject:self format:@"Ready to start tracking ad."];
    r20 = [[NSString stringWithFormat:@"MoatMAK.mqjh(\"%@\")"] retain];
    [r22 release];
    [self checkAndSendJS:r20];
    [r20 release];
    return;
}

-(void)checkAndSendJS:(void *)arg2 {
    return;
}

-(void)markImpressionEndForTracker:(void *)arg2 {
    r22 = [arg2 retain];
    [VNGMoatLogging reportDevLogWithObject:self format:@"Ready to stop tracking ad."];
    r20 = [[NSString stringWithFormat:@"MoatMAK.egpw(\"%@\")"] retain];
    [r22 release];
    [self checkAndSendJS:r20];
    [r20 release];
    return;
}

-(void)handleJSResponse:(void *)arg2 {
    return;
}

-(void)stopJSLoopNotifications {
    [self stopMetadataLoopNotifications];
    [self stopViewabilityLoopNotifications];
    return;
}

-(void)stopMetadataLoopNotifications {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"MOAT_JS_METADATA_NOTIFICATION" object:0x0];
    [r0 release];
    r0 = [VNGMoatJSUpdateTimer sharedJSUpdateTimer];
    r0 = [r0 retain];
    [r0 removeSetupNeededBridge:self];
    [r0 release];
    return;
}

-(void)resendMetadata:(void *)arg2 {
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
    r20 = [[NSDate date] retain];
    r21 = [[r19 creationTime] retain];
    [r20 timeIntervalSinceDate:r21];
    [r21 release];
    if (d8 > 0x4024000000000000) {
            r1 = @selector(stopMetadataLoopNotifications);
    }
    else {
            r1 = @selector(markMoatActive);
    }
    objc_msgSend(r19, r1);
    [r20 release];
    return;
}

-(void)sendViewabilityInfo:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    var_170 = self;
    r0 = [self trackers];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 allObjects] retain];
    r0 = [NSArray arrayWithArray:r21];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    var_108 = q0;
    r0 = [r19 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_178 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r21 = *var_108;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_108 != r21) {
                                    objc_enumerationMutation(r20);
                            }
                            r27 = *(var_110 + r23 * 0x8);
                            if (r27 != 0x0 && [r27 isActive] != 0x0) {
                                    r24 = [[r27 getViewableState] retain];
                                    r19 = [NSMutableDictionary alloc];
                                    r28 = [[r24 toDict] retain];
                                    r19 = [r19 initWithDictionary:r28];
                                    [r28 release];
                                    r27 = [[r27 name] retain];
                                    [r19 setObject:r27 forKey:@"adKey"];
                                    [r27 release];
                                    [VNGMoatVideoUtil getSystemVolume];
                                    r27 = [[NSNumber numberWithFloat:r27] retain];
                                    [r19 setObject:r27 forKey:@"dv"];
                                    [r27 release];
                                    [[VNGMoatJSONUtil toJSONRecursive:r19] retain];
                                    r0 = [NSString stringWithFormat:@"MoatMAK.sglu(%@)"];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_170 handleJSResponse:r2];
                                    [r28 release];
                                    [r27 release];
                                    [r19 release];
                                    [r24 release];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r22);
                    r22 = objc_msgSend(r20, var_178);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)dealloc {
    [self stopJSLoopNotifications];
    [[&var_20 super] dealloc];
    return;
}

-(void *)trackers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackers)), 0x1);
    return r0;
}

-(void)stopViewabilityLoopNotifications {
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
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"MOAT_JS_SEND_INFO_NOTIFICATION" object:0x0];
    [r0 release];
    r0 = [self trackers];
    r0 = [r0 retain];
    r19 = [[r0 objectEnumerator] retain];
    [r0 release];
    r0 = [r19 nextObject];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            do {
                    r0 = [VNGMoatJSUpdateTimer sharedJSUpdateTimer];
                    r0 = [r0 retain];
                    [r0 removeActiveTracker:r2];
                    [r24 release];
                    r0 = objc_msgSend(r19, r23);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r20 release];
                    r20 = r24;
            } while (r24 != 0x0);
    }
    [r19 release];
    return;
}

-(void)setTrackers:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(int)hasNativeAds {
    r0 = *(int32_t *)(int64_t *)&self->_hasNativeAds;
    return r0;
}

-(void *)creationTime {
    r0 = self->_creationTime;
    return r0;
}

-(void)setHasNativeAds:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_hasNativeAds = arg2;
    return;
}

-(void)setCreationTime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_creationTime, arg2);
    return;
}

-(bool)webViewLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_webViewLoaded & 0x1;
    return r0;
}

-(void *)trackersWithNewAdRequested {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackersWithNewAdRequested)), 0x1);
    return r0;
}

-(void)setWebViewLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webViewLoaded = arg2;
    return;
}

-(void)setTrackersWithStartRequested:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setTrackersWithNewAdRequested:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)trackersWithStartRequested {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackersWithStartRequested)), 0x1);
    return r0;
}

-(bool)beganBridgeInitialization {
    r0 = *(int8_t *)(int64_t *)&self->_beganBridgeInitialization & 0x1;
    return r0;
}

-(void)setBeganBridgeInitialization:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_beganBridgeInitialization = arg2;
    return;
}

-(void *)pendingJSCommands {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_pendingJSCommands)), 0x1);
    return r0;
}

-(void)setPendingJSCommands:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_pendingJSCommands, 0x0);
    objc_storeStrong((int64_t *)&self->_trackersWithStartRequested, 0x0);
    objc_storeStrong((int64_t *)&self->_trackersWithNewAdRequested, 0x0);
    objc_storeStrong((int64_t *)&self->_creationTime, 0x0);
    objc_storeStrong((int64_t *)&self->_trackers, 0x0);
    return;
}

@end