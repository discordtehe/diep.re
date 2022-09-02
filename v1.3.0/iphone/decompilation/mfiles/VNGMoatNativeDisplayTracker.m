@implementation VNGMoatNativeDisplayTracker

+(void *)trackerWithAdView:(void *)arg2 withAdIds:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[VNGMoatNativeDisplayTracker alloc] initWithAdView:r20 withAdIds:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)startTracking {
    r31 = r31 - 0xa0;
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
    if (([self checkFalseStart] & 0x1) != 0x0) goto .l1;

loc_100672ec4:
    if ([VNGMoatOnOff getStatus] == 0x0) goto loc_100673058;

loc_100672edc:
    r0 = [VNGMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100673058;

loc_100672f1c:
    r0 = [r19 adIds];
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    r0 = [r19 adView];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    if (r21 == 0x0 || r23 == 0x0) goto loc_100673154;

loc_100672f68:
    [[&var_80 super] startTracking];
    r0 = @class(VNGMoatAnalytics);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 getBridge];
    r0 = [r0 retain];
    [r0 startTrackingImpression:r19];
    [r0 release];
    [r21 release];
    r22 = [[r19 trackerID] retain];
    [VNGMoatLogging reportClientLog:0x0 trackerID:r22 format:@"start tracking succeeded"];
    [r22 release];
    r20 = [[r19 adView] retain];
    [r19 addTouchGestureRecognizers:r20];
    [r20 release];
    return;

.l1:
    return;

loc_100673154:
    r20 = [[NSMutableArray alloc] init];
    if (r21 == 0x0) {
            [r20 addObject:r2];
    }
    if (r23 == 0x0) {
            [r20 addObject:r2];
    }
    r0 = [r20 componentsJoinedByString:@" | "];
    r29 = r29;
    r22 = [r0 retain];
    [VNGMoatLogging reportDevLogWithObject:r19 format:@"not tracking due to following problems: %@."];
    if (r21 == 0x0) goto loc_100673234;

loc_1006731fc:
    if (r23 != 0x0) goto loc_10067327c;

loc_100673200:
    r23 = [[r19 trackerID] retain];
    goto loc_100673264;

loc_100673264:
    [VNGMoatLogging reportClientLog:r2 trackerID:r3 format:r4];
    [r23 release];
    goto loc_10067327c;

loc_10067327c:
    [r19 notifyDelegateOfBadArgStart:r22];
    [r22 release];
    [r20 release];
    [r19 cleanUp];
    return;

loc_100673234:
    r23 = [[r19 trackerID] retain];
    goto loc_100673264;

loc_100673058:
    objc_initWeak(r29 - 0x38, r19);
    [r19 class];
    objc_copyWeak(&var_70 + 0x28, r29 - 0x38);
    r19 = objc_loadWeakRetained(r29 - 0x38);
    r22 = [[NSValue valueWithNonretainedObject:r19] retain];
    [r21 onResurrectionDo:&var_70 withQueue:@"MoatNativeDisplayTracker" withKey:r22];
    [r22 release];
    [r19 release];
    objc_destroyWeak(&var_70 + 0x28);
    objc_destroyWeak(r29 - 0x38);
    return;
}

-(void)stopTracking {
    [VNGMoatLogging reportDevLogWithObject:self format:@"called stopTracking."];
    [[&var_20 super] stopTracking];
    [self cleanUp];
    r20 = @class(VNGMoatLogging);
    r19 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r19 format:@"stopTracking succeeded"];
    [r19 release];
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void)addTouchGestureRecognizers:(void *)arg2 {
    var_58 = [arg2 retain];
    [VNGMoatLogging reportDevLogWithObject:self format:@"addTouchGestureRecognizers"];
    r0 = [VNGMoatTouchGestureRecognizer alloc];
    r0 = [r0 initWithTarget:self action:@selector(handleUserInteraction:)];
    r22 = r0;
    [r0 setCancelsTouchesInView:0x0];
    [r22 setDelegate:self];
    [arg2 addGestureRecognizer:r22];
    r0 = [self getstureRecognizers];
    r0 = [r0 retain];
    [r0 addObject:r22];
    [r0 release];
    r0 = [UITapGestureRecognizer alloc];
    r0 = [r0 initWithTarget:self action:@selector(handleUserInteraction:)];
    r20 = r0;
    [r0 setCancelsTouchesInView:0x0];
    [r20 setDelegate:self];
    [arg2 addGestureRecognizer:r20];
    [var_58 release];
    r0 = [self getstureRecognizers];
    r0 = [r0 retain];
    [r0 addObject:r20];
    [r0 release];
    [r20 release];
    [r22 release];
    return;
}

