@implementation IROMoatNativeDisplayTracker

+(void *)trackerWithAdView:(void *)arg2 withAdIds:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[IROMoatNativeDisplayTracker alloc] initWithAdView:r20 withAdIds:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)startTracking {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x60;
    r19 = self;
    if (([self checkFalseStart] & 0x1) != 0x0) goto .l1;

loc_10074bbf4:
    if ([IROMoatOnOff getStatus] == 0x0) goto loc_10074bd8c;

loc_10074bc0c:
    r0 = [IROMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isInitialized];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_10074bd8c;

loc_10074bc4c:
    r0 = [r19 adIds];
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    r0 = [r19 adView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    if (r21 == 0x0 || r22 == 0x0) goto loc_10074be98;

loc_10074bc98:
    var_88 = *0x101167f58;
    r0 = [[&var_90 super] startTracking];
    r0 = @class(IROMoatAnalytics);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 getBridge];
    r0 = [r0 retain];
    [r0 startTrackingImpression:r19];
    [r0 release];
    [r21 release];
    r22 = [[r19 trackerID] retain];
    [IROMoatLogging reportClientLog:0x0 trackerID:r22 format:@"start tracking succeeded"];
    [r22 release];
    r0 = [r19 adView];
    r29 = r29;
    r20 = [r0 retain];
    [r19 addTouchGestureRecognizers:r20];
    [r20 release];
    return;

.l1:
    return;

loc_10074be98:
    r20 = [[NSMutableArray alloc] init];
    if (r21 == 0x0) {
            [r20 addObject:r2];
    }
    if (r22 == 0x0) {
            [r20 addObject:r2];
    }
    r0 = [r20 componentsJoinedByString:@" | "];
    r29 = r29;
    r23 = [r0 retain];
    var_A0 = r23;
    [IROMoatLogging reportDevLogWithObject:r19 format:@"not tracking due to following problems: %@."];
    if (r21 == 0x0) goto loc_10074bf78;

loc_10074bf40:
    if (r22 != 0x0) goto loc_10074bfc0;

loc_10074bf44:
    r0 = [r19 trackerID];
    r29 = r29;
    r22 = [r0 retain];
    goto loc_10074bfa8;

loc_10074bfa8:
    [IROMoatLogging reportClientLog:r2 trackerID:r3 format:r4];
    [r22 release];
    goto loc_10074bfc0;

loc_10074bfc0:
    [r19 notifyDelegateOfBadArgStart:r23];
    [r23 release];
    [r20 release];
    [r19 cleanUp];
    return;

loc_10074bf78:
    r0 = [r19 trackerID];
    r29 = r29;
    r22 = [r0 retain];
    goto loc_10074bfa8;

loc_10074bd8c:
    objc_initWeak(r29 - 0x48, r19);
    [r19 class];
    var_78 = 0xffffffffc2000000;
    var_70 = 0x10074c030;
    var_68 = 0x100e8e920;
    objc_copyWeak(&var_80 + 0x28, r29 - 0x48);
    var_60 = [r19 retain];
    r19 = objc_loadWeakRetained(r29 - 0x48);
    r0 = [NSValue valueWithNonretainedObject:r19];
    r29 = r29;
    r22 = [r0 retain];
    r0 = [r21 onResurrectionDo:&var_80 withQueue:@"MoatNativeDisplayTracker" withKey:r22];
    [r22 release];
    [r19 release];
    [var_60 release];
    objc_destroyWeak(&var_80 + 0x28);
    objc_destroyWeak(r29 - 0x48);
    return;
}

-(void)stopTracking {
    [IROMoatLogging reportDevLogWithObject:self format:@"called stopTracking."];
    [[&var_20 super] stopTracking];
    [self cleanUp];
    r20 = @class(IROMoatLogging);
    r19 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r19 format:@"stopTracking succeeded"];
    [r19 release];
    return;
}

-(void)addTouchGestureRecognizers:(void *)arg2 {
    var_58 = [arg2 retain];
    [IROMoatLogging reportDevLogWithObject:self format:@"addTouchGestureRecognizers"];
    r0 = [IROMoatTouchGestureRecognizer alloc];
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

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void *)initWithAdView:(void *)arg2 withAdIds:(void *)arg3 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x80;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r29 - 0x60 super] init];
    if (r21 == 0x0) goto loc_10074c7dc;

