@implementation MPGeolocationProvider

+(void *)sharedProvider {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d83e8 != -0x1) {
            dispatch_once(0x1011d83e8, &var_28);
    }
    r0 = *0x1011d83e0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)lastKnownLocation {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self locationUpdatesEnabled] != 0x0) {
            r0 = *(r19 + 0x10);
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0xe0;
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
    r0 = [[&var_70 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(r19 + 0x9) = 0x1;
            r0 = [MPCoreInstanceProvider sharedProvider];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 buildCLLocationManager];
            r0 = [r0 retain];
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
            [r20 release];
            [*(r19 + 0x18) setDelegate:r19];
            [*(r19 + 0x18) setDistanceFilter:r19];
            r0 = *(r19 + 0x18);
            r0 = [r0 location];
            r21 = r0;
            r29 = r29;
            var_C8 = [r0 retain];
            if ([r19 locationHasValidCoordinates:r19] != 0x0) {
                    objc_storeStrong(r19 + 0x10, r21);
                    r23 = [[NSString stringWithFormat:@"Found previous location information."] retain];
                    r0 = [MPLogEvent eventWithMessage:r23 level:0x14];
                    r29 = r29;
                    r22 = [r0 retain];
                    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
                    [r22 release];
                    [r23 release];
            }
            r26 = [[NSNotificationCenter defaultCenter] retain];
            r27 = **_UIApplicationDidEnterBackgroundNotification;
            r28 = [[UIApplication sharedApplication] retain];
            r20 = [[NSOperationQueue mainQueue] retain];
            r0 = [r19 retain];
            r25 = r0;
            var_78 = r0;
            r0 = [r26 addObserverForName:r27 object:r28 queue:r20 usingBlock:&var_98];
            [[r0 retain] release];
            [r20 release];
            [r28 release];
            [r26 release];
            r26 = [[NSNotificationCenter defaultCenter] retain];
            r20 = **_UIApplicationWillEnterForegroundNotification;
            r27 = [[UIApplication sharedApplication] retain];
            r24 = [[NSOperationQueue mainQueue] retain];
            r0 = [r25 retain];
            r22 = r0;
            var_A0 = r0;
            r0 = [r26 addObserverForName:r20 object:r27 queue:r24 usingBlock:&var_C0];
            [[r0 retain] release];
            [r24 release];
            [r27 release];
            [r26 release];
            r0 = [MPConsentManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 canCollectPersonalInfo];
            [r0 release];
            if (r23 != 0x0) {
                    [r22 startRecurringLocationUpdates];
            }
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
            [var_A0 release];
            [var_78 release];
            [var_C8 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r21 = [[NSNotificationCenter defaultCenter] retain];
    r22 = **_UIApplicationDidEnterBackgroundNotification;
    r24 = [[UIApplication sharedApplication] retain];
    [r21 removeObserver:self name:r22 object:r24];
    [r24 release];
    [r21 release];
    r20 = [[NSNotificationCenter defaultCenter] retain];
    r21 = **_UIApplicationWillEnterForegroundNotification;
    r22 = [[UIApplication sharedApplication] retain];
    [r20 removeObserver:self name:r21 object:r22];
    [r22 release];
    [r20 release];
    [[&var_60 super] dealloc];
    return;
}

-(bool)locationUpdatesEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self rawLocationUpdatesEnabled];
    if (r0 != 0x0) {
            r0 = [MPConsentManager sharedManager];
            r0 = [r0 retain];
            r20 = [r0 canCollectPersonalInfo];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void)setLocationUpdatesEnabled:(bool)arg2 {
    [self setRawLocationUpdatesEnabled:arg2];
    [self startOrStopLocationUpdates];
    return;
}

-(void)setAuthorizedForLocationServices:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(self + 0x8) = arg2;
    if (arg2 != 0x0 && [CLLocationManager locationServicesEnabled] != 0x0) {
            [r19 startRecurringLocationUpdates];
    }
    else {
            [r19 stopAllCurrentOrScheduledLocationUpdates];
            [r19 setLastKnownLocation:0x0];
    }
    return;
}