-(void *)userInteractionEventAsString:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x2) {
            if (r2 == 0x1) {
                    r19 = @"touch";
            }
            else {
                    r19 = @"unknown";
            }
    }
    else {
            r19 = @"click";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithAdView:(void *)arg2 withAdIds:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r29 - 0x60 super] init];
    if (r21 != 0x0) {
            if ([VNGMoatOnOff getStatus] != 0x0) {
                    r0 = [VNGMoatAnalytics sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = [r0 isInitialized];
                    [r0 release];
                    if ((r25 & 0x1) != 0x0) {
                            if (r19 != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r28 = @"nil";
                                    }
                                    else {
                                            r28 = r19;
                                    }
                            }
                            r23 = @selector(init);
                            r0 = [VNGMoatNativeDisplayTracker getAdIdsAsJson:r20];
                            r29 = r29;
                            r26 = [r0 retain];
                            [VNGMoatLogging reportDevLogWithObject:r21 format:@"initializing with view = %@ | adIds = %@"];
                            [r26 release];
                            r26 = [VNGMoatOnOff getDebug];
                            [r21 setInitialized:0x1];
                            [r21 setIsNativeDisplay:0x1];
                            r28 = objc_msgSend([NSMutableSet alloc], r23);
                            [r21 setUserInteractionEvents:r28];
                            [r28 release];
                            if (r19 != 0x0 && r20 != 0x0) {
                                    [r21 setAdView:r19];
                                    r0 = [r21 adView];
                                    r0 = [r0 retain];
                                    r25 = [[r0 layer] retain];
                                    [r21 setTrackedLayer:r25];
                                    [r25 release];
                                    [r0 release];
                                    r24 = [r20 copy];
                                    [r21 setAdIds:r24];
                                    [r24 release];
                                    r0 = [VNGMoatAnalytics sharedInstance];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r0 = [r0 getBridge];
                                    r0 = [r0 retain];
                                    [r0 addTracker:r21];
                                    [r0 release];
                                    [r22 release];
                                    r26 = [[r21 trackerID] retain];
                                    [VNGMoatLogging reportClientLog:0x0 trackerID:r26 format:@"NativeDisplayTracker creation succeeded"];
                                    [r26 release];
                                    r0 = [r21 adView];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    r25 = [VNGMoatUIUtil containsWebView:r23];
                                    [r23 release];
                                    if (r25 != 0x0) {
                                            r24 = [[r21 trackerID] retain];
                                            [VNGMoatLogging reportClientLog:0x1 trackerID:r24 format:@"This ad view contains a WebView, are you sure you meant to use a NativeDisplayTracker?"];
                                            [r24 release];
                                    }
                            }
                            else {
                                    if (r26 != 0x0) {
                                            r22 = [[NSMutableArray alloc] init];
                                            if (r20 == 0x0) {
                                                    [r22 addObject:r2];
                                            }
                                            if (r19 == 0x0) {
                                                    [r22 addObject:r2];
                                            }
                                            r23 = [[r22 componentsJoinedByString:@" | "] retain];
                                            [VNGMoatLogging reportDevLogWithObject:r21 format:@"not tracking due to following problems: %@."];
                                            r25 = @class(VNGMoatLogging);
                                            r26 = [[r21 trackerID] retain];
                                            [r25 reportClientLog:0x1 trackerID:r26 format:@"NativeDisplayTracker creation failed, %@"];
                                            [r26 release];
                                            [r23 release];
                                            [r22 release];
                                    }
                                    [r21 setInitialized:0x0];
                                    [r21 cleanUp];
                            }
                            [r21 retain];
                    }
                    else {
                            objc_initWeak(&stack[-120], r21);
                            [r21 class];
                            objc_initWeak(&stack[-128], r19);
                            [r20 copy];
                            objc_copyWeak(&var_B8 + 0x30, &stack[-120]);
                            objc_copyWeak(&var_B8 + 0x38, &stack[-128]);
                            r26 = [r21 retain];
                            var_90 = [r20 retain];
                            r27 = [[NSValue valueWithNonretainedObject:r22] retain];
                            [r25 onResurrectionDo:&var_B8 withQueue:@"MoatNativeDisplayTracker" withKey:r27];
                            [r27 release];
                            [r26 retain];
                            [var_90 release];
                            [r26 release];
                            objc_destroyWeak(&var_B8 + 0x38);
                            objc_destroyWeak(&var_B8 + 0x30);
                            [r22 release];
                            objc_destroyWeak(&stack[-128]);
                            objc_destroyWeak(&stack[-120]);
                    }
            }
            else {
                    objc_initWeak(&stack[-120], r21);
                    [r21 class];
                    objc_initWeak(&stack[-128], r19);
                    [r20 copy];
                    objc_copyWeak(&var_B8 + 0x30, &stack[-120]);
                    objc_copyWeak(&var_B8 + 0x38, &stack[-128]);
                    r26 = [r21 retain];
                    var_90 = [r20 retain];
                    r27 = [[NSValue valueWithNonretainedObject:r22] retain];
                    [r25 onResurrectionDo:&var_B8 withQueue:@"MoatNativeDisplayTracker" withKey:r27];
                    [r27 release];
                    [r26 retain];
                    [var_90 release];
                    [r26 release];
                    objc_destroyWeak(&var_B8 + 0x38);
                    objc_destroyWeak(&var_B8 + 0x30);
                    [r22 release];
                    objc_destroyWeak(&stack[-128]);
                    objc_destroyWeak(&stack[-120]);
            }
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r21;
    return r0;
}

