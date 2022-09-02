@implementation IROMoatBridge

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

-(void *)initWithWebView:(void *)arg2 forNativeAds:(bool)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [IROMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 addTrackedWebView:r20];
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    var_60 = r20;
                    [IROMoatLogging reportDevLogWithObject:r21 format:@"WebView %@ is already being tracked"];
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
            r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addSetupNeededBridge:r21];
            [r0 release];
            [r21 setHasNativeAds:r19];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)stopTrackingImpression:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[arg2 name] retain];
    [self markImpressionEndForTracker:r22];
    [r22 release];
    r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
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

-(void)sendUserInteractionEvent:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = self;
    r22 = [arg2 retain];
    [IROMoatLogging reportDevLogWithObject:r19 format:@"Ready to send UserInteractionEvent."];
    var_40 = r22;
    r20 = [NSString stringWithFormat:@"MoatMAK.ucbx(%@)"];
    [r22 release];
    r20 = [r20 retain];
    [r19 checkAndSendJS:r20];
    if ([r19 webViewLoaded] == 0x0) {
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
            r29 = r29;
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r19 release];
    }
    [r20 release];
    return;
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
    [[NSNumber numberWithInt:sub_100743278() ^ 0x1] retain];
    [r19 setValue:r2 forKey:r3];
    [r22 release];
    r22 = @class(NSNumber);
    [[r22 numberWithInt:sub_100743354() ^ 0x1] retain];
    objc_msgSend(r19, r20);
    [r22 release];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInt:0x0];
    r29 = &saved_fp;
    [r0 retain];
    objc_msgSend(r19, r20);
    [r21 release];
    if (sub_100743694() != 0x0) {
            [r19 setValue:r2 forKey:r3];
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            [r0 retain];
            [r19 setValue:r2 forKey:r3];
            [r21 release];
    }
    [[IROMoatCoreUtil getCarrierName] retain];
    [r19 setValue:r2 forKey:r3];
    [r21 release];
    [[IROMoatCoreUtil getRadioTechnology] retain];
    [r19 setValue:r2 forKey:r3];
    [r21 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getBasicMetadata {
    r27 = *___stack_chk_guard;
    r27 = *r27;
    *(int128_t *)(r31 + 0xffffffffffffff00) = q0;
    var_E0 = q0;
    r19 = @class(NSNumber);
    r19 = [[r19 numberWithInt:[self hasNativeAds]] retain];
    r20 = [[IROMoatCoreUtil getAppName] retain];
    r21 = [[IROMoatCoreUtil getSystemVersion] retain];
    r22 = [[IROMoatCoreUtil getIDFA] retain];
    r23 = [[IROMoatCoreUtil getBundleId] retain];
    r24 = @class(NSNumber);
    r0 = [IROMoatAnalytics sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r24 numberWithBool:[r0 areLocationServicesEnabled]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_A0 forKeys:&var_F0 count:0x9];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (r27 == r27) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getJSEnvString {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
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
    r22 = [NSString stringWithFormat:r2];
    [r20 release];
    r20 = [r22 retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)webViewFinishedLoading {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x260;
    r19 = self;
    r20 = *___stack_chk_guard;
    r20 = *r20;
    var_58 = r20;
    if (([self webViewLoaded] & 0x1) == 0x0) {
            [r19 setWebViewLoaded:0x1];
            [IROMoatLogging reportDevLogWithObject:r19 format:@"webViewFinishedLoading"];
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
            var_258 = 0x0;
            r0 = [r19 trackersWithStartRequested];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r24 = objc_msgSend(r0, r20);
            r21 = r20;
            if (r24 != 0x0) {
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    [r19 markImpressionStartForTracker:r2];
                                    r20 = r20 + 0x1;
                            } while (r20 < r24);
                            r24 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r24 != 0x0);
            }
            var_2A0 = @selector(removeAllObjects);
            [r23 release];
            r0 = [r19 trackersWithStartRequested];
            r21 = var_2A0;
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            [r22 release];
            var_268 = 0x0;
            var_260 = 0x0;
            var_278 = 0x0;
            var_270 = 0x0;
            var_288 = 0x0;
            var_280 = 0x0;
            var_298 = 0x0;
            var_290 = 0x0;
            r0 = [r19 pendingJSCommands];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r20 = objc_msgSend(r0, r20);
            if (r20 != 0x0) {
                    do {
                            r28 = 0x0;
                            do {
                                    var_288 = 0x0;
                                    if (*var_288 != *0x0) {
                                            objc_enumerationMutation(r23);
                                    }
                                    var_290 = 0x0;
                                    [r19 checkAndSendJS:r2];
                                    r28 = r28 + 0x1;
                            } while (r28 < r20);
                            r20 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r20 != 0x0);
            }
            [r23 release];
            r0 = [r19 pendingJSCommands];
            r29 = r29;
            r0 = [r0 retain];
            objc_msgSend(r0, r21);
            [r20 release];
            objc_sync_exit(r19);
            [r19 release];
            r20 = *___stack_chk_guard;
            r20 = *r20;
    }
    if (r20 != var_58) {
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
            [IROMoatLogging reportDevLogWithObject:r19 format:@"Ready for communication (setting environment variables)."];
    }
    [r19 setBeganBridgeInitialization:0x1];
    r20 = [[r19 getJSEnvString] retain];
    [r19 checkAndSendJS:r20];
    [r20 release];
    return;
}

-(void)markNewAd:(void *)arg2 {
    r20 = [arg2 retain];
    [IROMoatLogging reportDevLogWithObject:self format:@"Ready to add new ad."];
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
    [IROMoatLogging reportDevLogWithObject:self format:@"Ready to start tracking ad."];
    r20 = [NSString stringWithFormat:@"MoatMAK.mqjh(\"%@\")"];
    [r22 release];
    r20 = [r20 retain];
    [self checkAndSendJS:r20];
    [r20 release];
    return;
}

-(void)checkAndSendJS:(void *)arg2 {
    return;
}

-(void)markImpressionEndForTracker:(void *)arg2 {
    r22 = [arg2 retain];
    [IROMoatLogging reportDevLogWithObject:self format:@"Ready to stop tracking ad."];
    r20 = [NSString stringWithFormat:@"MoatMAK.egpw(\"%@\")"];
    [r22 release];
    r20 = [r20 retain];
    [self checkAndSendJS:r20];
    [r20 release];
    return;
}

-(void)handleJSResponse:(void *)arg2 {
    return;
}

+(void)insertLocationIntoRectsJSONDict:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[IROMoatBridge getLocationJSONDict] retain];
    if (r20 != 0x0) {
            [r19 setObject:r20 forKeyedSubscript:@"location"];
    }
    [r20 release];
    [r19 release];
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
    r31 = r31 + 0xffffffffffffffa0 - 0x140;
    var_178 = self;
    r0 = [self trackers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r24 = 0x0;
                    var_138 = @selector(initWithDictionary:);
                    var_140 = @selector(name);
                    var_148 = @selector(getSystemVolume);
                    var_150 = @selector(numberWithFloat:);
                    var_158 = @selector(insertLocationIntoRectsJSONDict:);
                    var_160 = @selector(toJSONRecursive:);
                    var_168 = @selector(stringWithFormat:);
                    var_170 = @selector(handleJSResponse:);
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r28 = *(0x0 + r24 * 0x8);
                            if (r28 != 0x0 && [r28 isActive] != 0x0) {
                                    var_170 = @selector(handleJSResponse:);
                                    var_148 = @selector(getSystemVolume);
                                    var_150 = @selector(numberWithFloat:);
                                    var_158 = @selector(insertLocationIntoRectsJSONDict:);
                                    var_160 = @selector(toJSONRecursive:);
                                    var_168 = @selector(stringWithFormat:);
                                    var_138 = @selector(initWithDictionary:);
                                    var_140 = @selector(name);
                                    r19 = [[r28 getViewableState] retain];
                                    r27 = [NSMutableDictionary alloc];
                                    r22 = [[r19 toDict] retain];
                                    r27 = objc_msgSend(r27, var_138);
                                    [r22 release];
                                    r22 = [objc_msgSend(r28, var_140) retain];
                                    [r27 setObject:r22 forKey:@"adKey"];
                                    [r22 release];
                                    objc_msgSend(@class(IROMoatVideoUtil), var_148);
                                    r22 = [objc_msgSend(@class(NSNumber), var_150) retain];
                                    [r27 setObject:r22 forKey:@"dv"];
                                    [r22 release];
                                    objc_msgSend(@class(IROMoatBridge), var_158);
                                    var_190 = [objc_msgSend(@class(IROMoatJSONUtil), var_160) retain];
                                    r0 = objc_msgSend(@class(NSString), var_168);
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(var_178, var_170);
                                    [r28 release];
                                    [r22 release];
                                    [r27 release];
                                    [r19 release];
                            }
                            r24 = r24 + 0x1;
                    } while (r24 < r21);
                    var_180 = @selector(countByEnumeratingWithState:objects:count:);
                    r21 = objc_msgSend(r20, var_180);
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)stopJSLoopNotifications {
    [self stopMetadataLoopNotifications];
    [self stopViewabilityLoopNotifications];
    return;
}