loc_10074c268:
    if ([IROMoatOnOff getStatus] == 0x0) goto loc_10074c580;

loc_10074c280:
    r0 = [IROMoatAnalytics sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isInitialized];
    [r0 release];
    if ((r25 & 0x1) == 0x0) goto loc_10074c580;

loc_10074c2c0:
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r28 = @"nil";
            }
            else {
                    r28 = r19;
            }
    }
    r24 = @selector(init);
    r0 = [IROMoatNativeDisplayTracker getAdIdsAsJson:r20];
    r29 = r29;
    r26 = [r0 retain];
    var_D0 = r28;
    stack[-216] = r26;
    [IROMoatLogging reportDevLogWithObject:r21 format:@"initializing with view = %@ | adIds = %@"];
    [r26 release];
    r26 = [IROMoatOnOff getDebug];
    [r21 setInitialized:0x1];
    [r21 setIsNativeDisplay:0x1];
    r28 = objc_msgSend([NSMutableSet alloc], r24);
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
            r0 = [IROMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 getBridge];
            r0 = [r0 retain];
            [r0 addTracker:r21];
            [r0 release];
            [r22 release];
            r26 = [[r21 trackerID] retain];
            [IROMoatLogging reportClientLog:0x0 trackerID:r26 format:@"NativeDisplayTracker creation succeeded"];
            [r26 release];
            r0 = [r21 adView];
            r29 = r29;
            r23 = [r0 retain];
            r25 = [IROMoatUIUtil containsWebView:r23];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = [r21 trackerID];
                    r29 = r29;
                    r24 = [r0 retain];
                    [IROMoatLogging reportClientLog:0x1 trackerID:r24 format:@"This ad view contains a WebView, are you sure you meant to use a NativeDisplayTracker?"];
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
                    r24 = [[r22 componentsJoinedByString:@" | "] retain];
                    [IROMoatLogging reportDevLogWithObject:r21 format:@"not tracking due to following problems: %@."];
                    r25 = @class(IROMoatLogging);
                    r0 = [r21 trackerID];
                    r29 = r29;
                    r26 = [r0 retain];
                    var_D0 = r24;
                    [r25 reportClientLog:0x1 trackerID:r26 format:@"NativeDisplayTracker creation failed, %@"];
                    [r26 release];
                    [r24 release];
                    [r22 release];
            }
            [r21 setInitialized:0x0];
            [r21 cleanUp];
    }
    goto loc_10074c7dc;

loc_10074c7dc:
    [r21 retain];
    goto loc_10074c7e4;

loc_10074c7e4:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r21;
    return r0;

loc_10074c580:
    objc_initWeak(&stack[-120], r21);
    [r21 class];
    objc_initWeak(&stack[-128], r19);
    [r20 copy];
    var_B0 = 0xffffffffc2000000;
    var_A8 = 0x10074c85c;
    var_A0 = 0x100e8e950;
    objc_copyWeak(&var_B8 + 0x30, &stack[-120]);
    objc_copyWeak(&var_B8 + 0x38, &stack[-128]);
    var_78 = r26;
    r26 = [r21 retain];
    var_98 = r26;
    var_90 = [r20 retain];
    r0 = [NSValue valueWithNonretainedObject:r22];
    r29 = r29;
    r27 = [r0 retain];
    r0 = [r25 onResurrectionDo:&var_B8 withQueue:@"MoatNativeDisplayTracker" withKey:r27];
    [r27 release];
    [r26 retain];
    [var_90 release];
    [var_98 release];
    objc_destroyWeak(&var_B8 + 0x38);
    objc_destroyWeak(&var_B8 + 0x30);
    [r22 release];
    objc_destroyWeak(&stack[-128]);
    objc_destroyWeak(&stack[-120]);
    goto loc_10074c7e4;
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
    [IROMoatTouchGestureRecognizer class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10074cc70;

loc_10074cc48:
    [IROMoatLogging reportDevLogWithObject:r20 format:@"handleTouch"];
    r22 = 0x1;
    goto loc_10074ccb8;

loc_10074ccb8:
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
            r0 = [IROMoatAnalytics sharedInstance];
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
    goto loc_10074cddc;

loc_10074cddc:
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

loc_10074cc70:
    r22 = @selector(isKindOfClass:);
    [UITapGestureRecognizer class];
    if ((objc_msgSend(r19, r22) & 0x1) == 0x0) goto loc_10074cddc;

loc_10074cc94:
    [IROMoatLogging reportDevLogWithObject:r20 format:@"handleClick"];
    r22 = 0x2;
    goto loc_10074ccb8;
}