-(void)handleUserInteraction:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [VNGMoatTouchGestureRecognizer class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100673f1c;

loc_100673ef4:
    [VNGMoatLogging reportDevLogWithObject:r20 format:@"handleTouch"];
    r22 = 0x1;
    goto loc_100673f64;

loc_100673f64:
    r21 = [[NSNumber alloc] initWithInt:r22];
    r0 = [r20 userInteractionEvents];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 containsObject:r2];
    [r0 release];
    if ((r25 & 0x1) == 0x0) {
            r0 = [r20 userInteractionEvents];
            r0 = [r0 retain];
            [r0 addObject:r21];
            [r0 release];
            r0 = [VNGMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            r23 = r0;
            r24 = [[r0 getBridge] retain];
            r0 = [r20 getUserInteractionEventAsJson:r22];
            r29 = r29;
            r22 = [r0 retain];
            [r24 sendUserInteractionEvent:r22];
            [r22 release];
            [r24 release];
            [r23 release];
    }
    [r21 release];
    goto loc_100674088;

loc_100674088:
    r0 = [r20 getstureRecognizers];
    r0 = [r0 retain];
    [r0 removeObject:r19];
    [r0 release];
    r0 = [r20 adView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 adView];
            r0 = [r0 retain];
            [r0 removeGestureRecognizer:r19];
            [r0 release];
    }
    [r19 release];
    return;

loc_100673f1c:
    r22 = @selector(isKindOfClass:);
    [UITapGestureRecognizer class];
    if ((objc_msgSend(r19, r22) & 0x1) == 0x0) goto loc_100674088;

loc_100673f40:
    [VNGMoatLogging reportDevLogWithObject:r20 format:@"handleClick"];
    r22 = 0x2;
    goto loc_100673f64;
}

-(void *)getUserInteractionEventAsJson:(unsigned long long)arg2 {
    r22 = [[self name] retain];
    r19 = [[self userInteractionEventAsString:arg2] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getAdSizeAsJson {
    r0 = [self adView];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)getAdInfoAsJson {
    r19 = [[self adIds] retain];
    r22 = [[VNGMoatNativeDisplayTracker getAdIdsAsJson:r19] retain];
    r23 = [[self name] retain];
    r21 = [[self getAdSizeAsJson] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    [r23 release];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAdIdsAsJson:(void *)arg2 {
    r31 = r31 - 0x180;
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
    var_140 = [NSMutableString new];
    var_120 = r19;
    r22 = [[r19 allKeys] retain];
    r0 = [NSOrderedSet orderedSetWithArray:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    var_108 = q0;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_150 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            r20 = *var_108;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_108 != r20) {
                                    objc_enumerationMutation(var_128);
                            }
                            r24 = *(var_110 + r19 * 0x8);
                            if ([r24 isKindOfClass:[NSString class]] != 0x0) {
                                    r0 = [var_120 objectForKeyedSubscript:r24];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r25 = [r22 isKindOfClass:[NSString class]];
                                    [r22 release];
                                    if (r25 != 0x0) {
                                            r25 = var_140;
                                            if ([r25 length] != 0x0) {
                                                    [r25 appendString:r2];
                                            }
                                            r0 = [var_120 objectForKeyedSubscript:r24];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r25 appendFormat:@"\"%@\":\"%@\""];
                                            [r22 release];
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r23 = objc_msgSend(var_128, var_150);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    [var_128 release];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_140 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)dealloc {
    [self cleanUp];
    [[&var_20 super] dealloc];
    return;
}

-(void *)adView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adIds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adIds)), 0x1);
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adView, arg2);
    return;
}

-(void)cleanUp {
    r31 = r31 - 0x130;
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
    r19 = self;
    if (([self cleanedUp] & 0x1) == 0x0) {
            [VNGMoatLogging reportDevLogWithObject:r19 format:@"cleaning up native display tracker."];
            var_108 = q0;
            r0 = [r19 getstureRecognizers];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r27 = *var_108;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_108 != r27) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r25 = *(var_110 + r28 * 0x8);
                                    r0 = [r19 adView];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [r19 adView];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 removeGestureRecognizer:r2];
                                            [r26 release];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
            r0 = [VNGMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 getBridge];
            r0 = [r0 retain];
            [r0 stopTrackingImpression:r19];
            [r0 release];
            [r20 release];
            [r19 setCleanedUp:0x1];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setAdIds:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)cleanedUp {
    r0 = *(int8_t *)(int64_t *)&self->_cleanedUp & 0x1;
    return r0;
}

-(void)setCleanedUp:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_cleanedUp = arg2;
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized & 0x1;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(void *)userInteractionEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userInteractionEvents)), 0x1);
    return r0;
}

-(void)setUserInteractionEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setGetstureRecognizers:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)getstureRecognizers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_getstureRecognizers)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_getstureRecognizers, 0x0);
    objc_storeStrong((int64_t *)&self->_userInteractionEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_adIds, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    return;
}

@end