+(void *)getLocationJSONDict {
    r31 = r31 + 0xffffffffffffffa0 - 0x60;
    r21 = *___stack_chk_guard;
    r21 = *r21;
    var_58 = r21;
    r0 = [IROMoatLocationManager sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 bestLocation];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            var_98 = @"latitude";
            r20 = @class(NSNumber);
            [r19 coordinate];
            r0 = [r20 numberWithDouble:r2];
            r0 = [r0 retain];
            var_A0 = r0;
            r0 = [r0 stringValue];
            r0 = [r0 retain];
            var_A8 = r0;
            var_78 = r0;
            var_90 = @"longitude";
            r23 = @class(NSNumber);
            [r19 coordinate];
            r0 = [r23 numberWithDouble:r2];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 stringValue] retain];
            var_70 = r23;
            var_88 = @"timestamp";
            r27 = @class(NSNumber);
            r0 = [r19 timestamp];
            r0 = [r0 retain];
            r26 = r0;
            [r0 timeIntervalSince1970];
            r0 = [r27 numberWithDouble:r2];
            r0 = [r0 retain];
            r27 = r0;
            r28 = [[r0 stringValue] retain];
            var_68 = r28;
            var_80 = @"horizontalAccuracy";
            r20 = @class(NSNumber);
            r21 = *___stack_chk_guard;
            r21 = *r21;
            [r19 horizontalAccuracy];
            r0 = [r20 numberWithDouble:r2];
            r0 = [r0 retain];
            r20 = r0;
            r25 = [[r0 stringValue] retain];
            var_60 = r25;
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r24 = [r0 retain];
            [r25 release];
            [r20 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r23 release];
            [r22 release];
            [var_A8 release];
            [var_A0 release];
    }
    else {
            r24 = 0x0;
    }
    [r19 release];
    if (r21 == var_58) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)stopMetadataLoopNotifications {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"MOAT_JS_METADATA_NOTIFICATION" object:0x0];
    [r0 release];
    r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
    r0 = [r0 retain];
    [r0 removeSetupNeededBridge:self];
    [r0 release];
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
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r23 = r24;
            do {
                    r0 = [IROMoatJSUpdateTimer sharedJSUpdateTimer];
                    r0 = [r0 retain];
                    [r0 removeActiveTracker:r2];
                    [r24 release];
                    r0 = objc_msgSend(r19, r22);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 release];
                    r23 = r24;
            } while (r24 != 0x0);
    }
    [r24 release];
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

-(void)setHasNativeAds:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_hasNativeAds = arg2;
    return;
}

-(void *)creationTime {
    r0 = self->_creationTime;
    return r0;
}

-(void)setCreationTime:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_creationTime));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
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

-(void)setTrackersWithNewAdRequested:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)trackersWithStartRequested {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackersWithStartRequested)), 0x1);
    return r0;
}

-(void)setTrackersWithStartRequested:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setBeganBridgeInitialization:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_beganBridgeInitialization = arg2;
    return;
}

-(bool)beganBridgeInitialization {
    r0 = *(int8_t *)(int64_t *)&self->_beganBridgeInitialization & 0x1;
    return r0;
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