+(void *)getAdIdsAsJson:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0x120;
    r19 = [arg2 retain];
    var_120 = r19;
    var_140 = [NSMutableString new];
    r22 = [[r19 allKeys] retain];
    r0 = [NSOrderedSet orderedSetWithArray:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    var_118 = 0x0;
    r0 = [r21 retain];
    var_128 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r19 = 0x0;
                    var_130 = @selector(length);
                    var_138 = @selector(appendFormat:);
                    var_148 = @selector(appendString:);
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_128);
                            }
                            r24 = *(0x0 + r19 * 0x8);
                            if ([r24 isKindOfClass:[NSString class]] != 0x0) {
                                    r0 = [var_120 objectForKeyedSubscript:r24];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    r25 = [r23 isKindOfClass:[NSString class]];
                                    [r23 release];
                                    if (r25 != 0x0) {
                                            var_130 = @selector(length);
                                            r25 = var_140;
                                            if (objc_msgSend(r25, var_130) != 0x0) {
                                                    var_148 = @selector(appendString:);
                                                    objc_msgSend(r25, var_148);
                                            }
                                            var_138 = @selector(appendFormat:);
                                            r0 = [var_120 objectForKeyedSubscript:r24];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            var_170 = r24;
                                            stack[-376] = r23;
                                            objc_msgSend(r25, var_138);
                                            [r23 release];
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    var_150 = @selector(countByEnumeratingWithState:objects:count:);
                    r22 = objc_msgSend(var_128, var_150);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_128 release];
    r22 = objc_retainAutoreleaseReturnValue(var_140);
    [var_128 release];
    [var_140 release];
    [var_120 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
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
    r22 = [[IROMoatNativeDisplayTracker getAdIdsAsJson:r19] retain];
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

-(void)setAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adView, arg2);
    return;
}

-(void *)adView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [self cleanUp];
    [[&var_20 super] dealloc];
    return;
}

-(void)cleanUp {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0xd0;
    r19 = self;
    r20 = *___stack_chk_guard;
    r20 = *r20;
    var_58 = r20;
    if (([self cleanedUp] & 0x1) == 0x0) {
            [IROMoatLogging reportDevLogWithObject:r19 format:@"cleaning up native display tracker."];
            var_E8 = 0x0;
            var_E0 = 0x0;
            var_F8 = 0x0;
            var_F0 = 0x0;
            var_108 = 0x0;
            var_100 = 0x0;
            var_118 = 0x0;
            var_110 = 0x0;
            r0 = [r19 getstureRecognizers];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    do {
                            r27 = 0x0;
                            do {
                                    var_108 = 0x0;
                                    if (*var_108 != *0x0) {
                                            objc_enumerationMutation(r20);
                                    }
                                    var_110 = 0x0;
                                    r25 = *(var_110 + r27 * 0x8);
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
                                    r27 = r27 + 0x1;
                            } while (r27 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
            r0 = [IROMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 getBridge];
            r29 = r29;
            r0 = [r0 retain];
            [r0 stopTrackingImpression:r19];
            [r0 release];
            [r20 release];
            [r19 setCleanedUp:0x1];
            r20 = *___stack_chk_guard;
            r20 = *r20;
    }
    if (r20 != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adIds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adIds)), 0x1);
    return r0;
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

-(void *)userInteractionEvents {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_userInteractionEvents)), 0x1);
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(void)setUserInteractionEvents:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)getstureRecognizers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_getstureRecognizers)), 0x1);
    return r0;
}

-(void)setGetstureRecognizers:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_getstureRecognizers, 0x0);
    objc_storeStrong((int64_t *)&self->_userInteractionEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_adIds, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    return;
}

@end