-(void)startOrStopLocationUpdates {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self locationUpdatesEnabled] & 0x1) != 0x0) {
            r0 = [r19 locationUpdateDurationTimer];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 isValid] != 0x0) {
                    [r20 release];
            }
            else {
                    r0 = [r19 nextLocationUpdateTimer];
                    r0 = [r0 retain];
                    r21 = [r0 isValid];
                    [r0 release];
                    [r20 release];
                    if ((r21 & 0x1) == 0x0) {
                            [r19 startRecurringLocationUpdates];
                    }
            }
    }
    else {
            [r19 stopAllCurrentOrScheduledLocationUpdates];
            [r19 setLastKnownLocation:0x0];
    }
    return;
}

-(bool)isAuthorizedStatus:(int)arg2 {
    r0 = self;
    if (arg2 < 0x5) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)currentLocationUpdateDidFinish {
    r22 = [[NSString stringWithFormat:@"Stopping the current location update session and scheduling the next session."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self locationUpdateDurationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [self locationManager];
    r0 = [r0 retain];
    [r0 stopUpdatingLocation];
    [r0 release];
    [self scheduleNextLocationUpdateAfterDelay:r21];
    return;
}

-(void)startRecurringLocationUpdates {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSDate date];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 setTimeOfLastLocationUpdate:r20];
    [r20 release];
    if ([CLLocationManager locationServicesEnabled] == 0x0 || ([r19 isAuthorizedStatus:[CLLocationManager authorizationStatus]] & 0x1) == 0x0) goto loc_1004c9228;

loc_1004c9138:
    if (([r19 locationUpdatesEnabled] & 0x1) == 0x0) goto loc_1004c92cc;

loc_1004c914c:
    r0 = [r19 locationManager];
    r0 = [r0 retain];
    [r0 startUpdatingLocation];
    [r0 release];
    r0 = [r19 locationUpdateDurationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r21 = [[MPTimer timerWithTimeInterval:r19 target:@selector(currentLocationUpdateDidFinish) selector:0x0 repeats:r5] retain];
    [r19 setLocationUpdateDurationTimer:r21];
    [r21 release];
    r0 = [r19 locationUpdateDurationTimer];
    r0 = [r0 retain];
    r20 = r0;
    [r0 scheduleNow];
    goto loc_1004c92b8;

loc_1004c92b8:
    [r20 release];
    return;

loc_1004c92cc:
    r20 = [[NSString stringWithFormat:@"Will not start location updates because they have been disabled."] retain];
    r0 = [MPLogEvent eventWithMessage:r20 level:0x14];
    goto loc_1004c927c;

loc_1004c927c:
    r22 = [r0 retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
    [r22 release];
    goto loc_1004c92b8;

loc_1004c9228:
    r20 = [[NSString stringWithFormat:@"Will not start location updates: the application is not authorized for location services."] retain];
    r0 = [MPLogEvent eventWithMessage:r20 level:0x14];
    goto loc_1004c927c;
}

-(void)scheduleNextLocationUpdateAfterDelay:(double)arg2 {
    r22 = [[NSString stringWithFormat:@"Next user location update due in %.1f seconds."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self nextLocationUpdateTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r21 = [[MPTimer timerWithTimeInterval:self target:@selector(startRecurringLocationUpdates) selector:0x0 repeats:r5] retain];
    [self setNextLocationUpdateTimer:r21];
    [r21 release];
    r0 = [self nextLocationUpdateTimer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    return;
}

-(void)stopAllCurrentOrScheduledLocationUpdates {
    r22 = [[NSString stringWithFormat:@"Stopping any scheduled location updates."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self locationUpdateDurationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [self locationManager];
    r0 = [r0 retain];
    [r0 stopUpdatingLocation];
    [r0 release];
    r0 = [self nextLocationUpdateTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    return;
}

-(void)resumeLocationUpdatesAfterBackgrounding {
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
    r0 = [r19 timeOfLastLocationUpdate];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 timeIntervalSinceDate:r21];
    [r21 release];
    [r20 release];
    if (d8 < *0x100bc2710) {
            [r19 scheduleNextLocationUpdateAfterDelay:r2];
    }
    else {
            r22 = [[NSString stringWithFormat:@"Last known user location is stale. Updating location."] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
            [r19 startRecurringLocationUpdates];
    }
    return;
}

-(bool)isLocation:(void *)arg2 betterThanLocation:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            if ([r21 locationHasValidCoordinates:r19] != 0x0) {
                    r21 = [r21 isLocation:r19 olderThanLocation:r20] ^ 0x1;
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)locationHasValidCoordinates:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            var_10 = r29;
            stack[-8] = r30;
            r31 = r31 + 0xfffffffffffffff0;
            r0 = [r2 horizontalAccuracy];
            if (d0 > 0x0) {
                    if (CPU_FLAGS & G) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isLocation:(void *)arg2 olderThanLocation:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[r20 timestamp] retain];
    [r20 release];
    r20 = [[r19 timestamp] retain];
    [r19 release];
    [r22 timeIntervalSinceDate:r20];
    if (d0 < 0x0) {
            if (CPU_FLAGS & S) {
                    r19 = 0x1;
            }
    }
    [r20 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void)consentStateChanged:(void *)arg2 {
    [self startOrStopLocationUpdates];
    return;
}

-(void)locationManager:(void *)arg2 didChangeAuthorizationStatus:(int)arg3 {
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
    r21 = @class(MPLogging);
    r22 = @class(MPLogEvent);
    r0 = @class(NSString);
    asm { sxtw       x24, w20 };
    [[r22 eventWithMessage:[[r0 stringWithFormat:@"Location authorization status changed to: %ld"] retain] level:0x14] retain];
    [r19 class];
    r8 = &@selector(inData);
    objc_msgSend(r21, *(r8 + 0x2e0));
    [r22 release];
    [r23 release];
    if (r20 < 0x5) {
            r8 = &@selector(inData);
            if (CPU_FLAGS & B) {
                    r8 = 0x1;
            }
    }
    [r19 setAuthorizedForLocationServices:0x18 >> r24 & r8];
    return;
}

-(void)locationManager:(void *)arg2 didFailWithError:(void *)arg3 {
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
    r0 = [arg3 retain];
    r19 = r0;
    if ([r0 code] == 0x1) {
            r23 = [[NSString stringWithFormat:@"Location manager failed: the user has denied access to location services."] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
            [r20 stopAllCurrentOrScheduledLocationUpdates];
    }
    else {
            if ([r19 code] == 0x0) {
                    r23 = [[NSString stringWithFormat:@"Location manager could not obtain a location right now."] retain];
                    r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
                    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
                    [r22 release];
                    [r23 release];
            }
    }
    [r19 release];
    return;
}

-(void)locationManager:(void *)arg2 didUpdateLocations:(void *)arg3 {
    r31 = r31 - 0x170;
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
    r0 = [arg3 retain];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r0;
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r28 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(var_128);
                            }
                            r20 = *(var_118 + r21 * 0x8);
                            r0 = [r19 lastKnownLocation];
                            r29 = r29;
                            r26 = [r0 retain];
                            r27 = [r19 isLocation:r20 betterThanLocation:r26];
                            [r26 release];
                            if (r27 != 0x0) {
                                    [r19 setLastKnownLocation:r2];
                                    r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:@"Updated last known user location: %@"] retain] level:0x14];
                                    r29 = r29;
                                    [r0 retain];
                                    [r19 class];
                                    objc_msgSend(@class(MPLogging), r23);
                                    [r27 release];
                                    [r20 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r0 = objc_msgSend(var_128, var_150);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)setLastKnownLocation:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)locationManager {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setLocationManager:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(bool)authorizedForLocationServices {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void *)timeOfLastLocationUpdate {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setTimeOfLastLocationUpdate:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)nextLocationUpdateTimer {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setNextLocationUpdateTimer:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)locationUpdateDurationTimer {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setLocationUpdateDurationTimer:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(bool)rawLocationUpdatesEnabled {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setRawLocationUpdatesEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end